
--- @param arrayData any
--- @param value number
function ArrayValueAddFloat(arrayData, value) end


--- @param arrayData any
--- @param value boolean
function ArrayValueAddBoolean(arrayData, value) end


--- @param arrayData any
--- @param value number
function ArrayValueAddInteger(arrayData, value) end


--- @param arrayData any
--- @param value string
function ArrayValueAddString(arrayData, value) end


--- @param arrayData any
--- @return any
function ArrayValueAddObject(arrayData) end


--- @param arrayData any
--- @param arrayIndex number
--- @return boolean
function ArrayValueGetBoolean(arrayData, arrayIndex) end


--- @param arrayData any
--- @param valueX number
--- @param valueY number
--- @param valueZ number
function ArrayValueAddVector3(arrayData, valueX, valueY, valueZ) end


--- @param arrayData any
--- @param arrayIndex number
--- @return number
function ArrayValueGetInteger(arrayData, arrayIndex) end


--- @param arrayData any
--- @param arrayIndex number
--- @return number
function ArrayValueGetFloat(arrayData, arrayIndex) end


--- @param arrayData any
--- @return number
function ArrayValueGetSize(arrayData) end


--- @param arrayData any
--- @param arrayIndex number
--- @return any
function ArrayValueGetObject(arrayData, arrayIndex) end


--- @param arrayData any
--- @param arrayIndex number
--- @return string
function ArrayValueGetString(arrayData, arrayIndex) end

--- 
--- Types:  
--- 1 = Boolean  
--- 2 = Integer  
--- 3 = Float  
--- 4 = String  
--- 5 = Vector3  
--- 6 = Object  
--- 7 = Array  
--- 
--- @param arrayData any
--- @param arrayIndex number
--- @return number
function ArrayValueGetType(arrayData, arrayIndex) end


function DatafileCreate() end


--- @param arrayData any
--- @param arrayIndex number
--- @return vector3
function ArrayValueGetVector3(arrayData, arrayIndex) end


function DatafileClearWatchList() end


--- @param p0 any
--- @return boolean
function DatafileDeleteRequestedFile(p0) end


function DatafileDelete() end


--- @return string
function DatafileGetFileDict() end


function DatafileFlushMissionHeader() end


--- @param p0 any
--- @return boolean
function DatafileHasValidFileData(p0) end


--- @param p0 any
--- @return boolean
function DatafileHasLoadedFileData(p0) end

--- 
--- Example:  
--- if (!DATAFILE::_BEDB96A7584AA8CF())  
--- {  
---     if (!g_109E3)  
--- 	{  
---         if (((sub_d4f() == 2) == 0) && (!NETWORK::NETWORK_IS_GAME_IN_PROGRESS()))  
--- {  
---             if (NETWORK::NETWORK_IS_CLOUD_AVAILABLE())  
--- 	{  
---                 g_17A8B = 0;  
---             }  
---             if (!g_D52C)  
--- 	{  
---                 sub_730();  
---             }  
---         }  
---     }  
--- }  
--- 
--- @return boolean
function DatafileIsSavePending() end


--- @param index number
--- @return boolean
function DatafileIsValidRequestId(index) end

--- 
--- Loads a User-Generated Content (UGC) file. These files can be found in "[GTA5]\data\ugc" and "[GTA5]\common\patch\ugc". They seem to follow a naming convention, most likely of "[name]_[part].ugc". See example below for usage.
--- Returns whether or not the file was successfully loaded.
--- Example:
--- DATAFILE::_LOAD_UGC_FILE("RockstarPlaylists") // loads "rockstarplaylists_00.ugc"
--- 
--- @param filename string
--- @return boolean
function DatafileLoadOfflineUgc(filename) end


--- @param p0 any
--- @return boolean
function DatafileSelectActiveFile(p0) end


--- @param p0 number
--- @return boolean
function DatafileSelectCreatorStats(p0) end


--- @param p0 number
--- @return boolean
function DatafileSelectUgcData(p0) end


--- @param p0 number
--- @return boolean
function DatafileSelectUgcPlayerData(p0) end


--- @param p0 number
--- @param p1 boolean
--- @return boolean
function DatafileSelectUgcStats(p0, p1) end

--- 
--- Saves a JSON file? It might even be saving it to the Rockstar Cloud, but I have no way of verifying this  
--- "shrinkletter.c4", line ~378:  
--- DATAFILE::DATAFILE_CREATE();  
--- v_5 = DATAFILE::_GET_ROOT_OBJECT();  
--- DATAFILE::_OBJECT_VALUE_ADD_INTEGER(v_5, "in", a_2);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "st", &a_2._f1);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "mp", &a_2._f2);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "ms", &a_2._f3);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sc", &a_2._f5);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "pr", &a_2._f6);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "fa", &a_2._f7);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sm", &a_2._f8);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "kp", &a_2._f9);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sv", &a_2._fA);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "yo", &a_2._fB);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "fi", &a_2._fC);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "rc", &a_2._fD);  
--- DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "co", &a_2._fE);  
--- DATAFILE::_OBJECT_VALUE_ADD_INTEGER(v_5, "su", a_2._fF);  
--- DATAFILE::_83BCCE3224735F05("gta5/psych/index.json"); // saves the file?  
--- 
--- @param filename string
--- @return boolean
function DatafileStartSaveToCloud(filename) end


function DatafileStoreMissionHeader() end


--- @param p0 boolean
--- @return boolean
function DatafileUpdateSaveToCloud(p0) end

--- 
--- Adds the given request ID to the watch list.
--- 
--- @param id number
function DatafileWatchRequestId(id) end


--- @param objectData any
--- @param key string
--- @return any
function ObjectValueAddArray(objectData, key) end


--- @param objectData any
--- @param key string
--- @param value boolean
function ObjectValueAddBoolean(objectData, key, value) end


--- @param objectData any
--- @param key string
--- @param value number
function ObjectValueAddFloat(objectData, key, value) end


--- @param objectData any
--- @param key string
--- @param value number
function ObjectValueAddInteger(objectData, key, value) end


--- @param objectData any
--- @param key string
--- @return any
function ObjectValueAddObject(objectData, key) end


--- @param objectData any
--- @param key string
--- @param value string
function ObjectValueAddString(objectData, key, value) end


--- @param objectData any
--- @param key string
--- @param valueX number
--- @param valueY number
--- @param valueZ number
function ObjectValueAddVector3(objectData, key, valueX, valueY, valueZ) end


--- @param objectData any
--- @param key string
--- @return any
function ObjectValueGetArray(objectData, key) end


--- @param objectData any
--- @param key string
--- @return boolean
function ObjectValueGetBoolean(objectData, key) end


--- @param objectData any
--- @param key string
--- @return number
function ObjectValueGetInteger(objectData, key) end


--- @param objectData any
--- @param key string
--- @return number
function ObjectValueGetFloat(objectData, key) end


--- @param objectData any
--- @param key string
--- @return any
function ObjectValueGetObject(objectData, key) end


--- @param objectData any
--- @param key string
--- @return string
function ObjectValueGetString(objectData, key) end

--- 
--- Types:  
--- 1 = Boolean  
--- 2 = Integer  
--- 3 = Float  
--- 4 = String  
--- 5 = Vector3  
--- 6 = Object  
--- 7 = Array  
--- 
--- @param objectData any
--- @param key string
--- @return number
function ObjectValueGetType(objectData, key) end


--- @param objectData any
--- @param key string
--- @return vector3
function ObjectValueGetVector3(objectData, key) end

--- 
--- NativeDB Parameter 1: int dataCount
--- 
--- @param data string
--- @param dataCount boolean
--- @param contentName string
--- @param description string
--- @param tagsCsv string
--- @param contentTypeName string
--- @param publish boolean
--- @return boolean
function UgcCreateContent(data, dataCount, contentName, description, tagsCsv, contentTypeName, publish) end

--- 
--- NOTE: 'p1' might be some kind of array.  
--- 
--- @param contentName string
--- @param description string
--- @param tagsCsv string
--- @param contentTypeName string
--- @param publish boolean
--- @return boolean
function UgcCreateMission(contentName, description, tagsCsv, contentTypeName, publish) end


--- @param contentId string
--- @param rating number
--- @param contentTypeName string
--- @return boolean
function UgcSetPlayerData(contentId, rating, contentTypeName) end

--- 
--- NativeDB Parameter 2: int dataCount
--- 
--- @param contentId string
--- @param data any
--- @param dataCount boolean
--- @param contentName string
--- @param description string
--- @param tagsCsv string
--- @param contentTypeName string
--- @return boolean
function UgcUpdateContent(contentId, data, dataCount, contentName, description, tagsCsv, contentTypeName) end

--- 
--- NOTE: 'p2' might be some kind of array.  
--- 
--- @param contentId string
--- @param contentName string
--- @param description string
--- @param tagsCsv string
--- @param contentTypeName string
--- @return boolean
function UgcUpdateMission(contentId, contentName, description, tagsCsv, contentTypeName) end

