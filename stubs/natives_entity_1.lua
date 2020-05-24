
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
function RemoveForcedObject(p0, p1, p2, p3, p4) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param originalModel Hash
--- @param newModel Hash
--- @param p6 boolean
function RemoveModelSwap(x, y, z, radius, originalModel, newModel, p6) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
function RemoveModelHide(p0, p1, p2, p3, p4, p5) end

--- 
--- NativeDB Return Type: void
--- 
--- @param entity Entity
--- @return any
function ResetEntityAlpha(entity) end


--- @param entity Entity
--- @param p1 boolean
function SetCanAutoVaultOnEntity(entity, p1) end


--- @param entity Entity
--- @param p1 boolean
function SetCanClimbOnEntity(entity, p1) end

--- 
--- skin - everything alpha except skin
--- Set entity alpha level. Ranging from 0 to 255 but chnages occur after every 20 percent (after every 51).
--- 
--- 
--- 
--- NativeDB Parameter 2: BOOL skin
--- 
--- @param entity Entity
--- @param alphaLevel number
--- @param skin number
function SetEntityAlpha(entity, alphaLevel, skin) end


--- @param entity Entity
--- @param toggle boolean
function SetEntityAlwaysPrerender(entity, toggle) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity
--- @param animDictionary string
--- @param animName string
--- @param time number
function SetEntityAnimCurrentTime(entity, animDictionary, animName, time) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity
--- @param animDictionary string
--- @param animName string
--- @param speedMultiplier number
function SetEntityAnimSpeed(entity, animDictionary, animName, speedMultiplier) end

--- 
--- Marks the specified entity (ped, vehicle or object) as no longer needed.  
--- Entities marked as no longer needed, will be deleted as the engine sees fit.  
--- 
--- @param entity Entity
function SetEntityAsNoLongerNeeded(entity) end

--- 
--- Makes the specified entity (ped, vehicle or object) persistent. Persistent entities will not automatically be removed by the engine.  
--- p1 has no effect when either its on or off   
--- maybe a quick disassembly will tell us what it does  
--- p2 has no effect when either its on or off   
--- maybe a quick disassembly will tell us what it does  
--- 
--- @param entity Entity
--- @param p1 boolean
--- @param p2 boolean
function SetEntityAsMissionEntity(entity, p1, p2) end


--- @param entity Entity
--- @param bCanBeDamaged boolean
--- @param relGroup number
function SetEntityCanBeDamagedByRelationshipGroup(entity, bCanBeDamaged, relGroup) end


--- @param entity Entity
--- @param toggle boolean
function SetEntityCanBeDamaged(entity, toggle) end


--- @param entity Entity
--- @param toggle boolean
--- @param keepPhysics boolean
function SetEntityCollision(entity, toggle, keepPhysics) end

--- 
--- Sets whether the entity can be targeted without being in line-of-sight.  
--- 
--- @param entity Entity
--- @param toggle boolean
function SetEntityCanBeTargetedWithoutLos(entity, toggle) end

--- 
--- Axis - Invert Axis Flags  
--- 
--- @param entity Entity
--- @param xPos number
--- @param yPos number
--- @param zPos number
--- @param xAxis boolean
--- @param yAxis boolean
--- @param zAxis boolean
function SetEntityCoordsNoOffset(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis) end

--- 
--- internally it calls the same function as 'SET_ENTITY_COLLISION'. but uses a hard coded parameter that only activates when p1 is set to true   
--- =============================  
--- Weirdly enough in the 3 scripts it's used in on PC,  
--- - director_mode (2 hits)  
--- - re_duel (2 hits)  
--- - re_seaplane (1 hit)  
--- Most of the time in the hits its actually used after the normal SET_ENTITY_COLLISION. Example from re_seaplane,  
--- Local_49[iParam0 /*6*/] = create_ped(26, iVar4, vVar0, fVar3, 1, true);  
--- set_entity_collision(Local_49[iParam0 /*6*/], iVar42, 0);  
--- _0x9EBC85ED0FFFE51C(Local_49[iParam0 /*6*/], !iVar66, 0); (_SET_ENTITY_COLLISION_2)  
--- iVar42 being true so the normal collision native is true, 0  
--- iVar66 being false so !false so it's true, 0  
--- Gonna ignore the 'vars' for the create_ped no point in defining them.  
--- 
--- @param entity Entity
--- @param p1 boolean
--- @param p2 boolean
function SetEntityCompletelyDisableCollision(entity, p1, p2) end

--- 
--- does the same as SET_ENTITY_COORDS.  
--- 
--- @param entity Entity
--- @param xPos number
--- @param yPos number
--- @param zPos number
--- @param xAxis boolean
--- @param yAxis boolean
--- @param zAxis boolean
--- @param clearArea boolean
function SetEntityCoords2(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea) end

--- Set the heading of an entity in degrees also known as "Yaw".
--- @param entity Entity
--- @param heading number
function SetEntityHeading(entity, heading) end

--- 
--- p7 is always 1 in the scripts. Set to 1, an area around the destination coords for the moved entity is cleared from other entities.
--- Often ends with 1, 0, 0, 1); in the scripts. It works.
--- Axis - Invert Axis Flags
--- 
--- 
--- Sets an entity's coordinates in world space.
--- @param entity Entity
--- @param xPos number
--- @param yPos number
--- @param zPos number
--- @param xAxis boolean
--- @param yAxis boolean
--- @param zAxis boolean
--- @param clearArea boolean
function SetEntityCoords(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea) end

--- health >= 0
--- 
--- male ped ~= 100 - 200
--- 
--- female ped ~= 0 - 100
--- 
--- because something.
--- @param entity Entity
--- @param health number
function SetEntityHealth(entity, health) end


--- @param entity Entity
--- @param toggle boolean
function SetEntityDynamic(entity, toggle) end


--- @param entity Entity
--- @param toggle boolean
function SetEntityHasGravity(entity, toggle) end


--- @param entity Entity
--- @param p1 boolean
--- @param p2 number
function SetEntityIsTargetPriority(entity, p1, p2) end

--- 
--- Sets a ped or an object totally invincible. It doesn't take any kind of damage. Peds will not ragdoll on explosions and the tazer animation won't apply either.  
--- If you use this for a ped and you want Ragdoll to stay enabled, then do:  
--- *(DWORD *)(pedAddress + 0x188) |= (1 << 9);  
--- Use this if you want to get the invincibility status:  
--- 	bool IsPedInvincible(Ped ped)  
--- 	{  
--- auto addr = getScriptHandleBaseAddress(ped);	  
--- if (addr)  
--- {  
--- 	DWORD flag = *(DWORD *)(addr + 0x188);  
--- 	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
--- }  
--- return false;  
--- 	}  
--- 
--- @param entity Entity
--- @param toggle boolean
function SetEntityInvincible(entity, toggle) end

--- 
--- Certainly not the main usage of this native but when set to true for a Vehicle, it will prevent the vehicle to explode if it is spawned far away from the player.  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: Any p2
--- 
--- @param entity Entity
--- @param toggle boolean
function SetEntityLoadCollisionFlag(entity, toggle) end


--- @param entity Entity
--- @param toggle boolean
function SetEntityLights(entity, toggle) end

--- 
--- LOD distance can be 0 to 0xFFFF (higher values will result in 0xFFFF) as it is actually stored as a 16-bit value (aka uint16_t).  
--- 
--- @param entity Entity
--- @param value number
function SetEntityLodDist(entity, value) end

--- 
--- For instance: ENTITY::SET_ENTITY_MAX_HEALTH(PLAYER::PLAYER_PED_ID(), 200); // director_mode.c4: 67849  
--- 
--- @param entity Entity
--- @param value number
function SetEntityMaxHealth(entity, value) end


--- @param entity Entity
--- @param toggle boolean
function SetEntityMotionBlur(entity, toggle) end


--- @param entity Entity
--- @param speed number
function SetEntityMaxSpeed(entity, speed) end


--- @param entity Entity
--- @param toggle boolean
function SetEntityOnlyDamagedByPlayer(entity, toggle) end

--- 
--- Calling this function disables collision between two entities.
--- The importance of the order for entity1 and entity2 is unclear.
--- The third parameter, thisFrame, decides whether the collision is to be disabled until it is turned back on, or if it's just this frame.
--- 
--- @param entity1 Entity
--- @param entity2 Entity
--- @param thisFrameOnly boolean
function SetEntityNoCollisionEntity(entity1, entity2, thisFrameOnly) end

--- 
--- Enable / disable each type of damage.  
--- --------------  
--- p7 is to to '1' in am_mp_property_ext/int: entity::set_entity_proofs(uParam0->f_19, true, true, true, true, true, true, 1, true);  
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
function SetEntityProofs(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, p6, p7, drownProof) end


--- @param entity Entity
--- @param p1 boolean
--- @param relationshipHash Hash
function SetEntityOnlyDamagedByRelationshipGroup(entity, p1, relationshipHash) end


--- @param entity Entity
--- @param toggle boolean
function SetEntityRecordsCollisions(entity, toggle) end

--- 
--- what does this native do?  
--- bool IsEntitySomething(Entity entity)  
--- {  
--- 	auto addr = getScriptHandleBaseAddress(entity);  
--- 	printf("addr: 0x%X \n", addr);  
--- 	if (addr)  
--- 	{  
--- DWORD flag = *(DWORD *)(addr + 0x48D);  
--- printf("flag: 0x%X \n", flag);  
--- return ((flag & (1 << 3)) != 0) || ((flag & (1 << 30)) != 0);  
--- 	}  
--- 	return false;  
--- }  
--- wot ?  
--- 
--- @param entity Entity
--- @param toggle boolean
function SetEntitySomething(entity, toggle) end

--- 
--- w is the correct parameter name!  
--- 
--- @param entity Entity
--- @param x number
--- @param y number
--- @param z number
--- @param w number
function SetEntityQuaternion(entity, x, y, z, w) end

--- 
--- Note that the third parameter(denoted as z) is "up and down" with positive ment.  
--- 
--- @param entity Entity
--- @param x number
--- @param y number
--- @param z number
function SetEntityVelocity(entity, x, y, z) end


--- @param entity Entity
--- @param toggle boolean
function SetEntityRenderScorched(entity, toggle) end

--- 
--- unk was always 0.  
--- 
--- @param entity Entity
--- @param toggle boolean
--- @param unk boolean
function SetEntityVisible(entity, toggle, unk) end

--- 
--- rotationOrder refers to the order yaw pitch roll is applied  
--- value ranges from 0 to 5. What you use for rotationOrder when setting must be the same as rotationOrder when getting the rotation.   
--- Unsure what value corresponds to what rotation order, more testing will be needed for that.  
--- For the most part R* uses 1 or 2 as the order.  
--- p5 is usually set as true  
--- 
--- @param entity Entity
--- @param pitch number
--- @param roll number
--- @param yaw number
--- @param rotationOrder number
--- @param p5 boolean
function SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5) end

--- 
--- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
--- 
--- @param ped Ped
function SetPedAsNoLongerNeeded(ped) end

--- 
--- Example here: www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340  
--- 0 = green  
--- 1 = red  
--- 2 = yellow  
--- changing lights may not change the behavior of vehicles  
--- 
--- @param entity Entity
--- @param state number
function SetEntityTrafficlightOverride(entity, state) end

--- 
--- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
--- 
--- @param object Object
function SetObjectAsNoLongerNeeded(object) end

--- 
--- RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param entity Entity
--- @param animation string
--- @param animGroup string
--- @param p3 number
--- @return any
function StopEntityAnim(entity, animation, animGroup, p3) end

--- 
--- p1 sync task id?  
--- 
--- @param entity Entity
--- @param p1 number
--- @param p2 boolean
--- @return boolean
function StopSynchronizedEntityAnim(entity, p1, p2) end

--- 
--- First parameter was previously an Entity but after further research it is definitely a hash.  
--- 
--- @param entityModelHash Hash
--- @param x number
--- @param y number
--- @param z number
--- @param p4 boolean
--- @return boolean
function WouldEntityBeOccluded(entityModelHash, x, y, z, p4) end

--- 
--- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
--- 
--- @param vehicle Vehicle
function SetVehicleAsNoLongerNeeded(vehicle) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 any
--- @param p5 number
--- @return boolean
function StopSynchronizedMapEntityAnim(p0, p1, p2, p3, p4, p5) end

