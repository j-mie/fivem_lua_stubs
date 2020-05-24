
function AppClearBlock() end


function AppCloseApp() end


function AppCloseBlock() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return number
function AppDataValid() end


--- @return number
function AppGetDeletedFileStatus() end


--- @param appName string
--- @return boolean
function AppDeleteAppData(appName) end

--- 
--- NativeDB Parameter 0: char* property
--- NativeDB Return Type: int
--- 
--- @param property ScrHandle
function AppGetInt(property) end


--- @param property string
--- @return number
function AppGetFloat(property) end


--- @return boolean
function AppHasLinkedSocialClubAccount() end


--- @param property string
--- @return string
function AppGetString(property) end


function AppSaveData() end


--- @param appName string
--- @return boolean
function AppHasSyncedData(appName) end


--- @param blockName string
function AppSetBlock(blockName) end

--- 
--- Called in the gamescripts like:  
--- APP::APP_SET_APP("car");  
--- APP::APP_SET_APP("dog");  
--- 
--- @param appName string
function AppSetApp(appName) end


--- @param property string
--- @param value number
function AppSetInt(property, value) end


--- @param property string
--- @param value number
function AppSetFloat(property, value) end


--- @param property string
--- @param value string
function AppSetString(property, value) end

