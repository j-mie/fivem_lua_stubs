--- 
--- I filled p1-p6 (the floats) as they are as other natives with 6 floats in a row are similar and I see no other method. So if a test from anyone proves them wrong please correct.  
--- p7 (length) determines the length of the spline, affects camera path and duration of transition between previous node and this one  
--- p8 big values ~100 will slow down the camera movement before reaching this node  
--- p9 != 0 seems to override the rotation/pitch (bool?)  
--- 
--- @param camera Cam
--- @param x number
--- @param y number
--- @param z number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param length number
--- @param p8 number
--- @param transitionType number
function AddCamSplineNode(camera, x, y, z, xRot, yRot, zRot, length, p8, transitionType) end


--- @param cam Cam
--- @param cam2 Cam
--- @param p2 number
--- @param p3 number
function AddCamSplineNodeUsingCameraFrame(cam, cam2, p2, p3) end


--- @param cam Cam
--- @param p1 number
--- @param p2 number
function AddCamSplineNodeUsingGameplayFrame(cam, p1, p2) end

--- 
--- Example from michael2 script.  
--- CAM::ANIMATED_SHAKE_CAM(l_5069, "shake_cam_all@", "light", "", 1f);  
--- 
--- @param cam Cam
--- @param p1 string
--- @param p2 string
--- @param p3 string
--- @param amplitude number
function AnimatedShakeCam(cam, p1, p2, p3, amplitude) end

--- 
--- CAM::_C2EAE3FB8CDBED31("SHAKE_CAM_medium", "medium", "", 0.5f);  
--- 
--- @param p0 string
--- @param p1 string
--- @param p2 string
--- @param p3 number
function AnimatedShakeScriptGlobal(p0, p1, p2, p3) end


--- @param cam Cam
--- @param ped Ped
--- @param boneIndex number
--- @param x number
--- @param y number
--- @param z number
--- @param heading boolean
function AttachCamToPedBone(cam, ped, boneIndex, x, y, z, heading) end


--- @param cam Cam
--- @param cam2 Cam
--- @param p2 number
--- @param p3 number
function AddCamSplineNodeUsingCamera(cam, cam2, p2, p3) end

--- This native works with vehicles only.
--- Bone indexes are usually given by this native [GET_ENTITY_BONE_INDEX_BY_NAME](#_0xFB71170B7E76ACBA).
--- @param cam Cam
--- @param vehicle Vehicle
--- @param boneIndex number
--- @param relativeRotation boolean
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param offX number
--- @param offY number
--- @param offZ number
--- @param fixedDirection boolean
function AttachCamToVehicleBone(cam, vehicle, boneIndex, relativeRotation, rotX, rotY, rotZ, offX, offY, offZ, fixedDirection) end

--- 
--- Seems to animate the gameplay camera zoom.  
--- Eg. _ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1000f);  
--- will animate the camera zooming in from 1000 meters away.  
--- Game scripts use it like this:  
--- // Setting this to 1 prevents V key from changing zoom  
--- PLAYER::SET_PLAYER_FORCED_ZOOM(PLAYER::PLAYER_ID(), 1);  
--- // These restrict how far you can move cam up/down left/right  
--- CAM::_CLAMP_GAMEPLAY_CAM_YAW(-20f, 50f);  
--- CAM::_CLAMP_GAMEPLAY_CAM_PITCH(-60f, 0f);  
--- CAM::_ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1f);  
--- 
--- @param p0 number
--- @param distance number
function AnimateGameplayCamZoom(p0, distance) end

--- 
--- minimum: Degrees between -90f and 90f.  
--- maximum: Degrees between -90f and 90f.  
--- Clamps the gameplay camera's current pitch.  
--- Eg. _CLAMP_GAMEPLAY_CAM_PITCH(0.0f, 0.0f) will set the vertical angle directly behind the player.  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @param minimum number
--- @param maximum number
--- @return any
function ClampGameplayCamPitch(minimum, maximum) end

--- 
--- "DEFAULT_SCRIPTED_CAMERA"  
--- "DEFAULT_ANIMATED_CAMERA"  
--- "DEFAULT_SPLINE_CAMERA"  
--- "DEFAULT_SCRIPTED_FLY_CAMERA"  
--- "TIMED_SPLINE_CAMERA"  
--- 
--- @param camName string
--- @param p1 boolean
--- @return Cam
function CreateCam(camName, p1) end

--- 
--- Last param determines if its relative to the Entity  
--- 
--- @param cam Cam
--- @param entity Entity
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param isRelative boolean
function AttachCamToEntity(cam, entity, xOffset, yOffset, zOffset, isRelative) end


--- @param camHash Hash
--- @param p1 boolean
--- @return Cam
function CreateCamera(camHash, p1) end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param cam Cam
--- @param ped Ped
--- @param boneIndex number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 boolean
function AttachCamToPedBone2(cam, ped, boneIndex, p3, p4, p5, p6, p7, p8, p9) end


--- @param p0 any
--- @param p1 number
--- @param p2 any
--- @param entity Entity
function CreateCinematicShot(p0, p1, p2, entity) end

--- 
--- minimum: Degrees between -180f and 180f.  
--- maximum: Degrees between -180f and 180f.  
--- Clamps the gameplay camera's current yaw.  
--- Eg. _CLAMP_GAMEPLAY_CAM_YAW(0.0f, 0.0f) will set the horizontal angle directly behind the player.  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @param minimum number
--- @param maximum number
--- @return any
function ClampGameplayCamYaw(minimum, maximum) end

--- 
--- some camera effect that is used in the drunk-cheat, and turned off (by setting it to 0.0) along with the shaking effects once the drunk cheat is disabled.  
--- 
--- @param p0 number
function CustomMenuCoordinates(p0) end

--- 
--- camName is always set to "DEFAULT_SCRIPTED_CAMERA" in Rockstar's scripts.  
--- ------------  
--- Camera names found in the b617d scripts:  
--- "DEFAULT_ANIMATED_CAMERA"  
--- "DEFAULT_SCRIPTED_CAMERA"  
--- "DEFAULT_SCRIPTED_FLY_CAMERA"  
--- "DEFAULT_SPLINE_CAMERA"  
--- ------------  
--- Side Note: It seems p8 is basically to represent what would be the bool p1 within CREATE_CAM native. As well as the p9 since it's always 2 in scripts seems to represent what would be the last param within SET_CAM_ROT native which normally would be 2.  
--- 
--- @param camName string
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param fov number
--- @param p8 boolean
--- @param p9 number
--- @return Cam
function CreateCamWithParams(camName, posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9) end

--- 
--- BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.  
--- 
--- @param cam Cam
--- @param thisScriptCheck boolean
function DestroyCam(cam, thisScriptCheck) end


--- @param cam Cam
function DetachCam(cam) end

--- 
--- Disables first person camera for the current frame.  
--- Found in decompiled scripts:  
--- GRAPHICS::DRAW_DEBUG_TEXT_2D("Disabling First Person Cam", 0.5, 0.8, 0.0, 0, 0, 255, 255);  
--- CAM::_DE2EF5DA284CC8DF();  
--- 
function DisableFirstPersonCamThisFrame() end

--- 
--- CAM::_GET_GAMEPLAY_CAM_COORDS can be used instead of posX,Y,Z  
--- CAM::_GET_GAMEPLAY_CAM_ROT can be used instead of rotX,Y,Z  
--- CAM::_80EC114669DAEFF4() can be used instead of p7 (Possible p7 is FOV parameter. )  
--- p8 ???  
--- p9 uses 2 by default  
--- 
--- @param camHash Hash
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param fov number
--- @param p8 boolean
--- @param p9 any
--- @return Cam
function CreateCameraWithParams(camHash, posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9) end

--- 
--- Fades the screen in.  
--- duration: The time the fade should take, in milliseconds.  
--- 
--- @param duration number
function DoScreenFadeIn(duration) end

--- 
--- BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.  
--- 
--- @param thisScriptCheck boolean
function DestroyAllCams(thisScriptCheck) end

--- 
--- Returns whether or not the passed camera handle exists.  
--- 
--- @param cam Cam
--- @return boolean
function DoesCamExist(cam) end


function DisableAimCamThisUpdate() end


--- @param cam Cam
--- @return number
function GetCamAnimCurrentPhase(cam) end


function DisableVehicleFirstPersonCamThisFrame() end


--- @param cam Cam
--- @return vector3
function GetCamCoord(cam) end

--- 
--- Fades the screen out.  
--- duration: The time the fade should take, in milliseconds.  
--- 
--- @param duration number
function DoScreenFadeOut(duration) end

--- 
--- Shows the crosshair even if it wouldn't show normally. Only works for one frame, so make sure to call it repeatedly.  
--- 
function EnableCrosshairThisFrame() end


--- @param cam Cam
--- @return number
function GetCamFarDof(cam) end


--- @param cam Cam
--- @return number
function GetCamNearClip(cam) end


--- @param cam Cam
--- @return number
function GetCamFarClip(cam) end


--- @param cam Cam
--- @return number
function GetCamFov(cam) end

--- 
--- I named the beginning from Any to BOOL as this native is used in an if statement as well.   
--- Big surprise it returns an int.  
--- 
--- @param cam Cam
--- @return number
function GetCamSplineNodeIndex(cam) end

--- 
--- The last parameter, as in other "ROT" methods, is usually 2.  
--- 
--- @param cam Cam
--- @param rotationOrder number
--- @return vector3
function GetCamRot(cam, rotationOrder) end

--- 
--- Can use this with SET_CAM_SPLINE_PHASE to set the float it this native returns.  
--- (returns 1.0f when no nodes has been added, reached end of non existing spline)  
--- 
--- @param cam Cam
--- @return number
function GetCamSplinePhase(cam) end

--- 
--- I'm pretty sure the parameter is the camera as usual, but I am not certain so I'm going to leave it as is.  
--- 
--- @param cam Cam
--- @return number
function GetCamSplineNodePhase(cam) end


--- @return vector3
function GetFinalRenderedCamCoord() end


--- @return number
function GetFinalRenderedCamFarDof() end


--- @return number
function GetFinalRenderedCamFarClip() end


--- @return number
function GetFinalRenderedCamFov() end


--- @return number
function GetFinalRenderedCamMotionBlurStrength() end


--- @return number
function GetFinalRenderedCamNearDof() end


--- @return number
function GetFinalRenderedCamNearClip() end


--- @param rotationOrder number
--- @return vector3
function GetFinalRenderedCamRot(rotationOrder) end


--- @param player Player
--- @return number
function GetFinalRenderedInWhenFriendlyFov(player) end


--- @return number
function GetFirstPersonAimCamZoomFactor() end


--- @param player Player
--- @param rotationOrder number
--- @return vector3
function GetFinalRenderedInWhenFriendlyRot(player, rotationOrder) end

--- 
--- Returns  
--- 0 - Third Person Close  
--- 1 - Third Person Mid  
--- 2 - Third Person Far  
--- 4 - First Person  
--- 
--- @return number
function GetFollowPedCamViewMode() end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @return Ped
function GetFocusPedOnScreen(p0, p1, p2, p3, p4, p5, p6, p7, p8) end


--- @return number
function GetFollowPedCamZoomLevel() end

--- 
--- Returns the type of camera:  
--- 0 - Third Person Close  
--- 1 - Third Person Mid  
--- 2 - Third Person Far  
--- 4 - First Person  
--- 
--- @return number
function GetFollowVehicleCamViewMode() end


--- @return number
function GetFollowVehicleCamZoomLevel() end


--- @return vector3
function GetGameplayCamCoord() end


--- @return number
function GetGameplayCamFov() end


--- @return number
function GetGameplayCamRelativeHeading() end


--- @return number
function GetGameplayCamRelativePitch() end

--- 
--- p0 dosen't seem to change much, I tried it with 0, 1, 2:  
--- 0-Pitch(X): -70.000092  
--- 0-Roll(Y): -0.000001  
--- 0-Yaw(Z): -43.886459  
--- 1-Pitch(X): -70.000092  
--- 1-Roll(Y): -0.000001  
--- 1-Yaw(Z): -43.886463  
--- 2-Pitch(X): -70.000092  
--- 2-Roll(Y): -0.000002  
--- 2-Yaw(Z): -43.886467  
--- 
--- @param rotationOrder number
--- @return vector3
function GetGameplayCamRot(rotationOrder) end


--- @return Cam
function GetRenderingCam() end

--- Resets the idle camera timer. Calling this in a loop will disable the idle camera.
function InvalidateIdleCam() end


--- @return boolean
function IsAimCamActive() end

--- 
--- IS_A*
--- 
--- @return boolean
function IsAimCamThirdPersonActive() end

--- 
--- Returns whether or not the passed camera handle is active.  
--- 
--- @param cam Cam
--- @return boolean
function IsCamActive(cam) end


--- @param cam Cam
--- @return boolean
function IsCamInterpolating(cam) end


--- @param cam Cam
--- @return boolean
function IsCamRendering(cam) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param cam Cam
--- @param animName string
--- @param animDictionary string
--- @return boolean
function IsCamPlayingAnim(cam, animName, animDictionary) end


--- @param cam Cam
--- @return boolean
function IsCamShaking(cam) end


--- @param p0 any
--- @return boolean
function IsCamSplinePaused(p0) end


--- @return boolean
function IsCinematicCamShaking() end


--- @return boolean
function IsCinematicCamRendering() end


--- @return boolean
function IsFirstPersonAimCamActive() end


--- @return boolean
function IsFollowPedCamActive() end


--- @param p0 any
--- @return boolean
function IsCinematicShotActive(p0) end


--- @return boolean
function IsGameplayCamLookingBehind() end


--- @return boolean
function IsFollowVehicleCamActive() end


--- @return boolean
function IsGameplayCamShaking() end

--- 
--- Examples when this function will return 0 are:  
--- - During busted screen.  
--- - When player is coming out from a hospital.  
--- - When player is coming out from a police station.  
--- 
--- @return boolean
function IsGameplayCamRendering() end


--- @return boolean
function IsInVehicleCamDisabled() end


--- @return boolean
function IsGameplayHintActive() end


--- @return boolean
function IsScreenFadedIn() end


--- @return boolean
function IsScreenFadingIn() end


--- @return boolean
function IsScreenFadedOut() end


--- @return boolean
function IsScreenFadingOut() end

--- 
--- In drunk_controller.c4, sub_309  
--- if (CAM::_C912AF078AF19212()) {  
---     CAM::_1C9D7949FA533490(0);  
--- }  
--- 
--- @return boolean
function IsScriptGlobalShaking() end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @return boolean
function IsSphereVisible(x, y, z, radius) end

--- 
--- Max value for p1 is 15.  
--- 
--- @param cam Cam
--- @param p1 number
--- @param p2 number
--- @param p3 number
function OverrideCamSplineMotionBlur(cam, p1, p2, p3) end


--- @param cam Cam
--- @param p1 number
--- @param p2 number
--- @param p3 number
function OverrideCamSplineVelocity(cam, p1, p2, p3) end

--- 
--- Atleast one time in a script for the zRot Rockstar uses GET_ENTITY_HEADING to help fill the parameter.  
--- p9 is unknown at this time.  
--- p10 throughout all the X360 Scripts is always 2.  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param cam Cam
--- @param animName string
--- @param animDictionary string
--- @param x number
--- @param y number
--- @param z number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param p9 boolean
--- @param p10 number
--- @return boolean
function PlayCamAnim(cam, animName, animDictionary, x, y, z, xRot, yRot, zRot, p9, p10) end

--- 
--- Examples:  
--- CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_2734, NETWORK::_02C40BF885C567B6(l_2739), "PLAYER_EXIT_L_CAM", "mp_doorbell");  
--- CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_F0D[7/*1*/], l_F4D[15/*1*/], "ah3b_attackheli_cam2", "missheistfbi3b_helicrash");  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param p0 any
--- @param p1 any
--- @param animName string
--- @param animDictionary string
--- @return boolean
function PlaySynchronizedCamAnim(p0, p1, animName, animDictionary) end


--- @param cam Cam
--- @param x number
--- @param y number
--- @param z number
function PointCamAtCoord(cam, x, y, z) end

--- 
--- p5 always seems to be 1 i.e TRUE  
--- 
--- @param cam Cam
--- @param entity Entity
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 boolean
function PointCamAtEntity(cam, entity, p2, p3, p4, p5) end

--- 
--- Parameters p0-p5 seems correct. The bool p6 is unknown, but through every X360 script it's always 1. Please correct p0-p5 if any prove to be wrong.  
--- 
--- @param cam Cam
--- @param ped Ped
--- @param boneIndex number
--- @param x number
--- @param y number
--- @param z number
--- @param p6 boolean
function PointCamAtPedBone(cam, ped, boneIndex, x, y, z, p6) end

--- 
--- This native makes the gameplay camera zoom into first person/third person with a special effect.  
--- For example, if you were first person in a mission and after the cutscene ends, the camera would then zoom into the first person camera view.  
--- if (CAM::GET_FOLLOW_PED_CAM_VIEW_MODE() != 4)  
---            CAM::_C819F3CBB62BF692(1, 0, 3, 0)  
--- This makes the camera zoom in to first person.  
--- --------------------------------------------  
--- 1st Param Options: 0 or 1 (Changes quit often, toggle?)  
--- 2nd Param Options: 0, 0f, 1f, 3.8f, 10f, 20f (Mostly 0)   
--- 3rd Param Options: 3, 2, 1 (Mostly 3);  
--- Note for the 2nd param 10f (offroad_race.c) and 3rd param 20f (range_modern.c) are the only times those 2 high floats are called.  
--- Note for the 3rd param 2 is only ever set in (franklin0.c), but it also sets it as 3. (0, 0, 3) ||(0, 0f, 2) || (0, 0, 3)  
--- 
--- 
--- 
--- NativeDB Added Parameter 4: Any p3
--- 
--- @param render boolean
--- @param p1 number
--- @param p2 number
function RenderFirstPersonCam(render, p1, p2) end


--- @return number
function ReplayFreeCamGetMaxRange() end

--- 
--- ease - smooth transition between the camera's positions  
--- easeTime - Time in milliseconds for the transition to happen  
--- If you have created a script (rendering) camera, and want to go back to the   
--- character (gameplay) camera, call this native with render set to 0.  
--- Setting ease to 1 will smooth the transition.  
--- 
--- 
--- 
--- NativeDB Added Parameter 6: Any p5
--- 
--- @param render boolean
--- @param ease boolean
--- @param easeTime number
--- @param p3 boolean
--- @param p4 boolean
function RenderScriptCams(render, ease, easeTime, p3, p4) end

--- 
--- Set camera as active/inactive.  
--- 
--- @param cam Cam
--- @param active boolean
function SetCamActive(cam, active) end

--- 
--- Previous declaration void SET_CAM_ACTIVE_WITH_INTERP(Cam camTo, Cam camFrom, int duration, BOOL easeLocation, BOOL easeRotation) is completely wrong. The last two params are integers not BOOLs...  
--- 
--- @param camTo Cam
--- @param camFrom Cam
--- @param duration number
--- @param easeLocation number
--- @param easeRotation number
function SetCamActiveWithInterp(camTo, camFrom, duration, easeLocation, easeRotation) end

--- 
--- Allows you to aim and shoot at the direction the camera is facing.  
--- 
--- @param cam Cam
--- @param toggle boolean
function SetCamAffectsAiming(cam, toggle) end


--- @param cam Cam
--- @param phase number
function SetCamAnimCurrentPhase(cam, phase) end

--- 
--- Sets the position of the cam.  
--- 
--- @param cam Cam
--- @param posX number
--- @param posY number
--- @param posZ number
function SetCamCoord(cam, posX, posY, posZ) end

--- 
--- NOTE: Debugging functions are not present in the retail version of the game.  
--- 
--- @param camera Cam
--- @param name string
function SetCamDebugName(camera, name) end

--- 
--- Native name labeled within its code
--- 
--- @param camera Cam
--- @param p1 number
function SetCamDofFocalLengthMultiplier(camera, p1) end

--- 
--- This native has a name defined inside its code  
--- 
--- @param camera Cam
--- @param p1 number
function SetCamDofMaxNearInFocusDistance(camera, p1) end

--- 
--- This native has its name defined inside its codE  
--- 
--- @param camera Cam
--- @param p1 number
function SetCamDofFnumberOfLens(camera, p1) end


--- @param cam Cam
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
function SetCamDofPlanes(cam, p1, p2, p3, p4) end

--- 
--- This native has a name defined inside its code  
--- 
--- @param camera Cam
--- @param p1 number
function SetCamDofFocusDistanceBias(camera, p1) end

--- 
--- if p0 is 0, effect is cancelled  
--- if p0 is 1, effect zooms in, gradually tilts cam clockwise apx 30 degrees, wobbles slowly. Motion blur is active until cancelled.  
--- if p0 is 2, effect immediately tilts cam clockwise apx 30 degrees, begins to wobble slowly, then gradually tilts cam back to normal. The wobbling will continue until the effect is cancelled.  
--- 
--- @param p0 number
function SetCamEffect(p0) end


--- @param cam Cam
--- @param farDOF number
function SetCamFarDof(cam, farDOF) end

--- 
--- This native has a name defined inside its code  
--- 
--- @param camera Cam
--- @param p1 number
function SetCamDofMaxNearInFocusDistanceBlendLevel(camera, p1) end

--- 
--- The native seems to only be called once.  
--- The native is used as so,  
--- CAM::SET_CAM_INHERIT_ROLL_VEHICLE(l_544, getElem(2, &l_525, 4));  
--- In the exile1 script.  
--- 
--- @param cam Cam
--- @param p1 boolean
function SetCamInheritRollVehicle(cam, p1) end


--- @param cam Cam
--- @param strength number
function SetCamMotionBlurStrength(cam, strength) end


--- @param cam Cam
--- @param dofStrength number
function SetCamDofStrength(cam, dofStrength) end


--- @param cam Cam
--- @param farClip number
function SetCamFarClip(cam, farClip) end


--- @param cam Cam
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param fieldOfView number
--- @param p8 any
--- @param p9 number
--- @param p10 number
--- @param p11 number
function SetCamParams(cam, posX, posY, posZ, rotX, rotY, rotZ, fieldOfView, p8, p9, p10, p11) end

--- 
--- Sets the field of view of the cam.  
--- ---------------------------------------------  
--- Min: 1.0f  
--- Max: 130.0f  
--- 
--- @param cam Cam
--- @param fieldOfView number
function SetCamFov(cam, fieldOfView) end


--- @param cam Cam
--- @param amplitude number
function SetCamShakeAmplitude(cam, amplitude) end


--- @param cam Cam
--- @param p1 number
--- @param p2 number
--- @param p3 number
function SetCamSplineNodeEase(cam, p1, p2, p3) end


--- @param cam Cam
--- @param nearClip number
function SetCamNearClip(cam, nearClip) end


--- @param cam Cam
--- @param p1 number
--- @param flags number
function SetCamSplineNodeExtraFlags(cam, p1, flags) end


--- @param cam Cam
--- @param nearDOF number
function SetCamNearDof(cam, nearDOF) end


--- @param cam Cam
--- @param p1 number
--- @param scale number
function SetCamSplineNodeVelocityScale(cam, p1, scale) end


--- @param cam Cam
--- @param smoothingStyle number
function SetCamSplineSmoothingStyle(cam, smoothingStyle) end

--- 
--- Sets the rotation of the cam.  
--- Last parameter unknown.  
--- Last parameter seems to always be set to 2.  
--- 
--- @param cam Cam
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param rotationOrder number
function SetCamRot(cam, rotX, rotY, rotZ, rotationOrder) end


--- @param p0 boolean
function SetCinematicButtonActive(p0) end


--- @param p0 number
function SetCinematicCamShakeAmplitude(p0) end

--- 
--- I named p1 as timeDuration as it is obvious. I'm assuming tho it is ran in ms(Milliseconds) as usual.  
--- 
--- @param cam Cam
--- @param timeDuration number
function SetCamSplineDuration(cam, timeDuration) end


--- @param p0 number
function SetFirstPersonAimCamZoomFactor(p0) end


--- @param cam Cam
--- @param p1 number
function SetCamSplinePhase(cam, p1) end

--- 
--- Sets the near clipping plane of the first person camera.  
--- 
--- @param distance number
function SetFirstPersonCamNearClip(distance) end


--- @param cam Cam
--- @param toggle boolean
function SetCamUseShallowDofMode(cam, toggle) end


--- @param cam Cam
--- @param p1 number
--- @param p2 number
--- @param p3 number
function SetFlyCamHorizontalResponse(cam, p1, p2, p3) end

--- 
--- p0 = 0/1 or true/false  
--- It doesn't seems to work  
--- 
--- @param p0 boolean
function SetCinematicModeActive(p0) end


--- @param cam Cam
--- @param p1 number
--- @param p2 number
--- @param p3 number
function SetFlyCamVerticalSpeedMultiplier(cam, p1, p2, p3) end

--- 
--- From the b617d scripts:  
--- CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA", 0);  
---  CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_ON_EXILE1_LADDER_CAMERA", 1500);  
---  CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_CAMERA", 0);  
---  CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_CAMERA", 3000);  
---  CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_FAMILY5_CAMERA", 0);  
--- CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_CAMERA", 0);  
--- 
--- @param camName string
--- @param p1 number
--- @return boolean
function SetFollowPedCamThisUpdate(camName, p1) end

--- 
--- Similar to _CLAMP_GAMEPLAY_CAM_PITCH except this is specifically for the FP camera, and it only lets you clamp the pitch within the normal range.  
--- 
--- @param minAngle number
--- @param maxAngle number
function SetFirstPersonCamPitchRange(minAngle, maxAngle) end

--- 
--- Sets the type of Player camera in vehicles:  
--- 0 - Third Person Close  
--- 1 - Third Person Mid  
--- 2 - Third Person Far  
--- 4 - First Person  
--- 
--- @param viewMode number
function SetFollowVehicleCamViewMode(viewMode) end


--- @param cam Cam
--- @param x number
--- @param y number
--- @param z number
function SetFlyCamCoordAndConstrain(cam, x, y, z) end


--- @param pitch number
function SetGameplayCamRawPitch(pitch) end


--- @param cam Cam
--- @param height number
function SetFlyCamMaxHeight(cam, height) end

--- 
--- Does nothing  
--- 
--- 
--- 
--- NativeDB Added Parameter 2: Any p1
--- 
--- @param yaw number
function SetGameplayCamRawYaw(yaw) end

--- 
--- Sets the type of Player camera:  
--- 0 - Third Person Close  
--- 1 - Third Person Mid  
--- 2 - Third Person Far  
--- 4 - First Person  
--- 
--- @param viewMode number
function SetFollowPedCamViewMode(viewMode) end

--- 
--- Sets the camera pitch.  
--- Parameters:  
--- x = pitches the camera on the x axis.  
--- Value2 = always seems to be hex 0x3F800000 (1.000000 float).  
--- 
--- @param x number
--- @param Value2 number
function SetGameplayCamRelativePitch(x, Value2) end


--- @param roll number
--- @param pitch number
--- @param yaw number
function SetGameplayCamRelativeRotation(roll, pitch, yaw) end

