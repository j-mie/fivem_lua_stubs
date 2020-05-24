
--- @param pickup Pickup
--- @param roomName string
function AddPickupToInteriorRoomByName(pickup, roomName) end

--- 
--- More info: http://gtaforums.com/topic/836367-adding-props-to-interiors/  
--- 
--- @param interior number
--- @param entitySetName string
function ActivateInteriorEntitySet(interior, entitySetName) end

--- 
--- Returns true if the coords are colliding with the outdoors, and false if they collide with an interior.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @return boolean
function AreCoordsCollidingWithExterior(x, y, z) end

--- 
--- Does something similar to INTERIOR::DISABLE_INTERIOR  
--- 
--- @param interiorID number
--- @param toggle boolean
function CapInterior(interiorID, toggle) end


--- @param entity Entity
function ClearRoomForEntity(entity) end


function ClearRoomForGameViewport() end


--- @param interior number
--- @param entitySetName string
function DeactivateInteriorEntitySet(interior, entitySetName) end

--- 
--- Example:   
--- This removes the interior from the strip club and when trying to walk inside the player just falls:  
--- INTERIOR::DISABLE_INTERIOR(118018, true);  
--- 
--- @param interiorID number
--- @param toggle boolean
function DisableInterior(interiorID, toggle) end

--- 
--- This is the native that is used to hide the exterior of GTA Online apartment buildings when you are inside an apartment.
--- 
--- @param mapObjectHash Hash
function EnableExteriorCullModelThisFrame(mapObjectHash) end

--- 
--- NativeDB Parameter 0: Hash mapObjectHash
--- 
--- @param mapObjectHash any
function EnableScriptCullModelThisFrame(mapObjectHash) end

--- 
--- Forces the particular room in an interior to load incase not teleporting into the portal.
--- 
--- @param entity Entity
--- @param interior number
--- @param roomHashKey Hash
function ForceRoomForEntity(entity, interior, roomHashKey) end


--- @param interiorID number
--- @param roomHashKey Hash
function ForceRoomForGameViewport(interiorID, roomHashKey) end

--- 
--- Returns interior ID from specified coordinates. If coordinates are outside, then it returns 0.  
--- Example for VB.NET  
--- Dim interiorID As Integer = Native.Function.Call(Of Integer)(Hash.GET_INTERIOR_AT_COORDS, X, Y, Z)  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @return number
function GetInteriorAtCoords(x, y, z) end

--- 
--- Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.  
--- Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))  
--- Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.  
--- Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param interiorType string
--- @return number
function GetInteriorAtCoordsWithType(x, y, z, interiorType) end


--- @param x number
--- @param y number
--- @param z number
--- @return number
function GetInteriorFromCollision(x, y, z) end

--- 
--- Returns the interior ID at the given coords, but only if the unknown variable is set to 0, otherwise it will return 0.  
--- 
--- 
--- 
--- NativeDB Parameter 3: Hash typeHash
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param typeHash number
--- @return number
function GetInteriorAtCoordsWithTypehash(x, y, z, typeHash) end

--- 
--- Returns the handle of the interior that the entity is in. Returns 0 if outside.  
--- 
--- @param entity Entity
--- @return number
function GetInteriorFromEntity(entity) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @return number
function GetInteriorFromGameplayCam() end

--- 
--- Returns the group ID of the specified interior. For example, regular interiors have group 0, subway interiors have group 1. There are a few other groups too.  
--- 
--- @param interior number
--- @return number
function GetInteriorGroupId(interior) end

--- 
--- GET_INTERIOR_*
--- 
--- NativeDB Introduced: v1493
--- 
--- @param interior number
--- @return number
function GetInteriorHeading(interior) end

--- 
--- Seems to do the exact same as INTERIOR::GET_ROOM_KEY_FROM_ENTITY  
--- 
--- @param entity Entity
--- @return Hash
function GetKeyForEntityInRoom(entity) end

--- 
--- GET_INTERIOR_*
--- 
--- NativeDB Introduced: v1290
--- 
--- @param interior number
--- @param position vector3
--- @param nameHash Hash
function GetInteriorInfo(interior, position, nameHash) end


--- @param interior number
--- @param x number
--- @param y number
--- @param z number
--- @return vector3
function GetOffsetFromInteriorInWorldCoords(interior, x, y, z) end

--- 
--- Returns the room hash key from the current gameplay cam.  
--- 
--- @return Hash
function GetRoomKeyForGameViewport() end


--- @param interiorID number
--- @return boolean
function IsInteriorCapped(interiorID) end

--- 
--- Gets the room hash key from the room that the specified entity is in. Each room in every interior has a unique key. Returns 0 if the entity is outside.  
--- 
--- @param entity Entity
--- @return Hash
function GetRoomKeyFromEntity(entity) end


--- @param interior number
--- @param entitySetName string
--- @return boolean
function IsInteriorEntitySetActive(interior, entitySetName) end


--- @param interior number
--- @return boolean
function IsInteriorDisabled(interior) end


--- @return boolean
function IsInteriorScene() end


--- @param interiorID number
--- @return boolean
function IsInteriorReady(interiorID) end

--- 
--- Return if interior is valid.  
--- 
--- @param interiorID number
--- @return boolean
function IsValidInterior(interiorID) end

--- 
--- Load interior  
--- 
--- @param interior number
function PinInteriorInMemory(interior) end


--- @param interiorID number
function RefreshInterior(interiorID) end

--- 
--- Does something similar to INTERIOR::DISABLE_INTERIOR.  
--- You don't fall through the floor but everything is invisible inside and looks the same as when INTERIOR::DISABLE_INTERIOR is used. Peds behaves normally inside.  
--- 
--- @param interior number
function UnpinInterior(interior) end


--- @param interior number
--- @param entitySetName string
--- @param color number
function SetInteriorEntitySetColor(interior, entitySetName, color) end

