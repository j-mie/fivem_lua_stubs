--- 
--- NativeDB Parameter 0: Hash garageHash
--- 
--- @param garageHash any
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 boolean
--- @param p4 any
--- @return boolean
function AreEntitiesEntirelyInsideGarage(garageHash, p1, p2, p3, p4) end


--- @param ped Ped
--- @param p1 any
function AttachPortablePickupToPed(ped, p1) end


--- @param doorHash Hash
--- @param modelHash Hash
--- @param x number
--- @param y number
--- @param z number
--- @param p5 boolean
--- @param p6 boolean
--- @param p7 boolean
function AddDoorToSystem(doorHash, modelHash, x, y, z, p5, p6, p7) end

--- 
--- Used for doing money drop  
--- Pickup hashes: pastebin.com/8EuSv2r1  
--- 
--- @param pickupHash Hash
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param flags number
--- @param value number
--- @param modelHash Hash
--- @param returnHandle boolean
--- @param p8 boolean
--- @return Pickup
function CreateAmbientPickup(pickupHash, posX, posY, posZ, flags, value, modelHash, returnHandle, p8) end

--- 
--- NativeDB Parameter 0: Hash garageHash
--- 
--- @param garageHash any
--- @param isNetwork boolean
function ClearGarageArea(garageHash, isNetwork) end


--- @param modelHash Object
--- @param x number
--- @param y number
--- @param z number
--- @param isNetwork boolean
--- @param netMissionEntity boolean
--- @param dynamic boolean
--- @return Object
function CreateObject(modelHash, x, y, z, isNetwork, netMissionEntity, dynamic) end

--- 
--- Spawns one or more money pickups.  
--- x: The X-component of the world position to spawn the money pickups at.  
--- y: The Y-component of the world position to spawn the money pickups at.  
--- z: The Z-component of the world position to spawn the money pickups at.  
--- value: The combined value of the pickups (in dollars).  
--- amount: The number of pickups to spawn.  
--- model: The model to use, or 0 for default money model.  
--- Example:  
--- CREATE_MONEY_PICKUPS(x, y, z, 1000, 3, 0x684a97ae);  
--- Spawns 3 spray cans that'll collectively give $1000 when picked up. (Three spray cans, each giving $334, $334, $332 = $1000).  
--- ==============================================  
--- Max is 2000 in MP. So if you put the amount to 20, but the value to $400,000 eg. They will only be able to pickup 20 - $2,000 bags. So, $40,000  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param value number
--- @param amount number
--- @param model Hash
function CreateMoneyPickups(x, y, z, value, amount, model) end

--- 
--- Pickup hashes: pastebin.com/8EuSv2r1  
--- 
--- @param pickupHash Hash
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param p4 number
--- @param value number
--- @param p6 boolean
--- @param modelHash Hash
--- @return Pickup
function CreatePickup(pickupHash, posX, posY, posZ, p4, value, p6, modelHash) end


--- @param modelHash Hash
--- @param x number
--- @param y number
--- @param z number
--- @param isNetwork boolean
--- @param netMissionEntity boolean
--- @param dynamic boolean
--- @return Object
function CreateObjectNoOffset(modelHash, x, y, z, isNetwork, netMissionEntity, dynamic) end

--- 
--- Pickup hashes: pastebin.com/8EuSv2r1  
--- 
--- @param pickupHash Hash
--- @param x number
--- @param y number
--- @param z number
--- @param placeOnGround boolean
--- @param modelHash Hash
--- @return Pickup
function CreatePortablePickup(pickupHash, x, y, z, placeOnGround, modelHash) end

--- 
--- Pickup hashes: pastebin.com/8EuSv2r1  
--- flags:  
--- 8 (1 << 3): place on ground  
--- 512 (1 << 9): spin around  
--- 
--- @param pickupHash Hash
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param flag number
--- @param amount number
--- @param p9 any
--- @param p10 boolean
--- @param modelHash Hash
--- @return Pickup
function CreatePickupRotate(pickupHash, posX, posY, posZ, rotX, rotY, rotZ, flag, amount, p9, p10, modelHash) end

--- 
--- Deletes the specified object, then sets the handle pointed to by the pointer to NULL.  
--- meme.  
--- 
--- @param object Object
function DeleteObject(object) end

--- 
--- CREATE_*
--- 
--- @param pickupHash Hash
--- @param x number
--- @param y number
--- @param z number
--- @param placeOnGround boolean
--- @param modelHash Hash
--- @return Pickup
function CreatePortablePickup2(pickupHash, x, y, z, placeOnGround, modelHash) end


--- @param pickup Pickup
--- @return boolean
function DoesPickupExist(pickup) end


--- @param pickupObject Object
--- @return boolean
function DoesPickupObjectExist(pickupObject) end


--- @param ped Ped
function DetachPortablePickupFromPed(ped) end

--- 
--- Returns true if a destructible object with this handle exists, false otherwise.  
--- 
--- @param object Object
--- @return boolean
function DoesRayfireMapObjectExist(object) end

--- 
--- p5 is usually 0.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param hash Hash
--- @param p5 boolean
--- @return boolean
function DoesObjectOfTypeExistAtCoords(x, y, z, radius, hash, p5) end

--- 
--- NativeDB Parameter 3: Hash modelHash
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param modelHash any
--- @param doorOutPointer any
--- @return boolean
function DoorSystemFindExistingDoor(x, y, z, modelHash, doorOutPointer) end


--- @param doorHash Hash
--- @return number
function DoorSystemGetDoorPendingState(doorHash) end

--- 
--- Pickup hashes: pastebin.com/8EuSv2r1  
--- 
--- @param pickupHash Hash
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @return boolean
function DoesPickupOfTypeExistInArea(pickupHash, x, y, z, radius) end

--- 
--- OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0);  //door unlocked  
--- OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0);  //door locked  
--- locked simply tells the game whether or not the door is locked.  
--- x,y,z RotMult are multipliers that specify how fast the door/gate will rotate in degrees per second.  
--- 
--- @param doorHash Hash
--- @param x number
--- @param y number
--- @param z number
--- @param locked boolean
--- @param xRotMult number
--- @param yRotMult number
--- @param zRotMult number
function DoorControl(doorHash, x, y, z, locked, xRotMult, yRotMult, zRotMult) end

--- 
--- NativeDB Parameter 0: Hash doorHash
--- 
--- @param doorHash any
--- @return boolean
function DoorSystemGetIsPhysicsLoaded(doorHash) end


--- @param doorHash Hash
--- @param heading number
--- @param p2 boolean
--- @param p3 boolean
function DoorSystemSetAutomaticDistance(doorHash, heading, p2, p3) end


--- @param doorHash Hash
--- @return number
function DoorSystemGetDoorState(doorHash) end


--- @param doorHash Hash
--- @param p1 boolean
function DoorSystemSetHoldOpen(doorHash, p1) end


--- @param doorHash Hash
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 boolean
function DoorSystemSetSpringRemoved(doorHash, p1, p2, p3) end


--- @param doorHash Hash
--- @return number
function DoorSystemGetOpenRatio(doorHash) end


--- @param garageHash Hash
--- @param toggle boolean
function EnableSavingInGarage(garageHash, toggle) end


--- @param doorHash Hash
--- @param p1 number
--- @param p2 boolean
--- @param p3 boolean
function DoorSystemSetAutomaticRate(doorHash, p1, p2, p3) end

--- 
--- Sets the acceleration limit of a door.
--- How fast it can open, or the inverse hinge resistance.
--- A limit of 0 seems to lock doors.
--- p2 is always 0, p3 is always 1.
--- 
--- @param doorHash Hash
--- @param limit number
--- @param p2 boolean
--- @param p3 boolean
function DoorSystemSetDoorState(doorHash, limit, p2, p3) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param modelHash Hash
--- @param outPosition vector3
--- @param outRotation vector3
--- @param rotationOrder number
--- @return any
function GetCoordsAndRotationOfClosestObjectOfType(x, y, z, radius, modelHash, outPosition, outRotation, rotationOrder) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param entity Entity
--- @param p1 any
--- @return any
function GetIsArenaPropPhysicsDisabled(entity, p1) end

--- 
--- Sets the ajar angle of a door.
--- Ranges from -1.0 to 1.0, and 0.0 is closed / default.
--- p2 is always 0, p3 is always 1.
--- 
--- @param doorHash Hash
--- @param ajar number
--- @param p2 boolean
--- @param p3 boolean
function DoorSystemSetOpenRatio(doorHash, ajar, p2, p3) end


--- @param xPos number
--- @param yPos number
--- @param zPos number
--- @param heading number
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @return vector3
function GetObjectOffsetFromCoords(xPos, yPos, zPos, heading, xOffset, yOffset, zOffset) end

--- 
--- Has 8 params in the latest patches.  
--- isMission - if true doesn't return mission objects  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param modelHash Hash
--- @param isMission boolean
--- @param p6 boolean
--- @param p7 boolean
--- @return Object
function GetClosestObjectOfType(x, y, z, radius, modelHash, isMission, p6, p7) end


--- @param pickup Pickup
--- @return vector3
function GetPickupCoords(pickup) end


--- @param p0 any
--- @param p1 boolean
--- @return number
function GetObjectFragmentDamageHealth(p0, p1) end


--- @return number
function GetPickupGenerationRangeMultiplier() end


--- @param object Object
--- @return number
function GetObjectTextureVariation(object) end

--- 
--- Gets a destructible object's handle  
--- Example:  
--- OBJECT::_B48FCED898292E52(-809.9619750976562, 170.919, 75.7406997680664, 3.0, "des_tvsmash");  
--- All found arguments for p4 starts with "des_" like "DES_FIB_Floor" and "des_shipsink".  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param name string
--- @return Object
function GetRayfireMapObject(x, y, z, radius, name) end


--- @param object Object
--- @return number
function GetRayfireMapObjectAnimPhase(object) end


--- @param pickup Pickup
--- @return Object
function GetPickupObject(pickup) end

--- 
--- returns pickup hash.  
--- 
--- 
--- 
--- NativeDB Parameter 0: Hash pickupHash
--- 
--- @param pickupHash Pickup
--- @return Hash
function GetPickupHash(pickupHash) end

--- 
--- locked is 0 if no door is found  
--- locked is 0 if door is unlocked  
--- locked is 1 if door is found and unlocked.  
--- -------------  
--- the locked bool is either 0(unlocked)(false) or 1(locked)(true)  
--- 
--- @param type Hash
--- @param x number
--- @param y number
--- @param z number
--- @param locked boolean
--- @param heading number
function GetStateOfClosestDoorOfType(type, x, y, z, locked, heading) end

--- 
--- NativeDB Parameter 3: float p3
--- NativeDB Parameter 4: float p4
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param p3 any
--- @param p4 any
--- @return vector3
function GetSafePickupCoords(x, y, z, p3, p4) end

--- 
--- Get a destructible object's state.  
--- Substract 1 to get the real state.  
--- See SET_STATE_OF_RAYFIRE_MAP_OBJECT to see the different states  
--- For example, if the object just spawned (state 2), the native will return 3.  
--- 
--- @param object Object
--- @return number
function GetStateOfRayfireMapObject(object) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param modelHash Hash
--- @param p5 any
--- @return boolean
function HasClosestObjectOfTypeBeenBroken(p0, p1, p2, p3, modelHash, p5) end

--- 
--- returns the weapon hash of pickup  
--- 
--- 
--- 
--- NativeDB Parameter 0: Hash pickupHash
--- 
--- @param pickupHash Pickup
--- @return Hash
function GetWeaponTypeFromPickupType(pickupHash) end

--- 
--- NativeDB Added Parameter 2: Any p1
--- 
--- @param object Object
--- @return boolean
function HasObjectBeenBroken(object) end


--- @param pickup Pickup
--- @return boolean
function HasPickupBeenCollected(pickup) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param modelHash Hash
--- @param p5 boolean
--- @return boolean
function HasClosestObjectOfTypeBeenCompletelyDestroyed(x, y, z, radius, modelHash, p5) end


--- @param pickup Pickup
--- @param toggle boolean
function HidePickup(pickup, toggle) end

--- 
--- NativeDB Parameter 0: Hash garageHash
--- 
--- @param garageHash any
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 boolean
--- @param p4 any
--- @return boolean
function IsAnyEntityEntirelyInsideGarage(garageHash, p1, p2, p3, p4) end

--- 
--- draws circular marker at pos  
--- -1 = none  
--- 0 = red  
--- 1 = green  
--- 2 = blue  
--- 3 = green larger  
--- 4 = nothing  
--- 5 = green small  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param colorIndex number
function HighlightPlacementCoords(x, y, z, colorIndex) end


--- @param doorHash Hash
--- @return boolean
function IsDoorClosed(doorHash) end


--- @param x number
--- @param y number
--- @param z number
--- @param range number
--- @param p4 boolean
--- @return boolean
function IsAnyObjectNearPoint(x, y, z, range, p4) end

--- 
--- NativeDB Parameter 0: Hash garageHash
--- 
--- @param garageHash any
--- @param p1 boolean
--- @param p2 number
--- @return boolean
function IsGarageEmpty(garageHash, p1, p2) end

--- 
--- Example:  
--- if (OBJECT::_DOES_DOOR_EXIST(doorHash))  
--- {  
---     OBJECT::REMOVE_DOOR_FROM_SYSTEM(doorHash);  
--- }  
--- 
--- @param doorHash Hash
--- @return boolean
function IsDoorRegisteredWithSystem(doorHash) end

--- 
--- NativeDB Parameter 0: Hash garageHash
--- 
--- @param garageHash any
--- @param entity Entity
--- @param p2 number
--- @param p3 number
--- @return boolean
function IsObjectEntirelyInsideGarage(garageHash, entity, p2, p3) end


--- @param objectHash Hash
--- @param x number
--- @param y number
--- @param z number
--- @param range number
--- @return boolean
function IsObjectNearPoint(objectHash, x, y, z, range) end

--- 
--- NativeDB Parameter 0: Hash garageHash
--- 
--- @param garageHash any
--- @param entity Entity
--- @param p2 number
--- @return boolean
function IsObjectPartiallyInsideGarage(garageHash, entity, p2) end


--- @param object Object
--- @return boolean
function IsObjectVisible(object) end

--- 
--- NativeDB Parameter 0: Hash garageHash
--- 
--- @param garageHash any
--- @param player Player
--- @param p2 number
--- @param p3 number
--- @return boolean
function IsPlayerEntirelyInsideGarage(garageHash, player, p2, p3) end


--- @param object Object
--- @return boolean
function IsPickupWeaponObjectValid(object) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param p10 boolean
--- @param p11 boolean
--- @return boolean
function IsPointInAngledArea(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

--- 
--- NativeDB Parameter 0: Hash garageHash
--- 
--- @param garageHash any
--- @param player Player
--- @param p2 number
--- @return boolean
function IsPlayerPartiallyInsideGarage(garageHash, player, p2) end

--- 
--- is this like setting is as no longer needed?  
--- 
--- @param object Object
function MarkObjectForDeletion(object) end


--- @param object Object
--- @return boolean
function PlaceObjectOnGroundProperly(object) end


--- @param p0 any
function RemoveObjectHighDetailModel(p0) end


--- @param doorHash Hash
function RemoveDoorFromSystem(doorHash) end


--- @param pickup Pickup
function RemovePickup(pickup) end

--- 
--- Pickup hashes: pastebin.com/8EuSv2r1  
--- 
--- @param pickupHash Hash
function RemoveAllPickupsOfType(pickupHash) end


--- @param object Object
--- @param toggle boolean
function SetActivateObjectPhysicsAsSoonAsItIsUnfrozen(object, toggle) end


--- @param object Object
--- @return boolean
function PlaceObjectOnGroundProperly2(object) end

--- 
--- Activate the physics to: "xs_prop_arena_{flipper,wall,bollard,turntable,pit}"
--- 
--- 
--- 
--- NativeDB Introduced: v1604
--- 
--- @param entity Entity
--- @param p1 boolean
--- @param p2 number
function SetEnableArenaPropPhysics(entity, p1, p2) end

--- 
--- SET_LOCAL_PLAYER_*  
--- 
--- @param modelHash Hash
--- @param toggle boolean
function SetLocalPlayerCanUsePickupsWithThisModel(modelHash, toggle) end

--- 
--- Requires a component_at_*_flsh to be attached to the weapon object
--- 
--- @param object Object
--- @param toggle boolean
function SetCreateWeaponObjectLightSource(object, toggle) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param entity Entity
--- @param p1 boolean
--- @param p2 number
--- @param ped Ped
function SetEnableArenaPropPhysicsOnPed(entity, p1, p2, ped) end

--- Seems to set the colour of the prop. Haven't really tested it on other props.
--- Only appears in am_mp_nightclub.c for the nightclub dancefloor.
--- 
--- Not sure what p1 does, seems to only ever be '1' in scripts.
--- 
--- 
--- NativeDB Parameter 1: BOOL toggle
--- NativeDB Removed Parameter 3: int R
--- NativeDB Removed Parameter 4: int G
--- NativeDB Removed Parameter 5: int B
--- 
--- @param object Object
--- @param toggle any
--- @param R number
--- @param G number
--- @param B number
function SetObjectColour(object, toggle, R, G, B) end

--- 
--- NativeDB Parameter 0: float x
--- NativeDB Parameter 1: float y
--- NativeDB Parameter 2: float z
--- NativeDB Parameter 3: float p3
--- 
--- @param x any
--- @param y any
--- @param z any
--- @param p3 any
function SetForceObjectThisFrame(x, y, z, p3) end

--- 
--- Overrides the climbing/blocking flags of the object, used in the native scripts mostly for "prop_dock_bouy_*"
--- 
--- @param object Object
--- @param toggle boolean
function SetObjectCanClimbOn(object, toggle) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param object Object
--- @param p1 boolean
--- @param r number
--- @param g number
--- @param b number
--- @return any
function SetObjectLightColor(object, p1, r, g, b) end

--- 
--- Adjust the physics parameters of a prop, or otherwise known as "object". This is useful for simulated gravity.  
--- Other parameters seem to be unknown.  
--- p2: seems to be weight and gravity related. Higher value makes the obj fall faster. Very sensitive?  
--- p3: seems similar to p2  
--- p4: makes obj fall slower the higher the value  
--- p5: similar to p4  
--- 
--- @param object Object
--- @param weight number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param gravity number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param p10 number
--- @param buoyancy number
function SetObjectPhysicsParams(object, weight, p2, p3, p4, p5, gravity, p7, p8, p9, p10, buoyancy) end

--- 
--- i don't know what this does  
--- <pre>  
--- void __fastcall OBJECT___0x77F33F2CCF64B3AA_START(scrNativeCallContext *args)  
--- {  
---   bool p2; // bl@1  
---   CObject *pObject; // rax@1  
---   scrNativeCallContextArgStruct *pArgs; // rax@1  
---   pArgs = args->pArgs;  
---   p2 = pArgs->a2.BOOL != 0;  
---   pObject = getAddressOfObject(pArgs->a1.Object);  
---   if ( pObject )  
---   {  
---     pObject->field_425 &= 0xDFu;                // 1101 1111 (clear bit 6)  
---     pObject->field_425 |= 32 * p2;              // bit 6 = p2  
---   }  
--- }  
--- // sfink  
--- // note to AB: please set "white-space: pre" in css  
--- 
--- 
--- 
--- ## Parameters
--- * **object**: 
--- * **p1**: 
--- 
--- @param object Object
--- @param p1 boolean
function SetObjectSomething(object, p1) end


--- @param object Object
--- @param p1 any
function SetObjectStuntPropSpeedup(object, p1) end

--- 
--- NativeDB Return Type: void
--- 
--- @param object Object
--- @param targettable boolean
--- @return any
function SetObjectTargettable(object, targettable) end


--- @param object Object
--- @param duration number
function SetObjectStuntPropDuration(object, duration) end

--- 
--- duration specifies the time until the next respawn, in ms. (known values: 600000).  
--- Usage Example:  
--- Pickup pickup = OBJECT::CREATE_PICKUP_ROTATE(...);  
--- OBJECT::SET_PICKUP_REGENERATION_TIME(pickup, 600000); // 10mins  
--- 
--- @param pickup Pickup
--- @param duration number
function SetPickupRegenerationTime(pickup, duration) end

--- 
--- Hardcoded to not work in multiplayer.  
--- Used to lock/unlock doors to interior areas of the game.  
--- (Possible) Door Types:  
--- pastebin.com/9S2m3qA4  
--- Heading is either 1, 0 or -1 in the scripts. Means default closed(0) or opened either into(1) or out(-1) of the interior.  
--- Locked means that the heading is locked.    
--- p6 is always 0.   
--- 225 door types, model names and coords found in stripclub.c4:  
--- pastebin.com/gywnbzsH  
--- get door info: pastebin.com/i14rbekD  
--- 
--- @param type Hash
--- @param x number
--- @param y number
--- @param z number
--- @param locked boolean
--- @param heading number
--- @param p6 boolean
function SetStateOfClosestDoorOfType(type, x, y, z, locked, heading, p6) end

--- 
--- enum ObjectPaintVariants  
--- {  
--- 	Pacific = 0,  
--- 	Azure = 1,  
--- 	Nautical = 2,  
--- 	Continental = 3,  
--- 	Battleship = 4,  
--- 	Intrepid = 5,  
--- 	Uniform = 6,  
--- 	Classico = 7,  
--- 	Mediterranean = 8,  
--- 	Command = 9,  
--- 	Mariner = 10,  
--- 	Ruby = 11,  
--- 	Vintage = 12,  
--- 	Pristine = 13,  
--- 	Merchant = 14,  
--- 	Voyager = 15  
--- };  
--- 
--- @param object Object
--- @param textureVariation number
function SetObjectTextureVariant(object, textureVariation) end

--- 
--- NativeDB Introduced: v1365
--- 
--- @param value boolean
function SetUnkGlobalBoolRelatedToDamage(value) end


--- @param multiplier number
function SetPickupGenerationRangeMultiplier(multiplier) end

--- 
--- Defines the state of a destructible object.  
--- Use the GET_RAYFIRE_MAP_OBJECT native to find an object's handle with its name / coords  
--- State 2 == object just spawned  
--- State 4 == Beginning of the animation  
--- State 6 == Start animation  
--- State 9 == End of the animation  
--- 
--- @param object Object
--- @param state number
function SetStateOfRayfireMapObject(object, state) end


--- @param object Object
--- @param p1 any
--- @param p2 boolean
function SetTeamPickupObject(object, p1, p2) end

--- 
--- Returns true if the object has finished moving.  
--- If false, moves the object towards the specified X, Y and Z coordinates with the specified X, Y and Z speed.  
--- See also: gtag.gtagaming.com/opcode-database/opcode/034E/  
--- 
--- @param object Object
--- @param toX number
--- @param toY number
--- @param toZ number
--- @param speedX number
--- @param speedY number
--- @param speedZ number
--- @param collision boolean
--- @return boolean
function SlideObject(object, toX, toY, toZ, speedX, speedY, speedZ, collision) end


--- @param object Object
function TrackObjectVisibility(object) end

