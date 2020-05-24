--- 
--- modelHash (p1) was always 0 in R* scripts  
--- 
--- @param cutsceneEntName string
--- @param modelHash Hash
--- @return boolean
function CanSetEnterStateForRegisteredEntity(cutsceneEntName, modelHash) end

--- 
--- "Can request assets for cutscene entity"? (found in decompiled scripts)  
--- 
--- @return boolean
function CanRequestAssetsForCutsceneEntity() end


--- @param cutsceneEntName string
--- @param modelHash Hash
--- @return boolean
function CanSetExitStateForRegisteredEntity(cutsceneEntName, modelHash) end


--- @param p0 boolean
--- @return boolean
function CanSetExitStateForCamera(p0) end


--- @param cutsceneEntName string
--- @param modelHash Hash
--- @return boolean
function DoesCutsceneEntityExist(cutsceneEntName, modelHash) end

--- 
--- Jenkins hash probably is 0xFD8B1AC2
--- 
--- @param cutsceneName string
--- @return number
function GetCutFileNumSections(cutsceneName) end


--- @return number
function GetCutsceneSectionPlaying() end


--- @return number
function GetCutsceneTotalDuration() end


--- @return number
function GetCutsceneTime() end


--- @param cutsceneEntName string
--- @param modelHash Hash
--- @return Entity
function GetEntityIndexOfCutsceneEntity(cutsceneEntName, modelHash) end


--- @param cutsceneEntName string
--- @param modelHash Hash
--- @return Entity
function GetEntityIndexOfRegisteredEntity(cutsceneEntName, modelHash) end


--- @return boolean
function HasCutsceneCutThisFrame() end

--- 
--- Checks if the cutscene has loaded and doesn't check via CutSceneManager as opposed to HAS_[THIS]_CUTSCENE_LOADED.
--- 
--- @param cutsceneName string
--- @return boolean
function HasCutFileLoaded(cutsceneName) end


--- @return boolean
function HasCutsceneLoaded() end


--- @return boolean
function HasCutsceneFinished() end


--- @return boolean
function IsCutsceneActive() end


--- @param cutsceneName string
--- @return boolean
function HasThisCutsceneLoaded(cutsceneName) end


--- @return boolean
function IsCutscenePlaying() end

--- 
--- It's 100% an IS_CUTSCENE_* native.  
--- 
--- @param flag number
--- @return boolean
function IsCutscenePlaybackFlagSet(flag) end


--- @param cutscenePed Ped
--- @param cutsceneEntName string
--- @param p2 number
--- @param modelHash Hash
--- @param p4 number
function RegisterEntityForCutscene(cutscenePed, cutsceneEntName, p2, modelHash, p4) end


function RegisterSynchronisedScriptSpeech() end


function RemoveCutscene() end

--- 
--- Unloads the cutscene and doesn't do extra stuff that REMOVE_CUTSCENE does.
--- 
--- @param cutsceneName string
function RemoveCutFile(cutsceneName) end

--- 
--- Example:  
--- CUTSCENE::_0xC23DE0E91C30B58C("JOSH_1_INT_CONCAT", 13, 8);  
--- Cutscene list: pastebin.com/Bbj7ANpQ  
--- 
--- @param cutsceneName string
--- @param playbackFlags number
--- @param flags number
function RequestCutsceneWithPlaybackList(cutsceneName, playbackFlags, flags) end

--- 
--- Loads the cutscene and doesn't do extra stuff that REQUEST_CUTSCENE does.
--- 
--- @param cutsceneName string
function RequestCutFile(cutsceneName) end


--- @param cutsceneEntName string
--- @param p1 number
--- @param p2 number
function SetCutsceneEntityStreamingFlags(cutsceneEntName, p1, p2) end

--- 
--- p1: usually 8  
--- Cutscene list: pastebin.com/Bbj7ANpQ  
--- 
--- @param cutsceneName string
--- @param flags number
function RequestCutscene(cutsceneName, flags) end


--- @param cutsceneEntName string
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param modelHash Hash
function SetCutscenePedComponentVariation(cutsceneEntName, p1, p2, p3, modelHash) end


--- @param p0 boolean
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 boolean
function SetCutsceneFadeValues(p0, p1, p2, p3) end

--- 
--- p3 could be heading. Needs more research.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param p3 number
--- @param p4 number
function SetCutsceneOrigin(x, y, z, p3, p4) end


--- @param cutsceneEntName string
--- @param ped Ped
--- @param modelHash Hash
function SetCutscenePedComponentVariationFromPed(cutsceneEntName, ped, modelHash) end

--- 
--- Thanks R*! ;)  
--- if ((l_161 == 0) || (l_161 == 2)) {  
---     sub_2ea27("Trying to set Jimmy prop variation");  
---     CUTSCENE::_0546524ADE2E9723("Jimmy_Boston", 1, 0, 0, 0);  
--- }  
--- 
--- @param cutsceneEntName string
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param modelHash Hash
function SetCutscenePedPropVariation(cutsceneEntName, p1, p2, p3, modelHash) end

--- 
--- some kind of flag. Usually 0.  
--- 
--- @param flags number
function StartCutscene(flags) end

--- 
--- Only used twice in R* scripts  
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
function SetCutsceneTriggerArea(p0, p1, p2, p3, p4, p5) end


--- @param p0 boolean
function StopCutscene(p0) end

--- 
--- p3: some kind of flag. Usually 0.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param flags number
function StartCutsceneAtCoords(x, y, z, flags) end


--- @return boolean
function WasCutsceneSkipped() end


function StopCutsceneImmediately() end

