--- Examples result:
--- 
--- ![](https://i.imgur.com/skY6vAJ.png)
--- 
--- **index:**
--- 
--- 
--- 1 = No distance shown in legend
--- 2 = Distance shown in legend
--- 7 = "Other Players" category, also shows distance in legend
--- 10 = "Property" category
--- 11 = "Owned Property" category
--- 
--- 
--- Any other value behaves like index = 1, index wraps around after 255
--- 
--- Blips with categories 7, 10 or 11 will all show under the specific categories listing in the map legend, regardless of sprite or name.
--- 
--- **Legend entries**
--- 
--- | index | Legend entry   | Label           |
--- | ----- | -------------- | --------------- |
--- | 7     | Other Players  | BLIP_OTHPLYR  |
--- | 10    | Property       | BLIP_PROPCAT  |
--- | 11    | Owned Property | BLIP_APARTCAT |
--- @param blip Blip
--- @param index number
function SetBlipCategory(blip, index) end

--- **displayId Behaviour** <br>
--- 0 = Doesn't show up, ever, anywhere. <br>
--- 1 = Doesn't show up, ever, anywhere. <br>
--- 2 = Shows on both main map and minimap. (Selectable on map) <br>
--- 3 = Shows on main map only. (Selectable on map) <br>
--- 4 = Shows on main map only. (Selectable on map) <br>
--- 5 = Shows on minimap only. <br>
--- 6 = Shows on both main map and minimap. (Selectable on map) <br>
--- 7 = Doesn't show up, ever, anywhere. <br>
--- 8 = Shows on both main map and minimap. (Not selectable on map) <br>
--- 9 = Shows on minimap only. <br>
--- 10 = Shows on both main map and minimap. (Not selectable on map) <br>
--- Anything higher than 10 seems to be exactly the same as 10. <br>
--- <br>
--- Rockstar seem to only use 0, 2, 3, 4, 5 and 8 in the decompiled scripts.
--- @param blip Blip
--- @param displayId number
function SetBlipDisplay(blip, displayId) end


--- @param blip Blip
--- @param posX number
--- @param posY number
--- @param posZ number
function SetBlipCoords(blip, posX, posY, posZ) end

--- 
--- Must be toggled before being queued for animation
--- 
--- @param blip Blip
--- @param p1 boolean
function SetBlipDisplayIndicatorOnBlip(blip, p1) end


--- @param blip Blip
--- @param opacity number
--- @param duration number
function SetBlipFade(blip, opacity, duration) end


--- @param blip Blip
--- @param p1 any
function SetBlipFlashInterval(blip, p1) end

--- 
--- Adds up after viewing multiple R* scripts. I believe that the duration is in miliseconds.  
--- 
--- @param blip Blip
--- @param duration number
function SetBlipFlashTimer(blip, duration) end


--- @param blip Blip
--- @param toggle boolean
function SetBlipFlashes(blip, toggle) end


--- @param blip Blip
--- @param toggle boolean
function SetBlipFlashesAlternate(blip, toggle) end


--- @param blip Blip
--- @param toggle boolean
function SetBlipHiddenOnLegend(blip, toggle) end


--- @param blip Blip
--- @param toggle boolean
function SetBlipHighDetail(blip, toggle) end

--- 
--- Doesn't work if the label text of gxtEntry is >= 80.  
--- 
--- @param blip Blip
--- @param gxtEntry string
function SetBlipNameFromTextFile(blip, gxtEntry) end


--- @param blip Blip
--- @param player Player
function SetBlipNameToPlayerName(blip, player) end

--- 
--- See this topic for more details : gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-35?p=1069477935  
--- 
--- @param blip Blip
--- @param priority number
function SetBlipPriority(blip, priority) end

--- 
--- After some testing, looks like you need to use UI:CEIL() on the rotation (vehicle/ped heading) before using it there.  
--- 
--- @param blip Blip
--- @param rotation number
function SetBlipRotation(blip, rotation) end

--- 
--- Enable / disable showing route for the Blip-object.  
--- 
--- @param blip Blip
--- @param enabled boolean
function SetBlipRoute(blip, enabled) end


--- @param blip Blip
--- @param scale number
function SetBlipScale(blip, scale) end


--- @param blip Blip
--- @param colour number
function SetBlipRouteColour(blip, colour) end

--- 
--- Makes a blip go small when off the minimap.  
--- 
--- @param blip Blip
--- @param toggle boolean
function SetBlipShrink(blip, toggle) end


--- @param blip Blip
--- @param r number
--- @param g number
--- @param b number
function SetBlipSecondaryColour(blip, r, g, b) end

--- 
--- Does not require whole whole number/integer rotations.
--- 
--- @param p0 Blip
--- @param heading number
function SetBlipSquaredRotation(p0, heading) end

--- 
--- sets font color for the next notification  
--- 
--- @param hudColorIndex number
function SetColourOfNextTextComponent(hudColorIndex) end


--- @param blip Blip
--- @param toggle boolean
function SetBlipShowCone(blip, toggle) end

--- <!--
--- _loc1_.map((name, idx) => | ${idx} | ${name} | ![${name}](https://runtime.fivem.net/blips/${name}.svg) |).join('\n')
--- -->
--- 
--- Sets the displayed sprite for a specific blip.
--- 
--- There's a [list of sprites](https://docs.fivem.net/game-references/blips/) on the FiveM documentation site.
--- @param blip Blip
--- @param spriteId number
function SetBlipSprite(blip, spriteId) end


--- @param hudIndex number
--- @param p1 number
--- @param p2 number
function SetFloatingHelpTextScreenPosition(hudIndex, p1, p2) end

--- 
--- SET_*
--- 
function SetDirectorModeClearTriggeredFlag() end


--- @param hudIndex number
--- @param entity Entity
--- @param p2 number
--- @param p3 number
function SetFloatingHelpTextToEntity(hudIndex, entity, p2, p3) end


--- @param toggle boolean
--- @param radarThickness number
--- @param mapThickness number
function SetGpsCustomRouteRender(toggle, radarThickness, mapThickness) end

--- 
--- Only the script that originally called SET_GPS_FLAGS can set them again. Another script cannot set the flags, until the first script that called it has called CLEAR_GPS_FLAGS.  
--- Doesn't seem like the flags are actually read by the game at all.  
--- ---------------  
--- Might be left-over from GTA IV. I kind of miss the *ding-dong* turn left in 2 meters lady lol.  
--- 
--- @param p0 number
--- @param p1 number
function SetGpsFlags(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
function SetFloatingHelpTextStyle(p0, p1, p2, p3, p4, p5) end


--- @param hudIndex number
--- @param x number
--- @param y number
--- @param z number
function SetFloatingHelpTextWorldPosition(hudIndex, x, y, z) end


--- @param health number
--- @param capacity number
--- @param wasAdded boolean
function SetHealthHudDisplayValues(health, capacity, wasAdded) end


--- @param active boolean
function SetFrontendActive(active) end

--- 
--- SET_HELP_MESSAGE_*
--- 
--- @param style number
--- @param hudColor number
--- @param alpha number
--- @param p3 number
--- @param p4 number
function SetHelpMessageTextStyle(style, hudColor, alpha, p3, p4) end


--- @param id number
--- @param x number
--- @param y number
function SetHudComponentPosition(id, x, y) end


--- @param toggle boolean
function SetGpsFlashes(toggle) end


--- @param toggle boolean
function SetGpsMultiRouteRender(toggle) end


--- @param p0 number
function SetMaxArmourHudDisplay(p0) end

--- 
--- If toggle is true, the map is shown in full screen  
--- If toggle is false, the map is shown in normal mode  
--- 
--- @param toggle boolean
function SetMapFullScreen(toggle) end

--- 
--- Argument must be 0.0f or above 38.0f, or it will be ignored.  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: int p2
--- 
--- @param altitude number
--- @param p1 boolean
function SetMinimapAltitudeIndicatorLevel(altitude, p1) end


--- @param p0 number
function SetMaxHealthHudDisplay(p0) end


--- @param toggle boolean
function SetMinimapBlockWaypoint(toggle) end

--- This native is used to toggle map components like the army base at the top of the map.  
--- p2 appears to be always -1.  
--- 
--- An incomplete list of components ID:
--- 
--- 
--- 0: Los Santos' air port yellow lift-off markers.
--- 1: Sandy Shore's air port yellow lift-off markers.
--- 2: Trevor's air port yellow lift-off markers.
--- 3: Unknown.
--- 4: Unknown.
--- 5: Unknown.
--- 6: Vespucci Beach lifeguard building.
--- 7: Unknown.
--- 8: Unknown.
--- 15: Army base.
--- 
--- @param componentID number
--- @param toggle boolean
--- @param p2 number
--- @return any
function SetMinimapComponent(componentID, toggle, p2) end


function SetMinimapGolfCourseOff() end

--- 
--- Toggles the North Yankton map
--- 
--- @param toggle boolean
function SetMinimapInPrologue(toggle) end

--- Not much is known so far on what it does _exactly_.
--- All I know for sure is that it draws the specified hole ID on the pause menu map as well as on the mini-map/radar. This native also seems to change some other things related to the pause menu map's behaviour, for example: you can no longer set waypoints, the pause menu map starts up in a 'zoomed in' state. This native does not need to be executed every tick.
--- 
--- You need to center the minimap manually as well as change/lock it's zoom and angle in order for it to appear correctly on the minimap.
--- You'll also need to use the GOLF scaleform in order to get the correct minmap border to show up.
--- 
--- Use [N_0x35edd5b2e3ff01c0()](https://runtime.fivem.net/doc/reference.html#_0x35EDD5B2E3FF01C0) to reset the map when you no longer want to display any golf holes (you still need to unlock zoom, position and angle of the radar manually after calling this).
--- @param hole number
function SetMinimapGolfCourse(hole) end

--- 
--- If true, the entire map will be revealed.
--- 
--- @param toggle boolean
function SetMinimapHideFow(toggle) end


--- @param toggle boolean
--- @param ped Ped
function SetMinimapInSpectatorMode(toggle, ped) end

--- 
--- Takes a text label, gets the string (must not be longer than 600 chars, should not exceed 64 chars) and sets the name to that string.  
--- p0 must be true.  
--- 
--- @param p0 boolean
--- @param name string
function SetMissionName(p0, name) end

--- 
--- Similar to SET_MISSION_NAME but this one can take any string (must not be greater than 600 chars, should not exceed 64 chars), not just text labels.  
--- p0 must be true.  
--- 
--- @param p0 boolean
--- @param name string
function SetMissionName2(p0, name) end

--- 
--- Shows the cursor on screen for the frame its called.  
--- 
function SetMouseCursorActiveThisFrame() end

--- 
--- Changes the mouse cursor's sprite.   
--- public enum CursorType  
--- {  
---     None = 0,  
---     Normal = 1,  
---     TransparentNormal = 2,  
---     PreGrab = 3,  
---     Grab = 4,  
---     MiddleFinger = 5,  
---     LeftArrow = 6,  
---     RightArrow = 7,  
---     UpArrow = 8,  
---     DownArrow = 9,  
---     HorizontalExpand = 10,  
---     Add = 11,  
---     Remove = 12,  
--- }  
--- 
--- @param spriteId number
function SetMouseCursorSprite(spriteId) end

--- 
--- NativeDB Introduced: v1365
--- 
--- @param gamerTagId number
--- @param p1 boolean
function SetMpGamerHealthBarDisplay(gamerTagId, p1) end

--- 
--- NativeDB Introduced: v1365
--- 
--- @param gamerTagId number
--- @param value number
--- @param maximumValue number
function SetMpGamerHealthBarMax(gamerTagId, value, maximumValue) end


--- @param headDisplayId number
--- @param p1 boolean
function SetMpGamerTag(headDisplayId, p1) end

--- 
--- Sets flag's sprite transparency. 0-255.  
--- 
--- @param gamerTagId number
--- @param component number
--- @param alpha number
function SetMpGamerTagAlpha(gamerTagId, component, alpha) end

--- 
--- Set's the string displayed when flag 3 (AudioSpeaker) active.  
--- 
--- @param gamerTagId number
--- @param string string
function SetMpGamerTagBigText(gamerTagId, string) end

--- 
--- Ranges from 0 to 255. 0 is grey health bar, ~50 yellow, 200 purple.  
--- 
--- @param gamerTagId number
--- @param flag number
--- @param color number
function SetMpGamerTagColour(gamerTagId, flag, color) end

--- 
--- Ranges from 0 to 255. 0 is grey health bar, ~50 yellow, 200 purple.  
--- Should be enabled as flag (2). Has 0 opacity by default.  
--- - This was _SET_MP_GAMER_TAG_HEALTH_BAR_COLOR,  
--- 
--- @param headDisplayId number
--- @param color number
function SetMpGamerTagHealthBarColour(headDisplayId, color) end

--- 
--- Displays a bunch of icons above the players name, and level, and their name twice  
--- 
--- @param gamerTagId number
--- @param p1 boolean
function SetMpGamerTagIcons(gamerTagId, p1) end

--- 
--- displays wanted star above head  
--- 
--- @param gamerTagId number
--- @param count number
function SetMpGamerTagMpBagLargeCount(gamerTagId, count) end


--- @param gamerTagId number
--- @param string string
function SetMpGamerTagName(gamerTagId, string) end

--- 
--- enum MpGamerTagComponent  
--- {  
---   GAMER_NAME = 0,  
---   CREW_TAG,  
---   healthArmour,  
---   BIG_TEXT,  
---   AUDIO_ICON,  
---   MP_USING_MENU,  
---   MP_PASSIVE_MODE,  
---   WANTED_STARS,  
---   MP_DRIVER,  
---   MP_CO_DRIVER,  
---   MP_TAGGED,  
---   GAMER_NAME_NEARBY,  
---   ARROW,  
---   MP_PACKAGES,  
---   INV_IF_PED_FOLLOWING,  
---   RANK_TEXT,  
---   MP_TYPING  
--- };  
--- 
--- 
--- 
--- NativeDB Added Parameter 4: Any p3
--- 
--- @param gamerTagId number
--- @param component number
--- @param toggle boolean
function SetMpGamerTagVisibility(gamerTagId, component, toggle) end


--- @param gamerTagId number
--- @param p1 number
function SetMpGamerTagUnk(gamerTagId, p1) end


function SetMultiplayerBankCash() end

--- 
--- displays wanted star above head  
--- 
--- @param gamerTagId number
--- @param wantedlvl number
function SetMpGamerTagWantedLevel(gamerTagId, wantedlvl) end

--- **This native does absolutely nothing, just a nullsub**
--- @param p0 number
--- @param p1 number
function SetMultiplayerHudCash(p0, p1) end


function SetMultiplayerWalletCash() end


--- @param x number
--- @param y number
function SetNewWaypoint(x, y) end


--- @param toggle boolean
function SetPauseMenuActive(toggle) end

--- Toggles the light state for the pause menu ped in frontend menus.
--- 
--- This is used by R\* in combination with [SET_PAUSE_MENU_PED_SLEEP_STATE](#_0xECF128344E9FF9F1) to toggle the "offline" or "online" state in the "friends" tab of the pause menu in GTA Online.
--- 
--- Example:
--- On: ![lights on](https://vespura.com/hi/i/2019-04-01_16-09_540ee_1015.png)
--- Off: ![lights off](https://vespura.com/hi/i/2019-04-01_16-10_8b5e7_1016.png)
--- @param state boolean
function SetPauseMenuPedLighting(state) end

--- Toggles the pause menu ped sleep state for frontend menus.
--- 
--- [Example GIF](https://vespura.com/hi/i/2019-04-01_15-51_8ed38_1014.gif)
--- @param state boolean
function SetPauseMenuPedSleepState(state) end

--- 
--- if "flag" is true, the AI blip will always be displayed for the specified ped, if it has an AI blip  
--- If "flag" is false, the AI blip will only be displayed when the player is in combat with the specified ped, if it has an AI blip  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetPedAiBlipForcedOn(ped, toggle) end

--- 
--- Set a ped's AI blip type:  
--- 1 - Yellow blip with no name  
--- 2  
--- 
--- @param ped Ped
--- @param gangId number
function SetPedAiBlipGangId(ped, gangId) end

--- 
--- If used with a Ped that has an AI blip as the first argument:  
--- - if p1 is true, a view cone is displayed with the AI blip  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetPedAiBlipHasCone(ped, toggle) end

--- 
--- Previously named _0x97C65887D4B37FA9.  
--- Sets the maximum view distance for the AI BIP  
--- 
--- @param ped Ped
--- @param range number
function SetPedAiBlipNoticeRange(ped, range) end


--- @param ped Ped
--- @param spriteId number
function SetPedAiBlipSprite(ped, spriteId) end

--- 
--- Previously named _0xD30C50DF888D58B5, this native turns on the AI blip on the specified ped. It also disappears automatically when the ped is too far or if the ped is dead. You don't need to control it with other natives.   
--- See gtaforums.com/topic/884370-native-research-ai-blips for further information.  
--- Note: Everything said at the bottom is only valid for persistant peds, as AI blips seem to behave differently for non-persistant peds.  
--- • To create an AI blip, you must use UI::0xD30C50DF888D58B5() (_SET_PED_ENEMY_AI_BLIP). It has two arguments: "ped" which is the ped you want to AI blip to be linked to, and "showViewCones" which needs to be true for AI blips to appear.  
--- • To check if a ped has an AI blip, you can use UI::DOES_PED_HAVE_AI_BLIP(Ped ped), which returns a simple bool.  
--- • By default, AI blips never disappear. If you want them to disappear when you're at a certain distance from a ped, you can use UI::0x97C65887D4B37FA9(Ped ped, float distance) (_SET_AI_BLIP_MAX_DISTANCE)  
--- • By default, the blip only appears when you're in combat with the specified ped. If you want it to be always displayed, you can use UI::x0C4BBF625CA98C4E() (_IS_AI_BLIP_ALWAYS_SHOWN). It also has two arguments: "ped", and a flag. If the flag is set to true, the blip will always be displayed. If it's set to false, the AI blip will have its default behaviour.  
--- • By default, a view cone is displayed with the blip (basically a blue surface that represents the field of view of the ped, like in vanilla stealth missions). If you don't want it, you can disable it with UI::HIDE_SPECIAL_ABILITY_LOCKON_OPERATION(Ped ped, bool flag). If the flag is set to true, the view cone is displayed. If the flag is set to false, it is not.  
--- • Finally, there's actually 3 types of AI blips:  
--- 0 - the default, red, "enemy" blip  
--- 1 - a weird, semi-transparent, nameless, yellow blip  
--- 2 - the blue "friend" blip  
--- You can change an AI blip's type with UI::0xE52B8E7F85D39A08(Ped ped, int type) (_SET_AI_BLIP_TYPE).  
--- 
--- @param ped Ped
--- @param hasCone boolean
function SetPedHasAiBlip(ped, hasCone) end

--- 
--- Sets the position of the arrow icon representing the player on both the minimap and world map.  
--- Too bad this wouldn't work over the network (obviously not). Could spoof where we would be.  
--- 
--- @param x number
--- @param y number
function SetPlayerBlipPositionThisFrame(x, y) end

--- 
--- Called in decompiled scripts as alternative to _SET_PED_ENEMY_AI_BLIP in an else, when the additional parameter p3 is not -1  
--- 
--- @param ped Ped
--- @param hasCone boolean
--- @param color number
function SetPedHasAiBlipWithColor(ped, hasCone, color) end

--- 
--- If toggle is true, hides special ability bar / character name in the pause menu  
--- If toggle is false, shows special ability bar / character name in the pause menu  
--- 
--- @param toggle boolean
function SetPlayerIsInDirectorMode(toggle) end

--- 
--- Displays cash change notifications on HUD.  
--- 
--- @param cash number
--- @param bank number
function SetPlayerCashChange(cash, bank) end


--- @param toggle boolean
function SetRaceTrackRender(toggle) end


function SetRadarAsExteriorThisFrame() end

--- 
--- zoomLevel ranges from 0 to 200  
--- 
--- @param zoomLevel number
function SetRadarZoom(zoomLevel) end

--- 
--- List of interior hashes: pastebin.com/1FUyXNqY  
--- Not for every interior zoom > 0 available.  
--- 
--- @param interior Hash
--- @param x number
--- @param y number
--- @param heading number
--- @param zoom number
function SetRadarAsInteriorThisFrame(interior, x, y, heading, zoom) end

--- 
--- actual native starts with SET_RADAR_ZOOM_...  
--- 
--- @param zoom number
function SetRadarZoomPrecise(zoom) end


--- @param blip Blip
--- @param zoom number
function SetRadarZoomToBlip(blip, zoom) end


--- @param zoom number
function SetRadarZoomToDistance(zoom) end


--- @param p0 any
--- @param p1 boolean
function SetRadiusBlipEdge(p0, p1) end

--- 
--- Sets the color of HUD_COLOUR_SCRIPT_VARIABLE_2
--- 
--- @param r number
--- @param g number
--- @param b number
--- @param a number
function SetScriptVariable2HudColour(r, g, b, a) end

--- 
--- Sets the color of HUD_COLOUR_SCRIPT_VARIABLE
--- 
--- @param r number
--- @param g number
--- @param b number
--- @param a number
function SetScriptVariableHudColour(r, g, b, a) end


--- @param align boolean
function SetTextCentre(align) end

--- 
--- UI::0x7AD67C95("Gallery");  
--- UI::0x7AD67C95("Missions");  
--- UI::0x7AD67C95("General");  
--- UI::0x7AD67C95("Playlists");  
--- 
--- @param name string
function SetSocialClubTour(name) end

--- 
--- Sets an unknown boolean value in the text chat.  
--- 
--- @param p0 boolean
function SetTextChatUnk(p0) end


--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function SetTextColour(red, green, blue, alpha) end

--- Sets the drop shadow for the current text style.
--- @param distance number
--- @param r number
--- @param g number
--- @param b number
--- @param a number
function SetTextDropshadow(distance, r, g, b, a) end


function SetTextDropShadow() end

--- **This native does absolutely nothing, just a nullsub**
--- @param p0 number
--- @param r number
--- @param g number
--- @param b number
--- @param a number
function SetTextEdge(p0, r, g, b, a) end

--- 
--- fonts that mess up your text where made for number values/misc stuff  
--- 
--- @param fontType number
function SetTextFont(fontType) end

--- 
--- Types -  
--- 0: Center-Justify  
--- 1: Left-Justify  
--- 2: Right-Justify  
--- Right-Justify requires SET_TEXT_WRAP, otherwise it will draw to the far right of the screen  
--- 
--- @param justifyType number
function SetTextJustification(justifyType) end

--- 
--- from script am_mp_yacht.c int?  
--- ui::set_text_leading(2);  
--- 
--- 
--- 
--- NativeDB Parameter 0: int p0
--- 
--- @param p0 boolean
function SetTextLeading(p0) end

--- **This native does absolutely nothing, just a nullsub**
--- @param p0 boolean
function SetTextProportional(p0) end


function SetTextOutline() end


--- @param toggle boolean
function SetTextRightJustify(toggle) end


--- @param renderId number
function SetTextRenderId(renderId) end

--- 
--- Size range : 0f to 1.0f  
--- 
--- @param scale number
--- @param size number
function SetTextScale(scale, size) end

--- 
--- It sets the text in a specified box and wraps the text if it exceeds the boundries. Both values are for X axis. Useful when positioning text set to center or aligned to the right.  
--- start - left boundry on screen position (0.0 - 1.0)  
--- end - right boundry on screen position (0.0 - 1.0)  
--- 
--- @param start number
--- @param _b_end number
function SetTextWrap(start, _b_end) end

--- **instructionalKey enum list**:
--- 
--- 
--- enum INSTRUCTIONAL_BUTTON_TYPES
--- {
---     NONE = 0,
---     SELECT = 1,
---     OK = 2,
---     YES = 4,
---     BACK = 8,
---     BACK_SELECT = 9,
---     BACK_OK = 10,
---     BACK_YES = 12,
---     CANCEL = 16,
---     CANCEL_SELECT = 17,
---     CANCEL_OK = 18,
---     CANCEL_YES = 20,
---     NO = 32,
---     NO_SELECT = 33,
---     NO_OK = 34,
---     YES_NO = 36,
---     RETRY = 64,
---     RETRY_SELECT = 65,
---     RETRY_OK = 66,
---     RETRY_YES = 68,
---     RETRY_BACK = 72,
---     RETRY_BACK_SELECT = 73,
---     RETRY_BACK_OK = 74,
---     RETRY_BACK_YES = 76,
---     RETRY_CANCEL = 80,
---     RETRY_CANCEL_SELECT = 81,
---     RETRY_CANCEL_OK = 82,
---     RETRY_CANCEL_YES = 84,
---     SKIP = 256,
---     SKIP_SELECT = 257,
---     SKIP_OK = 258,
---     SKIP_YES = 260,
---     SKIP_BACK = 264,
---     SKIP_BACK_SELECT = 265,
---     SKIP_BACK_OK = 266,
---     SKIP_BACK_YES = 268,
---     SKIP_CANCEL = 272,
---     SKIP_CANCEL_SELECT = 273,
---     SKIP_CANCEL_OK = 274,
---     SKIP_CANCEL_YES = 276,
---     CONTINUE = 16384,
---     BACK_CONTINUE = 16392,
---     CANCEL_CONTINUE = 16400,
---     LOADING_SPINNER = 134217728,
---     SELECT_LOADING_SPINNER = 134217729,
---     OK_LOADING_SPINNER = 134217730,
---     YES_LOADING_SPINNER = 134217732,
---     BACK_LOADING_SPINNER = 134217736,
---     BACK_SELECT_LOADING_SPINNER = 134217737,
---     BACK_OK_LOADING_SPINNER = 134217738,
---     BACK_YES_LOADING_SPINNER = 134217740,
---     CANCEL_LOADING_SPINNER = 134217744,
---     CANCEL_SELECT_LOADING_SPINNER = 134217745,
---     CANCEL_OK_LOADING_SPINNER = 134217746,
---     CANCEL_YES_LOADING_SPINNER = 134217748
--- }
--- 
--- 
--- Note: this list is definitely NOT complete, but these are the ones I've been able to find before giving up because it's such a boring thing to look for 'good' combinations.
--- 
--- **Result of the example code:**
--- <https://i.imgur.com/imwoimm.png>
--- 
--- 
--- NativeDB Parameter 5: char* background
--- NativeDB Parameter 6: char* p6
--- 
--- @param entryLine1 string
--- @param instructionalKey number
--- @param entryLine2 string
--- @param p3 boolean
--- @param p4 number
--- @param background any
--- @param p6 any
--- @param showBg boolean
--- @param p8 any
function SetWarningMessage(entryLine1, instructionalKey, entryLine2, p3, p4, background, p6, showBg, p8) end

--- 
--- Param names copied from the corresponding scaleform function "SET_LIST_ROW"
--- 
--- @param index number
--- @param name string
--- @param cash number
--- @param rp number
--- @param lvl number
--- @param colour number
--- @return boolean
function SetWarningMessageListRow(index, name, cash, rp, lvl, colour) end

--- 
--- You can only use text entries. No custom text.  
--- 
--- 
--- 
--- NativeDB Added Parameter 11: Any p10
--- 
--- @param entryHeader string
--- @param entryLine1 string
--- @param instructionalKey any
--- @param entryLine2 string
--- @param p4 boolean
--- @param p5 any
--- @param p6 any
--- @param p7 any
--- @param p8 any
--- @param p9 boolean
function SetWarningMessageWithHeaderAndSubstringFlags(entryHeader, entryLine1, instructionalKey, entryLine2, p4, p5, p6, p7, p8, p9) end

--- 
--- You can only use text entries. No custom text.  
--- C# Example :  
--- Function.Call(Hash._SET_WARNING_MESSAGE_2, "HUD_QUIT", "HUD_CGIGNORE", 2, "HUD_CGINVITE", 0, -1, 0, 0, 1);  
--- you can recreate this easily with scaleforms  
--- ---------------  
--- Fixed native name, from before nativedb restoration.  
--- 
--- 
--- 
--- NativeDB Added Parameter 10: Any p9
--- 
--- @param titleMsg string
--- @param entryLine1 string
--- @param flags number
--- @param promptMsg string
--- @param p4 boolean
--- @param p5 any
--- @param background boolean
--- @param p7 any
--- @param showBg boolean
function SetWarningMessageWithHeader(titleMsg, entryLine1, flags, promptMsg, p4, p5, background, p7, showBg) end

--- 
--- This native removes the current waypoint from the map.  
--- Example:  
--- C#:  
--- Function.Call(Hash.SET_WAYPOINT_OFF);  
--- C++:  
--- UI::SET_WAYPOINT_OFF();  
--- 
function SetWaypointOff() end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param entryHeader string
--- @param entryLine1 string
--- @param flags number
--- @param entryLine2 string
--- @param p4 boolean
--- @param p5 any
--- @param p6 any
--- @param p7 any
--- @param showBg boolean
--- @param p9 any
--- @param p10 any
function SetWarningMessageWithHeaderUnk(entryHeader, entryLine1, flags, entryLine2, p4, p5, p6, p7, showBg, p9, p10) end

--- Enables or disables the blue half circle ![](https://i.imgur.com/iZes9Ec.png) around the specified blip on the left side of the blip. This is used to indicate that the player is in your crew in GTA:O. Color is changeable by using [SET_BLIP_SECONDARY_COLOUR](#_0x14892474891E09EB).
--- 
--- To toggle the right side of the circle use: [SHOW_FRIEND_INDICATOR_ON_BLIP](#_0x23C3EB807312F01A).
--- 
--- Example code result:
--- ![](https://i.imgur.com/iZ9tNWl.png)
--- @param blip Blip
--- @param toggle boolean
function ShowCrewIndicatorOnBlip(blip, toggle) end


--- @param p0 any
function SetWidescreenFormat(p0) end

--- 
--- Adds the GTA: Online player heading indicator to a blip.  
--- 
--- @param blip Blip
--- @param toggle boolean
function ShowHeadingIndicatorOnBlip(blip, toggle) end

--- Highlights a blip by a half cyan circle on the right side of the blip. ![](https://i.imgur.com/FrV9M4e.png) Indicating that that player is a friend (in GTA:O). This color can not be changed.
--- 
--- To toggle the left side (crew member indicator) of the half circle around the blip, use: [SHOW_CREW_INDICATOR_ON_BLIP](#_0xDCFB5D4DB8BF367E).
--- @param blip Blip
--- @param toggle boolean
function ShowFriendIndicatorOnBlip(blip, toggle) end

--- This function shows various HUD (Heads-up Display) components.
--- 
--- Listed below are the integers and the corresponding HUD component.
--- 
--- -   1 : WANTED_STARS
--- -   2 : WEAPON_ICON
--- -   3 : CASH
--- -   4 : MP_CASH
--- -   5 : MP_MESSAGE
--- -   6 : VEHICLE_NAME
--- -   7 : AREA_NAME
--- -   8 : VEHICLE_CLASS
--- -   9 : STREET_NAME
--- -   10 : HELP_TEXT
--- -   11 : FLOATING_HELP_TEXT_1
--- -   12 : FLOATING_HELP_TEXT_2
--- -   13 : CASH_CHANGE
--- -   14 : RETICLE
--- -   15 : SUBTITLE_TEXT
--- -   16 : RADIO_STATIONS
--- -   17 : SAVING_GAME
--- -   18 : GAME_STREAM
--- -   19 : WEAPON_WHEEL
--- -   20 : WEAPON_WHEEL_STATS
--- -   21 : HUD_COMPONENTS
--- -   22 : HUD_WEAPONS
--- 
--- These integers also work for the [HIDE_HUD_COMPONENT_THIS_FRAME](#_0x6806C51AD12B83B8) native, but instead hides the HUD component.
--- @param id number
function ShowHudComponentThisFrame(id) end

