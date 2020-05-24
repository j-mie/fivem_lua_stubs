
--- @param entity Entity
--- @param forceType number
--- @param x number
--- @param y number
--- @param z number
--- @param p5 boolean
--- @param isDirectionRel boolean
--- @param isForceRel boolean
--- @param p8 boolean
function ApplyForceToEntityCenterOfMass(entity, forceType, x, y, z, p5, isDirectionRel, isForceRel, p8) end

--- Applies a force to the specified entity.
--- 
--- **List of force types (p1)**:
--- 
--- 
--- public enum ForceType
--- {
---     MinForce = 0,
---     MaxForceRot = 1,
---     MinForce2 = 2,
---     MaxForceRot2 = 3,
---     ForceNoRot = 4,
---     ForceRotPlusForce = 5
--- }
--- 
--- 
--- Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).
--- @param entity Entity
--- @param forceType number
--- @param x number
--- @param y number
--- @param z number
--- @param offX number
--- @param offY number
--- @param offZ number
--- @param boneIndex number
--- @param isDirectionRel boolean
--- @param ignoreUpVec boolean
--- @param isForceRel boolean
--- @param p12 boolean
--- @param p13 boolean
function ApplyForceToEntity(entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13) end


--- @param entity1 Entity
--- @param entity2 Entity
--- @param entityBone number
--- @param entityBone2 number
--- @param p4 boolean
--- @param p5 boolean
function AttachEntityBoneToEntityBonePhysically(entity1, entity2, entityBone, entityBone2, p4, p5) end


--- @param entity1 Entity
--- @param entity2 Entity
--- @param entityBone number
--- @param entityBone2 number
--- @param p4 boolean
--- @param p5 boolean
function AttachEntityBoneToEntityBone(entity1, entity2, entityBone, entityBone2, p4, p5) end

--- 
--- Attaches entity1 to bone (boneIndex) of entity2.  
--- boneIndex - this is different to boneID, use GET_PED_BONE_INDEX to get the index from the ID. use the index for attaching to specific bones. entity1 will be attached to entity2's centre if bone index given doesn't correspond to bone indexes for that entity type.  
--- useSoftPinning - when 2 entities with collision collide and form into a ball they will break the attachment of the entity that they were attached to. Or when an entity is attached far away and then the resets.  
--- collision - controls collision between the two entities (FALSE disables collision).  
--- isPed - pitch doesnt work when false and roll will only work on negative numbers (only peds)  
--- vertexIndex - position of vertex  
--- fixedRot - if false it ignores entity vector  
--- 
--- @param entity1 Entity
--- @param entity2 Entity
--- @param boneIndex number
--- @param xPos number
--- @param yPos number
--- @param zPos number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param p9 boolean
--- @param useSoftPinning boolean
--- @param collision boolean
--- @param isPed boolean
--- @param vertexIndex number
--- @param fixedRot boolean
function AttachEntityToEntity(entity1, entity2, boneIndex, xPos, yPos, zPos, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, vertexIndex, fixedRot) end

--- 
--- breakForce is the amount of force required to break the bond.  
--- fixedRot - if false it ignores entity vector  
--- p15 - is 1 or 0 in scripts - unknoun what it does  
--- collision - controls collision between the two entities (FALSE disables collision).  
--- teleport - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone)  
--- p18 - is always 2 in scripts.  
--- -------------------------  
--- teleport is not exactly "doNotTeleport". What it actually does is the following:  
--- if true, entities will be attached as if loosely tethered, up to the maximum offset position specified. Almost as if attached by an invisible rope.  
--- if false, entities will be attached in a fixed position as specified in the offset position.  
--- When p15 = true, it seems to force teleport to false.  
--- It also lets the Rotation params actually work.  
--- 
--- @param entity1 Entity
--- @param entity2 Entity
--- @param boneIndex1 number
--- @param boneIndex2 number
--- @param xPos1 number
--- @param yPos1 number
--- @param zPos1 number
--- @param xPos2 number
--- @param yPos2 number
--- @param zPos2 number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param breakForce number
--- @param fixedRot boolean
--- @param p15 boolean
--- @param collision boolean
--- @param teleport boolean
--- @param p18 number
function AttachEntityToEntityPhysically(entity1, entity2, boneIndex1, boneIndex2, xPos1, yPos1, zPos1, xPos2, yPos2, zPos2, xRot, yRot, zRot, breakForce, fixedRot, p15, collision, teleport, p18) end

--- 
--- NativeDB Return Type: void
--- 
--- @param entity Entity
--- @return any
function ClearEntityLastDamageEntity(entity) end


--- @param x number
--- @param y number
--- @param z number
--- @param p3 any
--- @param modelHash Hash
--- @param p5 boolean
function CreateForcedObject(x, y, z, p3, modelHash, p5) end

--- 
--- p5 = sets as true in scripts  
--- Same as the comment for CREATE_MODEL_SWAP unless for some reason p5 affects it this only works with objects as well.  
--- Network players do not see changes done with this.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param model Hash
--- @param p5 boolean
function CreateModelHide(x, y, z, radius, model, p5) end

--- 
--- Only works with objects!  
--- Network players do not see changes done with this.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param originalModel Hash
--- @param newModel Hash
--- @param p6 boolean
function CreateModelSwap(x, y, z, radius, originalModel, newModel, p6) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param model Hash
--- @param p5 boolean
function CreateModelHideExcludingScriptObjects(x, y, z, radius, model, p5) end

--- 
--- p1 and p2 have no effect   
--- maybe a quick disassembly will tell us what they do  
--- the statement below seems to be false. when I tried it with 2 vehicles:  
--- if p2 is set to true, the both entities won't collide with the other until the distance between them is above 4 meters.  
--- 
--- @param entity Entity
--- @param p1 boolean
--- @param collision boolean
function DetachEntity(entity, p1, collision) end

--- 
--- Deletes the specified entity, then sets the handle pointed to by the pointer to NULL.
--- 
--- @param entity Entity
function DeleteEntity(entity) end


--- @param entity Entity
--- @param p2 boolean
--- @return boolean
function DoesEntityBelongToThisScript(entity, p2) end

--- Checks whether an entity exists in the game world.
--- @param entity Entity
--- @return boolean
function DoesEntityExist(entity) end


--- @param entity Entity
--- @return boolean
function DoesEntityHavePhysics(entity) end


--- @param entity Entity
--- @return boolean
function DoesEntityHaveDrawable(entity) end

--- 
--- ENABLE_*
--- 
--- @param entity Entity
function EnableEntityUnk(entity) end

--- 
--- In the script "player_scene_t_bbfight.c4":  
--- "if (ENTITY::FIND_ANIM_EVENT_PHASE(&l_16E, &l_19F[v_4/*16*/], v_9, &v_A, &v_B))"  
--- -- &l_16E (p0) is requested as an anim dictionary earlier in the script.  
--- -- &l_19F[v_4/*16*/] (p1) is used in other natives in the script as the "animation" param.  
--- -- v_9 (p2) is instantiated as "victim_fall"; I'm guessing that's another anim  
--- --v_A and v_B (p3 & p4) are both set as -1.0, but v_A is used immediately after this native for:   
--- "if (v_A < ENTITY::GET_ENTITY_ANIM_CURRENT_TIME(...))"  
--- Both v_A and v_B are seemingly used to contain both Vector3's and floats, so I can't say what either really is other than that they are both output parameters. p4 looks more like a *Vector3 though  
--- -alphazolam  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param animDictionary string
--- @param animName string
--- @param p2 string
--- @param p3 any
--- @param p4 any
--- @return boolean
function FindAnimEventPhase(animDictionary, animName, p2, p3, p4) end

--- 
--- Based on carmod_shop script decompile this takes a vehicle parameter. It is called when repair is done on initial enter.  
--- 
--- @param entity Entity
function ForceEntityAiAndAnimationUpdate(entity) end

--- 
--- No, this should be called SET_ENTITY_KINEMATIC. It does more than just "freeze" it's position.
--- ^Rockstar Devs named it like that, Now cry about it.
--- 
--- 
--- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to true. You can still change the entity position using SET_ENTITY_COORDS.
--- @param entity Entity
--- @param toggle boolean
function FreezeEntityPosition(entity, toggle) end


--- @param entity Entity
--- @return vector3
function GetCollisionNormalOfLastHitForEntity(entity) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param animDict string
--- @param animName string
--- @return number
function GetAnimDuration(animDict, animName) end

--- 
--- Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.  
--- Example:  
--- 0.000000 - mark the starting of animation.  
--- 0.500000 - mark the midpoint of the animation.  
--- 1.000000 - mark the end of animation.  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity
--- @param animDict string
--- @param animName string
--- @return number
function GetEntityAnimCurrentTime(entity, animDict, animName) end


--- @param entity Entity
--- @return number
function GetEntityAlpha(entity) end


--- @param entity Entity
--- @return Entity
function GetEntityAttachedTo(entity) end

--- 
--- Returns the index of the bone. If the bone was not found, -1 will be returned.   
--- list:  
--- pastebin.com/D7JMnX1g  
--- BoneNames:  
--- 	chassis,  
--- 	windscreen,  
--- 	seat_pside_r,  
--- 	seat_dside_r,  
--- 	bodyshell,  
--- 	suspension_lm,  
--- 	suspension_lr,  
--- 	platelight,  
--- 	attach_female,  
--- 	attach_male,  
--- 	bonnet,  
--- 	boot,  
--- 	chassis_dummy,	//Center of the dummy  
--- 	chassis_Control,	//Not found yet  
--- 	door_dside_f,	//Door left, front  
--- 	door_dside_r,	//Door left, back  
--- 	door_pside_f,	//Door right, front  
--- 	door_pside_r,	//Door right, back  
--- 	Gun_GripR,  
--- 	windscreen_f,  
--- 	platelight,	//Position where the light above the numberplate is located  
--- 	VFX_Emitter,  
--- 	window_lf,	//Window left, front  
--- 	window_lr,	//Window left, back  
--- 	window_rf,	//Window right, front  
--- 	window_rr,	//Window right, back  
--- 	engine,	//Position of the engine  
--- 	gun_ammo,  
--- 	ROPE_ATTATCH,	//Not misspelled. In script "finale_heist2b.c4".  
--- 	wheel_lf,	//Wheel left, front  
--- 	wheel_lr,	//Wheel left, back  
--- 	wheel_rf,	//Wheel right, front  
--- 	wheel_rr,	//Wheel right, back  
--- 	exhaust,	//Exhaust. shows only the position of the stock-exhaust  
--- 	overheat,	//A position on the engine(not exactly sure, how to name it)  
--- 	misc_e,	//Not a car-bone.  
--- 	seat_dside_f,	//Driver-seat  
--- 	seat_pside_f,	//Seat next to driver  
--- 	Gun_Nuzzle,  
--- 	seat_r  
--- I doubt that the function is case-sensitive, since I found a "Chassis" and a "chassis". - Just tested: Definitely not case-sensitive.  
--- 
--- @param entity Entity
--- @param boneName string
--- @return number
function GetEntityBoneIndexByName(entity, boneName) end

--- 
--- Returns a float value representing animation's total playtime in milliseconds.  
--- Example:  
--- GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b")   
--- return 20800.000000  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity
--- @param animDict string
--- @param animName string
--- @return number
function GetEntityAnimTotalTime(entity, animDict, animName) end


--- @param entity Entity
--- @return boolean
function GetEntityCanBeDamaged(entity) end

--- Gets the current coordinates for a specified entity.
--- @param entity Entity
--- @param alive boolean
--- @return vector3
function GetEntityCoords(entity, alive) end

--- 
--- Gets the X-component of the entity's forward vector.  
--- 
--- @param entity Entity
--- @return number
function GetEntityForwardX(entity) end


--- @param entity Entity
--- @return boolean
function GetEntityCollisionDisabled(entity) end

--- 
--- Gets the entity's forward vector.
--- 
--- @param entity Entity
--- @return vector3
function GetEntityForwardVector(entity) end

--- 
--- Returns the heading of the entity in degrees. Also know as the "Yaw" of an entity.
--- 
--- @param entity Entity
--- @return number
function GetEntityHeading(entity) end

--- 
--- Returns an integer value of entity's current health.
--- Example of range for ped:
--- - Player [0 to 200]
--- - Ped [100 to 200]
--- - Vehicle [0 to 1000]
--- - Object [0 to 1000]
--- Health is actually a float value but this native casts it to int.
--- In order to get the actual value, do:
--- float health = *(float *)(entityAddress + 0x280);
--- 
--- @param entity Entity
--- @return number
function GetEntityHealth(entity) end

--- 
--- Gets the Y-component of the entity's forward vector.  
--- 
--- @param entity Entity
--- @return number
function GetEntityForwardY(entity) end

--- 
--- Return height (z-dimension) above ground.   
--- Example: The pilot in a titan plane is 1.844176 above ground.  
--- How can i convert it to meters?  
--- Everything seems to be in meters, probably this too.  
--- 
--- @param entity Entity
--- @return number
function GetEntityHeightAboveGround(entity) end


--- @param entity Entity
--- @param X number
--- @param Y number
--- @param Z number
--- @param atTop boolean
--- @param inWorldCoords boolean
--- @return number
function GetEntityHeight(entity, X, Y, Z, atTop, inWorldCoords) end

--- 
--- Return an integer value of entity's maximum health.  
--- Example:  
--- - Player = 200  
--- 
--- @param entity Entity
--- @return number
function GetEntityMaxHealth(entity) end

--- 
--- Returns the LOD distance of an entity.  
--- 
--- @param entity Entity
--- @return number
function GetEntityLodDist(entity) end

--- 
--- Returns the model hash from the entity
--- Sometimes throws an exception, idk what causes it though.
--- 
--- @param entity Entity
--- @return Hash
function GetEntityModel(entity) end

--- 
--- GET_ENTITY_*
--- 
--- Seems to return the handle of the entity's portable pickup.
--- 
--- NativeDB Introduced: v1180
--- 
--- @param entity Entity
--- @param modelHash Hash
--- @return Entity
function GetEntityPickup(entity, modelHash) end


--- @param entity Entity
--- @param rightVector vector3
--- @param forwardVector vector3
--- @param upVector vector3
--- @param position vector3
function GetEntityMatrix(entity, rightVector, forwardVector, upVector, position) end

--- Gets an entity's population type.
--- 
--- **Valid population types:**
--- 
--- cpp
--- enum ePopulationType
--- {
--- 	POPTYPE_UNKNOWN = 0,
--- 	POPTYPE_RANDOM_PERMANENT,
--- 	POPTYPE_RANDOM_PARKED,
--- 	POPTYPE_RANDOM_PATROL,
--- 	POPTYPE_RANDOM_SCENARIO,
--- 	POPTYPE_RANDOM_AMBIENT,
--- 	POPTYPE_PERMANENT,
--- 	POPTYPE_MISSION,
--- 	POPTYPE_REPLAY,
--- 	POPTYPE_CACHE,
--- 	POPTYPE_TOOL
--- };
--- 
--- @param entity Entity
--- @return number
function GetEntityPopulationType(entity) end

--- 
--- Gets the heading of the entity physics in degrees, which tends to be more accurate than just "GET_ENTITY_HEADING". This can be clearly seen while, for example, ragdolling a ped/player.  
--- NOTE: The name and description of this native are based on independent research. If you find this native to be more suitable under a different name and/or described differently, please feel free to do so.  
--- 
--- @param entity Entity
--- @return number
function GetEntityPhysicsHeading(entity) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param entity Entity
--- @param bulletProof boolean
--- @param fireProof boolean
--- @param explosionProof boolean
--- @param collisionProof boolean
--- @param meleeProof boolean
--- @param p6 boolean
--- @param p7 boolean
--- @param drownProof boolean
--- @return boolean
function GetEntityProofs(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, p6, p7, drownProof) end


--- @param entity Entity
--- @return number
function GetEntityPitch(entity) end

--- 
--- rotationOrder refers to the order yaw pitch roll is applied
--- value ranges from 0 to 5. What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.
--- Unsure what value corresponds to what rotation order, more testing will be needed for that.
--- ------
--- rotationOrder is usually 2 in scripts
--- ------
--- ENTITY::GET_ENTITY_ROTATION(Any p0, false or true);
--- if false than return from -180 to 180
--- if true than return from -90 to 90
--- ---
--- As said above, the value of p1 affects the outcome. R* uses 1 and 2 instead of 0 and 1, so I marked it as an int.
--- What it returns is the yaw on the z part of the vector, which makes sense considering R* considers z as vertical. Here's a picture for those of you who don't understand pitch, yaw, and roll:
--- www.allstar.fiu.edu/aero/images/pic5-1.gif
--- I don't know why it returns a Vec3, but sometimes the values x and y go negative, yet they're always zero. Just use GET_ENTITY_PITCH and GET_ENTITY_ROLL for pitch and roll.
--- 
--- @param entity Entity
--- @param rotationOrder number
--- @return vector3
function GetEntityRotation(entity, rotationOrder) end

--- 
--- w is the correct parameter name!  
--- 
--- @param entity Entity
--- @param x number
--- @param y number
--- @param z number
--- @param w number
function GetEntityQuaternion(entity, x, y, z, w) end


--- @param entity Entity
--- @return vector3
function GetEntityRotationVelocity(entity) end

--- 
--- Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).  
--- 
--- @param entity Entity
--- @param relative boolean
--- @return vector3
function GetEntitySpeedVector(entity, relative) end

--- 
--- Displays the current ROLL axis of the entity [-180.0000/180.0000+]  
--- (Sideways Roll) such as a vehicle tipped on its side  
--- 
--- @param entity Entity
--- @return number
function GetEntityRoll(entity) end

--- 
--- Get how much of the entity is submerged.  1.0f is whole entity.  
--- 
--- @param entity Entity
--- @return number
function GetEntitySubmergedLevel(entity) end

--- 
--- All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.  
--- 
--- @param entity Entity
--- @param script ScrHandle
--- @return string
function GetEntityScript(entity, script) end


--- @param entity Entity
--- @return number
function GetEntityUprightValue(entity) end

--- 
--- result is in meters per second  
--- ------------------------------------------------------------  
--- So would the conversion to mph and km/h, be along the lines of this.  
--- float speed = GET_ENTITY_SPEED(veh);  
--- float kmh = (speed * 3.6);  
--- float mph = (speed * 2.236936);  
--- 
--- @param entity Entity
--- @return number
function GetEntitySpeed(entity) end

--- 
--- Returns:  
--- 0 = no entity  
--- 1 = ped  
--- 2 = vehicle  
--- 3 = object  
--- This is weird, because in memory atleast on xbox360 it stores it from testing with a variety of (ped, vehicle, and objects).  
--- 03   
--- 04   
--- 05   
--- The above is more then likely true for the native's return, but if you were to skip using the native it's a bit weird it returns different results.  
--- 
--- @param entity Entity
--- @return number
function GetEntityType(entity) end


--- @param entity Entity
--- @return Hash
function GetLastMaterialHitByEntity(entity) end

--- 
--- the unit is m/s along each axis  
--- GET_ENTITY_VELOCITY(aEntity) is the same as GET_ENTITY_SPEED_VECTOR(aEntity,false)  
--- 
--- @param entity Entity
--- @return vector3
function GetEntityVelocity(entity) end


--- @param entity Entity
--- @param team number
--- @return Player
function GetNearestPlayerToEntityOnTeam(entity, team) end

--- 
--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- 
--- @param entity Entity
--- @return Object
function GetObjectIndexFromEntityIndex(entity) end


--- @param entity Entity
--- @return Player
function GetNearestPlayerToEntity(entity) end

--- 
--- Offset values are relative to the entity.  
--- x = left/right  
--- y = forward/backward  
--- z = up/down  
--- 
--- @param entity Entity
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
--- @return vector3
function GetOffsetFromEntityInWorldCoords(entity, offsetX, offsetY, offsetZ) end

--- 
--- Converts world coords (posX - Z) to coords relative to the entity  
--- Example:  
--- posX = 50  
--- posY = 1000  
--- posZ = 60  
--- Entity's coords are: x=30, y=1000, z=60.  
--- All three returned coords will then be in range of [-20,20] depending on rotation of the entity.  
--- 
--- @param entity Entity
--- @param posX number
--- @param posY number
--- @param posZ number
--- @return vector3
function GetOffsetFromEntityGivenWorldCoords(entity, posX, posY, posZ) end

--- 
--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- 
--- @param entity Entity
--- @return Vehicle
function GetVehicleIndexFromEntityIndex(entity) end

--- 
--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
--- 
--- @param entity Entity
--- @return Ped
function GetPedIndexFromEntityIndex(entity) end

--- 
--- Returns the coordinates of an entity-bone.  
--- 
--- @param entity Entity
--- @param boneIndex number
--- @return vector3
function GetWorldPositionOfEntityBone(entity, boneIndex) end


--- @param entity Entity
--- @param boneIndex number
--- @return vector3
function GetWorldPositionOfEntityBone2(entity, boneIndex) end


--- @param entity Entity
--- @param boneIndex number
--- @return vector3
function GetWorldRotationOfEntityBone(entity, boneIndex) end

--- 
--- if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("CreateObject")))  
--- 
--- @param entity Entity
--- @param actionHash Hash
--- @return boolean
function HasAnimEventFired(entity, actionHash) end


--- @param entity Entity
--- @return boolean
function HasCollisionLoadedAroundEntity(entity) end

--- 
--- P3 is always 3 as far as i cant tell  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity
--- @param animDict string
--- @param animName string
--- @param p3 number
--- @return boolean
function HasEntityAnimFinished(entity, animDict, animName, p3) end


--- @param entity Entity
--- @return boolean
function HasEntityBeenDamagedByAnyObject(entity) end


--- @param entity Entity
--- @return boolean
function HasEntityBeenDamagedByAnyPed(entity) end


--- @param entity Entity
--- @return boolean
function HasEntityBeenDamagedByAnyVehicle(entity) end

--- 
--- Entity 1 = Victim  
--- Entity 2 = Attacker  
--- p2 seems to always be 1  
--- 
--- @param entity1 Entity
--- @param entity2 Entity
--- @param p2 boolean
--- @return boolean
function HasEntityBeenDamagedByEntity(entity1, entity2, p2) end

--- 
--- traceType is always 17 in the scripts.  
--- There is other codes used for traceType:  
--- 19 - in jewelry_prep1a  
--- 126 - in am_hunt_the_beast  
--- 256 & 287 - in fm_mission_controller  
--- 
--- @param entity1 Entity
--- @param entity2 Entity
--- @param traceType number
--- @return boolean
function HasEntityClearLosToEntity(entity1, entity2, traceType) end

--- 
--- Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing.  
--- This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops  
--- 
--- @param entity1 Entity
--- @param entity2 Entity
--- @return boolean
function HasEntityClearLosToEntityInFront(entity1, entity2) end

--- 
--- Called on tick.  
--- Tested with vehicles, returns true whenever the vehicle is touching any entity.  
--- Note: for vehicles, the wheels can touch the ground and it will still return false, but if the body of the vehicle touches the ground, it will return true.  
--- 
--- @param entity Entity
--- @return boolean
function HasEntityCollidedWithAnything(entity) end


--- @param handle number
--- @return boolean
function IsAnEntity(handle) end


--- @param entity Entity
--- @return boolean
function IsEntityAMissionEntity(entity) end


--- @param entity Entity
--- @return boolean
function IsEntityAPed(entity) end


--- @param entity Entity
--- @return boolean
function IsEntityAnObject(entity) end


--- @param entity Entity
--- @return boolean
function IsEntityAVehicle(entity) end

--- 
--- Checks if entity1 is within the box defined by x/y/zSize of entity2.  
--- Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0  
--- 
--- @param entity1 Entity
--- @param entity2 Entity
--- @param xSize number
--- @param ySize number
--- @param zSize number
--- @param p5 boolean
--- @param p6 boolean
--- @param p7 number
--- @return boolean
function IsEntityAtEntity(entity1, entity2, xSize, ySize, zSize, p5, p6, p7) end

--- 
--- Checks if entity is within x/y/zSize distance of x/y/z.   
--- Last three are unknown ints, almost always p7 = 0, p8 = 1, p9 = 0  
--- 
--- @param entity Entity
--- @param xPos number
--- @param yPos number
--- @param zPos number
--- @param xSize number
--- @param ySize number
--- @param zSize number
--- @param p7 boolean
--- @param p8 boolean
--- @param p9 number
--- @return boolean
function IsEntityAtCoord(entity, xPos, yPos, zPos, xSize, ySize, zSize, p7, p8, p9) end


--- @param entity Entity
--- @return boolean
function IsEntityAttached(entity) end


--- @param entity Entity
--- @return boolean
function IsEntityAttachedToAnyObject(entity) end


--- @param entity Entity
--- @return boolean
function IsEntityAttachedToAnyVehicle(entity) end


--- @param entity Entity
--- @return boolean
function IsEntityAttachedToAnyPed(entity) end


--- @param from Entity
--- @param to Entity
--- @return boolean
function IsEntityAttachedToEntity(from, to) end

--- 
--- NativeDB Added Parameter 2: BOOL p1
--- 
--- @param entity Entity
--- @return boolean
function IsEntityDead(entity) end


--- @param entity Entity
--- @return boolean
function IsEntityInAir(entity) end

--- 
--- Creates a spherical cone at origin that extends to surface with the angle specified. Then returns true if the entity is inside the spherical cone  
--- Angle is measured in degrees.  
--- These values are constant, most likely bogus:  
--- p8 = 0, p9 = 1, p10 = 0  
--- This method can also take two float<3> instead of 6 floats.  
--- 
--- @param entity Entity
--- @param originX number
--- @param originY number
--- @param originZ number
--- @param edgeX number
--- @param edgeY number
--- @param edgeZ number
--- @param angle number
--- @param p8 boolean
--- @param p9 boolean
--- @param p10 any
--- @return boolean
function IsEntityInAngledArea(entity, originX, originY, originZ, edgeX, edgeY, edgeZ, angle, p8, p9, p10) end


--- @param entity Entity
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param p7 boolean
--- @param p8 boolean
--- @param p9 any
--- @return boolean
function IsEntityInArea(entity, x1, y1, z1, x2, y2, z2, p7, p8, p9) end


--- @param entity Entity
--- @return boolean
function IsEntityInWater(entity) end


--- @param entity Entity
--- @return boolean
function IsEntityOccluded(entity) end


--- @param entity Entity
--- @param zone string
--- @return boolean
function IsEntityInZone(entity, zone) end

--- 
--- See also PED::IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM 0x6EC47A344923E1ED 0x3C30B447  
--- Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)  
--- p4 is always 3 in the scripts.  
--- taskFlag:  
--- 2 - Check synchronized scene  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity
--- @param animDict string
--- @param animName string
--- @param taskFlag number
--- @return boolean
function IsEntityPlayingAnim(entity, animDict, animName, taskFlag) end

--- 
--- A static ped will not react to natives like "APPLY_FORCE_TO_ENTITY" or "SET_ENTITY_VELOCITY" and oftentimes will not react to task-natives like "AI::TASK_COMBAT_PED". The only way I know of to make one of these peds react is to ragdoll them (or sometimes to use CLEAR_PED_TASKS_IMMEDIATELY(). Static peds include almost all far-away peds, beach-combers, peds in certain scenarios, peds crossing a crosswalk, peds walking to get back into their cars, and others. If anyone knows how to make a ped non-static without ragdolling them, please edit this with the solution.  
--- ^ Attach a phCollider to the ped.  
--- 
--- @param entity Entity
--- @return boolean
function IsEntityStatic(entity) end

--- 
--- Returns true if the entity is in between the minimum and maximum values for the 2d screen coords.   
--- This means that it will return true even if the entity is behind a wall for example, as long as you're looking at their location.   
--- Chipping  
--- 
--- @param entity Entity
--- @return boolean
function IsEntityOnScreen(entity) end

--- 
--- // add this to your CSS to view code with formatting intact.  
--- // pre + hr + p { white-space: pre; } // -  
--- bool isEntityUpright(Entity e, float angle) {  
---     bool bIsUpright; // bl@1  
---     CDynamicEntity* pEntity; // rdi@1  
---     bIsUpright = 0;  
---     pEntity = getEntityAddressIfPhysical(e);  
---     if (pEntity) {  
---         bIsUpright = 0;  
---         if (pEntity->Matrix.up.z >= cosf(angle * 0.017453292)) // radians(angle)  
---             bIsUpright = 1;  
---     }  
---     return bIsUpright;  
--- }  
--- 
--- @param entity Entity
--- @param angle number
--- @return boolean
function IsEntityUpright(entity, angle) end


--- @param entity Entity
--- @return boolean
function IsEntityVisible(entity) end


--- @param entity Entity
--- @param targetEntity Entity
--- @return boolean
function IsEntityTouchingEntity(entity, targetEntity) end


--- @param entity Entity
--- @param modelHash Hash
--- @return boolean
function IsEntityTouchingModel(entity, modelHash) end


--- @param entity Entity
--- @return boolean
function IsEntityWaitingForWorldCollision(entity) end


--- @param entity Entity
--- @return boolean
function IsEntityUpsidedown(entity) end


--- @param entity Entity
--- @return boolean
function IsEntityVisibleToScript(entity) end

--- 
--- delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.  
--- The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity
--- @param animName string
--- @param animDict string
--- @param p3 number
--- @param loop boolean
--- @param stayInAnim boolean
--- @param p6 boolean
--- @param delta number
--- @param bitset any
--- @return boolean
function PlayEntityAnim(entity, animName, animDict, p3, loop, stayInAnim, p6, delta, bitset) end

--- 
--- p4 and p7 are usually 1000.0f.  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity
--- @param syncedScene number
--- @param animation string
--- @param propName string
--- @param p4 number
--- @param p5 number
--- @param p6 any
--- @param p7 number
--- @return boolean
function PlaySynchronizedEntityAnim(entity, syncedScene, animation, propName, p4, p5, p6, p7) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 any
--- @param p5 any
--- @param p6 any
--- @param p7 any
--- @param p8 number
--- @param p9 number
--- @param p10 any
--- @param p11 number
--- @return boolean
function PlaySynchronizedMapEntityAnim(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

--- 
--- Called to update entity attachments.  
--- When using ATTACH_ENTITY_TO_ENTITY and using bone '0' then you set the first entity invisible. The attachments will mess up, use bone '-1' to fix that issue  
--- 
--- @param entity Entity
function ProcessEntityAttachments(entity) end

