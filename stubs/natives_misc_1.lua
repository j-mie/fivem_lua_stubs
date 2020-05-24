--- 
--- if (GAMEPLAY::IS_AUSSIE_VERSION()) {  
--- sub_127a9(&l_31, 1024); // l_31 |= 1024  
--- l_129 = 3;  
--- sub_129d2("AUSSIE VERSION IS TRUE!?!?!"); // DEBUG  
--- 		}  
--- 		Used to block some of the prostitute stuff due to laws in Australia.  
--- 
--- @return boolean
function IsAussieVersion() end


--- @return boolean
function IsAutoSaveInProgress() end

--- 
--- Returns bit's boolean state from [offset] of [address].  
--- Example:  
--- GAMEPLAY::IS_BIT_SET(bitAddress, 1);  
--- To enable and disable bits, see:  
--- GAMEPLAY::SET_BIT(&bitAddress, 1);   // enable  
--- GAMEPLAY::CLEAR_BIT(&bitAddress, 1); // disable  
--- 
--- @param address number
--- @param offset number
--- @return boolean
function IsBitSet(address, offset) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 boolean
--- @return boolean
function IsBulletInAngledArea(p0, p1, p2, p3, p4, p5, p6, p7) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 boolean
--- @return boolean
function IsBulletInArea(p0, p1, p2, p3, p4) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 boolean
--- @return boolean
function IsBulletInBox(p0, p1, p2, p3, p4, p5, p6) end

--- 
--- Returns true if command line option '-benchmark' is set.
--- 
--- @return boolean
function IsCommandLineBenchmarkValueSet() end

--- 
--- XBOX ONE  
--- MulleDK19: This function is hard-coded to always return 0.  
--- 
--- @return boolean
function IsDurangoVersion() end

--- 
--- This function is hard-coded to always return 0.  
--- 
--- @return boolean
function IsFrontendFading() end

--- 
--- example:  
--- if (GAMEPLAY::_684A41975F077262()) {  
---        (a_0) = GAMEPLAY::_ABB2FA71C83A1B72();  
---    } else {   
---        (a_0) = -1;  
---    }  
--- 
--- @return boolean
function IsInPowerSavingMode() end

--- 
--- =======================================================  
--- Correction, I have change this to int, instead of int*  
--- as it doesn't use a pointer to the createdIncident.  
--- If you try it you will crash (or) freeze.  
--- =======================================================  
--- 
--- @param incidentId number
--- @return boolean
function IsIncidentValid(incidentId) end


--- @return boolean
function IsMinigameInProgress() end


--- @return boolean
function IsMemoryCardInUse() end


--- @param weatherType string
--- @return boolean
function IsNextWeatherType(weatherType) end

--- 
--- PS4  
--- MulleDK19: This function is hard-coded to always return 0.  
--- Force67: I patched return result and got this : i.imgur.com/hUn7zSj.jpg  
--- translate please?  
--- 
--- @return boolean
function IsOrbisVersion() end

--- 
--- MulleDK19: This function is hard-coded to always return 1.  
--- 
--- @return boolean
function IsPcVersion() end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 any
--- @return boolean
function IsPointObscuredByAMissionEntity(p0, p1, p2, p3, p4, p5, p6) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param id number
--- @return boolean
function IsPopMultiplierAreaUnk(id) end


--- @param weatherType string
--- @return boolean
function IsPrevWeatherType(weatherType) end

--- The BOOL parameters that are documented have not been confirmed. They are just documented from what I've found during testing. They may not work as expected in all cases.
--- @param x number
--- @param y number
--- @param z number
--- @param range number
--- @param p4 boolean
--- @param checkVehicles boolean
--- @param checkPeds boolean
--- @param p7 boolean
--- @param p8 boolean
--- @param ignoreEntity Entity
--- @param p10 boolean
--- @return boolean
function IsPositionOccupied(x, y, z, range, p4, checkVehicles, checkPeds, p7, p8, ignoreEntity, p10) end

--- 
--- Determines whether there is a projectile within the specified coordinates. The coordinates form a rectangle.  
--- ownedByPlayer = only projectiles fired by the player will be detected.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param ownedByPlayer boolean
--- @return boolean
function IsProjectileInArea(x1, y1, z1, x2, y2, z2, ownedByPlayer) end

--- 
--- Determines whether there is a projectile of a specific type within the specified coordinates. The coordinates form a rectangle.  
--- Note: This native hasn't been tested yet.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param type number
--- @param p7 boolean
--- @return boolean
function IsProjectileTypeInArea(x1, y1, z1, x2, y2, z2, type, p7) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 any
--- @param p8 boolean
--- @return boolean
function IsProjectileTypeInAngledArea(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- 
--- Dr. Underscore (1/6/18):  
--- Checks if the projectile is in the radius around that point.  
--- p6 is (most likely) ownedByPlayer. (see IS_PROJECTILE_IN_AREA for info)  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param projHash Hash
--- @param radius number
--- @param ownedByPlayer boolean
--- @return boolean
function IsProjectileTypeInRadius(x, y, z, projHash, radius, ownedByPlayer) end

--- 
--- MulleDK19: This function is hard-coded to always return 0.  
--- 
--- @return boolean
function IsPs3Version() end

--- 
--- This function is hard-coded to always return 0.  
--- 
--- @return boolean
function IsSniperInverted() end

--- 
--- Determines whether there is a sniper bullet within the specified coordinates. The coordinates form a rectangle.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @return boolean
function IsSniperBulletInArea(x1, y1, z1, x2, y2, z2) end


--- @param string string
--- @return boolean
function IsStringNullOrEmpty(string) end


--- @param string string
--- @return boolean
function IsStringNull(string) end


--- @return boolean
function IsStuntJumpMessageShowing() end


--- @return boolean
function IsStuntJumpInProgress() end

--- 
--- Return whether tennis mode is active or not.  
--- 
--- @param ped Ped
--- @return boolean
function IsTennisMode(ped) end

--- 
--- Returns true if the current frontend menu is FE_MENU_VERSION_LANDING_MENU
--- 
--- @return boolean
function LandingMenuIsActive() end


--- @return boolean
function IsThisAMinigameScript() end

--- 
--- MulleDK19: This function is hard-coded to always return 0.  
--- 
--- @return boolean
function IsXbox360Version() end

--- 
--- The following cloudhats are useable:
--- "altostratus"
--- "Cirrus"
--- "cirrocumulus"
--- "Clear 01"
--- "Cloudy 01"
--- "Contrails"
--- "Horizon"
--- "horizonband1"
--- "horizonband2"
--- "horizonband3"
--- "horsey"
--- "Nimbus"
--- "Puffs"
--- "RAIN"
--- "Snowy 01"
--- "Stormy 01"
--- "stratoscumulus"
--- "Stripey"
--- "shower"
--- "Wispy"
--- 
--- @param name string
--- @param transitionTime number
function LoadCloudHat(name, transitionTime) end


--- @param p0 boolean
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 boolean
--- @param p6 number
--- @param p7 number
--- @return boolean
function OverrideSaveHouse(p0, p1, p2, p3, p4, p5, p6, p7) end


function NetworkSetScriptIsSafeForNetworkGame() end


--- @param toggle boolean
function PauseDeathArrestRestart(toggle) end


--- @param ped Ped
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 boolean
function PlayTennisDiveAnim(ped, p1, p2, p3, p4, p5) end


--- @param ped Ped
--- @param animDict string
--- @param animName string
--- @param p3 number
--- @param p4 number
--- @param p5 boolean
function PlayTennisSwingAnim(ped, animDict, animName, p3, p4, p5) end

--- 
--- spawns a few distant/out-of-sight peds, vehicles, animals etc each time it is called  
--- 
function PopulateNow() end


--- @param p0 any
--- @param name string
function RegisterBoolToSave(p0, name) end

--- 
--- Found in the scripts:  
--- GAMEPLAY::_11B56FBBF7224868("CONTRAILS");  
--- 
--- @param name string
function PreloadCloudHat(name) end


--- @param p0 any
--- @param name string
function RegisterEnumToSave(p0, name) end


--- @param p0 any
--- @param name string
function RegisterFloatToSave(p0, name) end


--- @param p0 any
--- @param name string
function RegisterIntToSave(p0, name) end


--- @param p0 any
--- @param name string
function RegisterTextLabelToSave(p0, name) end


--- @param p0 any
--- @param name string
function RegisterInt64ToSave(p0, name) end

--- 
--- Seems to have the same functionality as REGISTER_TEXT_LABEL_TO_SAVE?  
--- GAMEPLAY::_6F7794F28C6B2535(&a_0._f1, "tlPlateText");  
--- GAMEPLAY::_6F7794F28C6B2535(&a_0._f1C, "tlPlateText_pending");  
--- GAMEPLAY::_6F7794F28C6B2535(&a_0._f10B, "tlCarAppPlateText");  
--- "tl" prefix sounds like "Text Label"  
--- 
--- @param p0 any
--- @param name string
function RegisterTextLabelToSave2(p0, name) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 any
--- @param p5 any
--- @param p6 any
--- @return any
function RegisterSaveHouse(p0, p1, p2, p3, p4, p5, p6) end


--- @param id number
--- @param p1 boolean
function RemovePopMultiplierSphere(id, p1) end


--- @param p0 any
function RemoveDispatchSpawnBlockingArea(p0) end

--- 
--- Appears to remove stealth kill action from memory.  
--- ------------------------------------  
--- I agree with the above statement.  
--- p1 is unknown, my best guess would be if false it marks the stealth kill for immediate deletion, or if true marks it for deletion later.  
--- 
--- @param hash Hash
--- @param p1 boolean
function RemoveStealthKill(hash, p1) end


--- @param id number
--- @param p1 boolean
function RemovePopMultiplierArea(id, p1) end

--- 
--- Begins with RESET_*. Next character in the name is either D or E.
--- 
function ResetBenchmarkRecording() end


function ResetDispatchIdealSpawnDistance() end

--- 
--- NativeDB Introduced: v323
--- 
--- @param p0 any
function ResetDispatchTimeBetweenSpawnAttempts(p0) end


function ResetDispatchSpawnBlockingAreas() end

--- Shows Disconnecting from GTA Online HUD and then quits the game. Better name _QUIT_GAME?
function RestartGame() end

--- 
--- Sets the localplayer playerinfo state back to playing (State 0)  
--- States are:  
--- -1: "Invalid"  
--- 0: "Playing"  
--- 1: "Died"  
--- 2: "Arrested"  
--- 3: "Failed Mission"  
--- 4: "Left Game"  
--- 5: "Respawn"  
--- 6: "In MP Cutscene"  
--- 
function ResetLocalplayerState() end

--- 
--- Saves the benchmark recording to %USERPROFILE%\Documents\Rockstar Games\GTA V\Benchmarks and submits some metrics.
--- 
function SaveBenchmarkRecording() end

--- 
--- This sets bit [offset] of [address] to on.  
--- The offsets used are different bits to be toggled on and off, typically there is only one address used in a script.  
--- Example:  
--- GAMEPLAY::SET_BIT(&bitAddress, 1);  
--- To check if this bit has been enabled:  
--- GAMEPLAY::IS_BIT_SET(bitAddress, 1); // will return 1 afterwards  
--- Please note, this method may assign a value to [address] when used.  
--- 
--- @param address number
--- @param offset number
function SetBit(address, offset) end


--- @param var number
--- @param rangeStart number
--- @param rangeEnd number
--- @param p3 number
function SetBitsInRange(var, rangeStart, rangeEnd, p3) end


--- @param opacity number
function SetCloudHatOpacity(opacity) end


--- @param toggle boolean
function SetCreditsActive(toggle) end

--- 
--- Specifies a custom respawn position to be used in conjunction with _SET_NEXT_RESPAWN_TO_CUSTOM  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
function SetCustomRespawnPosition(x, y, z, heading) end


--- @param x number
--- @param y number
--- @param z number
function SetDispatchSpawnLocation(x, y, z) end


--- @param p0 number
function SetDispatchIdealSpawnDistance(p0) end


--- @param p0 any
--- @param p1 number
function SetDispatchTimeBetweenSpawnAttemptsMultiplier(p0, p1) end


--- @param p0 any
--- @param p1 number
function SetDispatchTimeBetweenSpawnAttempts(p0, p1) end

--- 
--- NativeDB Return Type: void
--- 
--- @param player Player
--- @return any
function SetExplosiveMeleeThisFrame(player) end


--- @param player Player
function SetExplosiveAmmoThisFrame(player) end


--- @param toggle boolean
function SetFadeInAfterLoad(toggle) end

--- 
--- Sets whether the game should fade in after the player dies or is arrested.  
--- 
--- @param toggle boolean
function SetFadeInAfterDeathArrest(toggle) end

--- 
--- Sets whether the game should fade out after the player is arrested.  
--- 
--- @param toggle boolean
function SetFadeOutAfterArrest(toggle) end

--- 
--- Sets whether the game should fade out after the player dies.  
--- 
--- @param toggle boolean
function SetFadeOutAfterDeath(toggle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param player Player
--- @return any
function SetFireAmmoThisFrame(player) end

--- 
--- Sets a visually fake wanted level on the user interface. Used by Rockstar's scripts to "override" regular wanted levels and make custom ones while the real wanted level and multipliers are ignored.  
--- Max is 6. Also the mini-map gets the red & blue flashing effect.  
--- 
--- @param fakeWantedLevel number
function SetFakeWantedLevel(fakeWantedLevel) end

--- 
--- Make sure to call this from the correct thread if you're using multiple threads because all other threads except the one which is calling SET_GAME_PAUSED will be paused which means you will lose control and the game remains in paused mode until you exit GTA5.exe  
--- 
--- @param toggle boolean
function SetGamePaused(toggle) end

--- 
--- level can be from 0 to 3  
--- 0: 9.8   
--- 1: 2.4   
--- 2: 0.1 - very low  
--- 3: 0.0  
--- 
--- @param level number
function SetGravityLevel(level) end

--- 
--- SET_INCIDENT_*
--- 
--- @param incidentId number
--- @param p1 number
function SetIncidentUnk(incidentId, p1) end


--- @param incidentId number
--- @param dispatchService number
--- @param numUnits number
function SetIncidentRequestedUnits(incidentId, dispatchService, numUnits) end

--- 
--- Formerly known as _LOWER_MAP_PROP_DENSITY and wrongly due to idiots as _ENABLE_MP_DLC_MAPS.  
--- Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. Does not touch DLC map data at all.  
--- In fact, I doubt this changes the flag whatsoever, that's the OTHER native idiots use together with this that does so, this one only causes a loading screen to show as it reloads map data.  
--- ------------------------  
--- While you're going on your rant about other "idiots" can you please supply the name of the "other native" for us "idiots" who'd like to actually learn about loading IPL's? Thank, you.  
--- 
--- 
--- 
--- NativeDB Parameter 0: int toggle
--- 
--- @param toggle boolean
function SetInstancePriorityMode(toggle) end

--- 
--- Sets an unknown flag used by CScene in determining which entities from CMapData scene nodes to draw, similar to 9BAE5AD2508DF078.  
--- Documented by NTAuthority (http://fivem.net/).  
--- 
--- @param flag number
function SetInstancePriorityHint(flag) end

--- 
--- If true, the player can't save the game.   
--- If the parameter is true, sets the mission flag to true, if the parameter is false, the function does nothing at all.  
--- ^ also, if the mission flag is already set, the function does nothing at all  
--- 
--- @param toggle boolean
function SetMissionFlag(toggle) end

--- 
--- SET_PLAYER_*
--- 
--- @param toggle boolean
function SetPlayerRockstarEditorDisabled(toggle) end


--- @param toggle boolean
function SetMinigameInProgress(toggle) end

--- 
--- If the parameter is true, sets the random event flag to true, if the parameter is false, the function does nothing at all.  
--- Does nothing if the mission flag is set.  
--- 
--- 
--- 
--- NativeDB Parameter 0: BOOL toggle
--- 
--- @param toggle any
function SetRandomEventFlag(toggle) end


function SetRandomWeatherType() end

--- 
--- Appears to have an optional bool parameter that is unused in the scripts.  
--- If you pass true, something will be set to zero.  
--- 
--- @param weatherType string
function SetOverrideWeather(weatherType) end

--- 
--- The bool is not a toggle!!!  
--- 
--- @param ignoreVehicle boolean
function SetSaveMenuActive(ignoreVehicle) end

--- Controls rain, rain sounds and the creation of puddles.
--- 
--- With an intensity higher than 0.5f, only the creation of puddles gets faster, rain and rain sound won't increase after that.
--- 
--- With an intensity of 0.0f rain and rain sounds are disabled and there won't be any new puddles.
--- 
--- To use the rain intensity of the current weather, call this native with -1f as intensity.
--- @param intensity number
function SetRainFxIntensity(intensity) end

--- 
--- NativeDB Return Type: void
--- 
--- @param player Player
--- @return number
function SetSuperJumpThisFrame(player) end


--- @param seed number
function SetRandomSeed(seed) end


--- @param toggle boolean
function SetThisScriptCanRemoveBlipsCreatedByAnyScript(toggle) end

--- 
--- Maximum value is 1.  
--- At a value of 0 the game will still run at a minimum time scale.  
--- Slow Motion 1: 0.6  
--- Slow Motion 2: 0.4  
--- Slow Motion 3: 0.2  
--- 
--- @param timeScale number
function SetTimeScale(timeScale) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function SetSaveHouse(p0, p1, p2) end

--- 
--- The following weatherTypes are used in the scripts:  
--- "CLEAR"  
--- "EXTRASUNNY"  
--- "CLOUDS"  
--- "OVERCAST"  
--- "RAIN"  
--- "CLEARING"  
--- "THUNDER"  
--- "SMOG"  
--- "FOGGY"  
--- "XMAS"  
--- "SNOWLIGHT"  
--- "BLIZZARD"  
--- 
--- @param weatherType string
function SetWeatherTypeNowPersist(weatherType) end


--- @param toggle boolean
function SetStuntJumpsCanTrigger(toggle) end

--- 
--- The following weatherTypes are used in the scripts:  
--- "CLEAR"  
--- "EXTRASUNNY"  
--- "CLOUDS"  
--- "OVERCAST"  
--- "RAIN"  
--- "CLEARING"  
--- "THUNDER"  
--- "SMOG"  
--- "FOGGY"  
--- "XMAS"  
--- "SNOWLIGHT"  
--- "BLIZZARD"  
--- 
--- @param weatherType string
function SetWeatherTypePersist(weatherType) end


--- @param toggle boolean
function SetThisScriptCanBePaused(toggle) end

--- 
--- The following weatherTypes are used in the scripts:  
--- "CLEAR"  
--- "EXTRASUNNY"  
--- "CLOUDS"  
--- "OVERCAST"  
--- "RAIN"  
--- "CLEARING"  
--- "THUNDER"  
--- "SMOG"  
--- "FOGGY"  
--- "XMAS"  
--- "SNOWLIGHT"  
--- "BLIZZARD"  
--- 
--- @param weatherType string
function SetWeatherTypeNow(weatherType) end

--- 
--- Sets the the raw wind speed value.  
--- 
--- @param speed number
function SetWind(speed) end


--- @param weatherType string
--- @param time number
function SetWeatherTypeOvertimePersist(weatherType, time) end

--- 
--- This is NOT a heading. It's a FLOAT value from 0.0-7.0. Look at this image:  
--- i.imgur.com/FwVpGS6.png  
--- ----------------------------  
--- This appears to be a heading, in radians (0-2*pi) -PNWParksFan  
--- 
--- @param direction number
function SetWindDirection(direction) end

--- 
--- Mixes two weather types. If percentWeather2 is set to 0.0f, then the weather will be entirely of weatherType1, if it is set to 1.0f it will be entirely of weatherType2. If it's set somewhere in between, there will be a mixture of weather behaviors. To test, try this in the RPH console, and change the float to different values between 0 and 1:  
--- execute "NativeFunction.Natives.x578C752848ECFA0C(Game.GetHashKey(""RAIN""), Game.GetHashKey(""SMOG""), 0.50f);  
--- Note that unlike most of the other weather natives, this native takes the hash of the weather name, not the plain string. These are the weather names and their hashes:  
--- CLEAR	0x36A83D84  
--- EXTRASUNNY	0x97AA0A79  
--- CLOUDS	0x30FDAF5C  
--- OVERCAST	0xBB898D2D  
--- RAIN	0x54A69840  
--- CLEARING	0x6DB1A50D  
--- THUNDER	0xB677829F  
--- SMOG	0x10DCF4B5  
--- FOGGY	0xAE737644  
--- XMAS	0xAAC9C895  
--- SNOWLIGHT	0x23FB812B  
--- BLIZZARD	0x27EA2814  
--- /* OLD INVALID INFO BELOW */  
--- Not tested. Based purely on disassembly. Instantly sets the weather to sourceWeather, then transitions to targetWeather over the specified transitionTime in seconds.  
--- If an invalid hash is specified for sourceWeather, the current weather type will be used.  
--- If an invalid hash is specified for targetWeather, the next weather type will be used.  
--- If an invalid hash is specified for both sourceWeather and targetWeather, the function just changes the transition time of the current transition.  
--- 
--- @param weatherType1 Hash
--- @param weatherType2 Hash
--- @param percentWeather2 number
function SetWeatherTypeTransition(weatherType1, weatherType2, percentWeather2) end

--- 
--- this is what p7 does in disassembly  
--- __int8 var = 32;  
--- if (isInvisible)  
--- {  
---    var = 16;  
--- }  
--- int v110 = var | 2 * p7;  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param damage number
--- @param p7 boolean
--- @param weaponHash Hash
--- @param ownerPed Ped
--- @param isAudible boolean
--- @param isInvisible boolean
--- @param speed number
function ShootSingleBulletBetweenCoords(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed) end

--- 
--- Using this native will clamp the wind speed value to a range of 0.0- 12.0. Using SET_WIND sets the same value but without the restriction.  
--- 
--- @param speed number
function SetWindSpeed(speed) end

--- 
--- entity - entity to ignore  
--- 
--- 
--- 
--- NativeDB Added Parameter 15: Any p14
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param damage number
--- @param p7 boolean
--- @param weaponHash Hash
--- @param ownerPed Ped
--- @param isAudible boolean
--- @param isInvisible boolean
--- @param speed number
--- @param entity Entity
function ShootSingleBulletBetweenCoordsIgnoreEntity(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity) end

--- 
--- Since latest patches has 18 parameters.  
--- entity - entity to ignore  
--- 
--- 
--- 
--- NativeDB Added Parameter 19: Any p18
--- NativeDB Added Parameter 20: Any p19
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param damage number
--- @param p7 boolean
--- @param weaponHash Hash
--- @param ownerPed Ped
--- @param isAudible boolean
--- @param isInvisible boolean
--- @param speed number
--- @param entity Entity
--- @param p14 boolean
--- @param p15 boolean
--- @param p16 boolean
--- @param p17 boolean
function ShootSingleBulletBetweenCoordsIgnoreEntityNew(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity, p14, p15, p16, p17) end

--- 
--- If toggle is true, the ped's head is shown in the pause menu  
--- If toggle is false, the ped's head is not shown in the pause menu  
--- 
--- @param toggle boolean
function ShowPedInPauseMenu(toggle) end

--- 
--- I can 100% confirm this is some kind of START_* native.  
--- Next character in the name is either C, D or E.  
--- Used only once in the scripts (benchmark.ysc).  
--- 
function StartBenchmarkRecording() end

--- Returns true if the game is using the metric measurement system, false if imperial is used.
--- This is what r\* uses for the different label types (either ones with miles in them or with km, as well as some other measurement related labels).
--- @return boolean
function ShouldUseMetricMeasurements() end

--- 
--- Second parameter might be length.  
--- 
--- @param p0 any
--- @param size number
--- @param structName string
function StartSaveStructWithSize(p0, size, structName) end


function StopSaveArray() end

--- This native always come right before SetEntityQuaternion where its final 4 parameters are SlerpNearQuaternion p9 to p12
--- @param t number
--- @param x number
--- @param y number
--- @param z number
--- @param w number
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param w1 number
--- @param outX number
--- @param outY number
--- @param outZ number
--- @param outW number
function SlerpNearQuaternion(t, x, y, z, w, x1, y1, z1, w1, outX, outY, outZ, outW) end


function StopSaveStruct() end

--- 
--- Second parameter might be length.  
--- 
--- @param p0 any
--- @param size number
--- @param arrayName string
function StartSaveArrayWithSize(p0, size, arrayName) end

--- 
--- Returns tangent value of p0.  
--- 
--- @param p0 number
--- @return number
function Tan(p0) end


--- @param p0 any
--- @param p1 any
--- @param p2 boolean
function StartSaveData(p0, p1, p2) end

--- 
--- For a full list, see here: pastebin.com/yLNWicUi  
--- 
--- @param scriptName string
function TerminateAllScriptsWithThisName(scriptName) end

--- 
--- Called 4 times in the b617d scripts:  
--- GAMEPLAY::_A74802FB8D0B7814("CONTRAILS", 0);  
--- 
--- @param name string
--- @param p1 number
function UnloadCloudHat(name, p1) end

--- 
--- Begins with STOP_*. Next character in the name is either D or E.
--- 
function StopBenchmarkRecording() end


function StopSaveData() end


--- @param toggle boolean
function UsingMissionCreator(toggle) end

--- 
--- Returns false if it's a null or empty string or if the string is too long. outInteger will be set to -999 in that case.  
--- If all checks have passed successfully, the return value will be set to whatever strtol(string, 0i64, 10); returns.  
--- 
--- @param string string
--- @param outInteger number
--- @return boolean
function StringToInt(string, outInteger) end

--- 
--- Returns true if the current frontend menu is FE_MENU_VERSION_SP_PAUSE
--- 
--- U*
--- 
--- @return boolean
function UiIsSingleplayerPauseMenuActive() end

--- 
--- Returns the current status of the onscreen keyboard, and updates the output.  
--- Status Codes:  
--- 0 - User still editing  
--- 1 - User has finished editing  
--- 2 - User has canceled editing  
--- 3 - Keyboard isn't active  
--- 
--- @return number
function UpdateOnscreenKeyboard() end

