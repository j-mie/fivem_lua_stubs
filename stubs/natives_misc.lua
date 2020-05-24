
--- @param value number
--- @return number
function Absi(value) end

--- 
--- Returns arccos value of p0.  
--- 
--- @param p0 number
--- @return number
function Acos(p0) end


--- @param value number
--- @return number
function Absf(value) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @return any
function AddDispatchSpawnBlockingAngledArea(p0, p1, p2, p3, p4, p5, p6) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return any
function AddDispatchSpawnBlockingArea(p0, p1, p2, p3) end

--- 
--- Returns the index of the newly created hospital spawn point.  
--- p3 might be radius?  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param p3 number
--- @param p4 any
--- @return number
function AddHospitalRestart(x, y, z, p3, p4) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 any
--- @return any
function AddPoliceRestart(p0, p1, p2, p3, p4) end

--- 
--- NativeDB Added Parameter 10: BOOL p9
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param p6 number
--- @param p7 number
--- @param p8 boolean
--- @return number
function AddPopMultiplierArea(x1, y1, z1, x2, y2, z2, p6, p7, p8) end


--- @param value any
function AddReplayStatValue(value) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 boolean
--- @param p7 boolean
--- @return number
function AddPopMultiplierSphere(p0, p1, p2, p3, p4, p5, p6, p7) end

--- See description of [ADD_STUNT_JUMP_ANGLED](#_0xBBE5D803A5360CBF) for detailed info. The only difference really is this one does not have the radius (or angle, not sure) floats parameters for entry and landing zones.
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param x3 number
--- @param y3 number
--- @param z3 number
--- @param x4 number
--- @param y4 number
--- @param z4 number
--- @param camX number
--- @param camY number
--- @param camZ number
--- @param unk1 number
--- @param unk2 number
--- @param unk3 number
--- @return number
function AddStuntJump(x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4, z4, camX, camY, camZ, unk1, unk2, unk3) end

--- Creates a new stunt jump. 
--- 
--- The radius1 and radius2 might actually not be a radius at all, but that's what it seems to me testing them in-game. But they may be 'angle' floats instead, considering this native is named ADD_STUNT_JUMP\_**ANGLED**.
--- 
--- Info about the specific 'parameter sections':
--- 
--- **x1, y1, z1, x2, y2, z2 and radius1:**
--- 
--- First coordinates are for the jump entry area, and the radius that will be checked around that area. So if you're not exactly within the coordinates, but you are within the outter radius limit then it will still register as entering the stunt jump. Note as mentioned above, the radius is just a guess, I'm not really sure about it's exact purpose.
--- 
--- **x3, y3, z3, x4, y4, z4 and radius2:**
--- 
--- Next part is the landing area, again starting with the left bottom (nearest to the stunt jump entry zone) coordinate, and the second one being the top right furthest away part of the landing area. Followed by another (most likely) radius float, this is usually slightly larger than the entry zone 'radius' float value, just because you have quite a lot of places where you can land (I'm guessing).
--- 
--- **camX, camY and camZ:**
--- 
--- The final coordinate in this native is the Camera position. Rotation and zoom/FOV is managed by the game itself, you just need to provide the camera location.
--- 
--- **unk1, unk2 and unk3:**
--- 
--- Not sure what these are for, but they're always 150, 0, 0 in decompiled scripts.
--- 
--- Visualized example in-game:
--- 
--- ![](https://d.fivem.dev/2019-03-15_18-24_c7802_846.png)
--- 
--- Here is a list of almost all of the stunt jumps from GTA V (taken from decompiled scripts): <https://pastebin.com/EW1jBPkY>
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param radius1 number
--- @param x3 number
--- @param y3 number
--- @param z3 number
--- @param x4 number
--- @param y4 number
--- @param z4 number
--- @param radius2 number
--- @param camX number
--- @param camY number
--- @param camZ number
--- @param unk1 number
--- @param unk2 number
--- @param unk3 number
--- @return number
function AddStuntJumpAngled(x1, y1, z1, x2, y2, z2, radius1, x3, y3, z3, x4, y4, z4, radius2, camX, camY, camZ, unk1, unk2, unk3) end

--- 
--- Dr. Underscore (1/6/18):  
--- Most references of this native come from the creator scripts. (creator, fm_capture_creator, fm_deathmatch_creator, fm_lts_creator, fm_race_creator).  
--- Seems to have something to do with initializing/destroying creator shit.  
--- 
--- @param toggle boolean
function AllowMissionCreatorWarp(toggle) end

--- 
--- Add a point related to CTacticalAnalysis
--- 
--- @param x number
--- @param y number
--- @param z number
function AddTacticalAnalysisPoint(x, y, z) end


--- @return boolean
function AreProfileSettingsValid() end

--- 
--- is this like strcmp??  
--- 
--- @param string1 string
--- @param string2 string
--- @return boolean
function AreStringsEqual(string1, string2) end

--- 
--- Returns arcsin value of p0.  
--- 
--- @param p0 number
--- @return number
function Asin(p0) end

--- 
--- Returns arctan value of p0.  
--- 
--- @param p0 number
--- @return number
function Atan(p0) end


--- @param p0 any
--- @param p1 any
function BeginReplayStats(p0, p1) end


--- @param p0 number
--- @param p1 number
--- @return number
function Atan2(p0, p1) end


--- @param dispatchService number
--- @param toggle boolean
function BlockDispatchServiceResourceCreation(dispatchService, toggle) end

--- 
--- Cancels an onscreen keyboard, if available.
--- 
function CancelOnscreenKeyboard() end


function CancelStuntJump() end


function CleanupAsyncInstall() end

--- 
--- NativeDB Added Parameter 13: Any p12
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 boolean
--- @param p8 boolean
--- @param p9 boolean
--- @param p10 boolean
--- @param p11 boolean
function ClearAngledAreaOfVehicles(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

--- 
--- Example: CLEAR_AREA(0, 0, 0, 30, true, false, false, false);  
--- 
--- @param X number
--- @param Y number
--- @param Z number
--- @param radius number
--- @param p4 boolean
--- @param ignoreCopCars boolean
--- @param ignoreObjects boolean
--- @param p7 boolean
function ClearArea(X, Y, Z, radius, p4, ignoreCopCars, ignoreObjects, p7) end

--- 
--- flags appears to always be 0
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param flags number
function ClearAreaOfCops(x, y, z, radius, flags) end

--- 
--- GAMEPLAY::_0x957838AAF91BD12D(x, y, z, radius, false, false, false, false); seem to make all objects go away, peds, vehicles etc. All booleans set to true doesn't seem to change anything.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param p4 boolean
--- @param p5 boolean
--- @param p6 boolean
--- @param p7 boolean
function ClearAreaOfEverything(x, y, z, radius, p4, p5, p6, p7) end

--- 
--- I looked through the PC scripts that this site provides you with a link to find. It shows the last param mainly uses, (0, 2, 6, 16, and 17) so I am going to assume it is a type of flag.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param flags number
function ClearAreaOfObjects(x, y, z, radius, flags) end

--- 
--- Example: 		CLEAR_AREA_OF_PEDS(0, 0, 0, 10000, 1);  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param flags number
function ClearAreaOfPeds(x, y, z, radius, flags) end

--- 
--- NativeDB Parameter 4: int flags
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param flags boolean
function ClearAreaOfProjectiles(x, y, z, radius, flags) end

--- 
--- Example: 		CLEAR_AREA_OF_VEHICLES(0, 0, 0, 10000, false, false, false, false, false);  
--- 
--- 
--- 
--- NativeDB Added Parameter 10: BOOL p9
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param p4 boolean
--- @param p5 boolean
--- @param p6 boolean
--- @param p7 boolean
--- @param p8 boolean
function ClearAreaOfVehicles(x, y, z, radius, p4, p5, p6, p7, p8) end


function ClearCloudHat() end

--- 
--- This sets bit [offset] of [address] to off.  
--- Example:  
--- GAMEPLAY::CLEAR_BIT(&bitAddress, 1);  
--- To check if this bit has been enabled:  
--- GAMEPLAY::IS_BIT_SET(bitAddress, 1); // will return 0 afterwards  
--- 
--- @param address number
--- @param offset number
function ClearBit(address, offset) end


function ClearReplayStats() end


function ClearOverrideWeather() end

--- 
--- Sets the next spawn location to the position supplied to _SET_CUSTOM_RESPAWN_POSITION.  
--- 
function ClearRestartCustomPosition() end


function ClearTacticalAnalysisPoints() end


function ClearWeatherTypePersist() end

--- 
--- Compares two strings up to a specified number of characters.  
--- Parameters:  
--- str1 - String to be compared.  
--- str2 - String to be compared.  
--- matchCase - Comparison will be case-sensitive.  
--- maxLength - Maximum number of characters to compare. A value of -1 indicates an infinite length.  
--- Returns:  
--- A value indicating the relationship between the strings:  
--- <0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'A' < 'B', so result = -1)  
--- 0 - The contents of both strings are equal.  
--- >0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'B' > 'A', so result = 1)  
--- Examples:  
--- GAMEPLAY::COMPARE_STRINGS("STRING", "string", false, -1); // 0; equal  
--- GAMEPLAY::COMPARE_STRINGS("TESTING", "test", false, 4); // 0; equal  
--- GAMEPLAY::COMPARE_STRINGS("R2D2", "R2xx", false, 2); // 0; equal  
--- GAMEPLAY::COMPARE_STRINGS("foo", "bar", false, -1); // 4; 'f' > 'b'  
--- GAMEPLAY::COMPARE_STRINGS("A", "A", true, 1); // 0; equal  
--- When comparing case-sensitive strings, lower-case characters are greater than upper-case characters:  
--- GAMEPLAY::COMPARE_STRINGS("A", "a", true, 1); // -1; 'A' < 'a'  
--- GAMEPLAY::COMPARE_STRINGS("a", "A", true, 1); // 1; 'a' > 'A'  
--- 
--- @param str1 string
--- @param str2 string
--- @param matchCase boolean
--- @param maxLength number
--- @return number
function CompareStrings(str1, str2, matchCase, maxLength) end


--- @param dst any
--- @param src any
--- @param size number
function CopyMemory(dst, src, size) end

--- 
--- p0 could be type (valueused in scripts: 14, 7, 5, 3, 11)  
--- p1 is a return from get_player_ped() in am_gang_call.c, but player_ped_id() in other (non am) scripts.  
--- p3 is usually 0f or 3f  
--- =====================================================  
--- enum IncidentTypes  
--- {  
---     FireDepartment = 3,  
---     Paramedics = 5,  
---     Police = 7,  
---     PedsInCavalcades = 11,   
---     Merryweather = 14  
--- };  
--- As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   
--- Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  
--- Side Note 2: I say it breaks as if you call this proper,  
--- if(CREATE_INCIDENT) etc it will return false if you do as I said above.  
--- =====================================================  
--- 
--- 
--- 
--- NativeDB Added Parameter 6: Any p5
--- NativeDB Added Parameter 7: Any p6
--- 
--- @param dispatchService number
--- @param ped Ped
--- @param numUnits number
--- @param radius number
--- @param outIncidentID number
--- @return boolean
function CreateIncidentWithEntity(dispatchService, ped, numUnits, radius, outIncidentID) end

--- 
--- enum IncidentTypes  
--- {  
---     FireDepartment = 3,  
---     Paramedics = 5,  
---     Police = 7,  
---     PedsInCavalcades = 11,   
---     Merryweather = 14  
--- };  
--- As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   
--- Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  
--- Side Note 2: I say it breaks as if you call this proper,  
--- if(CREATE_INCIDENT) etc it will return false if you do as I said above.  
--- =====================================================  
--- 
--- 
--- 
--- NativeDB Added Parameter 8: Any p7
--- NativeDB Added Parameter 9: Any p8
--- 
--- @param dispatchService number
--- @param x number
--- @param y number
--- @param z number
--- @param numUnits number
--- @param radius number
--- @param outIncidentID number
--- @return boolean
function CreateIncident(dispatchService, x, y, z, numUnits, radius, outIncidentID) end


--- @param p0 number
function DeleteStuntJump(p0) end

--- 
--- Delete an incident with a given id.  
--- =======================================================  
--- Correction, I have change this to int, instead of int*  
--- as it doesn't use a pointer to the createdIncident.  
--- If you try it you will crash (or) freeze.  
--- =======================================================  
--- 
--- @param incidentId number
function DeleteIncident(incidentId) end

--- 
--- Disables the spawn point at the police house on the specified index.  
--- policeIndex: The police house index.  
--- toggle: true to enable the spawn point, false to disable.  
--- 
--- @param policeIndex number
--- @param toggle boolean
function DisablePoliceRestart(policeIndex, toggle) end

--- 
--- The game by default has 5 hospital respawn points. Disabling them all will cause the player to respawn at the last position they were.  
--- Doesn't work....  
--- 
--- @param hospitalIndex number
--- @param toggle boolean
function DisableHospitalRestart(hospitalIndex, toggle) end


--- @param p0 number
function DisableStuntJumpSet(p0) end


--- @param p0 number
--- @param windowTitle string
--- @param p2 any
--- @param defaultText string
--- @param defaultConcat1 string
--- @param defaultConcat2 string
--- @param defaultConcat3 string
--- @param defaultConcat4 string
--- @param defaultConcat5 string
--- @param defaultConcat6 string
--- @param defaultConcat7 string
--- @param maxInputLength number
function DisplayOnscreenKeyboardWithLongerInitialString(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, defaultConcat4, defaultConcat5, defaultConcat6, defaultConcat7, maxInputLength) end

--- 
--- note, p0 is set to 6 for PC platform in at least 1 script, or to unk::_get_ui_language_id() == 0 otherwise.  
--- NOTE: windowTitle uses text labels, and an invalid value will display nothing.  
--- Dr. Underscore: UNK::_GET_UI_LANGUAGE_ID() is now UNK::_GET_CURRENT_LANGUAGE_ID()  
--- www.gtaforums.com/topic/788343-vrel-script-hook-v/?p=1067380474  
--- windowTitle's  
--- -----------------  
--- CELL_EMAIL_BOD	=	"Enter your Eyefind message"  
--- CELL_EMAIL_BODE	=	"Message too long. Try again"  
--- CELL_EMAIL_BODF	=	"Forbidden message. Try again"  
--- CELL_EMAIL_SOD	=	"Enter your Eyefind subject"  
--- CELL_EMAIL_SODE	=	"Subject too long. Try again"  
--- CELL_EMAIL_SODF	=	"Forbidden text. Try again"  
--- CELL_EMASH_BOD	=	"Enter your Eyefind message"  
--- CELL_EMASH_BODE	=	"Message too long. Try again"  
--- CELL_EMASH_BODF	=	"Forbidden message. Try again"  
--- CELL_EMASH_SOD	=	"Enter your Eyefind subject"  
--- CELL_EMASH_SODE	=	"Subject too long. Try again"  
--- CELL_EMASH_SODF	=	"Forbidden Text. Try again"  
--- FMMC_KEY_TIP10	=	"Enter Synopsis"  
--- FMMC_KEY_TIP12	=	"Enter Custom Team Name"  
--- FMMC_KEY_TIP12F	=	"Forbidden Text. Try again"  
--- FMMC_KEY_TIP12N	=	"Custom Team Name"  
--- FMMC_KEY_TIP8	=	"Enter Message"  
--- FMMC_KEY_TIP8F	=	"Forbidden Text. Try again"  
--- FMMC_KEY_TIP8FS	=	"Invalid Message. Try again"  
--- FMMC_KEY_TIP8S	=	"Enter Message"  
--- FMMC_KEY_TIP9	=	"Enter Outfit Name"  
--- FMMC_KEY_TIP9F	=	"Invalid Outfit Name. Try again"  
--- FMMC_KEY_TIP9N	=	"Outfit Name"  
--- PM_NAME_CHALL	=	"Enter Challenge Name"  
--- 
--- @param p0 number
--- @param windowTitle string
--- @param p2 string
--- @param defaultText string
--- @param defaultConcat1 string
--- @param defaultConcat2 string
--- @param defaultConcat3 string
--- @param maxInputLength number
function DisplayOnscreenKeyboard(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength) end


function DoAutoSave() end


--- @param id number
--- @return boolean
function DoesPopMultiplierSphereExist(id) end


--- @param id number
--- @return boolean
function DoesPopMultiplierAreaExist(id) end

--- 
--- Directly from R*:  
--- enum eDispatchType : UINT16  
--- {  
---     DT_PoliceAutomobile = 1,  
---     DT_PoliceHelicopter = 2,  
---     DT_FireDepartment = 3,  
---     DT_SwatAutomobile = 4,  
---     DT_AmbulanceDepartment = 5,  
---     DT_PoliceRiders = 6,  
---     DT_PoliceVehicleRequest = 7,  
---     DT_PoliceRoadBlock = 8,  
---     DT_PoliceAutomobileWaitPulledOver = 9,  
---     DT_PoliceAutomobileWaitCruising = 10,  
---     DT_Gangs = 11,  
---     DT_SwatHelicopter = 12,  
---     DT_PoliceBoat = 13,  
---     DT_ArmyVehicle = 14,  
---     DT_BikerBackup = 15  
--- };  
--- By making toggle false it disables the dispatch.  
--- curious if this is what they used when you toggled on and off cops in a GTA IV freemode you hosted. Sad they got rid of the option to make a private session without cops.  
--- Also on x360 seems with or without neverWanted on, setting these to all false in SP of course doesn't seem to work. I would understand getting stars, but cops are still dispatched and combat you.  
--- 
--- @param dispatchService number
--- @param toggle boolean
function EnableDispatchService(dispatchService, toggle) end

--- 
--- Makes the ped jump around like they're in a tennis match  
--- 
--- @param ped Ped
--- @param toggle boolean
--- @param p2 boolean
function EnableTennisMode(ped, toggle, p2) end


function EndReplayStats() end


--- @param p0 number
function EnableStuntJumpSet(p0) end

--- 
--- Finds a position ahead of the player by predicting the players next actions.  
--- The positions match path finding node positions.  
--- When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.  
--- =======================================================  
--- I may sort this with alter research, but if someone  
--- already knows please tell what the difference in   
--- X2, Y2, Z2 is. I doubt it's rotation. Is it like   
--- checkpoints where X1, Y1, Z1 is your/a position and  
--- X2, Y2, Z2 is a given position ahead of that position?  
--- =======================================================  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param distance number
--- @param spawnPoint vector3
--- @return boolean
function FindSpawnPointInDirection(x1, y1, z1, x2, y2, z2, distance, spawnPoint) end

--- 
--- creates single lightning+thunder at random position  
--- 
function ForceLightningFlash() end


--- @return number
function GetAllocatedStackSize() end

--- 
--- Exits the game and downloads a fresh social club update on next restart.  
--- 
function ForceSocialClubUpdate() end

--- 
--- Returns the degree of angle between (x1, y1) and (x2, y2) lines in 2D coordinate system.  
--- 
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @return number
function GetAngleBetween2dVectors(x1, y1, x2, y2) end

--- 
--- This line found 48 times in the scripts:  
--- GAMEPLAY::_B335F761606DB47C(&v_4, &v_7, a_0, v_A);  
--- 
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 boolean
--- @return boolean
function GetBaseElementMetadata(p1, p2, p3, p4) end

--- 
--- Returns value of the '-benchmarkIterations' command line option.
--- 
--- @return number
function GetBenchmarkIterationsFromCommandLine() end

--- 
--- Returns value of the '-benchmarkPass' command line option.
--- 
--- @return number
function GetBenchmarkPassFromCommandLine() end


--- @return number
function GetBenchmarkTime() end


--- @param var number
--- @param rangeStart number
--- @param rangeEnd number
--- @return number
function GetBitsInRange(var, rangeStart, rangeEnd) end

--- Returns the distance between two three-dimensional points, optionally ignoring the Z values.
--- 
--- You'll most likely want to use your language's native vector functionality instead.
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param useZ boolean
--- @return number
function GetDistanceBetweenCoords(x1, y1, z1, x2, y2, z2, useZ) end


--- @return number
function GetCloudHatOpacity() end


--- @return number
function GetFakeWantedLevel() end


--- @return number
function GetFrameCount() end


--- @return number
function GetFrameTime() end


--- @return number
function GetGameTimer() end


--- @param x number
--- @param y number
--- @param z number
--- @param groundZ number
--- @param normal vector3
--- @return boolean
function GetGroundZAndNormalFor3dCoord(x, y, z, groundZ, normal) end

--- 
--- it returns a reference to an empty string, the same empty string that's used by 1687 internal gta functions.   if it was used in a script (and i cannot find an instance of it being used), it would be as the source for a StringCopy or somesuch.  
--- 
--- @return string
function GetGlobalCharBuffer() end

--- 
--- Gets the ground elevation at the specified position. Note that if the specified position is below ground level, the function will output zero!  
--- x: Position on the X-axis to get ground elevation at.  
--- y: Position on the Y-axis to get ground elevation at.  
--- z: Position on the Z-axis to get ground elevation at.  
--- groundZ: The ground elevation at the specified position.  
--- unk: Nearly always 0, very rarely 1 in the scripts.  
--- 
--- 
--- 
--- NativeDB Added Parameter 6: BOOL p5
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param groundZ number
--- @param unk boolean
--- @return boolean
function GetGroundZFor3dCoord(x, y, z, groundZ, unk) end

--- 
--- NativeDB Added Parameter 6: BOOL p5
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param groundZ number
--- @param p4 boolean
--- @return boolean
function GetGroundZFor3dCoord2(x, y, z, groundZ, p4) end

--- 
--- dx = x1   
--- dy = y1  
--- 
--- @param dx number
--- @param dy number
--- @return number
function GetHeadingFromVector2d(dx, dy) end

--- Gets the (case-insensitive, lower-cased) hash value for the passed string. This uses the 'Jenkins one-at-a-time' hashing
--- algorithm.
--- @param string string
--- @return Hash
function GetHashKey(string) end


--- @return number
function GetIndexOfCurrentLevel() end

--- 
--- Returns true if profile setting 208 is equal to 0.
--- 
--- @return boolean
function GetIsAutoSaveOff() end

--- 
--- Although we don't have a jenkins hash for this one, the name is 100% confirmed.
--- 
--- @return boolean
function GetIsPlayerInAnimalForm() end

--- 
--- Dr. Underscore (1/6/18):  
--- Works exactly like IS_PROJECTILE_TYPE_IN_AREA, but it puts the position of the projectile in the vector.  
--- p8 is probably ownedByPlayer, but not known for sure. (see IS_PROJECTILE_IN_AREA for info)  
--- Unsure of the hash name, could someone confirm this?  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param projHash Hash
--- @param projPos vector3
--- @param ownedByPlayer boolean
--- @return boolean
function GetIsProjectileTypeInArea(x1, y1, z1, x2, y2, z2, projHash, projPos, ownedByPlayer) end


--- @return boolean
function GetMissionFlag() end

--- 
--- Gets the dimensions of a model.  
--- Calculate (maximum - minimum) to get the size, in which case, Y will be how long the model is.  
--- Vector3 GetDimensions(Hash model)  
--- {  
--- 	Vector3 right, left;  
--- 	GET_MODEL_DIMENSIONS(model, &right, &left);  
--- 	return Vector3::Subtract(left, right);  
--- }  
--- Example from the scripts: GAMEPLAY::GET_MODEL_DIMENSIONS(ENTITY::GET_ENTITY_MODEL(PLAYER::PLAYER_PED_ID()), &v_1A, &v_17);  
--- 
--- @param modelHash Hash
--- @param minimum vector3
--- @param maximum vector3
function GetModelDimensions(modelHash, minimum, maximum) end

--- 
--- Returns weather name hash  
--- 
--- @return Hash
function GetNextWeatherTypeHashName() end


--- @return number
function GetNumSuccessfulStuntJumps() end


--- @param dispatchService number
--- @return number
function GetNumberOfDispatchedUnitsForPlayer(dispatchService) end


--- @param stackSize number
--- @return number
function GetNumberOfFreeStacksOfThisSize(stackSize) end

--- 
--- Returns duration of how long the game has been in power-saving mode (aka "constrained") in milliseconds.
--- 
--- @return number
function GetPowerSavingModeDuration() end

--- 
--- Returns NULL unless UPDATE_ONSCREEN_KEYBOARD() returns 1 in the same tick.  
--- 
--- @return string
function GetOnscreenKeyboardResult() end

--- 
--- Returns current weather name hash  
--- 
--- @return Hash
function GetPrevWeatherTypeHashName() end

--- 
--- gtaforums.com/topic/799843-stats-profile-settings/  
--- 
--- @param profileSetting number
--- @return number
function GetProfileSetting(profileSetting) end

--- 
--- From a quick disassembly I can say that this has something to do with weapons.  
--- Added params according to what I could see in IDA.  
--- Dr. Underscore (1/6/18):  
--- Returns if any projectiles of projHash type are in a radius around this ped. If true, projPos is filled with the position of that entity.  
--- This native was only ever used with projectiles, but may not be limited to.  
--- p4 isn't an Entity*, it's actually a Vector3*, which outputs the position of the found entity.  
--- p5 is (most likely) ownedByPlayer. (see IS_PROJECTILE_IN_AREA for info)  
--- 
--- 
--- 
--- NativeDB Parameter 3: Entity* entity
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @param radius number
--- @param entity vector3
--- @param ownedByPlayer boolean
--- @return boolean
function GetProjectileNearPedCoords(ped, weaponHash, radius, entity, ownedByPlayer) end

--- 
--- only documented to be continued...  
--- Dr. Underscore (1/6/18):  
--- Exactly like _GET_PROJECTILE_NEAR_PED_COORDS (_0xDFB4138EEFED7B81), but it gives us the Entity that was found aswell.  
--- p6 is (most likely) ownedByPlayer. (see IS_PROJECTILE_IN_AREA for info)  
--- 
--- 
--- 
--- NativeDB Parameter 3: float projPos
--- NativeDB Parameter 4: float projEnt
--- 
--- @param ped Ped
--- @param weaponhash Hash
--- @param radius number
--- @param projPos vector3
--- @param projEnt Entity
--- @param ownedByPlayer boolean
--- @return boolean
function GetProjectileNearPed(ped, weaponhash, radius, projPos, projEnt, ownedByPlayer) end


--- @return number
function GetRainLevel() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function GetRandomEventFlag() end

--- 
--- Another extremely useful native.  
--- You can use it simply like:  
--- if (GAMEPLAY::GET_RANDOM_INT_IN_RANGE(0, 2))  
--- 
--- @param startRange number
--- @param endRange number
--- @return number
function GetRandomIntInRange(startRange, endRange) end


--- @param startRange number
--- @param endRange number
--- @return number
function GetRandomFloatInRange(startRange, endRange) end


--- @return number
function GetReplayStatCount() end


--- @param index number
--- @return number
function GetReplayStatAtIndex(index) end

--- 
--- NativeDB Return Type: float
--- 
--- @return any
function GetSnowLevel() end


--- @return number
function GetReplayStatMissionType() end


--- @return number
function GetTotalSuccessfulStuntJumps() end


--- @param ped Ped
--- @return boolean
function GetTennisSwingAnimComplete(ped) end


--- @return vector3
function GetWindDirection() end

--- 
--- changed any --> hash  
--- progress_or_time --> percentWeather2, is not time but percent of the 2nd weather (0-1).  
--- weatherType1 is same as GAMEPLAY::GET_PREV_WEATHER_TYPE_HASH_NAME()  
--- and weatherType 2 GAMEPLAY::GET_NEXT_WEATHER_TYPE_HASH_NAME()  
--- -QuantFC  
--- 
--- @param weatherType1 Hash
--- @param weatherType2 Hash
--- @param percentWeather2 number
function GetWeatherTypeTransition(weatherType1, weatherType2, percentWeather2) end

--- 
--- Hardcoded to always return true.
--- 
--- @return boolean
function HasAsyncInstallFinished() end


--- @return number
function GetWindSpeed() end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 boolean
--- @param p7 boolean
--- @return boolean
function HasBulletImpactedInBox(p0, p1, p2, p3, p4, p5, p6, p7) end

--- 
--- p3 - possibly radius?  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param p3 number
--- @param p4 boolean
--- @param p5 boolean
--- @return boolean
function HasBulletImpactedInArea(x, y, z, p3, p4, p5) end

--- 
--- Get inputted "Cheat code", for example:  
--- while (TRUE)  
--- {  
---     if (GAMEPLAY::_557E43C447E700A8(${fugitive}))  
---     {  
---        // Do something.  
---     }  
---     SYSTEM::WAIT(0);  
--- }  
--- Calling this will also set the last saved string hash to zero.  
--- 
--- @param hash Hash
--- @return boolean
function HasCheatStringJustBeenEntered(hash) end

--- 
--- This native appears on the cheat_controller script and tracks a combination of buttons, which may be used to toggle cheats in-game. Credits to ThreeSocks for the info. The hash contains the combination, while the "amount" represents the amount of buttons used in a combination. The following page can be used to make a button combination: gta5offset.com/ts/hash/  
--- 
--- @param hash Hash
--- @param amount number
--- @return boolean
function HasButtonCombinationJustBeenEntered(hash, amount) end

--- 
--- Hardcoded to return false.
--- 
--- @return boolean
function HasResumedFromSuspend() end


--- @return boolean
function HaveCreditsReachedEnd() end


--- @param toggle boolean
function IgnoreNextRestart(toggle) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 boolean
--- @param p7 boolean
--- @param p8 boolean
--- @param p9 boolean
--- @param p10 boolean
--- @param p11 any
--- @param p12 boolean
--- @return boolean
function IsAreaOccupied(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) end

