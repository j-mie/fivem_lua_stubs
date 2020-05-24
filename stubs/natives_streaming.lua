
--- @param modelHash Hash
--- @return boolean
function AddModelToCreatorBudget(modelHash) end


function BeginSrl() end


function ClearFocus() end


function ClearHdArea() end


--- @param animDict string
--- @return boolean
function DoesAnimDictExist(animDict) end


function DisableSwitchOutroFx() end


function EnableSwitchPauseBeforeDescent() end

--- Clear the current srl and stop rendering the area selected by PrefetchSrl and started with BeginSrl.
function EndSrl() end


--- @param x number
--- @param y number
--- @param z number
--- @param rad number
--- @param p4 any
--- @param p5 any
--- @return any
function FormatFocusHeading(x, y, z, rad, p4, p5) end

--- 
--- x1, y1, z1 -- Coords of your ped model  
--- x2, y2, z2 -- Coords of the ped you want to switch to  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @return number
function GetIdealPlayerSwitchType(x1, y1, z1, x2, y2, z2) end


--- @return number
function GetNumberOfStreamingRequests() end


--- @return number
function GetPlayerShortSwitchState() end


--- @return number
function GetPlayerSwitchInterpOutDuration() end


--- @return number
function GetPlayerSwitchJumpCutIndex() end


--- @return number
function GetPlayerSwitchType() end


--- @return number
function GetPlayerSwitchState() end

--- 
--- 0.0 = no memory used
--- 1.0 = all memory used
--- 
--- Maximum model memory (as defined in common\data\missioncreatordata.meta) is 100 MiB
--- 
--- GET_*
--- 
--- @return number
function GetUsedCreatorModelMemoryPercentage() end


--- @param animDict string
--- @return boolean
function HasAnimDictLoaded(animDict) end

--- 
--- Gets whether the specified animation set has finished loading. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.  
--- Animation set and clip set are synonymous.  
--- 
--- @param animSet string
--- @return boolean
function HasAnimSetLoaded(animSet) end

--- 
--- Alias for HAS_ANIM_SET_LOADED.  
--- 
--- @param clipSet string
--- @return boolean
function HasClipSetLoaded(clipSet) end


--- @param model Hash
--- @return boolean
function HasCollisionForModelLoaded(model) end

--- 
--- assetName = For example "core"  
--- 
--- @param assetName string
--- @return boolean
function HasNamedPtfxAssetLoaded(assetName) end

--- 
--- Checks if the specified model has loaded into memory.  
--- 
--- @param model Hash
--- @return boolean
function HasModelLoaded(model) end


--- @return boolean
function HasPtfxAssetLoaded() end

--- 
--- Loads "common:/data/missioncreatordata" data and sets some values.  
--- 
function InitCreatorBudget() end


--- @param entity Entity
--- @return boolean
function IsEntityFocus(entity) end

--- 
--- List of all IPLs: pastebin.com/iNGLY32D  
--- 
--- @param iplName string
--- @return boolean
function IsIplActive(iplName) end


--- @param model Hash
--- @return boolean
function IsModelAPed(model) end

--- 
--- Returns whether the specified model represents a vehicle.  
--- 
--- @param model Hash
--- @return boolean
function IsModelAVehicle(model) end

--- 
--- Check if model is in cdimage(rpf)  
--- 
--- @param model Hash
--- @return boolean
function IsModelInCdimage(model) end

--- 
--- Returns whether the specified model exists in the game.  
--- 
--- @param model Hash
--- @return boolean
function IsModelValid(model) end


--- @return boolean
function IsNetworkLoadingScene() end


--- @return boolean
function IsNewLoadSceneLoaded() end


--- @return boolean
function IsNewLoadSceneActive() end

--- 
--- Returns true if the player is currently switching, false otherwise.  
--- (When the camera is in the sky moving from Trevor to Franklin for example)  
--- 
--- @return boolean
function IsPlayerSwitchInProgress() end

--- Returns true when the srl from BeginSrl is loaded.
--- @return boolean
function IsSrlLoaded() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function IsSwitchSkippingDescent() end


--- @return boolean
function IsSwitchReadyForDescent() end

--- 
--- 1  
--- 
function LoadAllObjectsNow() end


--- @param x number
--- @param y number
--- @param z number
function LoadScene(x, y, z) end

--- 
--- NativeDB Return Type: BOOL
--- 
function NetworkUpdateLoadScene() end


function NetworkStopLoadScene() end

--- 
--- if (!sub_8f12("START LOAD SCENE SAFE")) {  
--- if (CUTSCENE::GET_CUTSCENE_TIME() > 4178) {  
---     STREAMING::_ACCFB4ACF53551B0(1973.845458984375, 3818.447265625, 32.43629837036133, 15.0, 2);  
---     sub_8e9e("START LOAD SCENE SAFE", 1);  
--- }  
--- 		}  
--- 		(Previously known as STREAMING::_NEW_LOAD_SCENE_START_SAFE)  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param p4 any
--- @return boolean
function NewLoadSceneStartSphere(x, y, z, radius, p4) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 any
--- @return boolean
function NewLoadSceneStart(p0, p1, p2, p3, p4, p5, p6, p7) end

--- This native is used to attribute the SRL that BeginSrl is going to load. This is usually used for 'in-game' cinematics (not cutscenes but camera stuff) instead of SetFocusArea because it loads a specific area of the map which is pretty useful when the camera moves from distant areas.
--- For instance, GTA:O opening cutscene.
--- 
--- <https://pastebin.com/2EeKVeLA> : a list of SRL found in srllist.meta
--- <https://pastebin.com/zd9XYUWY> : here is the content of a SRL file opened with codewalker.
--- @param srl string
function PrefetchSrl(srl) end


function NewLoadSceneStop() end


--- @param animDict string
function RemoveAnimDict(animDict) end

--- 
--- Unloads the specified animation set. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.  
--- Animation set and clip set are synonymous.  
--- 
--- @param animSet string
function RemoveAnimSet(animSet) end

--- 
--- Alias for REMOVE_ANIM_SET.  
--- 
--- @param clipSet string
function RemoveClipSet(clipSet) end

--- 
--- IPL list: pastebin.com/iNGLY32D  
--- 
--- @param iplName string
function RemoveIpl(iplName) end

--- 
--- NativeDB Parameter 0: Hash modelHash
--- 
--- @param modelHash any
function RemoveModelFromCreatorBudget(modelHash) end

--- 
--- assetName = For example "core"  
--- 
--- @param fxName string
function RemoveNamedPtfxAsset(fxName) end


function RemovePtfxAsset() end

--- 
--- MulleDK19: Alias of REQUEST_COLLISION_AT_COORD.  
--- 
--- @param x number
--- @param y number
--- @param z number
function RequestAdditionalCollisionAtCoord(x, y, z) end


--- @param animDict string
function RequestAnimDict(animDict) end

--- 
--- Starts loading the specified animation set. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.  
--- 
--- @param animSet string
function RequestAnimSet(animSet) end


--- @param clipSet string
function RequestClipSet(clipSet) end

--- 
--- NativeDB Return Type: void
--- 
--- @param x number
--- @param y number
--- @param z number
--- @return any
function RequestCollisionAtCoord(x, y, z) end

--- 
--- IPL list: pastebin.com/iNGLY32D  
--- 
--- @param iplName string
function RequestIpl(iplName) end


--- @param model Hash
function RequestCollisionForModel(model) end

--- 
--- Request a model to be loaded into memory  
--- Looking it the disassembly, it seems like it actually returns the model if it's already loaded.  
--- 
--- @param model Hash
function RequestModel(model) end

--- 
--- streaming::request_menu_ped_model(joaat("player_zero"));  
--- iVar0 = ped::create_ped(25, joaat("player_zero"), cam::_get_gameplay_cam_coords(), 0f, 0, false);  
--- entity::freeze_entity_position(iVar0, true);  
--- ped::_0x4668d80430d6c299(iVar0);  
--- ui::give_ped_to_pause_menu(iVar0, 1);  
--- 
--- @param model Hash
function RequestMenuPedModel(model) end

--- 
--- assetName = For example "core"   
--- From the b678d decompiled scripts:  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("core_snow");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("fm_mission_controler");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("proj_xmas_firework");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_apartment_mp");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_biolab_heist");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_fireworks");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_parachute");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_wheelsmoke");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_cig_plane");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_creator");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_tankbattle");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_ornate_heist");  
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_prison_break_heist_station");  
--- 
--- @param assetName string
function RequestNamedPtfxAsset(assetName) end

--- 
--- Something to do with interiors that have been loaded.  
--- STREAMING::_8A7A40100EDFEC58(l_13BC, "V_FIB01_cur_elev");  
--- STREAMING::_8A7A40100EDFEC58(l_13BC, "limbo");  
--- STREAMING::_8A7A40100EDFEC58(l_13BB, "V_Office_gnd_lifts");  
--- STREAMING::_8A7A40100EDFEC58(l_13BB, "limbo");  
--- STREAMING::_8A7A40100EDFEC58(l_13BC, "v_fib01_jan_elev");  
--- STREAMING::_8A7A40100EDFEC58(l_13BC, "limbo");  
--- 
--- @param interiorID number
--- @param roomName string
function RequestModelsInRoom(interiorID, roomName) end

--- 
--- This is a NOP function. It does nothing at all.  
--- 
--- @param toggle boolean
function SetDitchPoliceModels(toggle) end

--- 
--- maps script name (thread + 0xD0) by lookup via scriptfx.dat - does nothing when script name is empty  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @return any
function RequestPtfxAsset() end

--- 
--- It seems to make the entity's coords mark the point from which LOD-distances are measured. In my testing, setting a vehicle as the focus entity and moving that vehicle more than 300 distance units away from the player will make the level of detail around the player go down drastically (shadows disappear, textures go extremely low res, etc). The player seems to be the default focus entity.  
--- 
--- @param entity Entity
function SetFocusEntity(entity) end

--- 
--- Override the area where the camera will render the terrain.
--- p3, p4 and p5 are usually set to 0.0
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
function SetFocusPosAndVel(x, y, z, offsetX, offsetY, offsetZ) end


--- @param toggle boolean
function SetGamePausesForStreaming(toggle) end

--- 
--- Harcoded limit for radius is 30.0f  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
function SetHdArea(x, y, z, radius) end


--- @param interiorID number
--- @param toggle boolean
function SetInteriorActive(interiorID, toggle) end

--- 
--- Possible p0 values:  
--- "prologue"  
--- "Prologue_Main"  
--- 
--- @param name string
--- @param toggle boolean
function SetMapdatacullboxEnabled(name, toggle) end

--- 
--- Unloads model from memory  
--- 
--- @param model Hash
function SetModelAsNoLongerNeeded(model) end


--- @param p0 number
function SetPedPopulationBudget(p0) end

--- 
--- All names can be found in playerswitchestablishingshots.meta
--- 
--- @param name string
function SetPlayerSwitchEstablishingShot(name) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 any
function SetPlayerSwitchOutro(p0, p1, p2, p3, p4, p5, p6, p7, p8) end


--- @param toggle boolean
function SetReducePedModelBudget(toggle) end


--- @param toggle boolean
function SetReduceVehicleModelBudget(toggle) end


--- @param p0 number
function SetSrlTime(p0) end


--- @param toggle boolean
function SetStreaming(toggle) end


--- @param p0 number
function SetVehiclePopulationBudget(p0) end


function ShutdownCreatorBudget() end


function StopPlayerSwitch() end

--- 
--- // this enum comes directly from R* so don't edit this  
--- enum ePlayerSwitchType  
--- {  
--- 	SWITCH_TYPE_AUTO,  
--- 	SWITCH_TYPE_LONG,  
--- 	SWITCH_TYPE_MEDIUM,  
--- 	SWITCH_TYPE_SHORT  
--- };  
--- Use GET_IDEAL_PLAYER_SWITCH_TYPE for the best switch type. Or just auto, because it calls the same function in executable.  
--- ----------------------------------------------------  
--- Examples from the decompiled scripts:  
--- STREAMING::START_PLAYER_SWITCH(l_832._f3, PLAYER::PLAYER_PED_ID(), 0, 3);  
--- STREAMING::START_PLAYER_SWITCH(l_832._f3, PLAYER::PLAYER_PED_ID(), 2050, 3);  
--- STREAMING::START_PLAYER_SWITCH(PLAYER::PLAYER_PED_ID(), l_832._f3, 1024, 3);  
--- STREAMING::START_PLAYER_SWITCH(g_141F27, PLAYER::PLAYER_PED_ID(), 513, v_14);  
--- Note: DO NOT, use SWITCH_TYPE_LONG with flag 513. It leaves you stuck in the clouds. You'll have to call STOP_PLAYER_SWITCH() to return to your ped.  
--- Flag 8 w/ SWITCH_TYPE_LONG will zoom out 3 steps, then zoom in 2/3 steps and stop on the 3rd and just hang there.  
--- Flag 8 w/ SWITCH_TYPE_MEDIUM will zoom out 1 step, and just hang there.  
--- 
--- @param from Ped
--- @param to Ped
--- @param flags number
--- @param switchType number
function StartPlayerSwitch(from, to, flags, switchType) end

--- Use after using \_SWITCH_OUT_PLAYER to swoop the camera back down to the player's ped.
--- @param ped Ped
function SwitchInPlayer(ped) end

--- 
--- doesn't act normally when used on mount chilliad
--- 
--- flags:
--- 
--- 0: normal
--- 1: no transition
--- 255: switch IN
--- 
--- switchType: 0 - 3
--- 
--- 0: 1 step towards ped
--- 1: 3 steps out from ped
--- 2: 1 step out from ped
--- 3: 1 step towards ped
--- 
--- @param ped Ped
--- @param flags number
--- @param switchType number
function SwitchOutPlayer(ped, flags, switchType) end

