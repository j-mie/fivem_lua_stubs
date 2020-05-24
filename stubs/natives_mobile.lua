
--- @param p0 boolean
--- @param p1 boolean
function CellCamActivate(p0, p1) end

--- 
--- Disables the phone up-button, oddly enough.   
--- i.e.: When the phone is out, and this method is called with false as it's parameter, the phone will not be able to scroll up. However, when you use the down arrow key, it's functionality still, works on the phone.   
--- When the phone is not out, and this method is called with false as it's parameter, you will not be able to bring up the phone. Although the up arrow key still works for whatever functionality it's used for, just not for the phone.  
--- This can be used for creating menu's when trying to disable the phone from being used.   
--- You do not have to call the function again with false as a parameter, as soon as the function stops being called, the phone will again be usable.  
--- 
--- @param toggle boolean
function CellCamDisableThisFrame(toggle) end


--- @param entity Entity
--- @return boolean
function CellCamIsCharVisibleNoFaceCheck(entity) end

--- 
--- if the bool "Toggle" is "true" so the phone is lean.  
--- if the bool "Toggle" is "false" so the phone is not lean.  
--- 
--- @param toggle boolean
function CellCamSetLean(toggle) end

--- 
--- This one is weird and seems to return a TRUE state regardless of whether the phone is visible on screen or tucked away.  
--- I can confirm the above. This function is hard-coded to always return 1.  
--- 
--- @return boolean
function CanPhoneBeSeenOnScreen() end

--- 
--- Creates a mobile phone of the specified type.  
--- Possible phone types:  
--- 0 - Default phone / Michael's phone  
--- 1 - Trevor's phone  
--- 2 - Franklin's phone  
--- 4 - Prologue phone  
--- These values represent bit flags, so a value of '3' would toggle Trevor and Franklin's phones together, causing unexpected behavior and most likely crash the game.  
--- 
--- @param phoneType number
function CreateMobilePhone(phoneType) end


--- @param position vector3
function GetMobilePhonePosition(position) end

--- 
--- For move the finger of player, the value of int goes 1 at 5.  
--- 
--- @param direction number
function CellCamMoveFinger(direction) end


--- @param rotation vector3
--- @param p1 Vehicle
function GetMobilePhoneRotation(rotation, p1) end

--- 
--- Destroys the currently active mobile phone.  
--- 
function DestroyMobilePhone() end


--- @param renderId number
function GetMobilePhoneRenderId(renderId) end

--- 
--- ex.:  
--- v_15 = sub_10cc8(VEHICLE::GET_VEHICLE_WHEEL_TYPE(a_2));  
--- if (!MOBILE::_247F0F73A182EA0B(v_15)) {  
---     return 1;  
--- }  
--- Belongs in UNK3, hashed version of 0xBD4D7EAF8A30F637  
--- 
--- @param hash Hash
--- @return boolean
function NetGameserverCatalogItemExistsHash(hash) end

--- 
--- If bool Toggle = true so the mobile is hide to screen.  
--- If bool Toggle = false so the mobile is show to screen.  
--- 
--- @param toggle boolean
function ScriptIsMovingMobilePhoneOffscreen(toggle) end

--- 
--- The minimum/default is 500.0f. If you plan to make it bigger set it's position as well. Also this seems to need to be called in a loop as when you close the phone the scale is reset. If not in a loop you'd need to call it everytime before you re-open the phone.  
--- 
--- @param scale number
function SetMobilePhoneScale(scale) end

--- 
--- Belongs in UNK3, non-hashed version of 0x247F0F73A182EA0B  
--- 
--- @param name string
--- @return boolean
function NetGameserverCatalogItemExists(name) end


--- @param toggle boolean
function SetMobilePhoneUnk(toggle) end


--- @param posX number
--- @param posY number
--- @param posZ number
function SetMobilePhonePosition(posX, posY, posZ) end

--- 
--- Last parameter is unknown and always zero.  
--- 
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param p3 any
function SetMobilePhoneRotation(rotX, rotY, rotZ, p3) end

