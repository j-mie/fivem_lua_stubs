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
function SetPlayerParachuteTintIndex(player, tintIndex) end

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
function SetPlayerReserveParachuteTintIndex(player, index) end

--- 
--- example:  
--- flags: 0-6  
--- PLAYER::SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS(PLAYER::PLAYER_ID(), 6);  
--- wouldnt the flag be the seatIndex?  
--- 
--- @param player Player
--- @param flags number
function SetPlayerResetFlagPreferRearSeats(player, flags) end

--- 
--- Values around 1.0f to 2.0f used in game scripts.  
--- 
--- @param player Player
--- @param multiplier number
function SetPlayerSneakingNoiseMultiplier(player, multiplier) end


--- @param player Player
--- @param toggle boolean
function SetPlayerSimulateAiming(player, toggle) end

--- 
--- 77  
--- 
--- @param player Player
--- @param toggle boolean
function SetPlayerSprint(player, toggle) end

--- 
--- Jenkins hash: 0x772DA539  
--- p0 looks like Player or int (found in "am_pi_menu")  
--- Dr. Underscore (1/6/18):  
--- It isn't Player, it is an int.  
--- Only two references anywhere, both in am_pi_menu.  
--- One uses globals, the other one uses a helper function that is passing in the outValue of "STATS::STAT_GET_INT"; I have no clue what is being passed in for the stat hash.  
--- 
--- @param targetLevel number
function SetPlayerTargetLevel(targetLevel) end


--- @param player Player
--- @param value number
function SetPlayerStealthPerceptionModifier(player, value) end

--- 
--- Sets your targeting mode.  
--- 0 = Traditional GTA  
--- 1 = Assisted Aiming  
--- 2 = Free Aim  
--- Even tho gtaforums nor Alexander B supports this, if you're online in freemode already it's nice to have this since retail or otherwise you have to go to SP to change it.  
--- 
--- @param targetMode number
function SetPlayerTargetingMode(targetMode) end

--- 
--- Set player team on deathmatch and last team standing..  
--- 
--- @param player Player
--- @param team number
function SetPlayerTeam(player, team) end

--- 
--- modifier's min value is 0.1
--- 
--- @param player Player
--- @param modifier number
function SetPlayerVehicleDamageModifier(player, modifier) end

--- 
--- modifier's min value is 0.1
--- 
--- @param player Player
--- @param modifier number
function SetPlayerVehicleDefenseModifier(player, modifier) end

--- 
--- # Predominant call signatures  
--- PLAYER::SET_PLAYER_WANTED_CENTRE_POSITION(PLAYER::PLAYER_ID(), ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1));  
--- # Parameter value ranges  
--- P0: PLAYER::PLAYER_ID()  
--- P1: ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1)  
--- P2: Not set by any call  
--- 
--- 
--- 
--- NativeDB Parameter 1: Vector3* position
--- NativeDB Parameter 2: BOOL y
--- NativeDB Parameter 3: BOOL z
--- 
--- @param player Player
--- @param position number
--- @param y number
--- @param z number
function SetPlayerWantedCentrePosition(player, position, y, z) end

--- 
--- p2 is always false in R* scripts  
--- 
--- @param player Player
--- @param wantedLevel number
--- @param p2 boolean
function SetPlayerWantedLevelNoDrop(player, wantedLevel, p2) end

--- 
--- Call SET_PLAYER_WANTED_LEVEL_NOW for immediate effect  
--- wantedLevel is an integer value representing 0 to 5 stars even though the game supports the 6th wanted level but no police will appear since no definitions are present for it in the game files  
--- disableNoMission-  Disables When Off Mission- appears to always be false  
--- 
--- @param player Player
--- @param wantedLevel number
--- @param disableNoMission boolean
function SetPlayerWantedLevel(player, wantedLevel, disableNoMission) end

--- 
--- Forces any pending wanted level to be applied to the specified player immediately.  
--- Call SET_PLAYER_WANTED_LEVEL with the desired wanted level, followed by SET_PLAYER_WANTED_LEVEL_NOW.  
--- Second parameter is unknown (always false).  
--- 
--- @param player Player
--- @param p1 boolean
function SetPlayerWantedLevelNow(player, p1) end

--- 
--- This modifies the damage value of your weapon. Whether it is a multiplier or base damage is unknown.   
--- Based on tests, it is unlikely to be a multiplier.  
--- 
--- @param player Player
--- @param modifier number
function SetPlayerWeaponDamageModifier(player, modifier) end


--- @param player Player
--- @param modifier number
function SetPlayerWeaponDefenseModifier(player, modifier) end


--- @param player Player
--- @param modifier number
function SetPlayerWeaponDefenseModifier2(player, modifier) end

--- 
--- The player will be ignored by the police if toggle is set to true  
--- 
--- @param player Player
--- @param toggle boolean
function SetPoliceIgnorePlayer(player, toggle) end

--- 
--- If toggle is set to false:  
--- The police won't be shown on the (mini)map  
--- 		If toggle is set to true:  
--- The police will be shown on the (mini)map  
--- 
--- @param toggle boolean
function SetPoliceRadarBlips(toggle) end

--- 
--- Multiplier goes up to 1.49 any value above will be completely overruled by the game and the multiplier will not take effect, this can be edited in memory however.  
--- Just call it one time, it is not required to be called once every tick.  
--- Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and SWIM above. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.  
--- It is not possible to "decrease" speed. Anything below 1 will be ignored.  
--- 
--- @param player Player
--- @param multiplier number
function SetRunSprintMultiplierForPlayer(player, multiplier) end


--- @param player Player
--- @param p1 number
function SetSpecialAbility(player, p1) end


--- @param multiplier number
function SetSpecialAbilityMultiplier(multiplier) end

--- 
--- Swim speed multiplier.  
--- Multiplier goes up to 1.49  
--- Just call it one time, it is not required to be called once every tick. - Note copied from below native.  
--- Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and RUN_SPRINT below. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.  
--- 
--- @param player Player
--- @param multiplier number
function SetSwimMultiplierForPlayer(player, multiplier) end


--- @param multiplier number
function SetWantedLevelMultiplier(multiplier) end

--- 
--- Max value is 1.0  
--- 
--- @param player Player
--- @param difficulty number
function SetWantedLevelDifficulty(player, difficulty) end


--- @param player Player
function SpecialAbilityActivate(player) end

--- 
--- This is to make the player walk without accepting input from INPUT.  
--- gaitType is in increments of 100s. 2000, 500, 300, 200, etc.  
--- p4 is always 1 and p5 is always 0.  
--- C# Example :  
--- Function.Call(Hash.SIMULATE_PLAYER_INPUT_GAIT, Game.Player, 1.0f, 100, 1.0f, 1, 0); //Player will go forward for 100ms  
--- 
--- @param player Player
--- @param amount number
--- @param gaitType number
--- @param speed number
--- @param p4 boolean
--- @param p5 boolean
function SimulatePlayerInputGait(player, amount, gaitType, speed, p4, p5) end

--- 
--- p1 appears to always be 1 (only comes up twice)  
--- 
--- @param player Player
--- @param p2 Ped
function SpecialAbilityChargeContinuous(player, p2) end

--- 
--- p1 appears as 5, 10, 15, 25, or 30. p2 is always true.  
--- 
--- @param player Player
--- @param p1 number
--- @param p2 boolean
function SpecialAbilityChargeAbsolute(player, p1, p2) end

--- 
--- Only 1 match. Both p1 & p2 were true.  
--- 
--- @param player Player
--- @param p1 boolean
--- @param p2 boolean
function SpecialAbilityChargeMedium(player, p1, p2) end

--- 
--- 2 matches. p1 was always true.  
--- 
--- @param player Player
--- @param p1 boolean
--- @param p2 boolean
function SpecialAbilityChargeLarge(player, p1, p2) end

--- 
--- Every occurrence of p1 & p2 were both true.  
--- 
--- @param player Player
--- @param p1 boolean
--- @param p2 boolean
function SpecialAbilityChargeSmall(player, p1, p2) end

--- 
--- normalizedValue is from 0.0 - 1.0  
--- p2 is always 1  
--- 
--- @param player Player
--- @param normalizedValue number
--- @param p2 boolean
function SpecialAbilityChargeNormalized(player, normalizedValue, p2) end


--- @param p0 any
function SpecialAbilityDeplete(p0) end


--- @param player Player
function SpecialAbilityDeactivate(player) end

--- 
--- p1 was always true.  
--- 
--- @param player Player
--- @param p1 boolean
function SpecialAbilityDepleteMeter(player, p1) end


--- @param player Player
function SpecialAbilityDeactivateFast(player) end


--- @param playerModel Hash
function SpecialAbilityLock(playerModel) end

--- 
--- Also known as _RECHARGE_SPECIAL_ABILITY  
--- 
--- @param player Player
--- @param p1 boolean
function SpecialAbilityFillMeter(player, p1) end


--- @param playerModel Hash
function SpecialAbilityUnlock(playerModel) end


--- @param player Player
function SpecialAbilityReset(player) end


--- @param player Player
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param p5 boolean
--- @param findCollisionLand boolean
--- @param p7 boolean
function StartPlayerTeleport(player, x, y, z, heading, p5, findCollisionLand, p7) end


--- @param duration number
function StartFiringAmnesty(duration) end

--- 
--- This was previously named as "RESERVE_ENTITY_EXPLODES_ON_HIGH_EXPLOSION_COMBO"  
--- which is obviously incorrect.  
--- Seems to only appear in scripts used in Singleplayer. p1 ranges from 2 - 46.  
--- I assume this switches the crime type  
--- 
--- @param player Player
--- @param p1 number
function SwitchCrimeType(player, p1) end

--- 
--- Disables the player's teleportation  
--- 
function StopPlayerTeleport() end

