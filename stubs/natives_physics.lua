--- 
--- seems to be frequently used with the NETWORK::NET_TO_x natives, particularly with vehicles. It is often the only ROPE:: native in a script.  
--- 
--- @param entity Entity
function ActivatePhysics(entity) end


--- @param posX number
--- @param posY number
--- @param posZ number
--- @param vecX number
--- @param vecY number
--- @param vecZ number
--- @param impulse number
function ApplyImpulseToCloth(posX, posY, posZ, vecX, vecY, vecZ, impulse) end

--- 
--- The position supplied can be anywhere, and the entity should anchor relative to that point from it's origin.  
--- 
--- @param ropeId number
--- @param entity Entity
--- @param x number
--- @param y number
--- @param z number
--- @param p5 boolean
function AttachRopeToEntity(ropeId, entity, x, y, z, p5) end

--- 
--- Creates a rope at the specific position, that extends in the specified direction when not attached to any entities.  
--- __  
--- Add_Rope(pos.x,pos.y,pos.z,0.0,0.0,0.0,20.0,4,20.0,1.0,0.0,false,false,false,5.0,false,NULL)  
--- When attached, Position<vector> does not matter  
--- When attached, Angle<vector> does not matter  
--- Rope Type:  
--- 4 and bellow is a thick rope  
--- 5 and up are small metal wires  
--- 0 crashes the game  
--- Max_length - Rope is forced to this length, generally best to keep this the same as your rope length.  
--- Rigid - If max length is zero, and this is set to false the rope will become rigid (it will force a specific distance, what ever length is, between the objects).  
--- breakable - Whether or not shooting the rope will break it.  
--- unkPtr - unknown ptr, always 0 in orig scripts  
--- __  
--- Lengths can be calculated like so:  
--- float distance = abs(x1 - x2) + abs(y1 - y2) + abs(z1 - z2); // Rope length  
--- NOTES:  
--- Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).  
--- Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param length number
--- @param ropeType number
--- @param maxLength number
--- @param minLength number
--- @param p10 number
--- @param p11 boolean
--- @param p12 boolean
--- @param rigid boolean
--- @param p14 number
--- @param breakWhenShot boolean
--- @param unkPtr any
--- @return number
function AddRope(x, y, z, rotX, rotY, rotZ, length, ropeType, maxLength, minLength, p10, p11, p12, rigid, p14, breakWhenShot, unkPtr) end

--- 
--- NativeDB Return Type: void
--- 
--- @param ropeId number
--- @return any
function DeleteChildRope(ropeId) end

--- 
--- Attaches entity 1 to entity 2.  
--- 
--- @param ropeId number
--- @param ent1 Entity
--- @param ent2 Entity
--- @param ent1_x number
--- @param ent1_y number
--- @param ent1_z number
--- @param ent2_x number
--- @param ent2_y number
--- @param ent2_z number
--- @param length number
--- @param p10 boolean
--- @param p11 boolean
--- @param boneName1 string
--- @param boneName2 string
function AttachEntitiesToRope(ropeId, ent1, ent2, ent1_x, ent1_y, ent1_z, ent2_x, ent2_y, ent2_z, length, p10, p11, boneName1, boneName2) end


--- @param ropeId number
function DeleteRope(ropeId) end


--- @param entity Entity
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 any
--- @param p10 boolean
function BreakEntityGlass(entity, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end


--- @param ropeId number
--- @param entity Entity
function DetachRopeFromEntity(ropeId, entity) end


--- @param ropeId number
--- @return boolean
function DoesRopeBelongToThisScript(ropeId) end

--- 
--- Ptr is correct  
--- 
--- @param ropeId number
--- @return boolean
function DoesRopeExist(ropeId) end

--- 
--- GET_*
--- 
--- @param object Object
--- @return boolean
function DoesEntityHaveFragInst(object) end

--- 
--- NativeDB Return Type: Vector3
--- 
--- @param ropeId number
--- @return any
function GetRopeLastVertexCoord(ropeId) end


--- @param entity Entity
--- @return vector3
function GetCgoffset(entity) end


--- @param ropeId number
--- @param vertex number
--- @return vector3
function GetRopeVertexCoord(ropeId, vertex) end


--- @param ropeId number
--- @return number
function GetRopeVertexCount(ropeId) end

--- 
--- Rope presets can be found in the gamefiles. One example is "ropeFamily3", it is NOT a hash but rather a string.  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @param ropeId number
--- @param rope_preset string
--- @return any
function LoadRopeData(ropeId, rope_preset) end


--- @return boolean
function RopeAreTexturesLoaded() end


--- @param ropeId number
--- @param vertex number
--- @param x number
--- @param y number
--- @param z number
function PinRopeVertex(ropeId, vertex, x, y, z) end


--- @param ropeId number
function RopeConvertToSimple(ropeId) end

--- 
--- Forces a rope to a certain length.  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @param ropeId number
--- @param length number
--- @return any
function RopeForceLength(ropeId, length) end

--- 
--- Loads rope textures for all ropes in the current scene.  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @return any
function RopeLoadTextures() end


--- @param ropeId number
--- @param toggle boolean
function RopeDrawShadowEnabled(ropeId, toggle) end

--- 
--- Reset a rope to a certain length.  
--- 
--- @param ropeId number
--- @param length number
function RopeResetLength(ropeId, length) end

--- 
--- Get a rope's length.  Can be modified with ROPE_FORCE_LENGTH  
--- 
--- @param ropeId number
--- @return number
function RopeGetDistanceBetweenEnds(ropeId) end

--- 
--- Unloads rope textures for all ropes in the current scene.  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @return any
function RopeUnloadTextures() end

--- 
--- ROPE_*
--- 
--- @param ropeId number
--- @param p1 any
function RopeSetUpdateOrder(ropeId, p1) end


--- @param entity Entity
--- @param x number
--- @param y number
--- @param z number
function SetCgoffset(entity, x, y, z) end


--- @param ropeId number
function RopeSetUpdatePinverts(ropeId) end

--- 
--- NativeDB Return Type: void
--- 
--- @param object Object
--- @param toggle boolean
--- @return any
function SetDisableBreaking(object, toggle) end

--- 
--- sometimes used used with NET_TO_OBJ  
--- 
--- @param object Object
--- @param toggle boolean
function SetDisableFragDamage(object, toggle) end


--- @param entity Entity
function SetCgAtBoundcenter(entity) end


--- @param entity Entity
--- @param vertex number
--- @param value number
function SetDamping(entity, vertex, value) end


--- @param ropeId number
function StartRopeUnwindingFront(ropeId) end


--- @param entity Entity
--- @param toggle boolean
function SetEntityProofUnk(entity, toggle) end


--- @param ropeId number
function StartRopeWinding(ropeId) end


--- @param ropeId number
function StopRopeWinding(ropeId) end


--- @param ropeId number
function StopRopeUnwindingFront(ropeId) end

--- 
--- NativeDB Return Type: void
--- 
--- @param ropeId number
--- @param vertex number
--- @return any
function UnpinRopeVertex(ropeId, vertex) end

