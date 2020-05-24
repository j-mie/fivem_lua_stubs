
--- @param zoomLevel number
function SetFollowVehicleCamZoomLevel(zoomLevel) end

--- 
--- From b617 scripts:
--- CAM::_21E253A7F8DA5DFB("DINGHY");
--- CAM::_21E253A7F8DA5DFB("ISSI2");
--- CAM::_21E253A7F8DA5DFB("SPEEDO");
--- 
--- @param vehicleName string
function SetGameplayCamVehicleCamera(vehicleName) end

--- 
--- Example C#:  
--- Function.Call(Hash.SET_GAMEPLAY_COORD_HINT, position.X, position.Y, position.Z, hintDuration, 1500, 1000, 0);  
--- The camera look-at is canceled if the user is already panning the camera around.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param duration number
--- @param blendOutDuration number
--- @param blendInDuration number
--- @param unk number
function SetGameplayCoordHint(x, y, z, duration, blendOutDuration, blendInDuration, unk) end

--- 
--- Sets the camera position relative to heading in float from -360 to +360.  
--- Heading is alwyas 0 in aiming camera.  
--- 
--- @param heading number
function SetGameplayCamRelativeHeading(heading) end


--- @param roll number
function SetGameplayHintAngle(roll) end

--- 
--- Sets the amplitude for the gameplay (i.e. 3rd or 1st) camera to shake. Used in script "drunk_controller.ysc.c4" to simulate making the player drunk.  
--- 
--- @param amplitude number
function SetGameplayCamShakeAmplitude(amplitude) end


--- @param xoffset number
function SetGameplayHintAnimOffsetx(xoffset) end

--- 
--- NativeDB Parameter 0: Hash vehicleModel
--- 
--- @param vehicleModel any
function SetGameplayCamVehicleCameraName(vehicleModel) end


--- @param yoffset number
function SetGameplayHintAnimOffsety(yoffset) end


--- @param FOV number
function SetGameplayHintFov(FOV) end

--- 
--- p6 & p7 - possibly length or time  
--- 
--- @param entity Entity
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param p4 boolean
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 any
function SetGameplayEntityHint(entity, xOffset, yOffset, zOffset, p4, p5, p6, p7, p8) end


--- @param p0 boolean
function SetGameplayHintAnimCloseup(p0) end


--- @param p0 Ped
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param p4 boolean
--- @param p5 any
--- @param p6 any
--- @param p7 any
function SetGameplayPedHint(p0, x1, y1, z1, p4, p5, p6, p7) end

--- 
--- Sets the near clipping plane of the third person aim camera.  
--- 
--- @param distance number
function SetThirdPersonAimCamNearClip(distance) end


--- @param zoffset number
function SetGameplayHintAnimOffsetz(zoffset) end

--- 
--- NativeDB Return Type: void
--- 
--- @param p0 boolean
--- @param p1 number
--- @return any
function SetWidescreenBorders(p0, p1) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 boolean
--- @param p5 any
--- @param p6 any
--- @param p7 any
function SetGameplayObjectHint(p0, p1, p2, p3, p4, p5, p6, p7) end

--- 
--- Possible shake types (updated b617d):  
--- DEATH_FAIL_IN_EFFECT_SHAKE  
--- DRUNK_SHAKE  
--- FAMILY5_DRUG_TRIP_SHAKE  
--- HAND_SHAKE  
--- JOLT_SHAKE  
--- LARGE_EXPLOSION_SHAKE  
--- MEDIUM_EXPLOSION_SHAKE  
--- SMALL_EXPLOSION_SHAKE  
--- ROAD_VIBRATION_SHAKE  
--- SKY_DIVING_SHAKE  
--- VIBRATE_SHAKE  
--- 
--- @param cam Cam
--- @param type string
--- @param amplitude number
function ShakeCam(cam, type, amplitude) end

--- Focuses the camera on the specified vehicle.
--- @param vehicle Vehicle
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
--- @param p4 boolean
--- @param time number
--- @param easeInTime number
--- @param easeOutTime number
function SetGameplayVehicleHint(vehicle, offsetX, offsetY, offsetZ, p4, time, easeInTime, easeOutTime) end

--- 
--- Possible shake types (updated b617d):  
--- DEATH_FAIL_IN_EFFECT_SHAKE  
--- DRUNK_SHAKE  
--- FAMILY5_DRUG_TRIP_SHAKE  
--- HAND_SHAKE  
--- JOLT_SHAKE  
--- LARGE_EXPLOSION_SHAKE  
--- MEDIUM_EXPLOSION_SHAKE  
--- SMALL_EXPLOSION_SHAKE  
--- ROAD_VIBRATION_SHAKE  
--- SKY_DIVING_SHAKE  
--- VIBRATE_SHAKE  
--- 
--- @param shakeName string
--- @param intensity number
function ShakeGameplayCam(shakeName, intensity) end


function SetUseHiDof() end

--- 
--- Something to do with shake:  
--- CAM::_F4C8CF9E353AFECA("HAND_SHAKE", 0.2);  
--- 
--- @param p0 string
--- @param p1 number
function ShakeScriptGlobal(p0, p1) end

--- 
--- p0 argument found in the b617d scripts: "DRUNK_SHAKE"  
--- 
--- @param p0 string
--- @param p1 number
function ShakeCinematicCam(p0, p1) end


--- @param cam Cam
--- @param p1 boolean
function StopCamShaking(cam, p1) end


--- @param cam Cam
function StopCamPointing(cam) end


--- @param p0 boolean
function StopCinematicCamShaking(p0) end


--- @param p0 any
function StopCinematicShot(p0) end


--- @param p0 boolean
function StopGameplayCamShaking(p0) end


function StopCutsceneCamShaking() end


--- @param p0 boolean
function StopGameplayHint(p0) end

--- 
--- In drunk_controller.c4, sub_309  
--- if (CAM::_C912AF078AF19212()) {  
---     CAM::_1C9D7949FA533490(0);  
--- }  
--- 
--- @param p0 boolean
function StopScriptGlobalShaking(p0) end


function UseStuntCameraThisFrame() end

