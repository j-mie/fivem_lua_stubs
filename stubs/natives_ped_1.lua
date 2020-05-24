--- 
--- Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.
--- Used when calling SET_PED_HEAD_BLEND_DATA.
--- 
--- @param type number
--- @return number
function GetPedHeadBlendFirstIndex(type) end


--- @param ped Ped
--- @return number
function GetPedMaxHealth(ped) end

--- 
--- sizeAndPeds - is a pointer to an array. The array is filled with peds found nearby the ped supplied to the first argument.  
--- ignore - ped type to ignore  
--- Return value is the number of peds found and added to the array passed.  
--- -----------------------------------  
--- To make this work in most menu bases at least in C++ do it like so,  
---  Formatted Example: pastebin.com/D8an9wwp  
--- -----------------------------------  
--- Example: gtaforums.com/topic/789788-function-args-to-pedget-ped-nearby-peds/?p=1067386687  
--- Here's the right way to do it (console and pc):  
--- pastebin.com/SsFej963  
--- 
--- @param ped Ped
--- @param sizeAndPeds number
--- @param ignore number
--- @return number
function GetPedNearbyPeds(ped, sizeAndPeds, ignore) end

--- 
--- Likely a char, if that overlay is not set, e.i. "None" option, returns 255;  
--- 
--- @param ped Ped
--- @param overlayID number
--- @return number
function GetPedHeadOverlayValue(ped, overlayID) end

--- 
--- Pretty sure outBone is an int.  
--- 
--- @param ped Ped
--- @param outBone number
--- @return boolean
function GetPedLastDamageBone(ped, outBone) end

--- 
--- Returns size of array, passed into the second variable.  
--- See below for usage information.  
--- This function actually requires a struct, where the first value is the maximum number of elements to return.  Here is a sample of how I was able to get it to work correctly, without yet knowing the struct format.  
--- //Setup the array  
--- 	const int numElements = 10;  
--- 	const int arrSize = numElements * 2 + 2;  
--- 	Any veh[arrSize];  
--- 	//0 index is the size of the array  
--- 	veh[0] = numElements;  
--- 	int count = PED::GET_PED_NEARBY_VEHICLES(PLAYER::PLAYER_PED_ID(), veh);  
--- 	if (veh != NULL)  
--- 	{  
--- //Simple loop to go through results  
--- for (int i = 0; i < count; i++)  
--- {  
--- 	int offsettedID = i * 2 + 2;  
--- 	//Make sure it exists  
--- 	if (veh[offsettedID] != NULL && ENTITY::DOES_ENTITY_EXIST(veh[offsettedID]))  
--- 	{  
--- //Do something  
--- 	}  
--- }  
--- 	}    
--- Here's the right way to do it (console and pc):  
--- pastebin.com/SsFej963  
--- 
--- @param ped Ped
--- @param sizeAndVehs number
--- @return number
function GetPedNearbyVehicles(ped, sizeAndVehs) end

--- 
--- -1: no landing  
--- 0: landing on both feet  
--- 1: stumbling  
--- 2: rolling  
--- 3: ragdoll  
--- 
--- @param ped Ped
--- @return number
function GetPedParachuteLandingType(ped) end


--- @param ped Ped
--- @return number
function GetPedMoney(ped) end


--- @param ped Ped
--- @param outTintIndex number
function GetPedParachuteTintIndex(ped, outTintIndex) end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
--- @param componentId number
--- @return number
function GetPedPropTextureIndex(ped, componentId) end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
--- @param componentId number
--- @return number
function GetPedPaletteVariation(ped, componentId) end


--- @param ped Ped
--- @param bone number
--- @return number
function GetPedRagdollBoneIndex(ped, bone) end

--- 
--- Returns:  
--- -1: Normal  
--- 0: Wearing parachute on back  
--- 1: Parachute opening  
--- 2: Parachute open  
--- 3: Falling to doom (e.g. after exiting parachute)  
--- Normal means no parachute?  
--- 
--- @param ped Ped
--- @return number
function GetPedParachuteState(ped) end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
--- @param componentId number
--- @return number
function GetPedPropIndex(ped, componentId) end


--- @param ped Ped
--- @param flagId number
--- @return boolean
function GetPedResetFlag(ped, flagId) end


--- @param ped Ped
--- @return Hash
function GetPedRelationshipGroupDefaultHash(ped) end

--- 
--- Returns the Entity (Ped, Vehicle, or ?Object?) that killed the 'ped'  
--- Is best to check if the Ped is dead before asking for its killer.  
--- 
--- @param ped Ped
--- @return Entity
function GetPedSourceOfDeath(ped) end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
--- @param componentId number
--- @return number
function GetPedTextureVariation(ped, componentId) end


--- @param ped Ped
--- @return Hash
function GetPedRelationshipGroupHash(ped) end

--- 
--- Ped Types: (ordered by return priority)  
--- Michael = 0  
--- Franklin = 1  
--- Trevor = 2  
--- Army = 29  
--- Animal = 28  
--- SWAT = 27  
--- LSFD = 21  
--- Paramedic = 20  
--- Cop = 6  
--- Male = 4  
--- Female = 5   
--- Human = 26  
--- Note/Exception  
--- hc_gunman : 4 // Mix male and female  
--- hc_hacker : 4 // Mix male and female  
--- mp_f_misty_01 : 4 // Female character  
--- s_f_y_ranger_01 : 5 // Ranger  
--- s_m_y_ranger_01 : 4 // Ranger  
--- s_m_y_uscg_01 : 6 // US Coast Guard  
--- 
--- @param ped Ped
--- @return number
function GetPedType(ped) end

--- 
--- Returns whether the entity is in stealth mode  
--- 
--- @param ped Ped
--- @return boolean
function GetPedStealthMovement(ped) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param ped Ped
--- @return number
function GetPedVisualFieldCenterAngle(ped) end

--- 
--- Name was _GET_PED_TIME_OF_DEATH  
--- -----------------------------------------------------------------  
--- There is no way this is the correct name. The only time this is called it's compared with the game timer and I used this to test something and noticed when I was killed by no matter what it was my 'Time Of Death' via this native was always 0, but my friends was some random big number like so, 147591.  
--- Retreives [CPed + 15CC] (as of 944)  
--- 
--- @param ped Ped
--- @return number
function GetPedTimeOfDeath(ped) end


--- @param ped Ped
--- @return Player
function GetPlayerPedIsFollowing(ped) end

--- 
--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
--- 
--- @param handle number
--- @return string
function GetPedheadshotTxdString(handle) end

--- 
--- Gets a random ped in the x/y/zRadius near the x/y/z coordinates passed.   
--- Ped Types:  
--- Any = -1  
--- Player = 1  
--- Male = 4   
--- Female = 5   
--- Cop = 6  
--- Human = 26  
--- SWAT = 27   
--- Animal = 28  
--- Army = 29  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param xRadius number
--- @param yRadius number
--- @param zRadius number
--- @param pedType number
--- @return Ped
function GetRandomPedAtCoord(x, y, z, xRadius, yRadius, zRadius, pedType) end


--- @param ped Ped
--- @return Ped
function GetPedsJacker(ped) end

--- 
--- Gets the relationship between two peds. This should be called twice (once for each ped).  
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
--- PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, l_1017, 0xA49E591C);  
--- PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, 0xA49E591C, l_1017);  
--- 
--- @param ped1 Ped
--- @param ped2 Ped
--- @return number
function GetRelationshipBetweenPeds(ped1, ped2) end

--- 
--- Gets the relationship between two groups. This should be called twice (once for each group).  
--- Relationship types:  
--- 0 = Companion  
--- 1 = Respect  
--- 2 = Like  
--- 3 = Neutral  
--- 4 = Dislike  
--- 5 = Hate  
--- 255 = Pedestrians  
--- Example:  
--- PED::GET_RELATIONSHIP_BETWEEN_GROUPS(l_1017, 0xA49E591C);  
--- PED::GET_RELATIONSHIP_BETWEEN_GROUPS(0xA49E591C, l_1017);  
--- 
--- @param group1 Hash
--- @param group2 Hash
--- @return number
function GetRelationshipBetweenGroups(group1, group2) end


--- @param ped Ped
--- @return number
function GetSeatPedIsTryingToEnter(ped) end


--- @param sceneID number
--- @return number
function GetSynchronizedScenePhase(sceneID) end


--- @param sceneID number
--- @return number
function GetSynchronizedSceneRate(sceneID) end

--- 
--- GET_TIME_SINCE_???  
--- 
--- 
--- 
--- NativeDB Parameter 1: Hash weaponHash
--- 
--- @param ped Ped
--- @param weaponHash any
--- @return number
function GetTimeOfLastPedWeaponDamage(ped, weaponHash) end

--- Gets the vehicle the specified Ped is/was in depending on bool value.
--- @param ped Ped
--- @param lastVehicle boolean
--- @return Vehicle
function GetVehiclePedIsIn(ped, lastVehicle) end

--- 
--- In appcamera.c4, Line 106:  
--- if (VEHICLE::IS_VEHICLE_DRIVEABLE(PED::SET_EXCLUSIVE_PHONE_RELATIONSHIPS(PLAYER::PLAYER_PED_ID()), 0))  
--- So return type could be a vehicle?  
--- sfink: agreed, 100%  
--- Proper name is GET_VEHICLE_PED_IS_ENTERING  
--- 
--- @param ped Ped
--- @return Vehicle
function GetVehiclePedIsEntering(ped) end

--- 
--- Gets ID of vehicle player using. It means it can get ID at any interaction with vehicle. Enter\exit for example. And that means it is faster than GET_VEHICLE_PED_IS_IN but less safe.  
--- 
--- @param ped Ped
--- @return Vehicle
function GetVehiclePedIsUsing(ped) end

--- 
--- Should be renamed GET_CAR_PED_IS_TRYING_TO_ENTER...  
--- Because this works only for cars, not for helis, planes,motorcycles or bicycles...  
--- From Calderon  
--- This is what R* named it, deal with it.  
--- 
--- @param ped Ped
--- @return Vehicle
function GetVehiclePedIsTryingToEnter(ped) end

--- 
--- PoliceMotorcycleHelmet	1024	  
--- RegularMotorcycleHelmet	4096	  
--- FiremanHelmet	16384	  
--- PilotHeadset	32768	  
--- PilotHelmet	65536  
--- --  
--- p2 is generally 4096 or 16384 in the scripts. p1 varies between 1 and 0.  
--- 
--- @param ped Ped
--- @param cannotRemove boolean
--- @param helmetFlag number
--- @param textureIndex number
function GivePedHelmet(ped, cannotRemove, helmetFlag, textureIndex) end

--- 
--- Sends the message that was created by a call to CREATE_NM_MESSAGE to the specified Ped.  
--- If a message hasn't been created already, this function does nothing.  
--- If the Ped is not ragdolled with Euphoria enabled, this function does nothing.  
--- The following call can be used to ragdoll the Ped with Euphoria enabled: SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);  
--- Call order:  
--- SET_PED_TO_RAGDOLL  
--- CREATE_NM_MESSAGE  
--- GIVE_PED_NM_MESSAGE  
--- Multiple messages can be chained. Eg. to make the ped stagger and swing his arms around, the following calls can be made:  
--- SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);  
--- CREATE_NM_MESSAGE(true, 0); // stopAllBehaviours - Stop all other behaviours, in case the Ped is already doing some Euphoria stuff.  
--- GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
--- CREATE_NM_MESSAGE(true, 1151); // staggerFall - Attempt to walk while falling.  
--- GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
--- CREATE_NM_MESSAGE(true, 372); // armsWindmill - Swing arms around.  
--- GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
--- 
--- @param ped Ped
function GivePedNmMessage(ped) end


--- @param asset string
--- @return boolean
function HasActionModeAssetLoaded(asset) end


--- @param ped Ped
--- @return boolean
function HasPedHeadBlendFinished(ped) end

--- 
--- Normally returns true. Returns false briefly whilst putting on a helmet after getting onto a motorbike. Not sure what that's about.
--- 
--- @param ped Ped
--- @return boolean
function HasPedPreloadPropDataFinished(ped) end

--- 
--- Normally returns true. Returns false briefly whilst getting into a plane. This is probably a check to see if the ped model and all its components/drawables are properly loaded yet.
--- 
--- @param ped Ped
--- @return boolean
function HasPedPreloadVariationDataFinished(ped) end


--- @param ped Ped
--- @param eventId number
--- @return boolean
function HasPedReceivedEvent(ped, eventId) end


--- @return any
function HasPedheadshotImgUploadFailed() end


--- @return any
function HasPedheadshotImgUploadSucceeded() end


--- @param asset string
--- @return boolean
function HasStealthModeAssetLoaded(asset) end

--- 
--- HAS_*
--- Functionality also closely related to blending
--- 
--- @param ped Ped
--- @return boolean
function HasStreamedPedAssetsLoaded(ped) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @return boolean
function IsAnyHostilePedNearPoint(ped, x, y, z, radius) end


--- @param ped Ped
--- @param p1 any
--- @param p2 boolean
function HidePedBloodDamageByZone(ped, p1, p2) end


--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param p6 boolean
--- @param p7 boolean
--- @return boolean
function IsAnyPedShootingInArea(x1, y1, z1, x2, y2, z2, p6, p7) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @return boolean
function IsAnyPedNearPoint(x, y, z, radius) end


--- @param ped Ped
--- @return boolean
function IsConversationPedDead(ped) end

--- 
--- xyz - relative to the world origin.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @return boolean
function IsCopPedInArea3d(x1, y1, z1, x2, y2, z2) end


--- @param ped Ped
--- @return boolean
function IsPedAimingFromCover(ped) end

--- 
--- Returns true if the given ped has a valid pointer to CPlayerInfo in its CPed class. That's it.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedAPlayer(ped) end


--- @param ped Ped
--- @return boolean
function IsPedBeingStealthKilled(ped) end


--- @param ped Ped
--- @return boolean
function IsPedBeingJacked(ped) end


--- @param colorID number
--- @return boolean
function IsPedBlushColorValid(colorID) end


--- @param ped Ped
--- @return boolean
function IsPedClimbing(ped) end

--- 
--- p1 is always 0  
--- 
--- @param ped Ped
--- @param p1 number
--- @return boolean
function IsPedBeingStunned(ped, p1) end

--- 
--- Used in hairdo_shop*.ysc and maintransition.ysc
--- 
--- @param colorID number
--- @return boolean
function IsPedBlushColorValid2(colorID) end

--- 
--- Seems to consistently return true if the ped is dead.  
--- p1 is always passed 1 in the scripts.  
--- I suggest to remove "OR_DYING" part, because it does not detect dying phase.  
--- That's what the devs call it, cry about it.  
--- lol  
--- that's a good meme right there.  
--- 
--- @param ped Ped
--- @param p1 boolean
--- @return boolean
function IsPedDeadOrDying(ped, p1) end


--- @param ped Ped
--- @return boolean
function IsPedDiving(ped) end

--- 
--- Checks if the component variation is valid, this works great for randomizing components using loops.  
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
--- @param componentId number
--- @param drawableId number
--- @param textureId number
--- @return boolean
function IsPedComponentVariationValid(ped, componentId, drawableId, textureId) end


--- @param ped Ped
--- @return boolean
function IsPedDucking(ped) end


--- @param ped Ped
--- @param p1 boolean
--- @return boolean
function IsPedDefensiveAreaActive(ped, p1) end

--- 
--- Presumably returns the Entity that the Ped is currently diving out of the way of.  
--- var num3;  
---     if (PED::IS_PED_EVASIVE_DIVING(A_0, &num3) != 0)  
---         if (ENTITY::IS_ENTITY_A_VEHICLE(num3) != 0)  
--- 
--- @param ped Ped
--- @param evadingEntity Entity
--- @return boolean
function IsPedEvasiveDiving(ped, evadingEntity) end


--- @param ped Ped
--- @return boolean
function IsPedDoingDriveby(ped) end


--- @param ped Ped
--- @return boolean
function IsPedFalling(ped) end


--- @param ped Ped
--- @return boolean
function IsPedGettingIntoAVehicle(ped) end

--- 
--- angle is ped's view cone  
--- 
--- @param ped Ped
--- @param otherPed Ped
--- @param angle number
--- @return boolean
function IsPedFacingPed(ped, otherPed, angle) end


--- @param ped Ped
--- @return boolean
function IsPedGoingIntoCover(ped) end

--- 
--- Gets a value indicating whether this ped's health is below its fatally injured threshold. The default threshold is 100.  
--- If the handle is invalid, the function returns true.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedFatallyInjured(ped) end


--- @param colorID number
--- @return boolean
function IsPedHairColorValid(colorID) end


--- @param ped Ped
--- @return boolean
function IsPedFleeing(ped) end


--- @param ped Ped
--- @return boolean
function IsPedHangingOnToVehicle(ped) end


--- @param ped Ped
--- @param groupId number
--- @return boolean
function IsPedGroupMember(ped, groupId) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param p4 number
--- @return boolean
function IsPedHeadingTowardsPosition(ped, x, y, z, p4) end

--- 
--- Used in hairdo_shop*.ysc and maintransition.ysc
--- 
--- @param colorID number
--- @return boolean
function IsPedHairColorValid2(colorID) end


--- @param ped Ped
--- @return boolean
function IsPedHelmetUnk(ped) end

--- 
--- Returns true/false if the ped is/isn't humanoid.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedHuman(ped) end


--- @param ped Ped
--- @param entity Entity
--- @return boolean
function IsPedHeadtrackingEntity(ped, entity) end


--- @param ped Ped
--- @return boolean
function IsPedInAnyBoat(ped) end


--- @param ped1 Ped
--- @param ped2 Ped
--- @return boolean
function IsPedHeadtrackingPed(ped1, ped2) end


--- @param ped Ped
--- @return boolean
function IsPedInAnyPlane(ped) end


--- @param ped Ped
--- @return boolean
function IsPedInAnySub(ped) end

--- 
--- Returns whether the specified ped is hurt.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedHurt(ped) end


--- @param ped Ped
--- @return boolean
function IsPedInAnyHeli(ped) end


--- @param ped Ped
--- @return boolean
function IsPedInAnyTaxi(ped) end

--- Returns whether the specified ped is in any vehicle. If atGetIn is set to true, also returns true if the ped is
--- currently in the process of entering a vehicle (a specific stage check for CTaskEnterVehicle).
--- @param ped Ped
--- @param atGetIn boolean
--- @return boolean
function IsPedInAnyVehicle(ped, atGetIn) end


--- @param ped Ped
--- @return boolean
function IsPedInAnyPoliceVehicle(ped) end

--- 
--- p1 is nearly always 0 in the scripts.  
--- 
--- @param ped Ped
--- @param exceptUseWeapon boolean
--- @return boolean
function IsPedInCover(ped, exceptUseWeapon) end


--- @param ped Ped
--- @return boolean
function IsPedInAnyTrain(ped) end


--- @param ped Ped
--- @return boolean
function IsPedInFlyingVehicle(ped) end

--- 
--- Notes: The function only returns true while the ped is:   
--- A.) Swinging a random melee attack (including pistol-whipping)  
--- B.) Reacting to being hit by a melee attack (including pistol-whipping)  
--- C.) Is locked-on to an enemy (arms up, strafing/skipping in the default fighting-stance, ready to dodge+counter).   
--- You don't have to be holding the melee-targetting button to be in this stance; you stay in it by default for a few seconds after swinging at someone. If you do a sprinting punch, it returns true for the duration of the punch animation and then returns false again, even if you've punched and made-angry many peds  
--- 
--- @param ped Ped
--- @return boolean
function IsPedInMeleeCombat(ped) end

--- 
--- Checks to see if ped and target are in combat with eachother. Only goes one-way: if target is engaged in combat with ped but ped has not yet reacted, the function will return false until ped starts fighting back.  
--- p1 is usually 0 in the scripts because it gets the ped id during the task sequence. For instance: PED::IS_PED_IN_COMBAT(l_42E[4/*14*/], PLAYER::PLAYER_PED_ID()) // armenian2.ct4: 43794  
--- 
--- @param ped Ped
--- @param target Ped
--- @return boolean
function IsPedInCombat(ped, target) end


--- @param ped Ped
--- @return boolean
function IsPedInParachuteFreeFall(ped) end


--- @param ped Ped
--- @return boolean
function IsPedInCoverFacingLeft(ped) end

--- 
--- Gets a value indicating whether the specified ped is in the specified vehicle.  
--- If 'atGetIn' is false, the function will not return true until the ped is sitting in the vehicle and is about to close the door. If it's true, the function returns true the moment the ped starts to get onto the seat (after opening the door). Eg. if false, and the ped is getting into a submersible, the function will not return true until the ped has descended down into the submersible and gotten into the seat, while if it's true, it'll return true the moment the hatch has been opened and the ped is about to descend into the submersible.  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param atGetIn boolean
--- @return boolean
function IsPedInVehicle(ped, vehicle, atGetIn) end


--- @param ped Ped
--- @return boolean
function IsPedInGroup(ped) end


--- @param ped Ped
--- @return boolean
function IsPedJacking(ped) end


--- @param ped Ped
--- @param modelHash Hash
--- @return boolean
function IsPedInModel(ped, modelHash) end


--- @param ped Ped
--- @return boolean
function IsPedJumpingOutOfVehicle(ped) end


--- @param colorID number
--- @return boolean
function IsPedLipstickColorValid(colorID) end

--- 
--- Gets a value indicating whether this ped's health is below its injured threshold.  
--- The default threshold is 100.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedInjured(ped) end


--- @param ped Ped
--- @return boolean
function IsPedJumping(ped) end


--- @param ped Ped
--- @param modelHash Hash
--- @return boolean
function IsPedModel(ped, modelHash) end

--- 
--- Used in hairdo_shop*.ysc and maintransition.ysc
--- 
--- @param colorID number
--- @return boolean
function IsPedLipstickColorValid2(colorID) end


--- @param ped Ped
--- @return boolean
function IsPedOnAnyBike(ped) end

--- 
--- Returns true/false if the ped is/isn't male.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedMale(ped) end

--- 
--- Same function call as PED::GET_MOUNT, aka just returns 0  
--- 
--- @param ped Ped
--- @return boolean
function IsPedOnMount(ped) end


--- @param ped Ped
--- @return boolean
function IsPedOnFoot(ped) end

--- 
--- Gets a value indicating whether the specified ped is on top of any vehicle.  
--- Return 1 when ped is on vehicle.  
--- Return 0 when ped is not on a vehicle.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedOnVehicle(ped) end

--- 
--- IS_PED_*
--- 
--- Returns true if the ped is currently opening a door (CTaskOpenDoor).
--- 
--- @param ped Ped
--- @return boolean
function IsPedOpeningADoor(ped) end


--- @param ped Ped
--- @param vehicle Vehicle
--- @return boolean
function IsPedOnSpecificVehicle(ped, vehicle) end


--- @param ped Ped
--- @return boolean
function IsPedPerformingDependentComboLimit(ped) end


--- @param ped Ped
--- @return boolean
function IsPedPerformingMeleeAction(ped) end


--- @param ped Ped
--- @return boolean
function IsPedPerformingStealthKill(ped) end


--- @param ped Ped
--- @return boolean
function IsPedPlantingBomb(ped) end


--- @param ped Ped
--- @return boolean
function IsPedProne(ped) end

--- 
--- If the ped handle passed through the parenthesis is in a ragdoll state this will return true.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedRagdoll(ped) end

--- 
--- Returns whether the specified ped is reloading.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedReloading(ped) end


--- @param ped Ped
--- @param event any
--- @return boolean
function IsPedRespondingToEvent(ped, event) end


--- @param ped Ped
--- @return boolean
function IsPedRunningMeleeTask(ped) end


--- @param ped Ped
--- @return boolean
function IsPedRunningMobilePhoneTask(ped) end


--- @param ped Ped
--- @return boolean
function IsPedRunningRagdollTask(ped) end


--- @param ped Ped
--- @return boolean
function IsPedShaderEffectValid(ped) end

--- 
--- Returns whether the specified ped is shooting.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedShooting(ped) end


--- @param ped Ped
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param p7 boolean
--- @param p8 boolean
--- @return boolean
function IsPedShootingInArea(ped, x1, y1, z1, x2, y2, z2, p7, p8) end

--- 
--- Detect if ped is in any vehicle  
--- [True/False]  
--- 
--- @param ped Ped
--- @return boolean
function IsPedSittingInAnyVehicle(ped) end

--- 
--- Returns true if the ped doesn't do any movement. If the ped is being pushed forwards by using APPLY_FORCE_TO_ENTITY for example, the function returns false.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedStopped(ped) end

--- 
--- Detect if ped is sitting in the specified vehicle  
--- [True/False]  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @return boolean
function IsPedSittingInVehicle(ped, vehicle) end


--- @param ped Ped
--- @return boolean
function IsPedSwimming(ped) end


--- @param ped Ped
--- @return boolean
function IsPedTracked(ped) end


--- @param ped Ped
--- @return boolean
function IsPedSwimmingUnderWater(ped) end


--- @param ped Ped
--- @return boolean
function IsPedTryingToEnterALockedVehicle(ped) end


--- @param ped Ped
--- @return boolean
function IsPedUsingActionMode(ped) end


--- @param ped Ped
--- @return boolean
function IsPedUsingAnyScenario(ped) end


--- @param ped Ped
--- @param scenario string
--- @return boolean
function IsPedUsingScenario(ped, scenario) end

--- 
--- Definition of vaulting?  
--- 
--- @param ped Ped
--- @return boolean
function IsPedVaulting(ped) end

--- 
--- Returns true if the ped passed through the parenthesis is wearing a helmet.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedWearingHelmet(ped) end


--- @return any
function IsPedheadshotImgUploadAvailable() end

--- 
--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
--- 
--- @param id number
--- @return boolean
function IsPedheadshotReady(id) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param ped Ped
--- @param animDict string
--- @param anim string
--- @return boolean
function IsScriptedScenarioPedUsingConditionalAnim(ped, animDict, anim) end

--- 
--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
--- 
--- @param handle number
--- @return boolean
function IsPedheadshotValid(handle) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param ped Ped
--- @return boolean
function IsScubaGearLightEnabled(ped) end


--- @param sceneID number
--- @return boolean
function IsSynchronizedSceneLooped(sceneID) end

--- 
--- Returns true if a synchronized scene is running  
--- 
--- @param sceneId number
--- @return boolean
function IsSynchronizedSceneRunning(sceneId) end

--- 
--- returns whether or not a ped is visible within your FOV, not this check auto's to false after a certain distance.  
--- Target needs to be tracked.. won't work otherwise.  
--- 
--- @param ped Ped
--- @return boolean
function IsTrackedPedVisible(ped) end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 boolean
--- @param p4 boolean
function KnockOffPedProp(ped, p1, p2, p3, p4) end


--- @param ped Ped
function KnockPedOffVehicle(ped) end


--- @param ped Ped
--- @return boolean
function IsPedInHighCover(ped) end

--- 
--- Based on TASK_COMBAT_HATED_TARGETS_AROUND_PED, the parameters are likely similar (PedHandle, and area to attack in).  
--- 
--- @param ped Ped
--- @param radius number
function RegisterHatedTargetsAroundPed(ped, radius) end

--- 
--- Look at facials@gen_male@base and facials@gen_female@base for some common facial animations.   
--- !!!NOTE!!!  
--- Unlike most animation natives, the animation comes BEFORE the animation dictionary here. So you could call e.g.   
--- PLAY_FACIAL_ANIM(ped, "dead_1", "facials@gen_male@base")  
--- 
--- @param ped Ped
--- @param animName string
--- @param animDict string
function PlayFacialAnim(ped, animName, animDict) end

