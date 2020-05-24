# Lua keywords
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
    "Vector3": "vector3"
}
