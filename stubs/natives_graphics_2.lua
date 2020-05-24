
--- @param scaleform number
--- @param toggle boolean
function SetScaleformMovieToUseSystemTime(scaleform, toggle) end

--- Sets a flag defining whether or not script draw commands should continue being drawn behind the pause
--- menu. This is usually used for TV channels and other draw commands that are used with a world render target.
--- @param flag boolean
function SetScriptGfxDrawBehindPausemenu(flag) end

--- Sets the draw offset/calculated size for SET_SCRIPT_GFX_ALIGN. If using any alignment other than left/top, the game
--- expects the width/height to be configured using this native in order to get a proper starting position for the draw
--- command.
--- @param x number
--- @param y number
--- @param w number
--- @param h number
function SetScriptGfxAlignParams(x, y, w, h) end

--- Sets the draw order for script draw commands.
--- 
--- Examples from decompiled scripts:  
--- 
--- cpp
--- GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);  
--- GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v_4, v_5, v_6, a_0._f172, 0);  
--- GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);  
--- GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);  
--- 
--- @param order number
function SetScriptGfxDrawOrder(order) end

--- 
--- Toggles Heatvision on/off.  
--- 
--- @param toggle boolean
function SetSeethrough(toggle) end

--- 
--- Loads the specified timecycle modifier. Modifiers are defined separately in another file (e.g. "timecycle_mods_1.xml")  
--- Parameters:  
--- modifierName - The modifier to load (e.g. "V_FIB_IT3", "scanline_cam", etc.)  
--- For a full list, see here: pastebin.com/kVPwMemE  
--- 
--- @param modifierName string
function SetTimecycleModifier(modifierName) end


--- @param textureDict string
function SetStreamedTextureDictAsNoLongerNeeded(textureDict) end


--- @param point number
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
function SetTrackedPointInfo(point, x, y, z, radius) end

--- 
--- For a full list, see here: pastebin.com/kVPwMemE  
--- 
--- @param modifierName string
--- @param transition number
function SetTransitionTimecycleModifier(modifierName, transition) end


--- @param strength number
function SetTimecycleModifierStrength(strength) end

--- Loads specified video sequence into the TV Channel  
--- TV_Channel ranges from 0-2  
--- VideoSequence can be any of the following:  
--- "PL_STD_CNT" CNT Standard Channel  
--- "PL_STD_WZL" Weazel Standard Channel  
--- "PL_LO_CNT"  
--- "PL_LO_WZL"  
--- "PL_SP_WORKOUT"  
--- "PL_SP_INV" - Jay Norris Assassination Mission Fail  
--- "PL_SP_INV_EXP" - Jay Norris Assassination Mission Success  
--- "PL_LO_RS" - Righteous Slaughter Ad  
--- "PL_LO_RS_CUTSCENE" - Righteous Slaughter Cut-scene  
--- "PL_SP_PLSH1_INTRO"  
--- "PL_LES1_FAME_OR_SHAME"  
--- "PL_STD_WZL_FOS_EP2"  
--- "PL_MP_WEAZEL" - Weazel Logo on loop  
--- "PL_MP_CCTV" - Generic CCTV loop  
--- Restart  
--- 0=video sequence continues as normal  
--- 1=sequence restarts from beginning every time that channel is selected  
--- 
--- The above playlists work as intended, and are commonly used, but there are many more playlists, as seen in tvplaylists.xml. A pastebin below outlines all playlists, they will be surronded by the name tag I.E. (<Name>PL_STD_CNT</Name> = PL_STD_CNT).
--- 
--- <https://pastebin.com/zUzGB6h7>
--- @param tvChannel number
--- @param playlistName string
--- @param restart boolean
function SetTvChannelPlaylist(tvChannel, playlistName, restart) end

--- 
--- Might be more appropriate in AUDIO?  
--- Rockstar made it like this.  
--- Probably changes tvs from being a 3d audio to being "global" audio  
--- 
--- @param toggle boolean
function SetTvAudioFrontend(toggle) end


--- @param volume number
function SetTvVolume(volume) end


--- @param channel number
function SetTvChannel(channel) end


--- @param tvChannel number
--- @param playlistName string
--- @param hour number
function SetTvChannelPlaylistAtHour(tvChannel, playlistName, hour) end

--- 
--- network fx  
--- 
--- 
--- 
--- NativeDB Added Parameter 13: Any p12
--- NativeDB Added Parameter 14: Any p13
--- NativeDB Added Parameter 15: Any p14
--- NativeDB Added Parameter 16: Any p15
--- 
--- @param effectName string
--- @param entity Entity
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param scale number
--- @param xAxis boolean
--- @param yAxis boolean
--- @param zAxis boolean
--- @return number
function StartNetworkedParticleFxLoopedOnEntity(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

--- 
--- network fx  
--- 
--- 
--- 
--- NativeDB Added Parameter 14: Any p13
--- NativeDB Added Parameter 15: Any p14
--- NativeDB Added Parameter 16: Any p15
--- NativeDB Added Parameter 17: Any p16
--- 
--- @param effectName string
--- @param entity Entity
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param boneIndex number
--- @param scale number
--- @param xAxis boolean
--- @param yAxis boolean
--- @param zAxis boolean
--- @return number
function StartNetworkedParticleFxLoopedOnEntityBone(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) end

--- 
--- network fx  
--- 
--- 
--- 
--- NativeDB Added Parameter 12: BOOL p11
--- 
--- @param effectName string
--- @param xPos number
--- @param yPos number
--- @param zPos number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param scale number
--- @param xAxis boolean
--- @param yAxis boolean
--- @param zAxis boolean
--- @return boolean
function StartNetworkedParticleFxNonLoopedAtCoord(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end

--- 
--- network fx  
--- 
--- @param effectName string
--- @param entity Entity
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param scale number
--- @param axisX boolean
--- @param axisY boolean
--- @param axisZ boolean
--- @return boolean
function StartNetworkedParticleFxNonLoopedOnEntity(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ) end

--- 
--- network fx  
--- 
--- @param effectName string
--- @param ped Ped
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param boneIndex number
--- @param scale number
--- @param axisX boolean
--- @param axisY boolean
--- @param axisZ boolean
--- @return boolean
function StartNetworkedParticleFxNonLoopedOnPedBone(effectName, ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ) end

--- 
--- GRAPHICS::START_PARTICLE_FX_LOOPED_AT_COORD("scr_fbi_falling_debris", 93.7743f, -749.4572f, 70.86904f, 0f, 0f, 0f, 0x3F800000, 0, 0, 0, 0)  
--- p11 seems to be always 0  
--- 
--- @param effectName string
--- @param x number
--- @param y number
--- @param z number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param scale number
--- @param xAxis boolean
--- @param yAxis boolean
--- @param zAxis boolean
--- @param p11 boolean
--- @return number
function StartParticleFxLoopedAtCoord(effectName, x, y, z, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, p11) end

--- 
--- list: pastebin.com/N9unUFWY  
--- 
--- @param effectName string
--- @param entity Entity
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param scale number
--- @param xAxis boolean
--- @param yAxis boolean
--- @param zAxis boolean
--- @return number
function StartParticleFxLoopedOnEntity(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end


--- @param effectName string
--- @param entity Entity
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param boneIndex number
--- @param scale number
--- @param xAxis boolean
--- @param yAxis boolean
--- @param zAxis boolean
--- @return number
function StartParticleFxLoopedOnEntityBone(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) end

--- 
--- GRAPHICS::START_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_paleto_roof_impact", -140.8576f, 6420.789f, 41.1391f, 0f, 0f, 267.3957f, 0x3F800000, 0, 0, 0);  
--- Axis - Invert Axis Flags  
--- list: pastebin.com/N9unUFWY  
--- -------------------------------------------------------------------  
--- C#  
--- Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, = you are calling this function.  
--- char *effectname = This is an in-game effect name, for e.g. "scr_fbi4_trucks_crash" is used to give the effects when truck crashes etc  
--- float x, y, z pos = this one is Simple, you just have to declare, where do you want this effect to take place at, so declare the ordinates  
--- float xrot, yrot, zrot = Again simple? just mention the value in case if you want the effect to rotate.  
--- float scale = is declare the scale of the effect, this may vary as per the effects for e.g 1.0f  
--- bool xaxis, yaxis, zaxis = To bool the axis values.  
--- example:  
--- Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, "scr_fbi4_trucks_crash", GTA.Game.Player.Character.Position.X, GTA.Game.Player.Character.Position.Y, GTA.Game.Player.Character.Position.Z + 4f, 0, 0, 0, 5.5f, 0, 0, 0);  
--- 
--- @param effectName string
--- @param xPos number
--- @param yPos number
--- @param zPos number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param scale number
--- @param xAxis boolean
--- @param yAxis boolean
--- @param zAxis boolean
--- @return number
function StartParticleFxNonLoopedAtCoord(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis) end


--- @param effectName string
--- @param ped Ped
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param boneIndex number
--- @param scale number
--- @param xAxis boolean
--- @param yAxis boolean
--- @param zAxis boolean
--- @return number
function StartParticleFxLoopedOnPedBone(effectName, ped, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis) end

--- 
--- GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("scr_sh_bong_smoke", PLAYER::PLAYER_PED_ID(), -0.025f, 0.13f, 0f, 0f, 0f, 0f, 31086, 0x3F800000, 0, 0, 0);  
--- Axis - Invert Axis Flags  
--- list: pastebin.com/N9unUFWY  
--- 
--- @param effectName string
--- @param ped Ped
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param boneIndex number
--- @param scale number
--- @param axisX boolean
--- @param axisY boolean
--- @param axisZ boolean
--- @return boolean
function StartParticleFxNonLoopedOnPedBone(effectName, ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ) end

--- 
--- Starts a particle effect on an entity for example your player.  
--- List: pastebin.com/N9unUFWY  
--- Example:  
--- C#:  
--- Function.Call(Hash.REQUEST_NAMED_PTFX_ASSET, "scr_rcbarry2");                     Function.Call(Hash._SET_PTFX_ASSET_NEXT_CALL, "scr_rcbarry2");                             Function.Call(Hash.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY, "scr_clown_appears", Game.Player.Character, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false);  
--- Internally this calls the same function as GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE  
--- however it uses -1 for the specified bone index, so it should be possible to start a non looped fx on an entity bone using that native  
--- 
--- @param effectName string
--- @param entity Entity
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param scale number
--- @param axisX boolean
--- @param axisY boolean
--- @param axisZ boolean
--- @return boolean
function StartParticleFxNonLoopedOnEntity(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ) end

--- 
--- p1 is always 0 in the native scripts  
--- 
--- @param ptfxHandle number
--- @param p1 boolean
function StopParticleFxLooped(ptfxHandle, p1) end


--- @param p0 number
function StartPetrolTrailDecals(p0) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param binkMovie number
function StopBinkMovie(binkMovie) end

--- This native is used along with these two natives: [0xa356990e161c9e65](https://runtime.fivem.net/doc/reference.html#_0xA356990E161C9E65) and [0x1c4fc5752bcd8e48](https://runtime.fivem.net/doc/reference.html#_0x1C4FC5752BCD8E48). 
--- This native sets the colors for the golf putting grid. the 'min...' values are for the lower areas that the grid covers, the 'max...' values are for the higher areas that the grid covers, all remaining values are for the 'normal' ground height.
--- All those natives combined they will output something like this: <https://i.imgur.com/TC6cku6.png>
--- 
--- Old description:
--- Only called in golf and golf_mp  
--- parameters used are  
--- GRAPHICS::\_0x5CE62918F8D703C7(255, 0, 0, 64, 255, 255, 255, 5, 255, 255, 0, 64);
--- @param lowR number
--- @param lowG number
--- @param lowB number
--- @param lowAlpha number
--- @param R number
--- @param G number
--- @param B number
--- @param Alpha number
--- @param highR number
--- @param highG number
--- @param highB number
--- @param highAlpha number
function TerraingridSetColours(lowR, lowG, lowB, lowAlpha, R, G, B, Alpha, highR, highG, highB, highAlpha) end


--- @param toggle boolean
function TogglePausedRenderphases(toggle) end

--- This native enables/disables the gold putting grid display (<https://i.imgur.com/TC6cku6.png>).
--- This requires these two natives to be called as well to configure the grid: [0x1c4fc5752bcd8e48](https://runtime.fivem.net/doc/reference.html#_0x1C4FC5752BCD8E48) and [0x5ce62918f8d703c7](https://runtime.fivem.net/doc/reference.html#_0x5CE62918F8D703C7).
--- @param toggle boolean
function TerraingridActivate(toggle) end


--- @param transitionTime number
--- @return boolean
function TriggerScreenblurFadeIn(transitionTime) end


--- @return boolean
function Ui3dsceneIsAvailable() end

--- This native is used along with these two natives: [0xa356990e161c9e65](https://runtime.fivem.net/doc/reference.html#_0xA356990E161C9E65) and [0x5ce62918f8d703c7](https://runtime.fivem.net/doc/reference.html#_0x5CE62918F8D703C7). 
--- 
--- This native configures the location, size, rotation, normal height, and the difference ratio between min, normal and max.
--- 
--- All those natives combined they will output something like this: <https://i.imgur.com/TC6cku6.png>
--- @param x number
--- @param y number
--- @param z number
--- @param p3 number
--- @param rotation number
--- @param p5 number
--- @param width number
--- @param height number
--- @param p8 number
--- @param scale number
--- @param glowIntensity number
--- @param normalHeight number
--- @param heightDiff number
function TerraingridSetParams(x, y, z, p3, rotation, p5, width, height, p8, scale, glowIntensity, normalHeight, heightDiff) end

--- 
--- GRAPHICS::_0xB7ED70C49521A61D(9123);  
--- GRAPHICS::SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED("MPMissMarkers256");  
--- 
--- @param decalType number
function UndoDecalTextureOverride(decalType) end


--- @param transitionTime number
--- @return boolean
function TriggerScreenblurFadeOut(transitionTime) end

--- 
--- From the b678d decompiled scripts:  
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("FM_Mission_Controler");  
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_apartment_mp");  
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_indep_fireworks");  
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_cig_plane");  
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_creator");  
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_ornate_heist");  
--- GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_prison_break_heist_station");  
--- 
--- @param name string
function UseParticleFxAsset(name) end

--- 
--- All presets can be found in common\data\ui\uiscenes.meta
--- 
--- @param presetName string
--- @return boolean
function Ui3dscenePushPreset(presetName) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
function WashDecalsInRange(p0, p1, p2, p3, p4) end


--- @param entity Entity
function UpdateLightsOnEntity(entity) end


--- @param vehicle Vehicle
--- @param p1 number
function WashDecalsFromVehicle(vehicle, p1) end

