--- 
--- Same as SET_PED_ARMOUR, but ADDS 'amount' to the armor the Ped already has.  
--- 
--- @param ped Ped
--- @param amount number
function AddArmourToPed(ped, amount) end


--- @param ped Ped
--- @param collection Hash
--- @param overlay Hash
function AddPedDecorationFromHashesInCorona(ped, collection, overlay) end


--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param p6 boolean
--- @param p7 boolean
--- @param p8 boolean
--- @param p9 boolean
--- @return number
function AddScenarioBlockingArea(x1, y1, z1, x2, y2, z2, p6, p7, p8, p9) end

--- 
--- damages a ped with the given amount  
--- ----  
--- armorFirst means it will damage/lower the armor first before damaging the player.  
--- setting damageAmount to a negative amount will cause the player or the armor (depending on armorFirst) to be healed by damageAmount instead.  
--- 
--- 
--- 
--- NativeDB Added Parameter 4: Any p3
--- 
--- @param ped Ped
--- @param damageAmount number
--- @param armorFirst boolean
function ApplyDamageToPed(ped, damageAmount, armorFirst) end


--- @param ped Ped
--- @param p1 any
--- @param p2 number
--- @param p3 number
--- @param p4 any
function ApplyPedBloodByZone(ped, p1, p2, p3, p4) end

--- 
--- Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.  
--- collection - PedDecorationCollection filename hash  
--- overlay - Item name hash  
--- Example:  
--- Entry inside "mpbeach_overlays.xml" -  
--- <Item>  
---   <uvPos x="0.500000" y="0.500000" />  
---   <scale x="0.600000" y="0.500000" />  
---   <rotation value="0.000000" />  
---   <nameHash>FM_Hair_Fuzz</nameHash>  
---   <txdHash>mp_hair_fuzz</txdHash>  
---   <txtHash>mp_hair_fuzz</txtHash>  
---   <zone>ZONE_HEAD</zone>  
---   <type>TYPE_TATTOO</type>  
---   <faction>FM</faction>  
---   <garment>All</garment>  
---   <gender>GENDER_DONTCARE</gender>  
---   <award />  
---   <awardLevel />  
--- </Item>  
--- Code:  
--- PED::_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("mpbeach_overlays"), GAMEPLAY::GET_HASH_KEY("fm_hair_fuzz"))  
--- 
--- @param ped Ped
--- @param collection Hash
--- @param overlay Hash
function AddPedDecorationFromHashes(ped, collection, overlay) end


--- @param ped Ped
--- @param p1 any
--- @param p2 number
--- @param p3 number
--- @param p4 any
function ApplyPedBloodDamageByZone(ped, p1, p2, p3, p4) end

--- 
--- APPLY_PED_DAMAGE_DECAL(ped, 1, 0.5f, 0.513f, 0f, 1f, unk, 0, 0, "blushing");  
--- 
--- @param ped Ped
--- @param damageZone number
--- @param xOffset number
--- @param yOffset number
--- @param heading number
--- @param scale number
--- @param alpha number
--- @param variation number
--- @param fadeIn boolean
--- @param decalName string
function ApplyPedDamageDecal(ped, damageZone, xOffset, yOffset, heading, scale, alpha, variation, fadeIn, decalName) end

--- 
--- Can't select void. This function returns nothing. The hash of the created relationship group is output in the second parameter.  
--- 
--- @param name string
--- @param groupHash Hash
--- @return any
function AddRelationshipGroup(name, groupHash) end

--- 
--- Damage Packs:  
--- "SCR_TrevorTreeBang"  
--- "HOSPITAL_0"  
--- "HOSPITAL_1"  
--- "HOSPITAL_2"  
--- "HOSPITAL_3"  
--- "HOSPITAL_4"  
--- "HOSPITAL_5"  
--- "HOSPITAL_6"  
--- "HOSPITAL_7"  
--- "HOSPITAL_8"  
--- "HOSPITAL_9"  
--- "SCR_Dumpster"  
--- "BigHitByVehicle"  
--- "SCR_Finale_Michael_Face"  
--- "SCR_Franklin_finb"  
--- "SCR_Finale_Michael"  
--- "SCR_Franklin_finb2"  
--- "Explosion_Med"  
--- "SCR_Torture"  
--- "SCR_TracySplash"  
--- "Skin_Melee_0"  
--- Additional damage packs:  
--- gist.github.com/alexguirre/f3f47f75ddcf617f416f3c8a55ae2227  
--- 
--- @param ped Ped
--- @param damagePack string
--- @param damage number
--- @param mult number
function ApplyPedDamagePack(ped, damagePack, damage, mult) end

--- 
--- Found one occurence in re_crashrescue.c4  
--- PED::APPLY_PED_BLOOD(l_4B, 3, 0.0, 0.0, 0.0, "wound_sheet");  
--- 
--- @param ped Ped
--- @param boneIndex number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param woundType string
function ApplyPedBlood(ped, boneIndex, xRot, yRot, zRot, woundType) end

--- 
--- Related toggling CEventShockingDeadBody
--- 
--- @param ped Ped
--- @param toggle boolean
function BlockPedDeadBodyShockingEvents(ped, toggle) end


--- @return boolean
function CanCreateRandomCops() end


--- @param ped Ped
--- @param p1 any
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 any
--- @param p7 number
--- @param p8 any
function ApplyPedBloodSpecific(ped, p1, p2, p3, p4, p5, p6, p7, p8) end


--- @param sceneID number
--- @param entity Entity
--- @param boneIndex number
function AttachSynchronizedSceneToEntity(sceneID, entity, boneIndex) end


--- @param unk boolean
--- @return boolean
function CanCreateRandomPed(unk) end


--- @return boolean
function CanCreateRandomBikeRider() end


--- @param ped Ped
--- @return boolean
function CanKnockPedOffVehicle(ped) end


--- @return boolean
function CanCreateRandomDriver() end

--- 
--- Prevents the ped from going limp.  
--- [Example: Can prevent peds from falling when standing on moving vehicles.]  
--- 
--- @param ped Ped
--- @return boolean
function CanPedRagdoll(ped) end


--- @param ped Ped
--- @param target Ped
--- @return boolean
function CanPedInCombatSeeTarget(ped, target) end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
function ClearAllPedProps(ped) end

--- 
--- Returns true if ped1 can see ped2 in their line of vision  
--- 
--- @param ped1 Ped
--- @param ped2 Ped
--- @return boolean
function CanPedSeeHatedPed(ped1, ped2) end


--- @param ped Ped
function ClearFacialIdleAnimOverride(ped) end


--- @param ped Ped
function ClearAllPedVehicleForcedSeatUsage(ped) end


--- @param ped Ped
--- @param p1 number
function ClearPedAlternateWalkAnim(ped, p1) end


--- @param ped Ped
--- @param stance number
--- @param p2 number
function ClearPedAlternateMovementAnim(ped, stance, p2) end


--- @param ped Ped
function ClearPedBloodDamage(ped) end

--- 
--- Somehow related to changing ped's clothes.  
--- 
--- @param ped Ped
--- @param p1 number
function ClearPedBloodDamageByZone(ped, p1) end

--- 
--- CLEAR_PED_*
--- 
--- @param ped Ped
function ClearPedCoverClipsetOverride(ped) end

--- 
--- p1: from 0 to 5 in the b617d scripts.  
--- p2: "blushing" and "ALL" found in the b617d scripts.  
--- 
--- @param ped Ped
--- @param p1 number
--- @param p2 string
function ClearPedDamageDecalByZone(ped, p1, p2) end


--- @param ped Ped
function ClearPedDecorations(ped) end


--- @param ped Ped
function ClearPedDriveByClipsetOverride(ped) end


--- @param ped Ped
function ClearPedDecorationsLeaveScars(ped) end

--- 
--- Something related to clearing the ped because always used with CLEAR_PED_WETNESS, CLEAR_PED_BLOOD_DAMAGE and RESET_PED_VISIBLE_DAMAGE.  
--- 
--- @param ped Ped
function ClearPedEnvDirt(ped) end


function ClearPedNonCreationArea() end


--- @param ped Ped
function ClearPedLastDamageBone(ped) end


--- @param ped Ped
function ClearPedParachutePackVariation(ped) end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
--- @param propId number
function ClearPedProp(ped, propId) end

--- 
--- It clears the wetness of the selected Ped/Player. Clothes have to be wet to notice the difference.  
--- 
--- @param ped Ped
function ClearPedWetness(ped) end

--- Removes the scubagear (for mp male: component id: 8, drawableId: 123, textureId: any) from peds. Does not play the 'remove scuba gear' animation, but instantly removes it.
--- @param ped Ped
function ClearPedScubaGearVariation(ped) end

--- 
--- There seem to be 26 flags  
--- 
--- @param ped Ped
--- @param flags number
function ClearRagdollBlockingFlags(ped, flags) end

--- 
--- Clears the relationship between two groups. This should be called twice (once for each group).  
--- Relationship types:  
--- 0 = Companion  
--- 1 = Respect  
--- 2 = Like  
--- 3 = Neutral  
--- 4 = Dislike  
--- 5 = Hate  
--- 255 = Pedestrians  
--- (Credits: Inco)  
--- Example:  
--- PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);  
--- PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);  
--- 
--- @param relationship number
--- @param group1 Hash
--- @param group2 Hash
function ClearRelationshipBetweenGroups(relationship, group1, group2) end

--- 
--- Example of Cloning Your Player: CLONE_PED(PLAYER_PED_ID(), GET_ENTITY_HEADING(PLAYER_PED_ID()), 0, 1);  
--- 
--- @param ped Ped
--- @param heading number
--- @param isNetwork boolean
--- @param netMissionEntity boolean
--- @return Ped
function ClonePed(ped, heading, isNetwork, netMissionEntity) end

--- 
--- What exactly is the difference? What does this exactly do by chance?  
--- ^ Copies ped's components and props to targetPed.  
--- ---------------------------------------------------------------------------------  
--- | Internally has a 3rd param (bool) which is set to true by default |  
--- 
--- @param ped Ped
--- @param targetPed Ped
function ClonePedToTarget(ped, targetPed) end

--- Used one time in fmmc_launcher.c instead of ClonePed because ?
--- 
--- 
--- NativeDB Parameter 1: float heading
--- NativeDB Parameter 2: BOOL isNetwork
--- NativeDB Parameter 3: BOOL netMissionEntity
--- 
--- @param ped Ped
--- @param heading any
--- @param isNetwork any
--- @param netMissionEntity any
--- @param p4 any
--- @return Ped
function ClonePed2(ped, heading, isNetwork, netMissionEntity, p4) end


--- @param ped Ped
--- @param targetPed Ped
--- @param p2 any
function ClonePedToTargetEx(ped, targetPed, p2) end

--- 
--- Creates a new NaturalMotion message.  
--- startImmediately: If set to true, the character will perform the message the moment it receives it by GIVE_PED_NM_MESSAGE. If false, the Ped will get the message but won't perform it yet. While it's a boolean value, if negative, the message will not be initialized.  
--- messageId: The ID of the NaturalMotion message.  
--- If a message already exists, this function does nothing. A message exists until the point it has been successfully dispatched by GIVE_PED_NM_MESSAGE.  
--- 
--- @param startImmediately boolean
--- @param messageId number
function CreateNmMessage(startImmediately, messageId) end

--- 
--- Creates a new ped group.  
--- Groups can contain up to 8 peds.  
--- The parameter is unused.  
--- Returns a handle to the created group, or 0 if a group couldn't be created.  
--- 
--- @param unused number
--- @return number
function CreateGroup(unused) end

--- 
--- *Heading*: 0.0  
--- *Heading* is the Z axis spawn rotation of the ped 0->5th parameter.  
--- Ped Types:  
--- enum PedTypes  
--- {  
--- 	PED_TYPE_PLAYER_0,// michael  
--- 	PED_TYPE_PLAYER_1,// franklin  
--- 	PED_TYPE_NETWORK_PLAYER,	// mp character  
--- 	PED_TYPE_PLAYER_2,// trevor  
--- 	PED_TYPE_CIVMALE,  
--- 	PED_TYPE_CIVFEMALE,  
--- 	PED_TYPE_COP,  
--- 	PED_TYPE_GANG_ALBANIAN,  
--- 	PED_TYPE_GANG_BIKER_1,  
--- 	PED_TYPE_GANG_BIKER_2,  
--- 	PED_TYPE_GANG_ITALIAN,  
--- 	PED_TYPE_GANG_RUSSIAN,  
--- 	PED_TYPE_GANG_RUSSIAN_2,  
--- 	PED_TYPE_GANG_IRISH,  
--- 	PED_TYPE_GANG_JAMAICAN,  
--- 	PED_TYPE_GANG_AFRICAN_AMERICAN,  
--- 	PED_TYPE_GANG_KOREAN,  
--- 	PED_TYPE_GANG_CHINESE_JAPANESE,  
--- 	PED_TYPE_GANG_PUERTO_RICAN,  
--- 	PED_TYPE_DEALER,  
--- 	PED_TYPE_MEDIC,  
--- 	PED_TYPE_FIREMAN,  
--- 	PED_TYPE_CRIMINAL,  
--- 	PED_TYPE_BUM,  
--- 	PED_TYPE_PROSTITUTE,  
--- 	PED_TYPE_SPECIAL,  
--- 	PED_TYPE_MISSION,  
--- 	PED_TYPE_SWAT,  
--- 	PED_TYPE_ANIMAL,  
--- 	PED_TYPE_ARMY  
--- };  
--- 
--- @param pedType number
--- @param modelHash Hash
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param isNetwork boolean
--- @param netMissionEntity boolean
--- @return Ped
function CreatePed(pedType, modelHash, x, y, z, heading, isNetwork, netMissionEntity) end


--- @param ped Ped
--- @param p1 boolean
--- @param p2 boolean
--- @return Object
function CreateParachuteObject(ped, p1, p2) end

--- 
--- Ped Types:  
--- enum ePedType  
--- {  
--- 	PED_TYPE_PLAYER_0 = 0,  
--- 	PED_TYPE_PLAYER_1 = 1,  
--- 	PED_TYPE_PLAYER_2 = 3,  
--- 	PED_TYPE_CIVMALE = 4,  
--- 	PED_TYPE_CIVFEMALE = 5,  
--- 	PED_TYPE_COP = 6,  
--- 	PED_TYPE_UNKNOWN_7 = 7,  
--- 	PED_TYPE_UNKNOWN_12 = 12, // gang member?  
--- 	PED_TYPE_UNKNOWN_19 = 19,  
--- 	PED_TYPE_MEDIC = 20,  
--- 	PED_TYPE_FIREMAN = 21,  
--- 	PED_TYPE_UNKNOWN_22 = 22,  
--- 	PED_TYPE_UNKNOWN_25 = 25,  
--- 	PED_TYPE_UNKNOWN_26 = 26,  
--- 	PED_TYPE_SWAT = 27,  
--- 	PED_TYPE_ANIMAL = 28,  
--- 	PED_TYPE_ARMY = 29  
--- };  
--- 
--- @param vehicle Vehicle
--- @param pedType number
--- @param modelHash Hash
--- @param seat number
--- @param isNetwork boolean
--- @param netMissionEntity boolean
--- @return Ped
function CreatePedInsideVehicle(vehicle, pedType, modelHash, seat, isNetwork, netMissionEntity) end

--- 
--- vb.net  
--- Dim ped_handle As Integer  
---                     With Game.Player.Character  
---                         Dim pos As Vector3 = .Position + .ForwardVector * 3  
---                         ped_handle = Native.Function.Call(Of Integer)(Hash.CREATE_RANDOM_PED, pos.X, pos.Y, pos.Z)  
---                     End With  
--- Creates a Ped at the specified location, returns the Ped Handle.    
--- Ped will not act until SET_PED_AS_NO_LONGER_NEEDED is called.  
--- 
--- @param posX number
--- @param posY number
--- @param posZ number
--- @return Ped
function CreateRandomPed(posX, posY, posZ) end


--- @param vehicle Vehicle
--- @param returnHandle boolean
--- @return Ped
function CreateRandomPedAsDriver(vehicle, returnHandle) end

--- 
--- p6 always 2 (but it doesnt seem to matter...)  
--- roll and pitch 0  
--- yaw to Ped.rotation  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param roll number
--- @param pitch number
--- @param yaw number
--- @param p6 number
--- @return number
function CreateSynchronizedScene(x, y, z, roll, pitch, yaw, p6) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param object Hash
--- @return number
function CreateSynchronizedScene2(x, y, z, radius, object) end

--- 
--- Deletes the specified ped, then sets the handle pointed to by the pointer to NULL.  
--- 
--- @param ped Ped
function DeletePed(ped) end


--- @param sceneID number
function DetachSynchronizedScene(sceneID) end


--- @param ped Ped
function DisableHeadBlendPaletteColor(ped) end


--- @param scene number
function DisposeSynchronizedScene(scene) end


--- @param ped Ped
function DisablePedHeatscaleOverride(ped) end


--- @param groupId number
--- @return boolean
function DoesGroupExist(groupId) end


--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @return boolean
function DoesScenarioBlockingAreaExist(x1, y1, z1, x2, y2, z2) end

--- 
--- NativeDB Parameter 0: Hash groupHash
--- 
--- @param groupHash any
--- @return boolean
function DoesRelationshipGroupExist(groupHash) end


--- @param ped Ped
function DropAmbientProp(ped) end

--- 
--- Some motionstate hashes are  
--- 0xec17e58 (standing idle), 0xbac0f10b (nothing?), 0x3f67c6af (aiming with pistol 2-h), 0x422d7a25 (stealth), 0xbd8817db, 0x916e828c  
--- and those for the strings  
--- "motionstate_idle", "motionstate_walk", "motionstate_run", "motionstate_actionmode_idle", and "motionstate_actionmode_walk".  
--- Regarding p2, p3 and p4: Most common is 0, 0, 0); followed by 0, 1, 0); and 1, 1, 0); in the scripts. p4 is very rarely something other than 0.  
---  [31/03/2017] ins1de :  
---         enum MotionState  
---         {  
---             StopRunning = -530524,  
---             StopWalking = -668482597,  
---             Idle = 247561816, // 1, 1, 0  
---             Idl2 = -1871534317,  
---             SkyDive =-1161760501, // 0, 1, 0  
---             Stealth = 1110276645,  
---             Sprint = -1115154469,  
---             Swim = -1855028596,  
---             Unknown1 = 1063765679,  
---             Unknown2 = -633298724,  
---         }  
--- 
--- 
--- 
--- NativeDB Parameter 3: int p3
--- 
--- @param ped Ped
--- @param motionStateHash Hash
--- @param p2 boolean
--- @param p3 boolean
--- @param p4 boolean
--- @return boolean
function ForcePedMotionState(ped, motionStateHash, p2, p3, p4) end

--- 
--- Forces the ped to fall back and kills it.  
--- It doesn't really explode the ped's head but it kills the ped  
--- 
--- @param ped Ped
--- @param weaponHash Hash
function ExplodePedHead(ped, weaponHash) end


--- @param ped Ped
function FreezePedCameraRotation(ped) end


--- @param ped Ped
function ForcePedToOpenParachute(ped) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param animDict string
--- @param animName string
--- @param x number
--- @param y number
--- @param z number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param p8 number
--- @param p9 number
--- @return vector3
function GetAnimInitialOffsetPosition(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param animDict string
--- @param animName string
--- @param x number
--- @param y number
--- @param z number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param p8 number
--- @param p9 number
--- @return vector3
function GetAnimInitialOffsetRotation(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9) end

--- 
--- Gets the closest ped in a radius.  
--- Ped Types:  
--- Any ped = -1  
--- Player = 1  
--- Male = 4   
--- Female = 5   
--- Cop = 6  
--- Human = 26  
--- SWAT = 27   
--- Animal = 28  
--- Army = 29  
--- ------------------  
--- P4 P5 P7 P8  
--- 1  0  x  x  = return nearest walking Ped  
--- 1  x  0  x  = return nearest walking Ped  
--- x  1  1  x  = return Ped you are using  
--- 0  0  x  x  = no effect  
--- 0  x  0  x  = no effect  
--- x = can be 1 or 0. Does not have any obvious changes.  
--- This function does not return ped who is:  
--- 1. Standing still  
--- 2. Driving  
--- 3. Fleeing  
--- 4. Attacking  
--- This function only work if the ped is:  
--- 1. walking normally.  
--- 2. waiting to cross a road.  
--- Note: PED::GET_PED_NEARBY_PEDS works for more peds.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param p4 boolean
--- @param p5 boolean
--- @param outPed Ped
--- @param p7 boolean
--- @param p8 boolean
--- @param pedType number
--- @return boolean
function GetClosestPed(x, y, z, radius, p4, p5, outPed, p7, p8, pedType) end

--- 
--- p0: Ped Handle  
--- p1: int i | 0 <= i <= 27  
--- p1 probably refers to the attributes configured in combatbehavior.meta. There are 13. Example:  
--- <BlindFireChance value="0.1"/>  
--- <WeaponShootRateModifier value="1.0"/>  
--- <TimeBetweenBurstsInCover value="1.25"/>  
--- <BurstDurationInCover value="2.0"/>  
--- <TimeBetweenPeeks value="10.0"/>  
--- <WeaponAccuracy value="0.18"/>  
--- <FightProficiency value="0.8"/>  
--- <StrafeWhenMovingChance value="1.0"/>  
--- <WalkWhenStrafingChance value="0.0"/>  
--- <AttackWindowDistanceForCover value="55.0"/>  
--- <TimeToInvalidateInjuredTarget value="9.0"/>  
--- <TriggerChargeTime_Near value="4.0"/>  
--- <TriggerChargeTime_Far value="10.0"/>  
--- -------------Confirmed by editing combatbehavior.meta:  
--- p1:  
--- 0=BlindFireChance  
--- 1=BurstDurationInCover  
--- 3=TimeBetweenBurstsInCover  
--- 4=TimeBetweenPeeks  
--- 5=StrafeWhenMovingChance  
--- 8=WalkWhenStrafingChance  
--- 11=AttackWindowDistanceForCover  
--- 12=TimeToInvalidateInjuredTarget  
--- 16=OptimalCoverDistance  
--- 
--- @param ped Ped
--- @param p1 number
--- @return number
function GetCombatFloat(ped, p1) end


--- @param ped Ped
--- @param p1 number
--- @param p2 number
--- @return vector3
function GetDeadPedPickupCoords(ped, p1, p2) end

--- 
--- p1 may be a BOOL representing whether or not the group even exists  
--- 
--- @param groupID number
--- @param unknown any
--- @param sizeInMembers number
function GetGroupSize(groupID, unknown, sizeInMembers) end


--- @param ped Ped
--- @return Ped
function GetJackTarget(ped) end


--- @param ped Ped
--- @return Ped
function GetMeleeTargetForPed(ped) end

--- 
--- Function just returns 0  
--- void __fastcall ped__get_mount(NativeContext *a1)  
--- {  
---   NativeContext *v1; // rbx@1  
---   v1 = a1;  
---   GetAddressOfPedFromScriptHandle(a1->Args->Arg1);  
---   v1->Returns->Item1= 0;  
--- }  
--- 
--- @param ped Ped
--- @return Ped
function GetMount(ped) end

--- 
--- Used for freemode (online) characters.  
--- 
--- @return number
function GetNumHairColors() end

--- 
--- Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.  
--- 
--- @param type number
--- @return number
function GetNumParentPedsOfType(type) end


--- @return number
function GetNumMakeupColors() end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
--- @param componentId number
--- @return number
function GetNumberOfPedDrawableVariations(ped, componentId) end

--- 
--- Need to check behavior when drawableId = -1  
--- - Doofy.Ass  
--- Why this function doesn't work and return nill value?  
--- GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(PLAYER.PLAYER_PED_ID(), 0, 5)  
--- tick: scripts/addins/menu_execute.lua:51: attempt to call field 'GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS' (a nil value)  
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
--- @param propId number
--- @param drawableId number
--- @return number
function GetNumberOfPedPropTextureVariations(ped, propId, drawableId) end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
--- @param componentId number
--- @param drawableId number
--- @return number
function GetNumberOfPedTextureVariations(ped, componentId, drawableId) end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
--- @param propId number
--- @return number
function GetNumberOfPedPropDrawableVariations(ped, propId) end

--- 
--- Returns the ped's alertness (0-3).  
--- Values :   
--- 0 : Neutral  
--- 1 : Heard something (gun shot, hit, etc)  
--- 2 : Knows (the origin of the event)  
--- 3 : Fully alerted (is facing the event?)  
--- If the Ped does not exist, returns -1.  
--- 
--- @param ped Ped
--- @return number
function GetPedAlertness(ped) end


--- @param ped Ped
--- @return number
function GetPedAccuracy(ped) end


--- @param groupID number
--- @return Ped
function GetPedAsGroupLeader(groupID) end


--- @param ped Ped
--- @return number
function GetPedArmour(ped) end

--- 
--- from fm_mission_controller.c4 (variable names changed for clarity):  
--- int groupID = PLAYER::GET_PLAYER_GROUP(PLAYER::PLAYER_ID());  
--- PED::GET_GROUP_SIZE(group, &unused, &groupSize);  
--- if (groupSize >= 1) {  
--- . . . . for (int memberNumber = 0; memberNumber < groupSize; memberNumber++) {  
--- . . . . . . . . Ped ped1 = PED::GET_PED_AS_GROUP_MEMBER(groupID, memberNumber);  
--- . . . . . . . . //and so on  
--- 
--- @param groupID number
--- @param memberNumber number
--- @return Ped
function GetPedAsGroupMember(groupID, memberNumber) end

--- 
--- Gets the position of the specified bone of the specified ped.  
--- ped: The ped to get the position of a bone from.  
--- boneId: The ID of the bone to get the position from. This is NOT the index.  
--- offsetX: The X-component of the offset to add to the position relative to the bone's rotation.  
--- offsetY: The Y-component of the offset to add to the position relative to the bone's rotation.  
--- offsetZ: The Z-component of the offset to add to the position relative to the bone's rotation.  
--- 
--- @param ped Ped
--- @param boneId number
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
--- @return vector3
function GetPedBoneCoords(ped, boneId, offsetX, offsetY, offsetZ) end

--- 
--- Bone ID enum: pastebin.com/3pz17QGd  
--- 
--- @param ped Ped
--- @param boneId number
--- @return number
function GetPedBoneIndex(ped, boneId) end

--- 
--- Returns the hash of the weapon/model/object that killed the ped.  
--- 
--- @param ped Ped
--- @return Hash
function GetPedCauseOfDeath(ped) end


--- @param ped Ped
--- @return number
function GetPedCombatMovement(ped) end

--- 
--- Returns the zoneID for the overlay if it is a member of collection.  
--- enum TattooZoneData  
--- {  
--- 	ZONE_TORSO = 0,  
--- 	ZONE_HEAD = 1,  
--- 	ZONE_LEFT_ARM = 2,  
--- 	ZONE_RIGHT_ARM = 3,  
--- 	ZONE_LEFT_LEG = 4,  
--- 	ZONE_RIGHT_LEG = 5,  
--- 	ZONE_UNKNOWN = 6,  
--- 	ZONE_NONE = 7,  
--- };  
--- 
--- @param collection Hash
--- @param overlay Hash
--- @return number
function GetPedDecorationZoneFromHashes(collection, overlay) end


--- @param ped Ped
--- @return number
function GetPedCombatRange(ped) end


--- @param ped Ped
--- @return number
function GetPedDecorationsState(ped) end

--- 
--- p2 is always 1 in the scripts.  
--- if (GET_PED_CONFIG_FLAG(ped, 78, 1))  
--- = returns true if ped is aiming/shooting a gun  
--- 
--- @param ped Ped
--- @param flagId number
--- @param p2 boolean
--- @return boolean
function GetPedConfigFlag(ped, flagId, p2) end


--- @param ped Ped
--- @return number
function GetPedEnveffScale(ped) end


--- @param ped Ped
--- @param p1 boolean
--- @return vector3
function GetPedDefensiveAreaPosition(ped, p1) end

--- 
--- Gets the offset the specified ped has moved since the previous tick.  
--- If worldSpace is false, the returned offset is relative to the ped. That is, if the ped has moved 1 meter right and 5 meters forward, it'll return 1,5,0.  
--- If worldSpace is true, the returned offset is relative to the world. That is, if the ped has moved 1 meter on the X axis and 5 meters on the Y axis, it'll return 1,5,0.  
--- 
--- @param ped Ped
--- @param worldSpace boolean
--- @return vector3
function GetPedExtractedDisplacement(ped, worldSpace) end

--- 
--- The pointer is to a padded struct that matches the arguments to SET_PED_HEAD_BLEND_DATA(...). There are 4 bytes of padding after each field.  
--- pass this struct in the second parameter   
--- typedef struct  
--- {  
---         int shapeFirst, shapeSecond, shapeThird;   
---         int skinFirst, skinSecond, skinThird;   
--- 	float shapeMix, skinMix, thirdMix;  
--- } headBlendData;  
--- 
--- @param ped Ped
--- @param headBlendData any
--- @return boolean
function GetPedHeadBlendData(ped, headBlendData) end

--- 
--- Ids  
--- 1   
--- 2   
--- 3   
--- 4   
--- 5   
--- 6   
--- 7 - ------  
--- 8 - Accessories 1  
--- 9 - Accessories 2  
--- 10  
--- 11 - Auxiliary parts for torso  
--- 
--- @param ped Ped
--- @param componentId number
--- @return number
function GetPedDrawableVariation(ped, componentId) end

--- 
--- Returns the group id of which the specified ped is a member of.  
--- 
--- @param ped Ped
--- @return number
function GetPedGroupIndex(ped) end

--- 
--- Used with freemode (online) characters.
--- 
--- @param overlayID number
--- @return number
function GetPedHeadOverlayNum(overlayID) end

--- Use [SetPedIlluminatedClothingGlowIntensity](#_0x4E90D746056E273D) to set the illuminated clothing glow intensity for a specific ped.
--- @param ped Ped
--- @return number
function GetPedIlluminatedClothingGlowIntensity(ped) end

--- Input: Haircolor index, value between 0 and 63 (inclusive).
--- Output: RGB values for the haircolor specified in the input.
--- 
--- This is used with the hair color swatches scaleform.
--- 
--- Use [_0x013E5CFC38CD5387](#_0x013E5CFC38CD5387) to get the makeup colors.
--- @param hairColorIndex number
--- @param outR number
--- @param outG number
--- @param outB number
function GetPedHairRgbColor(hairColorIndex, outR, outG, outB) end

--- Input: Makeup color index, value between 0 and 63 (inclusive).
--- Output: RGB values for the makeup color specified in the input.
--- 
--- This is used with the makeup color swatches scaleform.
--- 
--- Use [_0x4852FC386E2E1BB5](#_0x4852FC386E2E1BB5) to get the hair colors.
--- @param makeupColorIndex number
--- @param outR number
--- @param outG number
--- @param outB number
function GetPedMakeupRgbColor(makeupColorIndex, outR, outG, outB) end

