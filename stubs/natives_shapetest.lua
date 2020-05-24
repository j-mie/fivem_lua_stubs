--- 
--- Parameters:  
--- rayHandle - Ray Handle from a casted ray, as returned by CAST_RAY_POINT_TO_POINT  
--- hit - Where to store whether or not it hit anything. False is when the ray reached its destination.  
--- endCoords - Where to store the world-coords of where the ray was stopped (by hitting its desired max range or by colliding with an entity/the map)  
--- surfaceNormal - Where to store the surface-normal coords (NOT relative to the game world) of where the entity was hit by the ray  
--- entityHit - Where to store the handle of the entity hit by the ray  
--- Returns:  
--- Result? Some type of enum.  
--- NOTE: To get the offset-coords of where the ray hit relative to the entity that it hit (which is NOT the same as surfaceNormal), you can use these two natives:  
--- Vector3 offset = ENTITY::GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS(entityHit, endCoords.x, endCoords.y, endCoords.z);  
--- Vector3 entitySpotCoords = ENTITY::GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(entityHit, offset.x, offset.y, offset.z);  
--- Use ENTITY::GET_ENTITY_TYPE(entityHit) to quickly distinguish what type of entity you hit (ped/vehicle/object - 1/2/3)  
--- 
--- @param rayHandle number
--- @param hit boolean
--- @param endCoords vector3
--- @param surfaceNormal vector3
--- @param entityHit Entity
--- @return number
function GetShapeTestResult(rayHandle, hit, endCoords, surfaceNormal, entityHit) end

--- 
--- behaves exactly the same way as GET_SHAPE_TEST_RESULT except it has one extra parameter (_materialHash).  
--- Quick disassembly seems to indicate that the unknown is a hash. EDIT: Seems to be the hash of the hit material or surface type.  
--- found a materialFX.dat list of them but not sure if it has to do with this native yet.  
--- materials (full list): pastebin.com/gyHjsYBK  
--- 
--- @param rayHandle number
--- @param hit boolean
--- @param endCoords vector3
--- @param surfaceNormal vector3
--- @param materialHash Hash
--- @param entityHit Entity
--- @return number
function GetShapeTestResultIncludingMaterial(rayHandle, hit, endCoords, surfaceNormal, materialHash, entityHit) end


--- @param entity Entity
--- @param flags1 number
--- @param flags2 number
--- @return number
function StartShapeTestBound(entity, flags1, flags2) end


--- @param entityHit Entity
function ShapeTestResultEntity(entityHit) end


--- @param entity Entity
--- @param flags1 number
--- @param flags2 number
--- @return number
function StartShapeTestBoundingBox(entity, flags1, flags2) end

--- 
--- Raycast from point to point, where the ray has a radius.   
--- flags:  
--- vehicles=10  
--- peds =12  
--- Iterating through flags yields many ped / vehicle/ object combinations  
--- p9 = 7, but no idea what it does  
--- Entity is an entity to ignore  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param radius number
--- @param flags number
--- @param entity Entity
--- @param p9 number
--- @return number
function StartShapeTestCapsule(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) end


--- @param x number
--- @param y number
--- @param z number
--- @param x1 number
--- @param y2 number
--- @param z2 number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param p9 any
--- @param p10 any
--- @param entity any
--- @param p12 any
--- @return number
function StartShapeTestBox(x, y, z, x1, y2, z2, rotX, rotY, rotZ, p9, p10, entity, p12) end

--- 
--- Returns a ray (?) going from x1, y1, z1 to x2, y2, z2.  
--- entity = 0 most of the time.  
--- p8 = 7 most of the time.  
--- Result of this function is passed to WORLDPROBE::_GET_RAYCAST_RESULT as a first argument.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param flags number
--- @param ent Entity
--- @param p8 number
--- @return number
function StartShapeTestLosProbe(x1, y1, z1, x2, y2, z2, flags, ent, p8) end

--- 
--- Not sure how or why this differs from 0x7EE9F5D83DD4F90E, but it does.  
--- This function casts a ray from Point1 to Point2 and returns it's ray handle.  A simple ray cast will 'shoot' a line from point A to point B, and return whether or not the ray reached it's destination or if it hit anything and if it did hit anything, will return the handle of what it hit (entity handle) and coordinates of where the ray reached.  
--- You can use _GET_RAYCAST_RESULT to get the result of the raycast  
--- Entity is an entity to ignore, such as the player.  
--- Flags are intersection bit flags.  They tell the ray what to care about and what not to care about when casting. Passing -1 will intersect with everything, presumably.  
--- Flags:  
--- 1: Intersect with map  
--- 2: Intersect with vehicles (used to be mission entities?) (includes train)  
--- 4: Intersect with peds? (same as 8)  
--- 8: Intersect with peds? (same as 4)  
--- 16: Intersect with objects  
--- 32: Water?  
--- 64: Unknown  
--- 128: Unknown  
--- 256: Intersect with vegetation (plants, coral. trees not included)  
--- NOTE: Raycasts that intersect with mission_entites (flag = 2) has limited range and will not register for far away entites. The range seems to be about 30 metres.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param flags number
--- @param entity Entity
--- @param p8 number
--- @return number
function StartShapeTestRay(x1, y1, z1, x2, y2, z2, flags, entity, p8) end

--- 
--- it returns a ShapeTest handle that can be used with GET_SHAPE_TEST_RESULT.  
--- In its only usage in game scripts its called with flag set to 511, entity to player_ped_id and flag2 set to 7  
--- 
--- @param pVec1 vector3
--- @param pVec2 vector3
--- @param flag number
--- @param entity Entity
--- @param flag2 number
--- @return number
function StartShapeTestSurroundingCoords(pVec1, pVec2, flag, entity, flag2) end

--- 
--- Performs the same type of trace as START_SHAPE_TEST_CAPSULE, but with some different hardcoded parameters.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param radius number
--- @param flags number
--- @param entity Entity
--- @param p9 any
--- @return number
function StartShapeTestSweptSphere(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9) end

