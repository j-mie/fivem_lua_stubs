--- 
--- Example:  
--- GRAPHICS::ADD_ENTITY_ICON(a_0, "MP_Arrow");  
--- I tried this and nothing happened...  
--- 
--- @param entity Entity
--- @param icon string
--- @return any
function AddEntityIcon(entity, icon) end


--- @param x number
--- @param y number
--- @param z number
--- @param p3 number
function AddPetrolTrailDecalInfo(x, y, z, p3) end

--- 
--- decal types:  
--- public enum DecalTypes  
--- {  
---     splatters_blood = 1010,  
---     splatters_blood_dir = 1015,  
---     splatters_blood_mist = 1017,  
---     splatters_mud = 1020,  
---     splatters_paint = 1030,  
---     splatters_water = 1040,  
---     splatters_water_hydrant = 1050,  
---     splatters_blood2 = 1110,  
---     weapImpact_metal = 4010,  
---     weapImpact_concrete = 4020,  
---     weapImpact_mattress = 4030,  
---     weapImpact_mud = 4032,  
---     weapImpact_wood = 4050,  
---     weapImpact_sand = 4053,  
---     weapImpact_cardboard = 4040,  
---     weapImpact_melee_glass = 4100,  
---     weapImpact_glass_blood = 4102,  
---     weapImpact_glass_blood2 = 4104,  
---     weapImpact_shotgun_paper = 4200,  
---     weapImpact_shotgun_mattress,  
---     weapImpact_shotgun_metal,  
---     weapImpact_shotgun_wood,  
---     weapImpact_shotgun_dirt,  
---     weapImpact_shotgun_tvscreen,  
---     weapImpact_shotgun_tvscreen2,  
---     weapImpact_shotgun_tvscreen3,  
---     weapImpact_melee_concrete = 4310,  
---     weapImpact_melee_wood = 4312,  
---     weapImpact_melee_metal = 4314,  
---     burn1 = 4421,  
---     burn2,  
---     burn3,  
---     burn4,  
---     burn5,  
---     bang_concrete_bang = 5000,  
---     bang_concrete_bang2,  
---     bang_bullet_bang,  
---     bang_bullet_bang2 = 5004,  
---     bang_glass = 5031,  
---     bang_glass2,  
---     solidPool_water = 9000,  
---     solidPool_blood,  
---     solidPool_oil,  
---     solidPool_petrol,  
---     solidPool_mud,  
---     porousPool_water,  
---     porousPool_blood,  
---     porousPool_oil,  
---     porousPool_petrol,  
---     porousPool_mud,  
---     porousPool_water_ped_drip,  
---     liquidTrail_water = 9050  
--- }  
--- 
--- @param decalType number
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param width number
--- @param height number
--- @param rCoef number
--- @param gCoef number
--- @param bCoef number
--- @param opacity number
--- @param timeout number
--- @param p17 boolean
--- @param p18 boolean
--- @param p19 boolean
--- @return number
function AddDecal(decalType, posX, posY, posZ, p4, p5, p6, p7, p8, p9, width, height, rCoef, gCoef, bCoef, opacity, timeout, p17, p18, p19) end


--- @param x number
--- @param y number
--- @param z number
--- @param groundLvl number
--- @param width number
--- @param transparency number
--- @return any
function AddPetrolDecal(x, y, z, groundLvl, width, transparency) end

--- 
--- Now has 15 parameters, previous declaration:  
--- BOOL _0x428BDCB9DA58DA53(Any p0, Any p1, Any p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9, float p10, float p11, float p12, Any p13)  
--- boneIndex is always chassis_dummy in the scripts. The x/y/z params are location relative to the chassis bone. They are usually rotations and measurements. Haven't reversed which are what yet.  
--- Scale is how big the decal will be.  
--- p13 is always 0.  
--- For alpha, 200 seems to match what the game is doing, I think. I don't have access to the new scripts to see what this parameter is, but based on guessing this seems (kind of) accurate.  
--- 
--- @param vehicle Vehicle
--- @param ped Ped
--- @param boneIndex number
--- @param x1 number
--- @param x2 number
--- @param x3 number
--- @param y1 number
--- @param y2 number
--- @param y3 number
--- @param z1 number
--- @param z2 number
--- @param z3 number
--- @param scale number
--- @param p13 any
--- @param alpha number
--- @return boolean
function AddVehicleCrewEmblem(vehicle, ped, boneIndex, x1, x2, x3, y1, y2, y3, z1, z2, z3, scale, p13, alpha) end


--- @param modifierName1 string
--- @param modifierName2 string
function AddTcmodifierOverride(modifierName1, modifierName2) end


--- @param effectName string
--- @return number
function AnimpostfxGetUnk(effectName) end

--- 
--- playLength - is how long to play the effect for in milliseconds. If 0, it plays the default length  
--- if loop is true, the effect wont stop until you call _STOP_SCREEN_EFFECT on it. (only loopable effects)  
--- Example and list of screen FX: www.pastebin.com/dafBAjs0  
--- 
--- @param effectName string
--- @param duration number
--- @param looped boolean
function AnimpostfxPlay(effectName, duration, looped) end

--- 
--- Returns whether the specified screen effect is active.  
--- See the effects list in _START_SCREEN_EFFECT  
--- Example and list of screen FX: www.pastebin.com/dafBAjs0  
--- 
--- @param effectName string
--- @return boolean
function AnimpostfxIsRunning(effectName) end

--- 
--- Example and list of screen FX: www.pastebin.com/dafBAjs0  
--- 
--- @param effectName string
function AnimpostfxStop(effectName) end


function AnimpostfxStopAll() end

--- 
--- "SwitchHUDFranklinOut",  
--- "SwitchHUDMichaelOut",  
--- "SwitchHUDOut",  
--- "SwitchHUDTrevorOut",  
--- "SwitchOpenFranklinOut",  
--- "SwitchOpenMichaelIn",  
--- "SwitchOpenNeutral"  
--- 
--- @param effectName string
function AnimpostfxStopAndDoUnk(effectName) end

--- 
--- Might be more appropriate in AUDIO?  
--- 
--- @param entity Entity
function AttachTvAudioToEntity(entity) end

--- 
--- Push a function from the Scaleform onto the stack  
--- 
--- @param scaleform number
--- @param methodName string
--- @return boolean
function BeginScaleformMovieMethod(scaleform, methodName) end

--- Starts frontend (pause menu) scaleform movie methods.
--- This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.
--- 
--- Use [BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER](#_0xB9449845F73F5E9C) for header scaleform functions.
--- @param functionName string
--- @return boolean
function BeginScaleformMovieMethodOnFrontend(functionName) end

--- Starts frontend (pause menu) scaleform movie methods for header options.
--- 
--- Use [BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND](#_0xAB58C27C2E6123C6) to customize the content inside the frontend menus.
--- @param functionName string
--- @return boolean
function BeginScaleformMovieMethodOnFrontendHeader(functionName) end

--- 
--- Pushes a function from the Hud component Scaleform onto the stack. Same behavior as GRAPHICS::_PUSH_SCALEFORM_MOVIE_FUNCTION, just a hud component id instead of a Scaleform.  
--- Known components:  
--- 19   
--- 20   
--- This native requires more research - all information can be found inside of 'hud.gfx'. Using a decompiler, the different components are located under "scripts\__Packages\com\rockstargames\gtav\hud\hudComponents" and "scripts\__Packages\com\rockstargames\gtav\Multiplayer".  
--- 
--- @param hudComponent number
--- @param methodName string
--- @return boolean
function BeginScaleformScriptHudMovieMethod(hudComponent, methodName) end

--- 
--- Previously called _BEGIN_TEXT_COMPONENT  
--- Called prior to adding a text component to the UI. After doing so, GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING is called.  
--- Examples:  
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("NUMBER");  
--- UI::ADD_TEXT_COMPONENT_INTEGER(GAMEPLAY::ABSI(a_1));  
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRING");  
--- UI::_ADD_TEXT_COMPONENT_STRING(a_2);  
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM2");  
--- UI::_0x17299B63C7683A2B(v_3);  
--- UI::_0x17299B63C7683A2B(v_4);  
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM1");  
--- UI::_0x17299B63C7683A2B(v_3);  
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
--- 
--- @param componentType string
function BeginTextCommandScaleformString(componentType) end

--- 
--- Calls the Scaleform function.  
--- 
--- @param scaleform number
--- @param method string
function CallScaleformMovieMethod(scaleform, method) end

--- 
--- Calls the Scaleform function and passes the parameters as floats.  
--- The number of parameters passed to the function varies, so the end of the parameter list is represented by -1.0.  
--- 
--- @param scaleform number
--- @param methodName string
--- @param param1 number
--- @param param2 number
--- @param param3 number
--- @param param4 number
--- @param param5 number
function CallScaleformMovieMethodWithNumber(scaleform, methodName, param1, param2, param3, param4, param5) end


function CascadeshadowsResetType() end

--- 
--- Calls the Scaleform function and passes both float and string parameters (in their respective order).  
--- The number of parameters passed to the function varies, so the end of the float parameters is represented by -1.0, and the end of the string parameters is represented by 0 (NULL).  
--- NOTE: The order of parameters in the function prototype is important! All float parameters must come first, followed by the string parameters.  
--- Examples:  
--- // function MY_FUNCTION(floatParam1, floatParam2, stringParam)  
--- GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION", 10.0, 20.0, -1.0, -1.0, -1.0, "String param", 0, 0, 0, 0);  
--- // function MY_FUNCTION_2(floatParam, stringParam1, stringParam2)  
--- GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION_2", 10.0, -1.0, -1.0, -1.0, -1.0, "String param #1", "String param #2", 0, 0, 0);  
--- 
--- @param scaleform number
--- @param methodName string
--- @param floatParam1 number
--- @param floatParam2 number
--- @param floatParam3 number
--- @param floatParam4 number
--- @param floatParam5 number
--- @param stringParam1 string
--- @param stringParam2 string
--- @param stringParam3 string
--- @param stringParam4 string
--- @param stringParam5 string
function CallScaleformMovieMethodWithNumberAndString(scaleform, methodName, floatParam1, floatParam2, floatParam3, floatParam4, floatParam5, stringParam1, stringParam2, stringParam3, stringParam4, stringParam5) end

--- 
--- Has something to do with player switch.  
--- Only possible values:  
--- - "CSM_ST_BOX3x3"  
--- 
--- @param type string
function CascadeshadowsSetType(type) end

--- 
--- Calls the Scaleform function and passes the parameters as strings.  
--- The number of parameters passed to the function varies, so the end of the parameter list is represented by 0 (NULL).  
--- 
--- @param scaleform number
--- @param methodName string
--- @param param1 string
--- @param param2 string
--- @param param3 string
--- @param param4 string
--- @param param5 string
function CallScaleformMovieMethodWithString(scaleform, methodName, param1, param2, param3, param4, param5) end

--- Clears the secondary timecycle modifier usually set with [SetExtraTimecycleModifier](#_0x5096FD9CCB49056D)
function ClearExtraTimecycleModifier() end

--- 
--- Resets the screen's draw-origin which was changed by the function GRAPHICS::SET_DRAW_ORIGIN(...) back to x=0,y=0.  
--- See GRAPHICS::SET_DRAW_ORIGIN(...) for further information.  
--- 
function ClearDrawOrigin() end

--- 
--- Creates a checkpoint. Returns the handle of the checkpoint.  
--- 20/03/17 : Attention, checkpoints are already handled by the game itself, so you must not loop it like markers.  
--- Parameters:  
--- * type - The type of checkpoint to create. See below for a list of checkpoint types.  
--- * pos1 - The position of the checkpoint.  
--- * pos2 - The position of the next checkpoint to point to.  
--- * radius - The radius of the checkpoint.  
--- * color - The color of the checkpoint.  
--- * reserved - Special parameter, see below for details. Usually set to 0 in the scripts.  
--- Checkpoint types:  
--- 0-4---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
--- 5-9---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
--- 10-14-------Ring: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
--- 15-19-------1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker        
--- 20-24-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
--- 25-29-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker      
--- 30-34-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
--- 35-38-------Ring: Airplane Up, Left, Right, UpsideDown  
--- 39----------?  
--- 40----------Ring: just a ring  
--- 41----------?  
--- 42-44-------Cylinder w/ number (uses 'reserved' parameter)  
--- 45-47-------Cylinder no arrow or number  
--- If using type 42-44, reserved sets number / number and shape to display  
--- 0-99------------Just numbers (0-99)  
--- 100-109-----------------Arrow (0-9)  
--- 110-119------------Two arrows (0-9)  
--- 120-129----------Three arrows (0-9)  
--- 130-139----------------Circle (0-9)  
--- 140-149------------CycleArrow (0-9)  
--- 150-159----------------Circle (0-9)  
--- 160-169----Circle  w/ pointer (0-9)  
--- 170-179-------Perforated ring (0-9)  
--- 180-189----------------Sphere (0-9)  
--- 
--- @param type number
--- @param posX1 number
--- @param posY1 number
--- @param posZ1 number
--- @param posX2 number
--- @param posY2 number
--- @param posZ2 number
--- @param radius number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
--- @param reserved number
--- @return number
function CreateCheckpoint(type, posX1, posY1, posZ1, posX2, posY2, posZ2, radius, red, green, blue, alpha, reserved) end


function ClearTimecycleModifier() end

--- 
--- Creates a tracked point, useful for checking the visibility of a 3D point on screen.  
--- 
--- @return number
function CreateTrackedPoint() end


--- @param tvChannel number
function ClearTvChannelPlaylist(tvChannel) end


--- @param checkpoint number
function DeleteCheckpoint(checkpoint) end


--- @param point number
function DestroyTrackedPoint(point) end


function DisableScreenblurFade() end


function DisableOcclusionThisFrame() end


--- @param toggle boolean
function DisableVehicleDistantlights(toggle) end

--- 
--- This function is called before ADD_CLAN_DECAL_TO_VEHICLE to see if it needs to run. IDK if it's for clan decal or not, but the 2nd parameter might be decal index? It's always passed 0. Not sure what this function really does. But it does return 0 if the clan tag is not on, and 1 if it is.  
--- 
--- @param vehicle Vehicle
--- @param p1 number
--- @return boolean
function DoesVehicleHaveCrewEmblem(vehicle, p1) end


--- @param p0 any
function DisableScriptAmbientEffects(p0) end


--- @param ptfxHandle number
--- @return boolean
function DoesParticleFxLoopedExist(ptfxHandle) end

--- 
--- x,y,z = start pos  
--- x2,y2,z2 = end pos  
--- Draw's a 3D Box between the two x,y,z coords.  
--- --------------  
--- Keep in mind that the edges of the box do only align to the worlds base-vectors. Therefore something like rotation cannot be applied. That means this function is pretty much useless, unless you want a static unicolor box somewhere.  
--- I recommend using a predefined function to call this.  
--- [VB.NET]  
--- Public Sub DrawBox(a As Vector3, b As Vector3, col As Color)  
---     [Function].Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A)  
--- End Sub  
--- [C#]  
--- public void DrawBox(Vector3 a, Vector3 b, Color col)  
--- {  
---     Function.Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A);  
--- }  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function DrawBox(x1, y1, z1, x2, y2, z2, red, green, blue, alpha) end

--- 
--- NOTE: Debugging functions are not present in the retail version of the game.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param r number
--- @param g number
--- @param b number
--- @param a number
function DrawDebugBox(x1, y1, z1, x2, y2, z2, r, g, b, a) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param binkMovie number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param r number
--- @param g number
--- @param b number
--- @param a number
function DrawBinkMovie(binkMovie, p1, p2, p3, p4, p5, r, g, b, a) end

--- 
--- NOTE: Debugging functions are not present in the retail version of the game.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param r number
--- @param g number
--- @param b number
--- @param a number
function DrawDebugLine(x1, y1, z1, x2, y2, z2, r, g, b, a) end

--- 
--- NOTE: Debugging functions are not present in the retail version of the game.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param size number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function DrawDebugCross(x, y, z, size, red, green, blue, alpha) end

--- 
--- NOTE: Debugging functions are not present in the retail version of the game.  
--- 
--- @param text string
--- @param x number
--- @param y number
--- @param z number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function DrawDebugText(text, x, y, z, red, green, blue, alpha) end

--- 
--- NOTE: Debugging functions are not present in the retail version of the game.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param r1 number
--- @param g1 number
--- @param b1 number
--- @param r2 number
--- @param g2 number
--- @param b2 number
--- @param alpha1 number
--- @param alpha2 number
function DrawDebugLineWithTwoColours(x1, y1, z1, x2, y2, z2, r1, g1, b1, r2, g2, b2, alpha1, alpha2) end

--- 
--- NOTE: Debugging functions are not present in the retail version of the game.  
--- 
--- @param text string
--- @param x number
--- @param y number
--- @param z number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function DrawDebugText2d(text, x, y, z, red, green, blue, alpha) end

--- 
--- NOTE: Debugging functions are not present in the retail version of the game.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function DrawDebugSphere(x, y, z, radius, red, green, blue, alpha) end


--- @param posX number
--- @param posY number
--- @param posZ number
--- @param colorR number
--- @param colorG number
--- @param colorB number
--- @param range number
--- @param intensity number
function DrawLightWithRange(posX, posY, posZ, colorR, colorG, colorB, range, intensity) end

--- Similar to [\_DRAW_SPRITE](#_0xE7FFAE5EBF23D890), but seems to be some kind of "interactive" sprite, at least used by render targets.
--- These seem to be the only dicts ever requested by this native:
--- 
--- 
--- prop_screen_biker_laptop
--- Prop_Screen_GR_Disruption
--- Prop_Screen_TaleOfUs
--- prop_screen_nightclub
--- Prop_Screen_IE_Adhawk
--- prop_screen_sm_free_trade_shipping
--- prop_screen_hacker_truck
--- MPDesktop
--- Prop_Screen_Nightclub
--- And a few others
--- 
--- @param textureDict string
--- @param textureName string
--- @param screenX number
--- @param screenY number
--- @param width number
--- @param height number
--- @param heading number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function DrawInteractiveSprite(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha) end

--- 
--- Draws a depth-tested line from one point to another.  
--- ----------------  
--- x1, y1, z1 : Coordinates for the first point  
--- x2, y2, z2 : Coordinates for the second point  
--- r, g, b, alpha : Color with RGBA-Values  
--- I recommend using a predefined function to call this.  
--- [VB.NET]  
--- Public Sub DrawLine(from As Vector3, [to] As Vector3, col As Color)  
---     [Function].Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, [to].X, [to].Y, [to].Z, col.R, col.G, col.B, col.A)  
--- End Sub  
--- [C#]  
--- public void DrawLine(Vector3 from, Vector3 to, Color col)  
--- {  
---     Function.Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, to.X, to.Y, to.Z, col.R, col.G, col.B, col.A);  
--- }  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function DrawLine(x1, y1, z1, x2, y2, z2, red, green, blue, alpha) end


--- @param x number
--- @param y number
--- @param z number
--- @param r number
--- @param g number
--- @param b number
--- @param range number
--- @param intensity number
--- @param shadow number
function DrawLightWithRangeAndShadow(x, y, z, r, g, b, range, intensity, shadow) end

--- 
--- NativeDB Added Parameter 26: BOOL p25
--- 
--- @param type number
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param dirX number
--- @param dirY number
--- @param dirZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param scaleX number
--- @param scaleY number
--- @param scaleZ number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
--- @param bobUpAndDown boolean
--- @param faceCamera boolean
--- @param p19 number
--- @param rotate boolean
--- @param textureDict string
--- @param textureName string
--- @param drawOnEnts boolean
--- @param p24 boolean
function DrawMarker2(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts, p24) end

--- Draws a marker with the specified appearance at the target location. This has to be called every frame, e.g. in a Wait(0) loop.
--- 
--- There's a [list of markers](https://docs.fivem.net/game-references/markers/) on the FiveM documentation site.
--- @param type number
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param dirX number
--- @param dirY number
--- @param dirZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param scaleX number
--- @param scaleY number
--- @param scaleZ number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
--- @param bobUpAndDown boolean
--- @param faceCamera boolean
--- @param p19 number
--- @param rotate boolean
--- @param textureDict string
--- @param textureName string
--- @param drawOnEnts boolean
function DrawMarker(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts) end

--- 
--- Draws a rectangle on the screen.  
--- -x: The relative X point of the center of the rectangle. (0.0-1.0, 0.0 is the left edge of the screen, 1.0 is the right edge of the screen)  
--- -y: The relative Y point of the center of the rectangle. (0.0-1.0, 0.0 is the top edge of the screen, 1.0 is the bottom edge of the screen)  
--- -width: The relative width of the rectangle. (0.0-1.0, 1.0 means the whole screen width)  
--- -height: The relative height of the rectangle. (0.0-1.0, 1.0 means the whole screen height)  
--- -R: Red part of the color. (0-255)  
--- -G: Green part of the color. (0-255)  
--- -B: Blue part of the color. (0-255)  
--- -A: Alpha part of the color. (0-255, 0 means totally transparent, 255 means totally opaque)  
--- The total number of rectangles to be drawn in one frame is apparently limited to 399.  
--- 
--- 
--- 
--- NativeDB Added Parameter 9: BOOL p8
--- 
--- @param x number
--- @param y number
--- @param width number
--- @param height number
--- @param r number
--- @param g number
--- @param b number
--- @param a number
function DrawRect(x, y, width, height, r, g, b, a) end

--- 
--- x/y/z - Location of a vertex (in world coords), presumably.  
--- ----------------  
--- x1, y1, z1     : Coordinates for the first point  
--- x2, y2, z2     : Coordinates for the second point  
--- x3, y3, z3     : Coordinates for the third point  
--- r, g, b, alpha : Color with RGBA-Values  
--- Keep in mind that only one side of the drawn triangle is visible: It's the side, in which the vector-product of the vectors heads to: (b-a)x(c-a) Or (b-a)x(c-b).  
--- But be aware: The function seems to work somehow differently. I have trouble having them drawn in rotated orientation. Try it yourself and if you somehow succeed, please edit this and post your solution.  
--- I recommend using a predefined function to call this.  
--- [VB.NET]  
--- Public Sub DrawPoly(a As Vector3, b As Vector3, c As Vector3, col As Color)  
---     [Function].Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A)  
--- End Sub  
--- [C#]  
--- public void DrawPoly(Vector3 a, Vector3 b, Vector3 c, Color col)  
--- {  
---     Function.Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A);  
--- }  
--- BTW: Intersecting triangles are not supported: They overlap in the order they were called.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param x3 number
--- @param y3 number
--- @param z3 number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function DrawPoly(x1, y1, z1, x2, y2, z2, x3, y3, z3, red, green, blue, alpha) end

--- 
--- GTA V Scaleforms Decompiled  
--- pastebin.com/mmNdjX2k  
--- 
--- @param scaleformHandle number
--- @param x number
--- @param y number
--- @param width number
--- @param height number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
--- @param unk number
function DrawScaleformMovie(scaleformHandle, x, y, width, height, red, green, blue, alpha, unk) end

--- 
--- unk is not used so no need  
--- 
--- @param scaleform number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
--- @param unk number
function DrawScaleformMovieFullscreen(scaleform, red, green, blue, alpha, unk) end

--- 
--- sharpness goes from 0.0 to 1.0  
--- 
--- @param scaleform number
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param p7 number
--- @param sharpness number
--- @param p9 number
--- @param scaleX number
--- @param scaleY number
--- @param scaleZ number
--- @param p13 any
function DrawScaleformMovie3d(scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, sharpness, p9, scaleX, scaleY, scaleZ, p13) end


--- @param scaleform1 number
--- @param scaleform2 number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function DrawScaleformMovieFullscreenMasked(scaleform1, scaleform2, red, green, blue, alpha) end

--- 
--- what the heck does this one do differently from the one above?  
--- 
--- @param scaleform number
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param scaleX number
--- @param scaleY number
--- @param scaleZ number
--- @param p13 any
function DrawScaleformMovie3dSolid(scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, p8, p9, scaleX, scaleY, scaleZ, p13) end

--- 
--- It's called after 0xD3A10FC7FD8D98CD and 0xF1CEA8A4198D8E9A  
--- p0 was always "CELEBRATION_WINNER"  
--- 
--- @param p0 string
--- @param ped Ped
--- @param p2 number
--- @param posX number
--- @param posY number
--- @param posZ number
--- @return boolean
function DrawShowroom(p0, ped, p2, posX, posY, posZ) end

--- 
--- Parameters:  
--- * pos - coordinate where the spotlight is located  
--- * dir - the direction vector the spotlight should aim at from its current position  
--- * r,g,b - color of the spotlight  
--- * distance - the maximum distance the light can reach  
--- * brightness - the brightness of the light  
--- * roundness - "smoothness" of the circle edge  
--- * radius - the radius size of the spotlight  
--- * falloff - the falloff size of the light's edge (example: www.i.imgur.com/DemAWeO.jpg)  
--- Example in C# (spotlight aims at the closest vehicle):  
--- Vector3 myPos = Game.Player.Character.Position;  
--- Vehicle nearest = World.GetClosestVehicle(myPos , 1000f);  
--- Vector3 destinationCoords = nearest.Position;  
--- Vector3 dirVector = destinationCoords - myPos;  
--- dirVector.Normalize();  
--- Function.Call(Hash.DRAW_SPOT_LIGHT, pos.X, pos.Y, pos.Z, dirVector.X, dirVector.Y, dirVector.Z, 255, 255, 255, 100.0f, 1f, 0.0f, 13.0f, 1f);  
--- 
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param dirX number
--- @param dirY number
--- @param dirZ number
--- @param colorR number
--- @param colorG number
--- @param colorB number
--- @param distance number
--- @param brightness number
--- @param hardness number
--- @param radius number
--- @param falloff number
function DrawSpotLight(posX, posY, posZ, dirX, dirY, dirZ, colorR, colorG, colorB, distance, brightness, hardness, radius, falloff) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param r number
--- @param g number
--- @param b number
--- @param opacity number
function DrawSphere(x, y, z, radius, r, g, b, opacity) end

--- 
--- shadowId: each call to this native in the same tick should have a different value passed to this parameter, if two or more calls have the same values, only the first one will render its shadow properly  
--- 
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param dirX number
--- @param dirY number
--- @param dirZ number
--- @param colorR number
--- @param colorG number
--- @param colorB number
--- @param distance number
--- @param brightness number
--- @param roundness number
--- @param radius number
--- @param falloff number
--- @param shadowId number
function DrawSpotLightWithShadow(posX, posY, posZ, dirX, dirY, dirZ, colorR, colorG, colorB, distance, brightness, roundness, radius, falloff, shadowId) end

--- 
--- Draws a 2D sprite on the screen.  
--- Parameters:  
--- textureDict - Name of texture dictionary to load texture from (e.g. "CommonMenu", "MPWeaponsCommon", etc.)  
--- textureName - Name of texture to load from texture dictionary (e.g. "last_team_standing_icon", "tennis_icon", etc.)  
--- screenX/Y - Screen offset (0.5 = center)  
--- scaleX/Y - Texture scaling. Negative values can be used to flip the texture on that axis. (0.5 = half)  
--- heading - Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees  
--- red,green,blue - Sprite color (default = 255/255/255)  
--- alpha - opacity level  
--- 
--- 
--- 
--- NativeDB Added Parameter 12: BOOL p11
--- 
--- @param textureDict string
--- @param textureName string
--- @param screenX number
--- @param screenY number
--- @param width number
--- @param height number
--- @param heading number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function DrawSprite(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha) end

--- 
--- All calls to this native are preceded by calls to GRAPHICS::_0x61BB1D9B3A95D802 and GRAPHICS::_0xC6372ECD45D73BCD, respectively.  
--- "act_cinema.ysc", line 1483:  
--- UI::SET_HUD_COMPONENT_POSITION(15, 0.0, -0.0375);  
--- UI::SET_TEXT_RENDER_ID(l_AE);  
--- GRAPHICS::_0x61BB1D9B3A95D802(4);  
--- GRAPHICS::_0xC6372ECD45D73BCD(1);  
--- if (GRAPHICS::_0x0AD973CA1E077B60(${movie_arthouse})) {  
---     GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 0.7375, 1.0, 0.0, 255, 255, 255, 255);  
--- } else {   
---     GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);  
--- }  
--- "am_mp_property_int.ysc", line 102545:  
--- if (ENTITY::DOES_ENTITY_EXIST(a_2._f3)) {  
---     if (UI::IS_NAMED_RENDERTARGET_LINKED(ENTITY::GET_ENTITY_MODEL(a_2._f3))) {  
---         UI::SET_TEXT_RENDER_ID(a_2._f1);  
---         GRAPHICS::_0x61BB1D9B3A95D802(4);  
---         GRAPHICS::_0xC6372ECD45D73BCD(1);  
---         GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);  
---         if (GRAPHICS::GET_TV_CHANNEL() == -1) {  
---             sub_a8fa5(a_2, 1);  
---         } else {   
---             sub_a8fa5(a_2, 1);  
---             GRAPHICS::ATTACH_TV_AUDIO_TO_ENTITY(a_2._f3);  
---         }  
---         UI::SET_TEXT_RENDER_ID(UI::GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID());  
---     }  
--- }  
--- 
--- @param xPos number
--- @param yPos number
--- @param xScale number
--- @param yScale number
--- @param rotation number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function DrawTvChannel(xPos, yPos, xScale, yScale, rotation, red, green, blue, alpha) end

--- Creates a motion-blur sort of effect, this native does not seem to work, however by using the [START_SCREEN_EFFECT](#_0x2206BF9A37B7F724) native with "DrugsMichaelAliensFight" as the effect parameter, you should be able to get the effect.
--- 
--- This native does not seem to work, however by using the [START_SCREEN_EFFECT](https://runtime.fivem.net/doc/natives/#_0x2206BF9A37B7F724) native with "DrugsMichaelAliensFight" as the effect parameter, you should be able to get the effect.
--- @param toggle boolean
function EnableAlienBloodVfx(toggle) end

--- 
--- Creates cartoon effect when Michel smokes the weed  
--- 
--- @param toggle boolean
function EnableClownBloodVfx(toggle) end


--- @param toggle boolean
function EnableMovieKeyframeWait(toggle) end


function EndPetrolTrailDecals() end


--- @param toggle boolean
function EnableMovieSubtitles(toggle) end

--- 
--- Pops and calls the Scaleform function on the stack  
--- 
function EndScaleformMovieMethod() end

