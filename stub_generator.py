import requests
import string

# lua types
#'any',      
#'string',   
#'number',   
#'integer',  
#'boolean',  
#'table',    
#'function', 
#'nil',      
#'userdata', 
#'thread',   
#

typeTranslationTable = {
    "float": "number",
    "int": "number",
    "bool": "boolean",
    "BOOL": "boolean",
    "Any": "any",
    "char": "string",
    "Vector3": "vector3"
}

# Lua keywords
blacklistedParams = ["and", "end", "in", "repeat", "break", "false", "local", "return", "do", "for", "nil", "then", "else", "function", "not", "true", "elseif", "if", "or", "until", "while",]

docs = ["https://runtime.fivem.net/doc/natives.json", "https://runtime.fivem.net/doc/natives_cfx.json"]
for doc in docs:
    print(doc)
    resp = requests.get(doc)
    respBody = resp.json()
    for nativeNamespace in respBody:
        output = open("stubs/natives_{}.lua".format(nativeNamespace.lower()), "w", encoding="utf-8")

        linesWritten = 0
        fileCounter = 0
        for nativeHash in respBody[nativeNamespace]:
            # Split bigger files into smaller files - https://github.com/sumneko/lua-language-server/issues/64
            if linesWritten >= 1000:
                output.close()
                linesWritten = 0
                fileCounter += 1
                output = open("stubs/natives_{}_{}.lua".format(nativeNamespace.lower(), fileCounter), "w", encoding="utf-8")

            nativeFunc = respBody[nativeNamespace][nativeHash]
            if not "name" in nativeFunc:
                continue
            nativeUnfriendlyName = nativeFunc['name']
            nativeParams = nativeFunc['params']
            nativeDesc = nativeFunc['description'].replace("`", "").replace("\n", "\n--- ")
            if len(nativeDesc) > 1 and not nativeDesc.startswith("---"):
                nativeDesc = "--- " + nativeDesc

            nativeExamples = nativeFunc['description']
            nativeReturnType = nativeFunc['results'].replace("*", "")

            #if nativeUnfriendlyName != "REGISTER_COMMAND":
            #    continue

            #print(nativeFunc)
            # _LOCK_RADIO_STATION -> LockRadioStation
            #env.addFilter(new Twing.TwingFilter('makenative', input => {
            #    return input.toLowerCase().replace('0x', 'n_0x')
            #        .replace(/_([a-z])/g, (sub, bit) => bit.toUpperCase())
            #        .replace(/^([a-z])/, (sub, bit) => bit.toUpperCase());
            #}));
            
            #N_0x8db8cffd58b62552
            nativeName = nativeUnfriendlyName.lower().replace("0x", "N_0x")
            nativeName = nativeName.replace("_", " ")
            nativeName = string.capwords(nativeName)
            nativeName = nativeName.replace(" ", "")
            output.write("{}\n".format(nativeDesc))

            functionDefParams = ""
            for i, nativeParam in enumerate(nativeParams):
                paramName = nativeParam['name']
                if paramName in blacklistedParams:
                    paramName = "_b_{}".format(paramName)

                paramType = nativeParam['type'].replace("*", "")
                
                # Convert type to Lua type
                if paramType in typeTranslationTable:
                    paramType = typeTranslationTable[paramType]

                if i == len(nativeParams) - 1:
                    functionDefParams += paramName
                else:
                    functionDefParams += paramName + ", "
                # TODO: Convert types to Lua types
               
                
                output.write("--- @param {} {}\n".format(paramName, paramType))
            
            if nativeReturnType != "void":
                if nativeReturnType in typeTranslationTable:
                    nativeReturnType = typeTranslationTable[nativeReturnType]

                output.write("--- @returns {}\n".format(nativeReturnType))
            output.write("function {}({}) end\n\n".format(nativeName, functionDefParams))
            
            linesWritten += (3 + len(nativeParams) + nativeDesc.count('\n'))

        output.close()
