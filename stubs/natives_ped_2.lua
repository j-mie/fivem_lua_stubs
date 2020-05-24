--- Similar to REGISTER_PEDHEADSHOT but creates a transparent background instead of black.
--- 
--- **Result of the example code:**
--- <https://i.imgur.com/iHz8ztn.png>
--- @param ped Ped
--- @return number
function RegisterPedheadshotTransparent(ped) end

--- 
--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
--- 
--- @param ped Ped
--- @return number
function RegisterPedheadshot(ped) end


--- @param ped Ped
--- @return number
function RegisterPedheadshot3(ped) end


--- @param ped Ped
function ReleasePedPreloadPropData(ped) end

--- 
--- PED::REGISTER_TARGET(l_216, PLAYER::PLAYER_PED_ID()); from re_prisonbreak.txt.  
--- l_216 = RECSBRobber1  
--- 
--- @param ped Ped
--- @param target Ped
function RegisterTarget(ped, target) end


--- @param id number
function ReleasePedheadshotImgUpload(id) end


--- @param asset string
function RemoveActionModeAsset(asset) end


--- @param groupId number
function RemoveGroup(groupId) end


--- @param ped Ped
function ReleasePedPreloadVariationData(ped) end

--- 
--- Judging purely from a quick disassembly, if the ped is in a vehicle, the ped will be deleted immediately. If not, it'll be marked as no longer needed. - very elegant..  
--- 
--- @param ped Ped
function RemovePedElegantly(ped) end

--- 
--- Ped will no longer get angry when you stay near him.  
--- 
--- @param ped Ped
--- @param toggle boolean
function RemovePedDefensiveArea(ped, toggle) end


--- @param ped Ped
--- @param instantly boolean
function RemovePedHelmet(ped, instantly) end


--- @param ped Ped
function RemovePedFromGroup(ped) end


--- @param ped Ped
function RemovePedPreferredCoverSet(ped) end


function RemoveScenarioBlockingAreas() end


--- @param groupHash Hash
function RemoveRelationshipGroup(groupHash) end


--- @param asset string
function RequestActionModeAsset(asset) end


--- @param p0 any
--- @param p1 boolean
function RemoveScenarioBlockingArea(p0, p1) end


--- @param id number
--- @return boolean
function RequestPedheadshotImgUpload(id) end


--- @param asset string
function RemoveStealthModeAsset(asset) end


--- @param asset string
function RequestStealthModeAsset(asset) end


--- @param ped Ped
--- @param p1 boolean
function RequestPedVehicleVisibilityTracking(ped, p1) end


function ResetAiMeleeWeaponDamageModifier() end

--- 
--- i found this function just like VEHICLE::TRACK_VEHICLE_VISIBILITY   
--- example:  
--- PED::_0x7D7A2E43E74E2EB8(ped);// TRACK_PED_VISIBILITY  
--- if (PED::IS_TRACKED_PED_VISIBLE(ped))  
--- {  
--- }  
--- 
--- @param ped Ped
function RequestPedVisibilityTracking(ped) end


--- @param ped Ped
function ResetPedInVehicleContext(ped) end


function ResetAiWeaponDamageModifier() end

--- 
--- Resets the value for the last vehicle driven by the Ped.  
--- 
--- @param ped Ped
function ResetPedLastVehicle(ped) end


--- @param groupHandle number
function ResetGroupFormationDefaultSpacing(groupHandle) end


--- @param ped Ped
function ResetPedRagdollTimer(ped) end

--- 
--- If p1 is 0.0, I believe you are back to normal.   
--- If p1 is 1.0, it looks like you can only rotate the ped, not walk.  
--- Using the following code to reset back to normal  
--- PED::RESET_PED_MOVEMENT_CLIPSET(PLAYER::PLAYER_PED_ID(), 0.0);  
--- 
--- @param ped Ped
--- @param p1 number
function ResetPedMovementClipset(ped, p1) end

--- 
--- NativeDB Return Type: void
--- 
--- @param ped Ped
--- @return any
function ResetPedVisibleDamage(ped) end


--- @param ped Ped
function ResetPedStrafeClipset(ped) end

--- 
--- This function will simply bring the dead person back to life.  
--- Try not to use it alone, since using this function alone, will make peds fall through ground in hell(well for the most of the times).  
--- Instead, before calling this function, you may want to declare the position, where your Resurrected ped to be spawn at.(For instance, Around 2 floats of Player's current position.)   
--- Also, disabling any assigned task immediately helped in the number of scenarios, where If you want peds to perform certain decided tasks.  
--- 
--- @param ped Ped
function ResurrectPed(ped) end


--- @param ped Ped
function ResetPedWeaponMovementClipset(ped) end


--- @param value number
function SetAiWeaponDamageModifier(value) end

--- 
--- works with AI::TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS to make a ped completely oblivious to all events going on around him  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetBlockingOfNonTemporaryEvents(ped, toggle) end

--- 
--- It will revive/cure the injured ped. The condition is ped must not be dead.  
--- Upon setting and converting the health int, found, if health falls below 5, the ped will lay on the ground in pain(Maximum default health is 100).  
--- This function is well suited there.  
--- 
--- @param ped Ped
function ReviveInjuredPed(ped) end


--- @param modifier number
function SetAiMeleeWeaponDamageModifier(modifier) end

--- 
--- combatType can be between 0-14. See GET_COMBAT_FLOAT below for a list of possible parameters.  
--- 
--- @param ped Ped
--- @param combatType number
--- @param p2 number
function SetCombatFloat(ped, combatType, p2) end

--- 
--- Setting ped to true allows the ped to shoot "friendlies".  
--- p2 set to true when toggle is also true seams to make peds permanently unable to aim at, even if you set p2 back to false.  
--- p1 = false & p2 = false for unable to aim at.  
--- p1 = true & p2 = false for able to aim at.  
--- 
--- @param ped Ped
--- @param toggle boolean
--- @param p2 boolean
function SetCanAttackFriendly(ped, toggle, p2) end


--- @param toggle boolean
function SetCreateRandomCopsNotOnScenarios(toggle) end


--- @param toggle boolean
function SetCreateRandomCops(toggle) end

--- 
--- The function specifically verifies the value is equal to, or less than 1.0f. If it is greater than 1.0f, the function does nothing at all.  
--- 
--- @param driver Ped
--- @param ability number
function SetDriverAbility(driver, ability) end


--- @param toggle boolean
function SetCreateRandomCopsOnScenarios(toggle) end

--- 
--- Scripts use 0.2, 0.5 and 1.0.  
--- 
--- @param driver Ped
--- @param modifier number
function SetDriverRacingModifier(driver, modifier) end

--- 
--- range 0.0f - 1.0f  
--- 
--- @param driver Ped
--- @param aggressiveness number
function SetDriverAggressiveness(driver, aggressiveness) end

--- 
--- ped can not pull out a weapon when true  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetEnableHandcuffs(ped, toggle) end

--- Used with [SET_ENABLE_HANDCUFFS](#_0xDF1AF8B5D56542FA) in decompiled scripts. From my observations, I have noticed that while being ragdolled you are not able to get up but you can still run. Your legs can also bend.
--- @param ped Ped
--- @param toggle boolean
function SetEnableBoundAnkles(ped, toggle) end

--- 
--- Enables diving motion when underwater.  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetEnableScuba(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetEnablePedEnveffScale(ped, toggle) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param ped Ped
--- @param toggle boolean
function SetEnableScubaGearLight(ped, toggle) end


--- @param ped Ped
--- @param animName string
--- @param animDict string
function SetFacialIdleAnimOverride(ped, animName, animDict) end


--- @param ped Ped
--- @param toggle boolean
function SetForceFootstepUpdate(ped, toggle) end


--- @param ped Ped
--- @param p1 boolean
--- @param type number
--- @param p3 number
function SetForceStepType(ped, p1, type, p3) end

--- 
--- Sets the range at which members will automatically leave the group.  
--- 
--- @param groupHandle number
--- @param separationRange number
function SetGroupSeparationRange(groupHandle, separationRange) end

--- 
--- 0: Default  
--- 1: Circle Around Leader  
--- 2: Alternative Circle Around Leader  
--- 3: Line, with Leader at center  
--- 
--- @param groupId number
--- @param formationType number
function SetGroupFormation(groupId, formationType) end

--- Preview: <https://gfycat.com/MaleRareAmazonparrot>
--- @param ped Ped
--- @param r number
--- @param g number
--- @param b number
--- @param id number
function SetHeadBlendPaletteColor(ped, r, g, b, id) end


--- @param groupId number
--- @param p1 number
--- @param p2 number
--- @param p3 number
function SetGroupFormationSpacing(groupId, p1, p2, p3) end

--- 
--- p1: "MP_FEMALE_ACTION" found multiple times in the b617d scripts.  
--- 
--- @param ped Ped
--- @param name string
function SetMovementModeOverride(ped, name) end

--- 
--- No other indices work...  
--- IK Index ---------  
--- 1 = head  
--- 3 = left arm  
--- 4 = right arm  
--- ------------------  
--- EntityLookAt can be null (0 handle)  
--- 
--- @param ped Ped
--- @param ikIndex number
--- @param entityLookAt Entity
--- @param boneLookAt number
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
--- @param p7 any
--- @param blendInDuration number
--- @param blendOutDuration number
function SetIkTarget(ped, ikIndex, entityLookAt, boneLookAt, offsetX, offsetY, offsetZ, p7, blendInDuration, blendOutDuration) end

--- 
--- value ranges from 0 to 3.  
--- 
--- @param ped Ped
--- @param value number
function SetPedAlertness(ped, value) end

--- 
--- accuracy = 0-100, 100 being perfectly accurate  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @param ped Ped
--- @param accuracy number
--- @return any
function SetPedAccuracy(ped, accuracy) end


--- @param ped Ped
--- @param toggle boolean
function SetPedAllowedToDuck(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedAllowVehiclesOverride(ped, toggle) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param ped Ped
--- @param animDict string
--- @param animName string
--- @param p3 number
--- @param p4 boolean
function SetPedAlternateWalkAnim(ped, animDict, animName, p3, p4) end

--- 
--- stance:  
--- 0 = idle  
--- 1 = walk  
--- 2 = running  
--- p5 = usually set to true  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param ped Ped
--- @param stance number
--- @param animDictionary string
--- @param animationName string
--- @param p4 number
--- @param p5 boolean
function SetPedAlternateMovementAnim(ped, stance, animDictionary, animationName, p4, p5) end

--- 
--- Sets the armor of the specified ped.  
--- ped: The Ped to set the armor of.  
--- amount: A value between 0 and 100 indicating the value to set the Ped's armor to.  
--- 
--- @param ped Ped
--- @param amount number
function SetPedArmour(ped, amount) end


--- @param ped Ped
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 boolean
--- @param p9 boolean
function SetPedAngledDefensiveArea(ped, p1, p2, p3, p4, p5, p6, p7, p8, p9) end


--- @param ped Ped
--- @param toggle boolean
function SetPedAsEnemy(ped, toggle) end

--- 
--- Turns the desired ped into a cop. If you use this on the player ped, you will become almost invisible to cops dispatched for you. You will also report your own crimes, get a generic cop voice, get a cop-vision-cone on the radar, and you will be unable to shoot at other cops. SWAT and Army will still shoot at you. Toggling ped as "false" has no effect; you must change p0's ped model to disable the effect.  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetPedAsCop(ped, toggle) end


--- @param ped Ped
--- @param groupId number
function SetPedAsGroupLeader(ped, groupId) end


--- @param ped Ped
--- @param father Ped
--- @param mother Ped
--- @param fathersSide number
--- @param mothersSide number
function SetPedBlendFromParents(ped, father, mother, fathersSide, mothersSide) end


--- @param ped Ped
--- @param groupId number
function SetPedAsGroupMember(ped, groupId) end


--- @param ped Ped
--- @param p1 boolean
function SetPedBlocksPathingWhenDead(ped, p1) end


--- @param ped Ped
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
function SetPedBoundsOrientation(ped, p1, p2, p3, p4, p5) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanArmIk(ped, toggle) end

--- 
--- 0 = can (bike)  
--- 1 = can't (bike)  
--- 2 = unk   
--- 3 = unk  
--- 
--- @param ped Ped
--- @param state number
function SetPedCanBeKnockedOffVehicle(ped, state) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanBeDraggedOut(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanBeShotInVehicle(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanBeTargetedWhenInjured(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanBeTargetedWithoutLos(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanBeTargetted(ped, toggle) end


--- @param ped Ped
--- @param player Player
--- @param toggle boolean
function SetPedCanBeTargettedByPlayer(ped, player, toggle) end


--- @param ped Ped
--- @param team number
--- @param toggle boolean
function SetPedCanBeTargettedByTeam(ped, team, toggle) end

--- 
--- It simply makes the said ped to cower behind cover object(wall, desk, car)  
--- Peds flee attributes must be set to not to flee, first. Else, most of the peds, will just flee from gunshot sounds or any other panic situations.  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetPedCanCowerInCover(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanHeadIk(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanEvasiveDive(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanLegIk(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanPeekInCover(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanPlayAmbientAnims(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanPlayAmbientBaseAnims(ped, toggle) end


--- @param ped Ped
--- @param p1 boolean
function SetPedCanPlayInjuredAnims(ped, p1) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanPlayGestureAnims(ped, toggle) end

--- 
--- p2 usually 0  
--- 
--- @param ped Ped
--- @param toggle boolean
--- @param p2 boolean
function SetPedCanPlayVisemeAnims(ped, toggle, p2) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanRagdoll(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanRagdollFromPlayerImpact(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanSwitchWeapon(ped, toggle) end


--- @param ped Ped
--- @param p1 boolean
--- @param p2 boolean
function SetPedCanSmashGlass(ped, p1, p2) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanTorsoIk(ped, toggle) end

--- 
--- This only will teleport the ped to the group leader if the group leader teleports (sets coords).  
--- Only works in singleplayer  
--- 
--- @param pedHandle Ped
--- @param groupHandle number
--- @param toggle boolean
function SetPedCanTeleportToGroupLeader(pedHandle, groupHandle, toggle) end


--- @param ped Ped
--- @param p1 boolean
function SetPedCanTorsoVehicleIk(ped, p1) end


--- @param ped Ped
--- @param p1 boolean
function SetPedCanTorsoReactIk(ped, p1) end

--- 
--- Overrides the ped's collision capsule radius for the current tick.  
--- Must be called every tick to be effective.  
--- Setting this to 0.001 will allow warping through some objects.  
--- 
--- @param ped Ped
--- @param value number
function SetPedCapsule(ped, value) end


--- @param ped Ped
--- @param toggle boolean
function SetPedCanUseAutoConversationLookat(ped, toggle) end


--- @param ped Ped
--- @param p1 number
function SetPedClothPackageIndex(ped, p1) end

--- 
--- 100 would equal attack  
--- less then 50ish would mean run away  
--- Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described in combatbehaviour.meta:  
--- 0: CA_Poor  
--- 1: CA_Average  
--- 2: CA_Professional  
--- Tested this and got the same results as the first explanation here. Could not find any difference between 0, 1 and 2.  
--- 
--- @param ped Ped
--- @param p1 number
function SetPedCombatAbility(ped, p1) end


--- @param p0 any
--- @param p1 any
function SetPedClothProne(p0, p1) end

--- 
--- These combat attributes seem to be the same as the BehaviourFlags from combatbehaviour.meta.  
--- So far, these are the equivalents found:  
--- enum CombatAttributes  
--- {  
--- 	BF_CanUseCover = 0,  
--- 	BF_CanUseVehicles = 1,  
--- 	BF_CanDoDrivebys = 2,  
--- 	BF_CanLeaveVehicle = 3,  
--- 	BF_CanFightArmedPedsWhenNotArmed = 5,  
--- 	BF_CanTauntInVehicle = 20,  
--- 	BF_AlwaysFight = 46,  
--- 	BF_IgnoreTrafficWhenDriving = 52,  
---         BF_FreezeMovement = 292,  
---         BF_PlayerCanUseFiringWeapons = 1424  
--- };  
--- 8 = ?  
--- 9 = ?  
--- 13 = ?  
--- 14 ?  
--- Research thread: gtaforums.com/topic/833391-researchguide-combat-behaviour-flags/  
--- 
--- @param ped Ped
--- @param attributeIndex number
--- @param enabled boolean
function SetPedCombatAttributes(ped, attributeIndex, enabled) end

--- 
--- Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described as AttackRange in combatbehaviour.meta:  
--- 0: CR_Near  
--- 1: CR_Medium  
--- 2: CR_Far  
--- 
--- @param ped Ped
--- @param p1 number
function SetPedCombatRange(ped, p1) end

--- 
--- 0 - Stationary (Will just stand in place)  
--- 1 - Defensive (Will try to find cover and very likely to blind fire)  
--- 2 - Offensive (Will attempt to charge at enemy but take cover as well)  
--- 3 - Suicidal Offensive (Will try to flank enemy in a suicidal attack)  
--- 
--- @param ped Ped
--- @param combatMovement number
function SetPedCombatMovement(ped, combatMovement) end

--- This native is used to set component variation on a ped. Components, drawables and textures IDs are related to the ped model. 
--- 
--- ### MP Freemode list of components
--- 
--- **0**: Face  
--- **1**: Mask  
--- **2**: Hair  
--- **3**: Torso  
--- **4**: Leg  
--- **5**: Parachute / bag  
--- **6**: Shoes  
--- **7**: Accessory  
--- **8**: Undershirt  
--- **9**: Kevlar  
--- **10**: Badge  
--- **11**: Torso 2  
--- 
--- ### Related and useful natives
--- 
--- [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#_0x27561561732A7842)  
--- [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#_0x8F7156A3142A6BAD)  
--- 
--- [List of component/props ID](gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html) of player_two with examples
--- @param ped Ped
--- @param componentId number
--- @param drawableId number
--- @param textureId number
--- @param paletteId number
function SetPedComponentVariation(ped, componentId, drawableId, textureId, paletteId) end

--- 
--- Research help : pastebin.com/fPL1cSwB  
--- New items added with underscore as first char  
--- -----------------------------------------------------------------------  
--- enum PedConfigFlags  
--- {  
--- 	PED_FLAG_CAN_FLY_THRU_WINDSCREEN = 32,  
---         PED_FLAG_DIES_BY_RAGDOLL = 33,  
--- 	_PED_FLAG_PUT_ON_MOTORCYCLE_HELMET = 35,  
--- 	PED_FLAG_NO_COLLISION = 52,  
---         _PED_FLAG_IS_SHOOTING = 58,  
---         _PED_FLAG_IS_ON_GROUND = 60,  
--- 	PED_FLAG_NO_COLLIDE = 62,  
--- 	PED_FLAG_DEAD = 71,  
---         PED_FLAG_IS_SNIPER_SCOPE_ACTIVE = 72,  
--- 	PED_FLAG_SUPER_DEAD = 73,  
---         _PED_FLAG_IS_IN_AIR = 76,  
--- 	PED_FLAG_IS_AIMING = 78,  
--- 	PED_FLAG_DRUNK = 100,  
---         _PED_FLAG_IS_NOT_RAGDOLL_AND_NOT_PLAYING_ANIM = 104,  
---         PED_FLAG_NO_PLAYER_MELEE = 122,  
--- 	PED_FLAG_NM_MESSAGE_466 = 125,  
--- 	PED_FLAG_INJURED_LIMP = 166,  
--- 	PED_FLAG_INJURED_LIMP_2 = 170,  
--- 	_PED_FLAG_DISABLE_SHUFFLING_TO_DRIVER_SEAT = 184,  
--- 	PED_FLAG_INJURED_DOWN = 187,  
--- 	PED_FLAG_SHRINK = 223,  
---         PED_FLAG_MELEE_COMBAT = 224,  
---         _PED_FLAG_IS_ON_STAIRS = 253,  
---         _PED_FLAG_HAS_ONE_LEG_ON_GROUND = 276,  
--- 	PED_FLAG_NO_WRITHE = 281,  
--- 	PED_FLAG_FREEZE = 292,  
--- 	PED_FLAG_IS_STILL = 301,  
---         PED_FLAG_NO_PED_MELEE = 314,  
---         _PED_SWITCHING_WEAPON = 331,  
--- 	PED_FLAG_ALPHA = 410,  
--- 	_PED_FLAG_DISABLE_STARTING_VEH_ENGINE = 429,  
--- };  
--- (*) When flagId is set to 33 and the bool value to true, peds will die by starting ragdoll, so you should set this flag to false when you resurrect a ped.  
--- When flagId is set to 62 and the boolvalue to false this happens: Ped is taken out of vehicle and can't get back in when jacking their empty vehicle. If in a plane it falls from the sky and crashes. Sometimes peds vehicle continue to drive the route without its driver who's running after.   
--- (*)  
--- JUMPING CHANGES  60,61,104 TO FALSE  
--- BEING ON WATER CHANGES 60,61 TO FALSE AND 65,66,168 TO TRUE  
--- FALLING CHANGES 60,61,104,276 TO FALSE AND TO 76 TRUE  
--- DYING CHANGES 60,61,104,276* TO FALSE AND (NONE) TO TRUE  
--- DYING MAKES 60,61,104 TO FALSE  
--- BEING IN A CAR CHANGES 60,79,104 TO FALSE AND 62 TO TRUE  
--- (*)Maximum value for flagId is 0x1AA (426) in b944.  
--- ID 0xF0 (240) appears to be a special flag which is handled different compared to the others IDs.  
--- 
--- @param ped Ped
--- @param flagId number
--- @param value boolean
function SetPedConfigFlag(ped, flagId, value) end

--- 
--- teleports ped to coords along with the vehicle ped is in  
--- 
--- @param ped Ped
--- @param posX number
--- @param posY number
--- @param posZ number
function SetPedCoordsKeepVehicle(ped, posX, posY, posZ) end


--- @param ped Ped
--- @param posX number
--- @param posY number
--- @param posZ number
function SetPedCoordsNoGang(ped, posX, posY, posZ) end

--- 
--- p1: Only "CODE_HUMAN_STAND_COWER" found in the b617d scripts.  
--- 
--- @param ped Ped
--- @param p1 string
function SetPedCowerHash(ped, p1) end

--- 
--- Found in the b617d scripts:  
--- PED::_9DBA107B4937F809(v_7, "trevor_heist_cover_2h");  
--- 
--- @param ped Ped
--- @param p1 string
function SetPedCoverClipsetOverride(ped, p1) end

--- 
--- Sets Ped Default Clothes  
--- 
--- @param ped Ped
function SetPedDefaultComponentVariation(ped) end


--- @param ped Ped
--- @param attachPed Ped
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 boolean
--- @param p10 boolean
function SetPedDefensiveAreaAttachedToPed(ped, attachPed, p2, p3, p4, p5, p6, p7, p8, p9, p10) end


--- @param ped Ped
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 boolean
function SetPedDefensiveAreaDirection(ped, p1, p2, p3, p4) end


--- @param ped Ped
--- @param target Ped
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param radius number
--- @param p6 boolean
function SetPedDefensiveSphereAttachedToPed(ped, target, xOffset, yOffset, zOffset, radius, p6) end


--- @param ped Ped
--- @param target Vehicle
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param radius number
--- @param p6 boolean
function SetPedDefensiveSphereAttachedToVehicle(ped, target, xOffset, yOffset, zOffset, radius, p6) end

--- 
--- • Usage  
--- → Use this native inside a looped function.  
--- → Values:  
--- → 0.0 = no peds on streets  
--- → 1.0 = normal peds on streets  
--- 
--- @param multiplier number
function SetPedDensityMultiplierThisFrame(multiplier) end


--- @param ped Ped
--- @param heading number
function SetPedDesiredHeading(ped, heading) end


--- @param ped Ped
--- @param toggle boolean
function SetPedDiesInSinkingVehicle(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedDiesInVehicle(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedDiesInWater(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedDiesInstantlyInWater(ped, toggle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param ped Ped
--- @param toggle boolean
--- @return any
function SetPedDiesWhenInjured(ped, toggle) end


--- @param ped Ped
--- @param clipset string
function SetPedDriveByClipsetOverride(ped, clipset) end

--- 
--- This is the SET_CHAR_DUCKING from GTA IV, that makes Peds duck. This function does nothing in GTA V. It cannot set the ped as ducking in vehicles, and IS_PED_DUCKING will always return false.  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetPedDucking(ped, toggle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param ped Ped
--- @param toggle boolean
--- @return any
function SetPedEnableWeaponBlocking(ped, toggle) end

--- 
--- Values look to be between 0.0 and 1.0  
--- From decompiled scripts: 0.0, 0.6, 0.65, 0.8, 1.0  
--- You are correct, just looked in IDA it breaks from the function if it's less than 0.0f or greater than 1.0f.  
--- 
--- @param ped Ped
--- @param value number
function SetPedEnveffScale(ped, value) end

--- 
--- Something related to the environmental effects natives.
--- In the "agency_heist3b" script, p1 - p3 are always under 100 - usually they are {87, 81, 68}. If SET_PED_ENVEFF_SCALE is set to 0.65 (instead of the usual 1.0), they use {74, 69, 60}
--- 
--- @param ped Ped
--- @param r number
--- @param g number
--- @param b number
function SetPedEnveffColorModulator(ped, r, g, b) end

--- 
--- FIRING_PATTERN_BURST_FIRE = 0xD6FF6D61 ( 1073727030 )  
--- FIRING_PATTERN_BURST_FIRE_IN_COVER = 0x026321F1 ( 40051185 )  
--- FIRING_PATTERN_BURST_FIRE_DRIVEBY = 0xD31265F2 ( -753768974 )  
--- FIRING_PATTERN_FROM_GROUND = 0x2264E5D6 ( 577037782 )  
--- FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC = 0x7A845691 ( 2055493265 )  
--- FIRING_PATTERN_FULL_AUTO = 0xC6EE6B4C ( -957453492 )  
--- FIRING_PATTERN_SINGLE_SHOT = 0x5D60E4E0 ( 1566631136 )  
--- FIRING_PATTERN_BURST_FIRE_PISTOL = 0xA018DB8A ( -1608983670 )  
--- FIRING_PATTERN_BURST_FIRE_SMG = 0xD10DADEE ( 1863348768 )  
--- FIRING_PATTERN_BURST_FIRE_RIFLE = 0x9C74B406 ( -1670073338 )  
--- FIRING_PATTERN_BURST_FIRE_MG = 0xB573C5B4 ( -1250703948 )  
--- FIRING_PATTERN_BURST_FIRE_PUMPSHOTGUN = 0x00BAC39B ( 12239771 )  
--- FIRING_PATTERN_BURST_FIRE_HELI = 0x914E786F ( -1857128337 )  
--- FIRING_PATTERN_BURST_FIRE_MICRO = 0x42EF03FD ( 1122960381 )  
--- FIRING_PATTERN_SHORT_BURSTS = 0x1A92D7DF ( 445831135 )  
--- FIRING_PATTERN_SLOW_FIRE_TANK = 0xE2CA3A71 ( -490063247 )  
--- if anyone is interested firing pattern info: pastebin.com/Px036isB  
--- 
--- @param ped Ped
--- @param patternHash Hash
function SetPedFiringPattern(ped, patternHash) end

--- 
--- Used for freemode (online) characters.  
--- For some reason, the scripts use a rounded float for the index.  
--- 
--- @param ped Ped
--- @param index number
function SetPedEyeColor(ped, index) end


--- @param ped Ped
--- @param toggle boolean
function SetPedGeneratesDeadBodyEvents(ped, toggle) end

--- 
--- Sets the various freemode face features, e.g. nose length, chin shape. Scale ranges from -1.0 to 1.0.  
--- Index can be 0   
--- Edit:---->Thanks to the first user.  
---     Enum Face_Feature  
---         Nose_Width  
---         Nose_Peak_Hight  
---         Nose_Peak_Lenght  
---         Nose_Bone_High  
---         Nose_Peak_Lowering  
---         Nose_Bone_Twist  
---         EyeBrown_High  
---         EyeBrown_Forward  
---         Cheeks_Bone_High  
---         Cheeks_Bone_Width  
---         Cheeks_Width  
---         Eyes_Openning  
---         Lips_Thickness  
---         Jaw_Bone_Width 'Bone size to sides  
---         Jaw_Bone_Back_Lenght 'Bone size to back  
---         Chimp_Bone_Lowering 'Go Down  
---         Chimp_Bone_Lenght 'Go forward  
---         Chimp_Bone_Width  
---         Chimp_Hole  
---         Neck_Thikness  
---     End Enum  
--- Example in VB.Net  
--- Public Shared Sub SET_PED_FACE_FEATURE(FreemodePed As Ped, Index As Face_Feature, Scale As Single)  
--- Native.Function.Call(Native.Hash._SET_PED_FACE_FEATURE, FreemodePed, Index, Scale)  
--- End Sub  
--- 
--- @param ped Ped
--- @param index number
--- @param scale number
function SetPedFaceFeature(ped, index, scale) end

