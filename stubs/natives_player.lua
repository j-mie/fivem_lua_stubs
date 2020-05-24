
--- @param player Player
--- @return boolean
function ArePlayerStarsGreyedOut(player) end


--- @param player Player
--- @return boolean
function ArePlayerFlashingStarsAboutToDrop(player) end


function AssistedMovementCloseRoute() end


--- @param player Player
--- @param ped Ped
--- @return boolean
function CanPedHearPlayer(player, ped) end


function AssistedMovementFlushRoute() end

--- 
--- b2 and/or b3 maybe got something to do with keeping values from the last ped. Both of them set to 1 works great. <br/><br/>Examples from the decompiled scripts:<br/><br/>PLAYER::CHANGE_PLAYER_PED(PLAYER::PLAYER_ID(), l_5C0[4/*14*/], 0, 1);<br/>PLAYER::CHANGE_PLAYER_PED(PLAYER::PLAYER_ID(), a_0[a_0._f7/*1*/], a_2, 0);<br/><br/><br/>===========================================================<br/>The only way I ever got this to work in GTA Online once is by setting both to 0, 0. However, when you switch from your online character to whomever, your character will start walking away 'as if you left the game.' If from there you attempt to call this native once more to switch back to you online ped. You will freeze or if you try changing to another ped. I've tried all posibilities so far.<br/>1, 1 (Freeze), 0, 0(Works Once), 1, 0 & 0, 1 (Freeze). Note of course trying to call this on another online player will crash. Anyone have any idea if implementing a blr within the xex itself on a possible check if it would prevent this freezing?<br/>===========================================================  
--- 
--- @param player Player
--- @param ped Ped
--- @param b2 boolean
--- @param resetDamage boolean
function ChangePlayerPed(player, ped, b2, resetDamage) end


--- @param player Player
--- @return boolean
function CanPlayerStartMission(player) end


--- @param player Player
function ClearPlayerHasDamagedAtLeastOnePed(player) end


--- @param player Player
function ClearPlayerHasDamagedAtLeastOneNonAnimalPed(player) end


--- @param player Player
function ClearPlayerParachutePackModelOverride(player) end


--- @param player Player
function ClearPlayerParachuteModelOverride(player) end


--- @param player Player
function ClearPlayerParachuteVariationOverride(player) end

--- 
--- This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);  
--- PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.  
--- 
--- @param player Player
function ClearPlayerWantedLevel(player) end


--- @param player Player
function DisablePlayerVehicleRewards(player) end


--- @param player Player
--- @param toggle boolean
function EnableSpecialAbility(player, toggle) end

--- 
--- Inhibits the player from using any method of combat including melee and firearms.  
--- NOTE: Only disables the firing for one frame  
--- 
--- @param player Player
--- @param toggle boolean
function DisablePlayerFiring(player, toggle) end

--- 
--- Purpose of the BOOL currently unknown.  
--- Both, true and false, work  
--- 
--- @param unk boolean
function DisplaySystemSigninUi(unk) end

--- 
--- Will change world AABB so that given point will be inside of the world limits.  
--- Example:  
--- You want world limits to be -9000<X<10000 -11000<Y<12000 and leave Z limits as is.  
--- You should call this function two times:  
--- _EXPAND_WORLD_LIMITS(-9000.0,-11000.0,30.0)  
--- _EXPAND_WORLD_LIMITS(10000.0,12000.0,30.0)  
--- Appears only 3 times in the scripts, more specifically in michael1.ysc  
--- -  
--- This can be used to prevent dying if you are "out of the world"  
--- 
--- @param x number
--- @param y number
--- @param z number
function ExtendWorldBoundaryForPlayer(x, y, z) end


--- @param id number
--- @param cleanupFlags number
function ForceCleanupForThreadWithThisId(id, cleanupFlags) end

--- 
--- used with 1,2,8,64,128 in the scripts  
--- 
--- @param cleanupFlags number
function ForceCleanup(cleanupFlags) end


--- @return number
function GetCauseOfMostRecentForceCleanup() end

--- 
--- PLAYER::FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME("pb_prostitute", 1); // Found in decompilation  
--- 
--- @param name string
--- @param cleanupFlags number
function ForceCleanupForAllThreadsWithThisName(name, cleanupFlags) end

--- 
--- p0 = int (?)  
--- Dr. Underscore (1/6/18):  
--- This gets the progression of an achievement. Returns 0 if the achievement cannot be progressed.  
--- 
--- @param achievement number
--- @return number
function GetAchievementProgression(achievement) end

--- 
--- Returns TRUE if it found an entity in your crosshair within range of your weapon. Assigns the handle of the target to the *entity that you pass it.  
--- Returns false if no entity found.  
--- 
--- @param player Player
--- @param entity Entity
--- @return boolean
function GetEntityPlayerIsFreeAimingAt(player, entity) end

--- 
--- Gets the number of players in the current session.
--- If not multiplayer, always returns 1.
--- 
--- @return number
function GetNumberOfPlayers() end

--- 
--- Gets the maximum wanted level the player can get.  
--- Ranges from 0 to 5.  
--- 
--- @return number
function GetMaxWantedLevel() end


--- @param player Player
--- @return number
function GetPlayerCurrentStealthNoise(player) end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param team number
--- @return number
function GetNumberOfPlayersInTeam(team) end

--- 
--- Seems to do something with network (?)  
--- PLAYER::_56105E599CAB0EFA(NETWORK::NETWORK_GET_PLAYER_INDEX_FROM_PED(ped))  
--- 
--- @param player Player
--- @return number
function GetPlayerFakeWantedLevel(player) end

--- 
--- Returns the group ID the player is member of.  
--- 
--- @param player Player
--- @return number
function GetPlayerGroup(player) end


--- @param player Player
--- @return number
function GetPlayerHealthRechargeLimit(player) end


--- @param player Player
--- @return boolean
function GetPlayerHasReserveParachute(player) end

--- 
--- Returns the Player's Invincible status.  
--- This function will always return false if 0x733A643B5B0C53C1 is used to set the invincibility status. To always get the correct result, use this:  
--- 	bool IsPlayerInvincible(Player player)  
--- 	{  
--- auto addr = getScriptHandleBaseAddress(GET_PLAYER_PED(player));	  
--- if (addr)  
--- {  
--- 	DWORD flag = *(DWORD *)(addr + 0x188);  
--- 	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
--- }  
--- return false;  
--- 	}  
--- ============================================================  
--- This has bothered me for too long, whoever may come across this, where did anyone ever come up with this made up hash? 0x733A643B5B0C53C1 I've looked all over old hash list, and this nativedb I can not find that PC hash anywhere. What native name is it now or was it?  
--- 
--- @param player Player
--- @return boolean
function GetPlayerInvincible(player) end


--- @param player Player
--- @return number
function GetPlayerMaxArmour(player) end

--- 
--- Returns the same as PLAYER_ID and NETWORK_PLAYER_ID_TO_INT  
--- 
--- @return Player
function GetPlayerIndex() end


--- @param player Player
--- @param r number
--- @param g number
--- @param b number
function GetPlayerParachuteSmokeTrailColor(player, r, g, b) end

--- 
--- Returns the players name  
--- 
--- @param player Player
--- @return string
function GetPlayerName(player) end


--- @param player Player
--- @param tintIndex number
function GetPlayerParachutePackTintIndex(player, tintIndex) end

--- 
--- Tints:  
--- None = -1,  
--- Rainbow = 0,  
--- Red = 1,  
--- SeasideStripes = 2,  
--- WidowMaker = 3,  
--- Patriot = 4,  
--- Blue = 5,  
--- Black = 6,  
--- Hornet = 7,  
--- AirFocce = 8,  
--- Desert = 9,  
--- Shadow = 10,  
--- HighAltitude = 11,  
--- Airbone = 12,  
--- Sunrise = 13,  
--- 
--- @param player Player
--- @param tintIndex number
function GetPlayerParachuteTintIndex(player, tintIndex) end

--- 
--- Does the same like PLAYER::GET_PLAYER_PED<br/>  
--- 
--- @param player Player
--- @return Ped
function GetPlayerPedScriptIndex(player) end

--- Gets the ped for a specified player index.
--- @param playerId Player
--- @return Ped
function GetPlayerPed(playerId) end


--- @param player Player
--- @return number
function GetPlayerSprintStaminaRemaining(player) end

--- 
--- Tints:  
--- None = -1,  
--- Rainbow = 0,  
--- Red = 1,  
--- SeasideStripes = 2,  
--- WidowMaker = 3,  
--- Patriot = 4,  
--- Blue = 5,  
--- Black = 6,  
--- Hornet = 7,  
--- AirFocce = 8,  
--- Desert = 9,  
--- Shadow = 10,  
--- HighAltitude = 11,  
--- Airbone = 12,  
--- Sunrise = 13,  
--- 
--- @param player Player
--- @param index number
function GetPlayerReserveParachuteTintIndex(player, index) end

--- 
--- Returns RGB color of the player  
--- 
--- @param player Player
--- @param r number
--- @param g number
--- @param b number
function GetPlayerRgbColour(player, r, g, b) end

--- 
--- Assigns the handle of locked-on melee target to *entity that you pass it.  
--- Returns false if no entity found.  
--- 
--- @param player Player
--- @param entity Entity
--- @return boolean
function GetPlayerTargetEntity(player, entity) end

--- 
--- Gets the player's team.  
--- Does nothing in singleplayer.  
--- 
--- @param player Player
--- @return number
function GetPlayerTeam(player) end


--- @param player Player
--- @return number
function GetPlayerSprintTimeRemaining(player) end


--- @param player Player
--- @return number
function GetPlayerUnderwaterTimeRemaining(player) end


--- @param player Player
--- @return number
function GetPlayerWantedLevel(player) end

--- 
--- Alternative: GET_VEHICLE_PED_IS_IN(PLAYER_PED_ID(), 1);  
--- 
--- @return Vehicle
function GetPlayersLastVehicle() end


--- @param player Player
--- @return vector3
function GetPlayerWantedCentrePosition(player) end

--- 
--- Returns the time since the character was arrested in (ms) milliseconds.  
--- example  
--- var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_ARREST();  
--- UI.DrawSubtitle(time.ToString());  
--- if player has not been arrested, the int returned will be -1.  
--- 
--- @return number
function GetTimeSinceLastArrest() end

--- 
--- Returns the time since the character died in (ms) milliseconds.  
--- example  
--- var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_DEATH();  
--- UI.DrawSubtitle(time.ToString());  
--- if player has not died, the int returned will be -1.  
--- 
--- @return number
function GetTimeSinceLastDeath() end


--- @param player Player
--- @return number
function GetTimeSincePlayerDroveAgainstTraffic(player) end


--- @param player Player
--- @return number
function GetTimeSincePlayerDroveOnPavement(player) end


--- @param player Player
--- @return number
function GetTimeSincePlayerHitPed(player) end


--- @param player Player
--- @return number
function GetTimeSincePlayerHitVehicle(player) end

--- 
--- Remnant from GTA IV. Does nothing in GTA V.  
--- 
--- 
--- 
--- NativeDB Return Type: float
--- 
--- @param player Player
--- @return any
function GetWantedLevelRadius(player) end

--- 
--- Drft  
--- 
--- @param wantedLevel number
--- @return number
function GetWantedLevelThreshold(wantedLevel) end

--- 
--- Achievements from 0-57  
--- more achievements came with update 1.29 (freemode events update), I'd say that they now go to 60, but I'll need to check.  
--- 
--- 
--- 
--- NativeDB Return Type: BOOL
--- 
--- @param achievement number
--- @return any
function GiveAchievementToPlayer(achievement) end


--- @param achievement number
--- @return boolean
function HasAchievementBeenPassed(achievement) end


--- @param player Player
--- @param toggle boolean
function GivePlayerRagdollControl(player, toggle) end


--- @param cleanupFlags number
--- @return boolean
function HasForceCleanupOccurred(cleanupFlags) end


--- @param player Player
--- @return boolean
function HasPlayerDamagedAtLeastOneNonAnimalPed(player) end


--- @param player Player
--- @return boolean
function HasPlayerBeenSpottedInStolenVehicle(player) end


--- @param player Player
--- @return boolean
function HasPlayerDamagedAtLeastOnePed(player) end


--- @param player Player
--- @return boolean
function HasPlayerTeleportFinished(player) end

--- 
--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- --------------------------------------------------------  
--- if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::INT_TO_PARTICIPANTINDEX(i)))  
--- 
--- @param value number
--- @return number
function IntToParticipantindex(value) end

--- 
--- Gets the player's info and calls a function that checks the player's ped position.  
--- Here's the decompiled function that checks the position: pastebin.com/ZdHG2E7n  
--- 
--- @param player Player
--- @return boolean
function HasPlayerLeftTheWorld(player) end

--- 
--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- 
--- @param value number
--- @return Player
function IntToPlayerindex(value) end

--- 
--- Returns true if an unk value is greater than 0.0f  
--- 
--- @param player Player
--- @return boolean
function IsPlayerBattleAware(player) end


--- @param player Player
--- @return boolean
function IsPlayerBluetoothEnable(player) end

--- 
--- Return true while player is being arrested / busted.  
--- If atArresting is set to 1, this function will return 1 when player is being arrested (while player is putting his hand up, but still have control)  
--- If atArresting is set to 0, this function will return 1 only when the busted screen is shown.  
--- 
--- @param player Player
--- @param atArresting boolean
--- @return boolean
function IsPlayerBeingArrested(player, atArresting) end

--- 
--- Returns true when the player is not able to control the cam i.e. when running a benchmark test, switching the player or viewing a cutscene.  
--- Note: I am not 100% sure if the native actually checks if the cam control is disabled but it seems promising.  
--- 
--- @return boolean
function IsPlayerCamControlDisabled() end

--- 
--- Can the player control himself, used to disable controls for player for things like a cutscene.  
--- ---  
--- You can't disable controls with this, use SET_PLAYER_CONTROL(...) for this.  
--- 
--- @param player Player
--- @return boolean
function IsPlayerControlOn(player) end

--- 
--- Returns TRUE if the player ('s ped) is climbing at the moment.  
--- 
--- @param player Player
--- @return boolean
function IsPlayerClimbing(player) end


--- @param player Player
--- @return boolean
function IsPlayerDead(player) end

--- 
--- Gets a value indicating whether the specified player is currently aiming freely at the specified entity.  
--- 
--- @param player Player
--- @param entity Entity
--- @return boolean
function IsPlayerFreeAimingAtEntity(player, entity) end

--- 
--- Gets a value indicating whether the specified player is currently aiming freely.  
--- 
--- @param player Player
--- @return boolean
function IsPlayerFreeAiming(player) end


--- @param player Player
--- @return boolean
function IsPlayerFreeForAmbientTask(player) end

--- 
--- this function is hard-coded to always return 0.  
--- 
--- @return boolean
function IsPlayerLoggingInNp() end

--- 
--- Returns TRUE if the game is in online mode and FALSE if in offline mode.  
--- This is an alias for NETWORK_IS_SIGNED_ONLINE.  
--- 
--- @return boolean
function IsPlayerOnline() end

--- 
--- Checks whether the specified player has a Ped, the Ped is not dead, is not injured and is not arrested.  
--- 
--- @param player Player
--- @return boolean
function IsPlayerPlaying(player) end


--- @param player Player
--- @return boolean
function IsPlayerPressingHorn(player) end


--- @param player Player
--- @return boolean
function IsPlayerReadyForCutscene(player) end

--- 
--- Returns true if the player is riding a train.  
--- 
--- @param player Player
--- @return boolean
function IsPlayerRidingTrain(player) end


--- @param player Player
--- @return boolean
function IsPlayerScriptControlOn(player) end


--- @param player Player
--- @return boolean
function IsPlayerTargettingAnything(player) end


--- @param player Player
--- @param entity Entity
--- @return boolean
function IsPlayerTargettingEntity(player, entity) end


--- @return boolean
function IsPlayerTeleportActive() end


--- @param player Player
--- @param wantedLevel number
--- @return boolean
function IsPlayerWantedLevelGreater(player, wantedLevel) end


--- @param player Player
--- @return boolean
function IsSpecialAbilityActive(player) end


--- @param player Player
--- @return boolean
function IsSpecialAbilityEnabled(player) end


--- @param player Player
--- @return boolean
function IsSpecialAbilityMeterFull(player) end


--- @param playerModel Hash
--- @return boolean
function IsSpecialAbilityUnlocked(playerModel) end


--- @return boolean
function IsSystemUiBeingDisplayed() end

--- 
--- Only 1 match. ob_sofa_michael.  
--- PLAYER::PLAYER_ATTACH_VIRTUAL_BOUND(-804.5928f, 173.1801f, 71.68436f, 0f, 0f, 0.590625f, 1f, 0.7f);1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
function PlayerAttachVirtualBound(p0, p1, p2, p3, p4, p5, p6, p7) end

--- 
--- Does exactly the same thing as PLAYER_ID()  
--- 
--- @return number
function NetworkPlayerIdToInt() end

--- 
--- This returns YOUR 'identity' as a Player type.  
--- Always returns 0 in story mode.  
--- 
--- @return Player
function PlayerId() end

--- 
--- 1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
--- 
function PlayerDetachVirtualBound() end

--- 
--- Returns current player ped  
--- 
--- @return Ped
function PlayerPedId() end

--- 
--- NativeDB Return Type: void
--- 
--- @param player Player
--- @param p2 boolean
--- @return any
function RemovePlayerHelmet(player, p2) end

--- 
--- PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(), 37, PLAYER::GET_WANTED_LEVEL_THRESHOLD(1));  
--- From am_armybase.ysc.c4:  
--- PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(4), 36, PLAYER::GET_WANTED_LEVEL_THRESHOLD(4));  
--- -----  
--- This was taken from the GTAV.exe v1.334. The function is called sub_140592CE8. For a full decompilation of the function, see here: pastebin.com/09qSMsN7   
--- -----  
--- crimeType:  
--- 1: Firearms possession  
--- 2: Person running a red light ("5-0-5")  
--- 3: Reckless driver  
--- 4: Speeding vehicle (a "5-10")  
--- 5: Traffic violation (a "5-0-5")  
--- 6: Motorcycle rider without a helmet  
--- 7: Vehicle theft (a "5-0-3")  
--- 8: Grand Theft Auto  
--- 9: ???  
--- 10: ???  
--- 11: Assault on a civilian (a "2-40")  
--- 12: Assault on an officer  
--- 13: Assault with a deadly weapon (a "2-45")  
--- 14: Officer shot (a "2-45")  
--- 15: Pedestrian struck by a vehicle  
--- 16: Officer struck by a vehicle  
--- 17: Helicopter down (an "AC"?)  
--- 18: Civilian on fire (a "2-40")  
--- 19: Officer set on fire (a "10-99")  
--- 20: Car on fire  
--- 21: Air unit down (an "AC"?)  
--- 22: An explosion (a "9-96")  
--- 23: A stabbing (a "2-45") (also something else I couldn't understand)  
--- 24: Officer stabbed (also something else I couldn't understand)  
--- 25: Attack on a vehicle ("MDV"?)  
--- 26: Damage to property  
--- 27: Suspect threatening officer with a firearm  
--- 28: Shots fired  
--- 29: ???  
--- 30: ???  
--- 31: ???  
--- 32: ???  
--- 33: ???  
--- 34: A "2-45"  
--- 35: ???  
--- 36: A "9-25"  
--- 37: ???  
--- 38: ???  
--- 39: ???  
--- 40: ???  
--- 41: ???  
--- 42: ???  
--- 43: Possible disturbance  
--- 44: Civilian in need of assistance  
--- 45: ???  
--- 46: ???  
--- 
--- @param player Player
--- @param crimeType number
--- @param wantedLvlThresh number
function ReportCrime(player, crimeType, wantedLvlThresh) end


--- @param player Player
function ResetPlayerArrestState(player) end


--- @param player Player
function ResetPlayerInputGait(player) end


--- @param player Player
function ResetPlayerStamina(player) end


--- @param player Player
function ResetWantedLevelDifficulty(player) end

--- 
--- NativeDB Introduced: v323
--- 
function ResetWorldBoundaryForPlayer() end

--- 
--- This seems to be related to Steam achievements.  
--- p0 and p1 are int (?)  
--- ------  
--- Can't say anything about the Steam version but it is hardcoded to always return false in the retail version.  
--- Dr. Underscore (1/6/18):  
--- This has to do with achievement progression. If this achievement has progression, it will set the progression of it to this value.  
--- Only tested on un-achieved achievements, Steamworks probably just rejects it if it has already been achieved.  
--- Steamworks also seems to not like reversing achievement progression.  
--- 
--- @param achievement number
--- @param progress number
--- @return boolean
function SetAchievementProgression(achievement, progress) end


--- @param player Player
--- @param p1 number
function RestorePlayerStamina(player, p1) end

--- 
--- This can be between 1.0f - 14.9f   
--- You can change the max in IDA from 15.0. I say 15.0 as the function blrs if what you input is greater than or equal to 15.0 hence why it's 14.9 max default.  
--- On PC the multiplier can be between 0.0f and 50.0f (inclusive).  
--- 
--- @param player Player
--- @param multiplier number
function SetAirDragMultiplierForPlayersVehicle(player, multiplier) end


--- @param player Player
--- @param toggle boolean
function SetAllRandomPedsFlee(player, toggle) end


--- @param player Player
function SetAllRandomPedsFleeThisFrame(player) end


--- @param player Player
--- @param toggle boolean
function SetAutoGiveParachuteWhenEnterPlane(player, toggle) end

--- 
--- 1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
--- 
--- @param player Player
--- @param toggle boolean
function SetAutoGiveScubaGearWhenExitVehicle(player, toggle) end


--- @param player Player
--- @param toggle boolean
function SetDisableAmbientMeleeMove(player, toggle) end


--- @param player Player
--- @param toggle boolean
function SetEveryoneIgnorePlayer(player, toggle) end


--- @param player Player
--- @param toggle boolean
function SetDispatchCopsForPlayer(player, toggle) end


--- @param maxWantedLevel number
function SetMaxWantedLevel(maxWantedLevel) end


--- @param player Player
--- @param toggle boolean
function SetIgnoreLowPriorityShockingEvents(player, toggle) end

--- 
--- NativeDB Parameter 0: Player player
--- NativeDB Parameter 1: BOOL state
--- 
--- @param player boolean
--- @param state ScrHandle
function SetPlayerBluetoothState(player, state) end

--- 
--- Sets whether this player can be hassled by gangs.  
--- 
--- @param player Player
--- @param toggle boolean
function SetPlayerCanBeHassledByGangs(player, toggle) end


--- @param player Player
--- @param enabled boolean
function SetPlayerCanLeaveParachuteSmokeTrail(player, enabled) end

--- 
--- Set whether this player should be able to do drive-bys.  
--- "A drive-by is when a ped is aiming/shooting from vehicle. This includes middle finger taunts. By setting this value to false I confirm the player is unable to do all that. Tested on tick."  
--- 
--- @param player Player
--- @param toggle boolean
function SetPlayerCanDoDriveBy(player, toggle) end

--- 
--- 6 matches across 4 scripts. 5 occurrences were 240. The other was 255.  
--- 
--- @param value number
function SetPlayerClothLockCounter(value) end

--- 
--- Sets whether this player can take cover.  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @param player Player
--- @param toggle boolean
--- @return any
function SetPlayerCanUseCover(player, toggle) end

--- 
--- Every occurrence was either 0 or 2.  
--- 
--- @param index number
function SetPlayerClothPackageIndex(index) end

--- 
--- Every occurrence of p1 I found was true.1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
--- 
--- @param player Player
--- @param toggle boolean
function SetPlayerClothPinFrames(player, toggle) end

--- 
--- Flags used in the scripts: 0,4,16,24,32,56,60,64,128,134,256,260,384,512,640,768,896,900,952,1024,1280,2048,2560  
--- Note to people who needs this with camera mods, etc.:   
--- Flags(0, 4, 16, 24, 32, 56, 60, 64, 128, 134, 512, 640, 1024, 2048, 2560)  
--- - Disables camera rotation as well.  
--- Flags(256, 260, 384, 768, 896, 900, 952, 1280)  
--- [ translation: cameraRotation = flags & (1 << 8) - sfink]  
--- 
--- @param player Player
--- @param bHasControl boolean
--- @param flags number
function SetPlayerControl(player, bHasControl, flags) end

--- 
--- Minimum distance from the ground to enable in-air ragdoll
--- 
--- @param player Player
--- @param distance number
function SetPlayerFallDistance(player, distance) end


--- @param player Player
--- @param toggle boolean
function SetPlayerForceSkipAimIntro(player, toggle) end


--- @param player Player
--- @param toggle boolean
function SetPlayerForcedAim(player, toggle) end


--- @param player Player
--- @param toggle boolean
function SetPlayerForcedZoom(player, toggle) end


--- @param player Player
function SetPlayerHasReserveParachute(player) end


--- @param player Player
--- @param limit number
function SetPlayerHealthRechargeLimit(player, limit) end


--- @param player Player
--- @param regenRate number
function SetPlayerHealthRechargeMultiplier(player, regenRate) end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param player Player
--- @param p1 boolean
function SetPlayerHomingRocketDisabled(player, p1) end

--- 
--- Simply sets you as invincible (Health will not deplete).  
--- Use 0x733A643B5B0C53C1 instead if you want Ragdoll enabled, which is equal to:  
--- *(DWORD *)(playerPedAddress + 0x188) |= (1 << 9);  
--- 
--- @param player Player
--- @param toggle boolean
function SetPlayerInvincible(player, toggle) end


--- @param player Player
--- @param toggle boolean
function SetPlayerInvincibleKeepRagdollEnabled(player, toggle) end

--- 
--- gets byte at offset 0x862 in the specified players data (ped data + 0xbd0) and stores the bool p1 in it.  
--- lwz       r3, 0xBD0(r3) ;r3 is player data  
--- lbz       r4, 0x862(r3) ;r4 is now the byte  
--- insrwi    r4, r31, 1,28 ;stores p1 as a bit in place 28 idk  
--- stb       r4, 0x862(r3) ; puts the newly modified one back in  
--- 
--- @param player Player
--- @param toggle boolean
function SetPlayerLeavePedBehind(player, toggle) end

--- 
--- Example from fm_mission_controler.ysc.c4:  
--- PLAYER::SET_PLAYER_LOCKON(PLAYER::PLAYER_ID(), 1);  
--- All other decompiled scripts using this seem to be using the player id as the first parameter, so I feel the need to confirm it as so.  
--- No need to confirm it says PLAYER_ID() so it uses PLAYER_ID() lol.  
--- 
--- @param player Player
--- @param toggle boolean
function SetPlayerLockon(player, toggle) end

--- 
--- Affects the range of auto aim target.  
--- 
--- @param player Player
--- @param range number
function SetPlayerLockonRangeOverride(player, range) end

--- 
--- Default is 100. Use player id and not ped id. For instance: PLAYER::SET_PLAYER_MAX_ARMOUR(PLAYER::PLAYER_ID(), 100); // main_persistent.ct4  
--- 
--- @param player Player
--- @param value number
function SetPlayerMaxArmour(player, value) end


--- @param player Player
function SetPlayerMayNotEnterAnyVehicle(player) end


--- @param player Player
--- @param vehicle Vehicle
function SetPlayerMayOnlyEnterThisVehicle(player, vehicle) end

--- 
--- NativeDB Added Parameter 3: BOOL p2
--- 
--- @param player Player
--- @param modifier number
function SetPlayerMeleeWeaponDamageModifier(player, modifier) end


--- @param player Player
--- @param modifier number
function SetPlayerMeleeWeaponDefenseModifier(player, modifier) end


--- @param player Player
--- @param multiplier number
function SetPlayerNoiseMultiplier(player, multiplier) end

--- Set the model for a specific Player. Be aware that this will destroy the current Ped for the Player and create a new one, any
--- reference to the old ped should be reset (by using the GetPlayerPed native).
--- 
--- 
--- Make sure to request the model first and wait until it has loaded.  
--- 
--- @param player Player
--- @param model Hash
function SetPlayerModel(player, model) end


--- @param player Player
--- @param model Hash
function SetPlayerParachutePackModelOverride(player, model) end

--- 
--- example:  
--- PLAYER::SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(PLAYER::PLAYER_ID(), 0x73268708);  
--- 
--- @param player Player
--- @param model Hash
function SetPlayerParachuteModelOverride(player, model) end


--- @param player Player
--- @param r number
--- @param g number
--- @param b number
function SetPlayerParachuteSmokeTrailColor(player, r, g, b) end

--- 
--- tints 0  
--- 1   
--- 2   
--- 3   
--- 4  
--- 
--- @param player Player
--- @param tintIndex number
function SetPlayerParachutePackTintIndex(player, tintIndex) end

--- 
--- p1 was always 5.  
--- p4 was always false.  
--- 
--- @param player Player
--- @param p1 number
--- @param p2 any
--- @param p3 any
--- @param p4 boolean
function SetPlayerParachuteVariationOverride(player, p1, p2, p3, p4) end

