#!/usr/bin/env python3
import string

import requests


BLACKLISTED_PARAMS = [
    "and",
    "end",
    "in",
    "repeat",
    "break",
    "false",
    "local",
    "return",
    "do",
    "for",
    "nil",
    "then",
    "else",
    "function",
    "not",
    "true",
    "elseif",
    "if",
    "or",
    "until",
    "while"
]
DOC_URLS = [
    "https://runtime.fivem.net/doc/natives.json",
    "https://runtime.fivem.net/doc/natives_cfx.json"
]
TYPE_TRANSLATION_TABLE = {
    "float": "number",
    "int": "number",
    "bool": "boolean",
    "BOOL": "boolean",
    "Any": "any",
    "char": "string",
    "Vector3": "vector3",
    "Vector2": "vector2",
    "object": "table",
    "func": "function"
}

LINES_WRITTEN_CAP = 1000
PREFIX = "stubs/natives"

def _open_file(filename):
    with open(filename, "w", encoding="utf-8") as open_file:
        return open_file


def _format_name(name_data):
    print(name_data)
    return string.capwords(
        name_data.lower()
        .replace("_", " ")
    ).replace(" ", "").replace("0x", "N_0x")


def _format_parameters(parameters_data):
    def _format_picker(key, value):
        if key == "name":
            return _format_blacklisted_param(value)
        if key == "type":
            return _translate_type(value)
        return value

    def _format_blacklisted_param(raw_value):
        return "_b_{}".format(raw_value) if raw_value in BLACKLISTED_PARAMS else raw_value

    def _translate_type(raw_value):
        raw_value = raw_value.replace("*", "")
        return TYPE_TRANSLATION_TABLE[raw_value] if raw_value in TYPE_TRANSLATION_TABLE else raw_value

    return [
        {
            k: _format_picker(k, v)
            for k, v in parameter.items()
        }
        for parameter in parameters_data
    ]


def _format_description(raw_description):
    if not raw_description:
        return ''
    raw_description = raw_description.replace("`", "").replace("\n", "\n--- ")
    if len(raw_description) > 1 and not raw_description.startswith("---"):
        return "--- {}".format(raw_description)
    return raw_description


def _format_return_type(raw_return_type):
    raw_return_type = raw_return_type.replace("*", "")
    return TYPE_TRANSLATION_TABLE[raw_return_type] if raw_return_type in TYPE_TRANSLATION_TABLE else raw_return_type  #pylint: disable=line-too-long


class Data:
    def __init__(self):
        self.name = None
        self.parameters = None
        self.description = None
        self.examples = None
        self.return_type = None

    def __call__(self, raw_data, native_name):
        self.name = _format_name(native_name)
        self.parameters = _format_parameters(raw_data['params'])
        self.description = _format_description(raw_data['description'])
        self.examples = raw_data['examples']
        self.return_type = _format_return_type(raw_data['results'])
        return self

    def get_writable_output(self):
        writeable_string = "{}\n".format(self.description)
        writeable_string = "{}{}".format(
            writeable_string,
            "".join([
                "--- @param {} {}\n".format(
                    parameter["name"],
                    parameter["type"]
                ) for parameter in self.parameters
            ])
        )
        if self.return_type != "void":
            writeable_string = "{}--- @return {}\n".format(writeable_string, self.return_type)
        writeable_string = "{}function {}({}) end\n\n".format(
            writeable_string,
            self.name,
            ", ".join([
                value
                for parameter in self.parameters
                for key, value in parameter.items()
                if key == "name"
            ])
        )
        return writeable_string


class FileManager:
    def __init__(self, name):
        self.name = name
        self.lines_written = 0
        self.file_counter = 0
        self.data = None

    def set_data(self, data):
        self.data = data

    def write(self):
        if self.lines_written >= LINES_WRITTEN_CAP:
            self.lines_written = 0
            self.file_counter += 1
        self._write_to_file()

    def _write_to_file(self):
        file_name = self._generate_file_name()
        with open(file_name, "a", encoding="utf-8") as open_file:
            writeable_output = self.data.get_writable_output()
            open_file.write(writeable_output)

        self.lines_written += (
            3 +
            len(self.data.parameters) +
            self.data.description.count('\n')
        )

    def _generate_file_name(self):
        if self.file_counter == 0:
            return "{}_{}.lua".format(PREFIX, self.name)
        return "{}_{}_{}.lua".format(PREFIX, self.name, self.file_counter)


def main():
    for url in DOC_URLS:
        json_response = requests.get(url).json()
        for native_namespace, native_hash in json_response.items():
            file_manager = FileManager(native_namespace.lower())
            for _, native_function in native_hash.items():
                file_manager.set_data(
                    Data()(native_function, 'name' in native_function and native_function['name'] or native_function['hash'])
                )
                file_manager.write()

                if 'aliases' in native_function:
                    for aliase in native_function['aliases']:
                        print(aliase)
                        file_manager.set_data(
                            Data()(native_function, aliase)
                        )
                        file_manager.write()


if __name__ == "__main__":
    main()
