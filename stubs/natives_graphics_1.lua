--- 
--- Pops and calls the Scaleform movie on the stack. Returns data from the function (not sure if this is a string).  
--- 
--- @return number
function EndScaleformMovieMethodReturnValue() end

--- 
--- Previously called _END_TEXT_COMPONENT  
--- 
function EndTextCommandScaleformString() end

--- 
--- Same as END_TEXT_COMMAND_SCALEFORM_STRING but does not perform HTML conversion for text tokens.
--- 
function EndTextCommandScaleformString2() end


--- @param p0 number
function FadeUpPedLight(p0) end

--- 
--- Fades nearby decals within the range specified  
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
function FadeDecalsInRange(p0, p1, p2, p3, p4) end


--- @param b boolean
--- @return number
function GetAspectRatio(b) end

--- 
--- Returns current screen resolution.  
--- 
--- @param x number
--- @param y number
function GetActiveScreenResolution(x, y) end


--- @param decal number
--- @return number
function GetDecalWashLevel(decal) end

--- 
--- GET_CURRENT_*
--- 
--- @return number
function GetCurrentNumberOfPhotos() end

--- 
--- false = Any resolution < 1280x720  
--- true = Any resolution >= 1280x720  
--- 
--- @return boolean
function GetIsHidef() end

--- See [GetTimecycleModifierIndex](#_0xFDF3D97C674AFB66) for use, works the same just for the secondary timecycle modifier.
--- @return number
function GetExtraTimecycleModifierIndex() end

--- 
--- Setting Aspect Ratio Manually in game will return:  
--- false - for Narrow format Aspect Ratios (3:2, 4:3, 5:4, etc. )  
--- true - for Wide format Aspect Ratios (5:3, 16:9, 16:10, etc. )  
--- Setting Aspect Ratio to "Auto" in game will return "false" or "true" based on the actual set Resolution Ratio.  
--- 
--- @return boolean
function GetIsWidescreen() end

--- 
--- only documented. to be continued...  
--- 
--- @param xCoord number
--- @param yCoord number
--- @param zCoord number
--- @param radius number
--- @return boolean
function GetIsPetrolDecalInRange(xCoord, yCoord, zCoord, radius) end

--- 
--- This function is hard-coded to always return 0.  
--- Limit is 96, see _GET_MAXIMUM_NUMBER_OF_PHOTOS_2 (0xDC54A7AF8B3A14EF).  
--- 
--- @return number
function GetMaximumNumberOfPhotos() end

--- 
--- This is the "actual" GET_MAXIMUM_NUMBER_OF_PHOTOS native. Always returns 96.  
--- 
--- @return number
function GetMaximumNumberOfCloudPhotos() end


--- @return boolean
function GetRequestingnightvision() end

--- 
--- Gets the scale of safe zone. if the safe zone size scale is max, it will return 1.0.  
--- 
--- @return number
function GetSafeZoneSize() end

--- Used to get a return value from a scaleform function.
--- Returns an int in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING returns a string.
--- 
--- Old description:
--- 
--- 
--- Needs a bit more research, but it seems to return an int.  
--- Testing with the scaleform "HACKING_PC" it seems to return an int depending on the clicked App/Program ID  
--- "agency_heist3b.ysc", line 71836:  
--- if (CONTROLS::IS_CONTROL_JUST_PRESSED(2, 201) || CONTROLS::IS_CONTROL_JUST_PRESSED(2, 237)) {  
---     GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD(l_46, "SET_INPUT_EVENT_SELECT");  
---     l_45 = GRAPHICS::_END_SCALEFORM_MOVIE_METHOD_RETURN();  
--- }  
--- if (GRAPHICS::IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY(l_45)) {  
---     v_13 = GRAPHICS::GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT(l_45);  
---     if (v_13 == 6) {  
---         sub_73269(a_0);  
---     }  
--- }  
--- 
--- @param method_return number
--- @return number
function GetScaleformMovieMethodReturnValueInt(method_return) end


--- @param returnValueData number
--- @return boolean
function GetScaleformMovieMethodReturnValueBool(returnValueData) end

--- Used to get a return value from a scaleform function.
--- Returns a string in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT returns an int.
--- @param method_return number
--- @return string
function GetScaleformMovieMethodReturnValueString(method_return) end

--- 
--- int screenresx,screenresy;  
--- GET_SCREEN_RESOLUTION(&screenresx,&screenresy);  
--- Hardcoded to always return 1280 x 720  
--- 
--- @param x number
--- @param y number
function GetScreenResolution(x, y) end

--- 
--- Convert a world coordinate into its relative screen coordinate.  (WorldToScreen)  
--- Returns a boolean; whether or not the operation was successful. It will return false if the coordinates given are not visible to the rendering camera.  
--- For .NET users...  
--- VB:  
--- Public Shared Function World3DToScreen2d(pos as vector3) As Vector2  
---         Dim x2dp, y2dp As New Native.OutputArgument  
---         Native.Function.Call(Of Boolean)(Native.Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.x, pos.y, pos.z, x2dp, y2dp)  
---         Return New Vector2(x2dp.GetResult(Of Single), y2dp.GetResult(Of Single))  
---     End Function  
--- C#:  
--- Vector2 World3DToScreen2d(Vector3 pos)  
---     {  
---         var x2dp = new OutputArgument();  
---         var y2dp = new OutputArgument();  
---         Function.Call<bool>(Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.X, pos.Y, pos.Z, x2dp, y2dp);  
---         return new Vector2(x2dp.GetResult<float>(), y2dp.GetResult<float>());  
---     }  
--- //USE VERY SMALL VALUES FOR THE SCALE OF RECTS/TEXT because it is dramatically larger on screen than in 3D, e.g '0.05' small.  
--- Used to be called _WORLD3D_TO_SCREEN2D  
--- I thought we lost you from the scene forever. It does seem however that calling SET_DRAW_ORIGIN then your natives, then ending it. Seems to work better for certain things such as keeping boxes around people for a predator missile e.g.  
--- 
--- @param worldX number
--- @param worldY number
--- @param worldZ number
--- @param screenX number
--- @param screenY number
--- @return boolean
function GetScreenCoordFromWorldCoord(worldX, worldY, worldZ, screenX, screenY) end

--- Calculates the effective X/Y fractions when applying the values set by SET_SCRIPT_GFX_ALIGN and
--- SET_SCRIPT_GFX_ALIGN_PARAMS.
--- @param x number
--- @param y number
--- @param calculatedX number
--- @param calculatedY number
function GetScriptGfxPosition(x, y, calculatedX, calculatedY) end

--- 
--- Only use for this in the PC scripts is:  
--- if (GRAPHICS::GET_TIMECYCLE_MODIFIER_INDEX() != -1)  
--- For a full list, see here: pastebin.com/cnk7FTF2  
--- can someone update this pastebin???  
--- 
--- @return number
function GetTimecycleModifierIndex() end


--- @return boolean
function GetTogglePausedRenderphasesStatus() end

--- 
--- Returns the texture resolution of the passed texture dict+name.  
--- Note: Most texture resolutions are doubled compared to the console version of the game.  
--- 
--- @param textureDict string
--- @param textureName string
--- @return vector3
function GetTextureResolution(textureDict, textureName) end


--- @return number
function GetTvVolume() end

--- 
--- Gets whether or not NIGHTVISION is Active.  
--- Note:  When nightvision is actually active, this native will return TRUE!  
--- 
--- @return boolean
function GetUsingnightvision() end


--- @return number
function GetTimecycleTransitionModifierIndex() end


--- @return number
function GolfTrailGetMaxHeight() end


--- @return number
function GetTvChannel() end

--- 
--- Returns whether or not SEETHROUGH is active.  
--- 
--- @return boolean
function GetUsingseethrough() end

--- 
--- Only used in the golf and golf_mp script  
--- 
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
--- @param p10 number
--- @param p11 number
function GolfTrailSetColour(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end


--- @param vehicle Vehicle
--- @param p1 number
--- @return number
function GetVehicleCrewEmblemRequestState(vehicle, p1) end


--- @param toggle boolean
function GolfTrailSetEnabled(toggle) end


--- @param p0 number
--- @return vector3
function GolfTrailGetVisualControlPoint(p0) end

--- 
--- 12 matches across 4 scripts. All 4 scripts were job creators.
--- type ranged from 0 - 2.
--- p4 was always 0.2f. Likely scale.
--- assuming p5 - p8 is RGBA, the graphic is always yellow (255, 255, 0, 255).
--- Tested but noticed nothing.
--- 
--- @param type number
--- @param xPos number
--- @param yPos number
--- @param zPos number
--- @param p4 number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function GolfTrailSetFixedControlPoint(type, xPos, yPos, zPos, p4, red, green, blue, alpha) end


--- @param p0 boolean
function GolfTrailSetFacing(p0) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
function GolfTrailSetRadius(p0, p1, p2) end

--- 
--- p8 seems to always be false.  
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 boolean
function GolfTrailSetPath(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- 
--- Only appeared in Golf & Golf_mp. Parameters were all ptrs  
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
function GolfTrailSetShaderParams(p0, p1, p2, p3, p4) end


--- @param p0 number
--- @param p1 number
function GolfTrailSetTessellation(p0, p1) end


function GrassLodResetScriptAreas() end

--- 
--- Wraps 0xAAE9BE70EC7C69AB with FLT_MAX as p7
--- Jenkins: 0x73E96210?
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param p4 number
--- @param p5 number
--- @param p6 number
function GrassLodShrinkScriptAreas(x, y, z, radius, p4, p5, p6) end

--- 
--- Pretty sure it's the real name (not 100% sure so I added the _ prefix); can someone else confirm it?  
--- Only values used in the scripts are:  
--- "heist_mp"  
--- "heistmap_mp"  
--- "instructional_buttons"  
--- "heist_pre"  
--- 
--- @param scaleformName string
--- @return boolean
function HasScaleformMovieFilenameLoaded(scaleformName) end


--- @param scaleformHandle number
--- @return boolean
function HasScaleformContainerMovieLoadedIntoParent(scaleformHandle) end


--- @param textureDict string
--- @return boolean
function HasStreamedTextureDictLoaded(textureDict) end


--- @param scaleformHandle number
--- @return boolean
function HasScaleformMovieLoaded(scaleformHandle) end


--- @return number
function IsParticleFxDelayedBlink() end

--- 
--- Check to see if hud component Scaleform has loaded?  
--- 
--- @param hudComponent number
--- @return boolean
function HasScaleformScriptHudMovieLoaded(hudComponent) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param tvChannel number
--- @param p1 any
--- @return boolean
function IsPlaylistUnk(tvChannel, p1) end


--- @return boolean
function IsScreenblurFadeRunning() end


--- @param decal number
--- @return boolean
function IsDecalAlive(decal) end

--- 
--- IS_*
--- 
--- @param videoCliphash Hash
--- @return boolean
function IsTvPlaylistItemPlaying(videoCliphash) end

--- Returns true if the return value of a scaleform function is ready to be collected (using GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING or GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT).
--- 
--- Old description/example:
--- 
--- 
--- Seems to take data that is returned from "_POP_SCALEFORM_MOVIE_FUNCTION" and checks to see if it's not null/empty.  
--- "agency_heist3b.ysc", line 71836:  
--- if (CONTROLS::IS_CONTROL_JUST_PRESSED(2, 201) || CONTROLS::IS_CONTROL_JUST_PRESSED(2, 237)) {  
---     GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD(l_46, "SET_INPUT_EVENT_SELECT");  
---     l_45 = GRAPHICS::_END_SCALEFORM_MOVIE_METHOD_RETURN();  
--- }  
--- if (GRAPHICS::IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY(l_45)) {  
---     v_13 = GRAPHICS::GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT(l_45);  
---     if (v_13 == 6) {  
---         sub_73269(a_0);  
---     }  
--- }  
--- 
--- @param method_return number
--- @return boolean
function IsScaleformMovieMethodReturnValueReady(method_return) end


--- @param p0 any
--- @param p1 any
function MoveVehicleDecals(p0, p1) end


--- @param point number
--- @return boolean
function IsTrackedPointVisible(point) end


--- @param movieMeshSetName string
--- @return number
function LoadMovieMeshSet(movieMeshSetName) end

--- 
--- REQUEST_STREAMED_TEXTURE_DICT("MPOnMissMarkers", false);  
--- *uParam0.f_809 = add_decal(9120, vParam1, vVar4, vVar7, 2f, 2f, to_float(iVar0) / 255f, to_float(iVar1) / 255f, to_float(iVar2) / 255f, 1f, -1f, 1, 0, 0);  
--- _0x8A35C742130C6080(9120, "MPOnMissMarkers", "Capture_The_Flag_Base_Icon");  
--- 
--- @param decalType number
--- @param textureDict string
--- @param textureName string
function OverrideDecalTexture(decalType, textureDict, textureName) end


--- @param level number
function OverrideInteriorSmokeLevel(level) end


--- @param name string
function OverrideInteriorSmokeName(name) end


function PopTimecycleModifier() end


function PushTimecycleModifier() end


function OverrideInteriorSmokeEnd() end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param binkMovie number
function ReleaseBinkMovie(binkMovie) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param binkMovie number
function PlayBinkMovie(binkMovie) end


--- @param decal number
function RemoveDecal(decal) end

--- 
--- Only one match in the scripts:
--- GRAPHICS::PRESET_INTERIOR_AMBIENT_CACHE("int_carrier_hanger");
--- 
--- @param timecycleModifierName string
function PresetInteriorAmbientCache(timecycleModifierName) end


--- @param obj Object
--- @param x number
--- @param y number
--- @param z number
function RemoveDecalsFromObjectFacing(obj, x, y, z) end


--- @param movieMeshSet number
function ReleaseMovieMeshSet(movieMeshSet) end

--- 
--- Removes all decals in range from a position, it includes the bullet holes, blood pools, petrol...  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param range number
function RemoveDecalsInRange(x, y, z, range) end


--- @param obj Object
function RemoveDecalsFromObject(obj) end


--- @param vehicle Vehicle
function RemoveDecalsFromVehicle(vehicle) end


--- @param ptfxHandle number
--- @param p1 boolean
function RemoveParticleFx(ptfxHandle, p1) end


--- @param entity Entity
function RemoveParticleFxFromEntity(entity) end


--- @param X number
--- @param Y number
--- @param Z number
--- @param radius number
function RemoveParticleFxInRange(X, Y, Z, radius) end

--- 
--- Another function related to "HUD scaleforms"  
--- 
--- @param hudComponent number
function RemoveScaleformScriptHudMovie(hudComponent) end


--- @param vehicle Vehicle
--- @param p1 number
function RemoveVehicleCrewEmblem(vehicle, p1) end

--- 
--- GTA V Scaleforms Decompiled  
--- pastebin.com/mmNdjX2k  
--- Gets a new native after almost every update.  
--- Update 1.0.393.2  
--- 0x67D02A194A2FC2BD  
--- Update 1.0.463.1  
--- 0xC97D787CE7726A2F  
--- Update 1.0.505.2  
--- 0x36ECDA4DD9A3F08D  
--- Update 1.0.573.1  
--- 0xE3C796DC28BC3254  
--- Update 1.0.678.1  
--- 0x2F14983962462691  
--- 
--- @param scaleformName string
--- @return number
function RequestScaleformMovie(scaleformName) end

--- 
--- Also used by 0x67D02A194A2FC2BD  
--- 
--- @param scaleformName string
--- @return number
function RequestScaleformMovieInstance(scaleformName) end

--- Another [REQUEST_SCALEFORM_MOVIE](#_0x11FE353CF9733E6F) equivalent.
--- @param scaleformName string
--- @return number
function RequestScaleformMovie2(scaleformName) end

--- 
--- last param seems to be unused in disassembly  
--- 
--- @param textureDict string
--- @param p1 boolean
function RequestStreamedTextureDict(textureDict, p1) end

--- 
--- Similar to REQUEST_SCALEFORM_MOVIE, but seems to be some kind of "interactive" scaleform movie?  
--- These seem to be the only scaleforms ever requested by this native:  
--- "breaking_news"  
--- "desktop_pc"  
--- "ECG_MONITOR"  
--- "Hacking_PC"  
--- "TEETH_PULLING"  
--- Note: Unless this hash is out-of-order, this native is next-gen only.  
--- 
--- @param scaleformName string
--- @return number
function RequestScaleformMovieInteractive(scaleformName) end

--- 
--- http://gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/?p=1068285912  
--- 
--- @param hudComponent number
function RequestScaleformScriptHudMovie(hudComponent) end

--- 
--- Resets the effect of _SET_PARTICLE_FX_ASSET_OLD_TO_NEW  
--- 
--- @param name string
function ResetParticleFxOverride(name) end

--- This function resets the alignment set using SET_SCRIPT_GFX_ALIGN and SET_SCRIPT_GFX_ALIGN_PARAMS to the default
--- values ('I', 'I'; 0, 0, 0, 0). This should be used after having used the aforementioned functions in order to not affect
--- any other scripts attempting to draw.
function ResetScriptGfxAlign() end

--- Resets the extra timecycle modifier strength normally set with [SetExtraTimecycleModifierStrength](#_0x2C328AF17210F009)
function ResetExtraTimecycleModifierStrength() end

--- 
--- Pushes a boolean for the Scaleform function onto the stack.  
--- 
--- @param value boolean
function ScaleformMovieMethodAddParamBool(value) end


function ResetPausedRenderphases() end

--- 
--- Pushes an integer for the Scaleform function onto the stack.  
--- 
--- @param value number
function ScaleformMovieMethodAddParamInt(value) end

--- 
--- It returns two lol  
--- li r3, 2  
--- blr  
--- thats all it does.  
--- mov dword ptr [rax], 2  
--- Заебись функционал  
--- 
--- @param p0 number
--- @return number
function ReturnTwo(p0) end


--- @param value number
function ScaleformMovieMethodAddParamLatestBriefString(value) end

--- 
--- Pushes a float for the Scaleform function onto the stack.  
--- 
--- @param value number
function ScaleformMovieMethodAddParamFloat(value) end


--- @param string string
function ScaleformMovieMethodAddParamTextureNameString(string) end

--- 
--- This method is the equivalent to PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING when using it to add a new button (like "INSTRUCTIONAL_BUTTONS").  
--- When switching with a controller, the icons update and become the controller's icons.  
--- 
--- @param string string
function ScaleformMovieMethodAddParamPlayerNameString(string) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @return number
function SeethroughGetMaxThickness() end


--- @param red number
--- @param green number
--- @param blue number
function SeethroughSetColorNear(red, green, blue) end

--- GRAPHICS::\_0x77FE3402004CD1B0(HUD::\_GET_LABEL_TEXT("YACHT_GSY"));
--- GRAPHICS::\_0x77FE3402004CD1B0(PLAYER::GET_PLAYER_NAME(PLAYER::PLAYER_ID()));
--- 
--- Both \_0xBA7148484BD90365 / \_0x77FE3402004CD1B0 works, but \_0x77FE3402004CD1B0 is usually used for "name" (organisation, players..).
--- @param string string
function ScaleformMovieMethodAddParamTextureNameString2(string) end


--- @param distance number
function SeethroughSetFadeStartDistance(distance) end

--- 
--- NativeDB Introduced: v323
--- 
function SeethroughReset() end


--- @param distance number
function SeethroughSetFadeEndDistance(distance) end


--- @param index number
--- @param heatScale number
function SeethroughSetHeatscale(index, heatScale) end


--- @param intensity number
function SeethroughSetHiLightIntensity(intensity) end


--- @param thickness number
function SeethroughSetMaxThickness(thickness) end


--- @param noise number
function SeethroughSetHiLightNoise(noise) end


--- @param amount number
function SeethroughSetNoiseAmountMax(amount) end


--- @param amount number
function SeethroughSetNoiseAmountMin(amount) end

--- Does not affect weapons, particles, fire/explosions, flashlights or the sun.
--- 
--- When set to true, all emissive textures (including ped components that have light effects), street lights, building lights, vehicle lights, etc will all be turned off.
--- 
--- Used in Humane Labs Heist for EMP.
--- @param state boolean
function SetArtificialLightsState(state) end

--- 
--- Dr. Underscore (1/6/18):  
--- Found only in all creator scripts. (fm_capture_creator, fm_deathmatch_creator, fm_lts_creator, fm_mission_controller, fm_race_creator)  
--- Used in-between DRAW_* calls (DRAW_POLY specifically).  
--- 
--- @param toggle boolean
function SetBackfaceculling(toggle) end

--- 
--- In percentage: 0.0 - 100.0
--- 
--- NativeDB Introduced: v1290
--- 
--- @param binkMovie number
--- @param progress number
function SetBinkMovieProgress(binkMovie, progress) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param binkMovie number
--- @param value number
function SetBinkMovieUnk(binkMovie, value) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param name string
--- @return number
function SetBinkMovieRequested(name) end

--- 
--- Sets the cylinder height of the checkpoint.  
--- Parameters:  
--- * nearHeight - The height of the checkpoint when inside of the radius.  
--- * farHeight - The height of the checkpoint when outside of the radius.  
--- * radius - The radius of the checkpoint.  
--- 
--- @param checkpoint number
--- @param nearHeight number
--- @param farHeight number
--- @param radius number
function SetCheckpointCylinderHeight(checkpoint, nearHeight, farHeight, radius) end

--- 
--- Sets the checkpoint icon color.  
--- 
--- @param checkpoint number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function SetCheckpointIconRgba(checkpoint, red, green, blue, alpha) end

--- 
--- Sets the checkpoint color.  
--- 
--- @param checkpoint number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function SetCheckpointRgba(checkpoint, red, green, blue, alpha) end

--- 
--- p0 - Scale? Looks to be a normalized value (0.0 - 1.0)  
--- offroad_races.c4, line ~67407:  
--- a_3._f7 = GRAPHICS::CREATE_CHECKPOINT(v_D, v_A, a_4, a_7, v_E, v_F, v_10, sub_62b2(v_A, 220, 255), 0);  
--- UI::GET_HUD_COLOUR(134, &v_E, &v_F, &v_10, &v_11);  
--- GRAPHICS::_SET_CHECKPOINT_ICON_RGBA(a_3._f7, v_E, v_F, v_10, sub_62b2(v_A, 70, 210));  
--- GRAPHICS::_4B5B4DA5D79F1943(a_3._f7, 0.95);  
--- GRAPHICS::SET_CHECKPOINT_CYLINDER_HEIGHT(a_3._f7, 4.0, 4.0, 100.0);  
--- 
--- @param checkpoint number
--- @param p0 number
function SetCheckpointScale(checkpoint, p0) end


--- @param modifierName string
function SetCurrentPlayerTcmodifier(modifierName) end

--- 
--- NOTE: Debugging functions are not present in the retail version of the game.  
--- 
--- @param enabled boolean
function SetDebugLinesAndSpheresDrawingActive(enabled) end


--- @param entity Entity
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function SetEntityIconColor(entity, red, green, blue, alpha) end

--- 
--- Sets the on-screen drawing origin for draw-functions (which is normally x=0,y=0 in the upper left corner of the screen) to a world coordinate.  
--- From now on, the screen coordinate which displays the given world coordinate on the screen is seen as x=0,y=0.  
--- Example in C#:  
--- Vector3 boneCoord = somePed.GetBoneCoord(Bone.SKEL_Head);  
--- Function.Call(Hash.SET_DRAW_ORIGIN, boneCoord.X, boneCoord.Y, boneCoord.Z, 0);  
--- Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, -0.015, 0.013, 0.013, 0.0, 255, 0, 0, 200);  
--- Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, -0.015, 0.013, 0.013, 90.0, 255, 0, 0, 200);  
--- Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, 0.015, 0.013, 0.013, 270.0, 255, 0, 0, 200);  
--- Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, 0.015, 0.013, 0.013, 180.0, 255, 0, 0, 200);  
--- Function.Call(Hash.CLEAR_DRAW_ORIGIN);  
--- Result: www11.pic-upload.de/19.06.15/bkqohvil2uao.jpg  
--- If the pedestrian starts walking around now, the sprites are always around her head, no matter where the head is displayed on the screen.  
--- This function also effects the drawing of texts and other UI-elements.  
--- The effect can be reset by calling GRAPHICS::CLEAR_DRAW_ORIGIN().  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param p3 any
function SetDrawOrigin(x, y, z, p3) end


--- @param entity Entity
--- @param toggle boolean
function SetEntityIconVisibility(entity, toggle) end

--- Sets a secondary timecycle modifier.
--- @param modifierName string
function SetExtraTimecycleModifier(modifierName) end

--- The same as [SetTimecycleModifierStrength](#_0x82E7FFCD5B2326B3) but for the secondary tiemcycle modifier.
--- @param strength number
function SetExtraTimecycleModifierStrength(strength) end

--- 
--- When this is set to ON, shadows only draw as you get nearer.  
--- When OFF, they draw from a further distance. (((BUT))) f*ck up nearer shadows quality.  
--- 
--- @param toggle boolean
function SetFarShadowsSuppressed(toggle) end

--- 
--- Purpose of p0 and p1 unknown.  
--- 
--- @param p0 number
--- @param p1 number
--- @param fadeIn number
--- @param duration number
--- @param fadeOut number
function SetFlash(p0, p1, fadeIn, duration, fadeOut) end

--- 
--- Forces footstep tracks on all surfaces.  
--- 
--- @param toggle boolean
function SetForcePedFootstepsTracks(toggle) end

--- 
--- Forces vehicle trails on all surfaces.  
--- 
--- @param toggle boolean
function SetForceVehicleTrails(toggle) end


--- @param p0 boolean
--- @param p1 boolean
--- @param nearplaneOut number
--- @param nearplaneIn number
--- @param farplaneOut number
--- @param farplaneIn number
function SetHidofOverride(p0, p1, nearplaneOut, nearplaneIn, farplaneOut, farplaneIn) end

--- 
--- Something to do with timecycles.  
--- 
--- @param modifierName string
function SetNextPlayerTcmodifier(modifierName) end

--- 
--- Enables Night Vision.  
--- Example:  
--- C#: Function.Call(Hash.SET_NIGHTVISION, true);  
--- C++: GRAPHICS::SET_NIGHTVISION(true);  
--- BOOL toggle:  
--- true = turns night vision on for your player.  
--- false = turns night vision off for your player.  
--- 
--- @param toggle boolean
function SetNightvision(toggle) end


--- @param toggle boolean
function SetNoiseoveride(toggle) end


--- @param value number
function SetNoisinessoveride(value) end


--- @param vehicle Vehicle
--- @param p1 boolean
function SetParticleFxCamInsideNonplayerVehicle(vehicle, p1) end


--- @param p0 boolean
function SetParticleFxCamInsideVehicle(p0) end


--- @param ptfxHandle number
--- @param alpha number
function SetParticleFxLoopedAlpha(ptfxHandle, alpha) end

--- 
--- only works on some fx's  
--- p4 = 0  
--- 
--- @param ptfxHandle number
--- @param r number
--- @param g number
--- @param b number
--- @param p4 boolean
function SetParticleFxLoopedColour(ptfxHandle, r, g, b, p4) end

--- 
--- Should be named SET_PARTICLE_FX_LOOPED_PROPERTY. "Evolution" doesn't make much sense...  
--- --------  
--- p4 seems to be always 0.  
--- Usage:  
--- if (!GRAPHICS::DOES_PARTICLE_FX_LOOPED_EXIST(l_25C7)) {  
---       l_25C7 = GRAPHICS::_DDE23F30CC5A0F03("scr_veh_plane_gen_damage", l_8B9, l_25C4, 0.0, 0.0, 0.0, ENTITY::_GET_ENTITY_BONE_INDEX(l_8B9, "exhaust"), 1.0, 0, 0, 0);  
---       GRAPHICS::SET_PARTICLE_FX_LOOPED_EVOLUTION(l_25C7, "damage_smoke", 0.5, 0);  
---       GRAPHICS::SET_PARTICLE_FX_LOOPED_EVOLUTION(l_25C7, "damage_fire", 0.2, 0);  
---       }  
--- 
--- @param ptfxHandle number
--- @param propertyName string
--- @param amount number
--- @param noNetwork boolean
function SetParticleFxLoopedEvolution(ptfxHandle, propertyName, amount, noNetwork) end


--- @param ptfxHandle number
--- @param range number
function SetParticleFxLoopedFarClipDist(ptfxHandle, range) end


--- @param ptfxHandle number
--- @param x number
--- @param y number
--- @param z number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
function SetParticleFxLoopedOffsets(ptfxHandle, x, y, z, rotX, rotY, rotZ) end


--- @param ptfxHandle number
--- @param scale number
function SetParticleFxLoopedScale(ptfxHandle, scale) end

--- 
--- Usage example for C#:  
--- Function.Call(Hash.SET_PARTICLE_FX_NON_LOOPED_ALPHA, new InputArgument[] { 0.1f });  
--- 		Note: the argument alpha ranges from 0.0f-1.0f !  
--- 
--- @param alpha number
function SetParticleFxNonLoopedAlpha(alpha) end

--- only works on some fx's, not networked
--- @param r number
--- @param g number
--- @param b number
function SetParticleFxNonLoopedColour(r, g, b) end


--- @param p0 any
function SetParticleFxShootoutBoat(p0) end


--- @param oldAsset string
--- @param newAsset string
function SetParticleFxOverride(oldAsset, newAsset) end


--- @param scaleformHandle number
function SetScaleformMovieAsNoLongerNeeded(scaleformHandle) end


--- @param value number
function SetPlayerTcmodifierTransition(value) end

--- This function anchors script draws to a side of the safe zone. This needs to be called to make the interface
--- independent of the player's safe zone configuration.
--- 
--- These values are equivalent to alignX and alignY in common:/data/ui/frontend.xml, which can be used as a baseline
--- for default alignment.
--- 
--- Valid values for horizontalAlign, from original documentation:
--- 
--- -   **C (67)** - Center: DRAW_TEXT starts in the middle of the screen, while DRAW_RECT starts on the right; both move with
---     the right side of the screen.
--- -   **L (76)** - Left: Anchors to the left side, DRAW_RECT starts on the left side of the screen, same as DRAW_TEXT when
---     centered.
--- -   **R (82)** - Right: DRAW_TEXT starts on the left side (normal 0,0), while DRAW_RECT starts some short distance away
---     from the right side of the screen, both move with the right side of the screen.
--- 
--- Valid values for verticalAlign, from original documentation:
--- 
--- -   **B (66)** - Bottom: DRAW_RECT starts about as far as the middle of the map from the bottom, while DRAW_TEXT is about
---     rather centered.
--- -   **C (67)** - Center: It starts at a certain distance from the bottom, but the distance is fixed, the distance is
---     different from 66.
--- -   **T (84)** - Top: Anchors to the top, DRAW_RECT starts on the top of the screen, DRAW_TEXT just below it.
--- 
--- Using any other value (including 0) will result in the safe zone not being taken into account for this draw. The
--- canonical value for this is 'I' (73).
--- 
--- For example, you can use SET_SCRIPT_GFX_ALIGN(0, 84) to only scale on the Y axis (to the top), but not change the X
--- axis.
--- 
--- To reset the value, use RESET_SCRIPT_GFX_ALIGN.
--- @param horizontalAlign number
--- @param verticalAlign number
function SetScriptGfxAlign(horizontalAlign, verticalAlign) end

