--- 
--- List of picNames: pastebin.com/XdpJVbHz  
--- flash is a bool for fading in.  
--- iconTypes:  
--- 1 : Chat Box  
--- 2 : Email  
--- 3 : Add Friend Request  
--- 4 : Nothing  
--- 5 : Nothing  
--- 6 : Nothing  
--- 7 : Right Jumping Arrow  
--- 8 : RP Icon  
--- 9 : $ Icon  
--- "sender" is the very top header. This can be any old string.  
--- "subject" is the header under the sender.  
--- "duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
--- "clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)  
--- iconType2 is a mirror of iconType. It shows in the "subject" line, right under the original iconType.  
--- int IconNotification(char *text, char *text2, char *Subject)  
--- {  
--- 	_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
--- 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- 	_SET_NOTIFICATION_MESSAGE_CLAN_TAG_2("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 1, 7, text2, Subject, 1.0f, "__EXAMPLE", 7);  
--- 	return _DRAW_NOTIFICATION(1, 1);  
--- }  
--- 
--- @param picTxd string
--- @param picTxn string
--- @param flash boolean
--- @param iconType1 number
--- @param nameStr string
--- @param subtitleStr string
--- @param duration number
--- @param crewPackedStr string
--- @param iconType2 number
--- @param textColor number
--- @return number
function EndTextCommandThefeedPostMessagetextWithCrewTagAndAdditionalIcon(picTxd, picTxn, flash, iconType1, nameStr, subtitleStr, duration, crewPackedStr, iconType2, textColor) end

--- 
--- Removes all game feed posts and unfreezes (see 0xFDB423997FA30340) CGameStreamMgr
--- 
--- @param isImportant boolean
--- @param bHasTokens boolean
--- @return number
function EndTextCommandThefeedPostTickerForced(isImportant, bHasTokens) end


--- @param isImportant boolean
--- @param bHasTokens boolean
--- @return number
function EndTextCommandThefeedPostTickerWithTokens(isImportant, bHasTokens) end

--- 
--- returns a notification handle, prints out a notification like below:  
--- type range: 0   
--- if you set type to 1, image goes from 0 - 39 - Xbox you can add text to  
--- example:   
--- UI::_0xD202B92CBF1D816F(1, 20, "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");  
--- 
--- @param eType number
--- @param iIcon number
--- @param sTitle string
--- @return number
function EndTextCommandThefeedPostReplayIcon(eType, iIcon, sTitle) end


--- @param chTitle string
--- @param iconType number
--- @param chSubtitle string
--- @param isImportant boolean
--- @return any
function EndTextCommandThefeedPostUnlockTu(chTitle, iconType, chSubtitle, isImportant) end

--- Example output preview:
--- 
--- ![](https://i.imgur.com/TJvqkYq.png)
--- @param isImportant boolean
--- @param bHasTokens boolean
--- @return number
function EndTextCommandThefeedPostTicker(isImportant, bHasTokens) end

--- 
--- NativeDB Added Parameter 7: int hudColorIndex1
--- NativeDB Added Parameter 8: int hudColorIndex2
--- 
--- @param ch1TXD string
--- @param ch1TXN string
--- @param val1 number
--- @param ch2TXD string
--- @param ch2TXN string
--- @param val2 number
--- @return number
function EndTextCommandThefeedPostVersusTu(ch1TXD, ch1TXN, val1, ch2TXD, ch2TXN, val2) end


--- @param chTitle string
--- @param iconType number
--- @param chSubtitle string
--- @return any
function EndTextCommandThefeedPostUnlock(chTitle, iconType, chSubtitle) end

--- 
--- If set to true ability bar will flash  
--- 
--- 
--- 
--- NativeDB Parameter 0: int millisecondsToFlash
--- 
--- @param millisecondsToFlash boolean
function FlashAbilityBar(millisecondsToFlash) end


--- @param hudColorIndex number
function FlashMinimapDisplayWithColor(hudColorIndex) end


--- @param chTitle string
--- @param iconType number
--- @param chSubtitle string
--- @param isImportant boolean
--- @param titleColor number
--- @param p5 boolean
--- @return any
function EndTextCommandThefeedPostUnlockTuWithColor(chTitle, iconType, chSubtitle, isImportant, titleColor, p5) end

--- 
--- Hides the hud element displayed by _0x523A590C1A3CC0D3  
--- 
function ForceCloseReportugcMenu() end


--- @param toggle boolean
function FlagPlayerContextInTournament(toggle) end


function ForceCloseTextInputBox() end

--- 
--- adds a short flash to the Radar/Minimap  
--- Usage: UI.FLASH_MINIMAP_DISPLAY  
--- 
function FlashMinimapDisplay() end

--- 
--- Returns the current AI BLIP for the specified ped  
--- 
--- @param ped Ped
--- @return Blip
function GetAiBlip(ped) end


--- @param blip Blip
--- @return number
function GetBlipAlpha(blip) end

--- 
--- NativeDB Return Type: void
--- 
--- @param p0 boolean
--- @return any
function FlashWantedDisplay(p0) end


--- @param blip Blip
--- @return vector3
function GetBlipCoords(blip) end

--- 
--- Doesn't actually return anything.
--- 
--- @return any
function ForceSonarBlipsThisFrame() end

--- 
--- Returns the Blip handle of given Entity.  
--- 
--- @param entity Entity
--- @return Blip
function GetBlipFromEntity(entity) end


--- @param blip Blip
--- @return vector3
function GetBlipInfoIdCoord(blip) end

--- 
--- NativeDB Return Type: Blip
--- 
--- @param ped Ped
function GetAiBlip2(ped) end


--- @param blip Blip
--- @return Entity
function GetBlipInfoIdEntityIndex(blip) end


--- @param blip Blip
--- @return number
function GetBlipColour(blip) end

--- 
--- Returns a value based on what the blip is attached to  
--- 1   
--- 2   
--- 3   
--- 4   
--- 5   
--- 6   
--- 7  
--- 
--- @param blip Blip
--- @return number
function GetBlipInfoIdType(blip) end


--- @param blip Blip
--- @return number
function GetBlipHudColour(blip) end

--- 
--- This function is hard-coded to always return 0.  
--- 
--- @param blip Blip
--- @return Pickup
function GetBlipInfoIdPickupIndex(blip) end


--- @param blip Blip
--- @return number
function GetBlipInfoIdDisplay(blip) end

--- 
--- if (UI::_2309595AD6145265() == ${fe_menu_version_empty_no_background})  
--- Seems to get the current frontend menu  
--- 
--- @return Hash
function GetCurrentFrontendMenuVersion() end


--- @return number
function GetBlipInfoIdIterator() end


--- @return number
function GetCurrentWebsiteId() end

--- 
--- 8 = waypoint  
--- 
--- @param blipSprite number
--- @return Blip
function GetFirstBlipInfoId(blipSprite) end

--- 
--- Blips Images + IDs:  
--- gtaxscripting.blogspot.com/2016/05/gta-v-blips-id-and-image.html  
--- 
--- @param blip Blip
--- @return number
function GetBlipSprite(blip) end

--- 
--- HUD colors and their values: pastebin.com/d9aHPbXN  
--- 
--- @param hudColorIndex number
--- @param r number
--- @param g number
--- @param b number
--- @param a number
function GetHudColour(hudColorIndex, r, g, b, a) end

--- 
--- native only found once in appinternet.c4  
--- same thing as this but does not need websiteID  
--- Any _0xE3B05614DCE1D014(Any p0) // 0xE3B05614DCE1D014 0xD217EE7E  
--- returns current websitePageID  
--- 
--- @return number
function GetCurrentWebpageId() end

--- 
--- World to relative screen coords
--- this world to screen will keep the text on screen. it will keep it in the screen pos
--- 
--- @param worldX number
--- @param worldY number
--- @param worldZ number
--- @param screenX number
--- @param screenY number
--- @return boolean
function GetHudScreenPositionFromWorldPosition(worldX, worldY, worldZ, screenX, screenY) end

--- 
--- Returns the length of the string passed (much like strlen).  
--- 
--- @param string string
--- @return number
function GetLengthOfLiteralString(string) end

--- 
--- This function is hard-coded to always return 1.  
--- 
--- @return number
function GetDefaultScriptRendertargetRenderId() end


--- @param id number
--- @return vector3
function GetHudComponentPosition(id) end

--- 
--- gets the length of a null terminated string, without checking unicode encodings  
--- 
--- @param string string
--- @return number
function GetLengthOfLiteralStringInBytes(string) end

--- 
--- NativeDB Return Type: int
--- 
--- @return boolean
function GetLevelBlipSprite() end

--- 
--- Gets a string literal from a label name.  
--- 
--- @param labelName string
--- @return string
function GetLabelText(labelName) end


--- @return number
function GetMinimapRevealPercentage() end

--- 
--- Returns the string length of the string from the gxt string .  
--- 
--- @param gxt string
--- @return number
function GetLengthOfStringWithThisTextLabel(gxt) end


--- @return Blip
function GetNewSelectedMissionCreatorBlip() end


--- @return number
function GetNumberOfActiveBlips() end


--- @return Blip
function GetMainPlayerBlipId() end

--- 
--- This functions converts the hash of a street name into a readable string.  
--- For how to get the hashes, see PATHFIND::GET_STREET_NAME_AT_COORD.  
--- 
--- @param hash Hash
--- @return string
function GetStreetNameFromHashKey(hash) end


--- @param name string
--- @return number
function GetNamedRendertargetRenderId(name) end

--- 
--- This get's the height of the FONT and not the total text. You need to get the number of lines your text uses, and get the height of a newline (I'm using a smaller value) to get the total text height.  
--- 
--- @param size number
--- @param font number
--- @return number
function GetTextScaleHeight(size, font) end

--- 
--- Returns a substring of a specified length starting at a specified position. The result is guaranteed not to exceed the specified max length.  
--- NOTE: The 'maxLength' parameter might actually be the size of the buffer that is returned. More research is needed. -CL69  
--- Example:  
--- // Condensed example of how Rockstar uses this function  
--- strLen = UI::GET_LENGTH_OF_LITERAL_STRING(GAMEPLAY::GET_ONSCREEN_KEYBOARD_RESULT());  
--- subStr = UI::_GET_TEXT_SUBSTRING_SAFE(GAMEPLAY::GET_ONSCREEN_KEYBOARD_RESULT(), 0, strLen, 63);  
--- --  
--- "fm_race_creator.ysc", line 85115:  
--- // parameters modified for clarity  
--- BOOL sub_8e5aa(char *text, int length) {  
---     for (i = 0; i <= (length - 2); i += 1) {  
---         if (!GAMEPLAY::ARE_STRINGS_EQUAL(UI::_GET_TEXT_SUBSTRING_SAFE(text, i, i + 1, 1), " ")) {  
---             return FALSE;  
---         }  
---     }  
---     return TRUE;  
--- }  
--- 
--- @param text string
--- @param position number
--- @param length number
--- @param maxLength number
--- @return string
function GetTextSubstringSafe(text, position, length, maxLength) end


--- @param blipSprite number
--- @return Blip
function GetNextBlipInfoId(blipSprite) end

--- 
--- Returns:  
--- 5  
--- 10  
--- 15  
--- 20  
--- 25  
--- 30  
--- 35  
--- 
--- @return number
function GetPauseMenuState() end

--- 
--- NativeDB Introduced: v1290
--- 
--- @return Hash
function GetWarningMessageTitleHash() end

--- 
--- p1 is either 1 or 2 in the PC scripts.  
--- 
--- 
--- This native is used to "give"/duplicate a player ped to a frontend menu as configured via the ACTIVATE_FRONTEND_MENU native, you first must utilize the CLONE_PED ( <https://runtime.fivem.net/doc/natives/#_0xEF29A16337FACADB> ) to clone said ped.
--- @param ped Ped
--- @param p1 number
function GivePedToPauseMenu(ped, p1) end

--- 
--- Checks if the specified gxt has loaded into the passed slot.  
--- 
--- @param gxt string
--- @param slot number
--- @return boolean
function HasThisAdditionalTextLoaded(gxt, slot) end

--- 
--- HIDE_*_THIS_FRAME
--- 
--- Hides area and vehicle name HUD components for one frame.
--- 
function HideAreaAndVehicleNameThisFrame() end

--- 
--- Returns a substring of a specified length starting at a specified position.  
--- Example:  
--- // Get "STRING" text from "MY_STRING"  
--- subStr = UI::_GET_TEXT_SUBSTRING("MY_STRING", 3, 6);  
--- 
--- @param text string
--- @param position number
--- @param length number
--- @return string
function GetTextSubstring(text, position, length) end

--- 
--- I think this works, but seems to prohibit switching to other weapons (or accessing the weapon wheel)  
--- 
function HideHudAndRadarThisFrame() end

--- 
--- Returns a substring that is between two specified positions. The length of the string will be calculated using (endPosition - startPosition).  
--- Example:  
--- // Get "STRING" text from "MY_STRING"  
--- subStr = UI::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 9);  
--- // Overflows are possibly replaced with underscores (needs verification)  
--- subStr = UI::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 10); // "STRING_"?  
--- 
--- @param text string
--- @param startPosition number
--- @param endPosition number
--- @return string
function GetTextSubstringSlice(text, startPosition, endPosition) end


function HideLoadingOnFadeThisFrame() end


--- @param slot number
--- @return boolean
function HasAdditionalTextLoaded(slot) end


function HideMinimapExteriorMapThisFrame() end

--- 
--- HAS_*
--- 
--- @return boolean
function HasDirectorModeBeenTriggered() end


--- @param blip Blip
function HideNumberOnBlip(blip) end


function HideHelpTextThisFrame() end

--- 
--- Forces the weapon wheel to appear on screen.  
--- 
--- @param show boolean
function HudForceWeaponWheel(show) end

--- 
--- Returns the weapon hash to the selected/highlighted weapon in the wheel
--- 
--- @return Hash
function HudWeaponWheelGetSelectedHash() end

--- 
--- calling this each frame, it stops the player from receiving a weapon via the weapon wheel.
--- 
function HudWeaponWheelIgnoreSelection() end

--- This function hides various HUD (Heads-up Display) components.
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
--- These integers also work for the [SHOW_HUD_COMPONENT_THIS_FRAME](#_0x0B4DF1FA60C0E664) native, but instead shows the HUD Component.
--- @param id number
function HideHudComponentThisFrame(id) end

--- 
--- Set the active slotIndex in the wheel weapon to the slot associated with the provided Weapon hash
--- 
--- @param weaponHash Hash
function HudWeaponWheelSetSlotHash(weaponHash) end


function HideMinimapInteriorMapThisFrame() end


--- @param id number
function HideScriptedHudComponentThisFrame(id) end

--- 
--- Return the weapon hash active in a specific weapon wheel slotList
--- 
--- @param weaponTypeIndex number
--- @return any
function HudWeaponWheelGetSlotHash(weaponTypeIndex) end


--- @param blip Blip
--- @return boolean
function IsBlipFlashing(blip) end

--- 
--- Sets a global that disables many weapon input tasks (shooting, aiming, etc.). Does not work with vehicle weapons, only used in selector.ysc
--- 
--- @param toggle boolean
function HudWeaponWheelIgnoreControlInput(toggle) end


--- @param blip Blip
--- @return boolean
function IsBlipOnMinimap(blip) end


--- @param blip Blip
--- @return boolean
function IsBlipShortRange(blip) end


--- @return boolean
function IsFrontendReadyForControl() end


--- @param hudIndex number
--- @return boolean
function IsFloatingHelpTextOnScreen(hudIndex) end


--- @return boolean
function IsHelpMessageFadingOut() end


--- @return boolean
function IsHoveringOverMissionCreatorBlip() end


--- @return boolean
function IsHudHidden() end


--- @return boolean
function IsHelpMessageBeingDisplayed() end

--- 
--- Doesn't appear to work, use IS_HELP_MESSAGE_BEING_DISPLAYED instead  
--- 
--- @return boolean
function IsHelpMessageOnScreen() end


--- @return boolean
function IsMinimapInInterior() end


--- @param blip Blip
--- @return boolean
function IsMissionCreatorBlip(blip) end

--- 
--- Full list of components below  
--- HUD = 0;  
--- HUD_WANTED_STARS = 1;  
--- HUD_WEAPON_ICON = 2;  
--- HUD_CASH = 3;  
--- HUD_MP_CASH = 4;  
--- HUD_MP_MESSAGE = 5;  
--- HUD_VEHICLE_NAME = 6;  
--- HUD_AREA_NAME = 7;  
--- HUD_VEHICLE_CLASS = 8;  
--- HUD_STREET_NAME = 9;  
--- HUD_HELP_TEXT = 10;  
--- HUD_FLOATING_HELP_TEXT_1 = 11;  
--- HUD_FLOATING_HELP_TEXT_2 = 12;  
--- HUD_CASH_CHANGE = 13;  
--- HUD_RETICLE = 14;  
--- HUD_SUBTITLE_TEXT = 15;  
--- HUD_RADIO_STATIONS = 16;  
--- HUD_SAVING_GAME = 17;  
--- HUD_GAME_STREAM = 18;  
--- HUD_WEAPON_WHEEL = 19;  
--- HUD_WEAPON_WHEEL_STATS = 20;  
--- MAX_HUD_COMPONENTS = 21;  
--- MAX_HUD_WEAPONS = 22;  
--- MAX_SCRIPTED_HUD_COMPONENTS = 141;  
--- 
--- @param id number
--- @return boolean
function IsHudComponentActive(id) end


--- @param gamerTagId number
--- @return boolean
function IsMpGamerTagActive(gamerTagId) end

--- 
--- _IS_MP_GAMER_TAG_ACTIVE_2  
--- 
--- @param gamerTagId number
--- @return boolean
function IsMpGamerTagFree(gamerTagId) end


--- @return boolean
function IsHudPreferenceSwitchedOn() end

--- 
--- Returns whether or not the text chat (MULTIPLAYER_CHAT Scaleform component) is active.  
--- 
--- @return boolean
function IsMultiplayerChatActive() end


--- @return boolean
function IsMessageBeingDisplayed() end


--- @param name string
--- @return boolean
function IsNamedRendertargetRegistered(name) end

--- Returns the same as IS_SOCIAL_CLUB_ACTIVE.
--- @return boolean
function IsOnlinePoliciesMenuActive() end

--- 
--- GET_MI*
--- 
--- @param x number
--- @param y number
--- @param radius number
--- @return boolean
function IsMinimapAreaRevealed(x, y, radius) end


--- @return boolean
function IsPauseMenuRestarting() end


--- @return boolean
function IsRadarHidden() end


--- @return boolean
function IsMinimapRendering() end


--- @return boolean
function IsRadarPreferenceSwitchedOn() end


--- @return boolean
function IsMpGamerTagMovieActive() end


--- @param id number
--- @return boolean
function IsScriptedHudComponentHiddenThisFrame(id) end


--- @return boolean
function IsSocialClubActive() end


--- @param modelHash Hash
--- @return boolean
function IsNamedRendertargetLinked(modelHash) end


--- @return boolean
function IsSubtitlePreferenceSwitchedOn() end


--- @return boolean
function IsPauseMenuActive() end

--- 
--- IS_*
--- 
--- @param gamerTagId number
--- @return boolean
function IsValidMpGamerTagMovie(gamerTagId) end

--- 
--- IS_WARNING_MESSAGE_*
--- 
--- @return boolean
function IsWarningMessageActive2() end

--- 
--- return bool according to scripts  
--- 
--- @return boolean
function IsReportugcMenuOpen() end


--- @param modelHash Hash
function LinkNamedRendertarget(modelHash) end

--- 
--- Locks the minimap to the specified angle in integer degrees.  
--- angle: The angle in whole degrees. If less than 0 or greater than 360, unlocks the angle.  
--- 
--- @param angle number
function LockMinimapAngle(angle) end


--- @param id number
--- @return boolean
function IsScriptedHudComponentActive(id) end

--- 
--- Not present in retail version of the game, actual definiton seems to be  
--- _LOG_DEBUG_INFO(char* category, char* debugText);  
--- 
--- @param p0 string
function LogDebugInfo(p0) end


--- @param p0 number
--- @return boolean
function IsStreamingAdditionalText(p0) end


--- @return boolean
function IsWarningMessageActive() end


--- @return boolean
function IsWaypointActive() end

--- 
--- Locks the minimap to the specified world position.  
--- 
--- @param x number
--- @param y number
function LockMinimapPosition(x, y) end

--- Enables loading screen tips to be be shown (_0x15CFA549788D35EF and _0x488043841BBE156F), blocks other kinds of notifications from being displayed (at least from current script). Call 0xADED7F5748ACAFE6 to display those again.
function ThefeedForceRenderOff() end


function ThefeedCommentTeleportPoolOff() end

--- 
--- Shows a hud element for reporting jobs  
--- 
function OpenReportugcMenu() end

--- 
--- probs one frame  
--- 
function OpenOnlinePoliciesMenu() end

--- Uses the SOCIAL_CLUB2 scaleform. <https://i.imgur.com/KleabIw.png>
--- 
--- Old name: _SHOW_SOCIAL_CLUB_BANNED_SCREEN
function OpenSocialClubMenu() end

--- 
--- NativeDB Parameter 0: Hash gxtEntryHash
--- 
--- @param gxtEntryHash any
function OverrideMultiplayerChatPrefix(gxtEntryHash) end


--- @param p0 number
--- @param hudColor number
function OverrideMultiplayerChatColour(p0, hudColor) end

--- Activates the specified frontend menu context.
--- 
--- pausemenu.xml defines some specific menu options using 'context'. Context is basically a 'condition'. 
--- 
--- The *ALL* part of the context means that whatever is being defined, will be active when any or all of those conditions after *ALL* are met.
--- 
--- The *NONE* part of the context section means that whatever is being defined, will NOT be active if any or all of the conditions after *NONE* are met.
--- 
--- This basically allows you to hide certain menu sections, or things like instructional buttons.
--- 
--- See the old description below for more info.
--- 
--- * * *
--- 
--- > Seems to add/set the current menu context (to show/hide buttons?)
--- > Pausemenu.xml:
--- > <Contexts>*ALL*, DISPLAY_CORONA_BUTTONS, *NONE*, BET_LOCKED, BET_AVAILABLE, SCROLL_OPTION</Contexts>
--- > Code:
--- >
--- > 
--- > if (...) {
--- >     sub_bbd34(a_0, 0, "FM_BET_HELP");
--- >     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_available}); // This native
--- >     UI::OBJECT_DECAL_TOGGLE(${bet_locked});
--- > } else {
--- >     sub_bbd34(a_0, 0, "");
--- >     UI::OBJECT_DECAL_TOGGLE(${bet_available});
--- >     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_locked}); // This native
--- > }
--- > 
--- >
--- > OBJECT_DECAL_TOGGLE seems to remove a context, It also has a hash collision
--- > // Old
--- > Scripts do not make this native's purpose clear. However, this native most likely has something to do with decals since in nearly every instance, "OBJECT_DECAL_TOGGLE" is called prior.
--- @param hash Hash
function PauseMenuActivateContext(hash) end


--- @param contextHash Hash
--- @return boolean
function PauseMenuIsContextActive(contextHash) end


--- @param contextHash Hash
function PauseMenuDeactivateContext(contextHash) end

--- 
--- Often called after _REMOVE_LOADING_PROMPT. Unsure what exactly it does, but It references busy_spinner, I can only guess its freeing the busy_spinner scaleform from memory  
--- 
function PreloadBusyspinner() end


--- @param blip Blip
function PulseBlip(blip) end

--- 
--- Add a BLIP_GALLERY at the specific coordinate.
--- Used in fm_maintain_transition_players to display race track points.
--- 
--- @param x number
--- @param y number
--- @param z number
--- @return any
function RaceGalleryAddBlip(x, y, z) end

--- 
--- Sets the sprite of the next BLIP_GALLERY blip, values used in the native scripts: 143 (ObjectiveBlue), 144 (ObjectiveGreen), 145 (ObjectiveRed), 146 (ObjectiveYellow).
--- 
--- @param spriteId number
function RaceGalleryNextBlipSprite(spriteId) end


function RefreshWaypoint() end


--- @param name string
--- @return boolean
function ReleaseNamedRendertarget(name) end


--- @param name string
--- @param p1 boolean
--- @return boolean
function RegisterNamedRendertarget(name, p1) end

--- 
--- In the C++ SDK, this seems not to work-- the blip isn't removed immediately. I use it for saving cars.  
--- E.g.:  
--- Ped pped = PLAYER::PLAYER_PED_ID();  
--- Vehicle v = PED::GET_VEHICLE_PED_IS_USING(pped);  
--- Blip b = UI::ADD_BLIP_FOR_ENTITY(v);  
--- works fine.  
--- But later attempting to delete it with:  
--- Blip b = UI::GET_BLIP_FROM_ENTITY(v);  
--- if (UI::DOES_BLIP_EXIST(b)) UI::REMOVE_BLIP(&b);  
--- doesn't work. And yes, doesn't work without the DOES_BLIP_EXIST check either. Also, if you attach multiple blips to the same thing (say, a vehicle), and that thing disappears, the blips randomly attach to other things (in my case, a vehicle).  
--- Thus for me, UI::REMOVE_BLIP(&b) only works if there's one blip, (in my case) the vehicle is marked as no longer needed, you drive away from it and it eventually despawns, AND there is only one blip attached to it. I never intentionally attach multiple blips but if the user saves the car, this adds a blip. Then if they delete it, it is supposed to remove the blip, but it doesn't. Then they can immediately save it again, causing another blip to re-appear.  
--- -------------  
--- Passing the address of the variable instead of the value works for me.  
--- e.g.  
--- int blip = UI::ADD_BLIP_FOR_ENTITY(ped);  
--- UI::REMOVE_BLIP(&blip);  
--- Remove blip will currently crash your game, just artificially remove the blip by setting the sprite to a id that is 'invisible'.  
--- --  
--- It crashes my game.  
--- 
--- @param blip Blip
function RemoveBlip(blip) end


--- @param gamerTagId number
function RemoveMpGamerTag(gamerTagId) end


function RemoveMultiplayerBankCash() end


function RemoveMultiplayerWalletCash() end

--- 
--- Removes multiplayer cash hud each frame  
--- 
function RemoveMultiplayerHudCash() end

--- 
--- HUD colors and their values: pastebin.com/d9aHPbXN  
--- --------------------------------------------------  
--- makes hudColorIndex2 color into hudColorIndex color  
--- 
--- @param hudColorIndex number
--- @param hudColorIndex2 number
function ReplaceHudColour(hudColorIndex, hudColorIndex2) end


function RemoveWarningMessageListItems() end

--- 
--- HUD colors and their values: pastebin.com/d9aHPbXN  
--- 
--- @param hudColorIndex number
--- @param r number
--- @param g number
--- @param b number
--- @param a number
function ReplaceHudColourWithRgba(hudColorIndex, r, g, b, a) end

--- 
--- Request a gxt into the passed slot.  
--- 
--- @param gxt string
--- @param slot number
function RequestAdditionalText(gxt, slot) end


--- @param gxt string
--- @param slot number
function RequestAdditionalTextForDlc(gxt, slot) end


--- @param id number
function ResetHudComponentValues(id) end


function ResetReticuleValues() end

--- 
--- Before using this native click the native above and look at the decription.  
--- Example:  
--- int GetHash = Function.Call<int>(Hash.GET_HASH_KEY, "fe_menu_version_corona_lobby");  
--- Function.Call(Hash.ACTIVATE_FRONTEND_MENU, GetHash, 0, -1);  
--- Function.Call(Hash.RESTART_FRONTEND_MENU(GetHash, -1);  
--- This native refreshes the frontend menu.  
--- p1 = Hash of Menu  
--- p2 = Unknown but always works with -1.  
--- 
--- @param menuHash Hash
--- @param p1 number
function RestartFrontendMenu(menuHash, p1) end

--- 
--- If 'value' is 50 and 'maxValue' is 100, the bar is halfway filled.  
--- Same with 5/10, 2/4, etc.  
--- 
--- @param value number
--- @param maxValue number
function SetAbilityBarValue(value, maxValue) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param visible boolean
function SetAbilityBarVisibilityInMultiplayer(visible) end

--- 
--- Sets alpha-channel for blip color.  
--- Example:  
--- Blip blip = UI::ADD_BLIP_FOR_ENTITY(entity);  
--- UI::SET_BLIP_COLOUR(blip , 3);  
--- UI::SET_BLIP_ALPHA(blip , 64);  
--- 
--- @param blip Blip
--- @param alpha number
function SetBlipAlpha(blip, alpha) end

--- Toggles the big minimap state like in GTA:Online.
--- 
--- To get the current state of the minimap, use [GetBigmapActive](#_0xF6AE18A7).
--- @param toggleBigMap boolean
--- @param showFullMap boolean
function SetBigmapActive(toggleBigMap, showFullMap) end

--- 
--- false for enemy  
--- true for friendly  
--- 
--- @param blip Blip
--- @param toggle boolean
function SetBlipAsFriendly(blip, toggle) end

--- Sets whether or not the specified blip should only be displayed when nearby, or on the minimap.
--- @param blip Blip
--- @param toggle boolean
function SetBlipAsShortRange(blip, toggle) end


--- @param blip Blip
--- @param toggle boolean
function SetBlipAsMissionCreatorBlip(blip, toggle) end


--- @param blip Blip
--- @param toggle boolean
function SetBlipBright(blip, toggle) end

--- 
--- (Hex code are approximate)  
--- 0: White (#fefefe)  
--- 1: Red (#e03232)  
--- 2: Green (#71cb71)  
--- 3: Blue (#5db6e5)  
--- 4: White (#fefefe)  
--- 5: Taxi Yellow (#eec64e)  
--- 6: Light Red (#c25050)  
--- 7: Violet (#9c6eaf)  
--- 8: Pink (#fe7ac3)  
--- 9: Light Orange (#f59d79)  
--- 10: Light Brown (#b18f83)  
--- 11: Light Green (#8dcea7)  
--- 12: Light Blue (Teal) (#70a8ae)  
--- 13: Very Light Purple (#d3d1e7)  
--- 14: Dark Purple (#8f7e98)  
--- 15: Cyan (#6ac4bf)  
--- 16: Light Yellow (#d5c398)  
--- 17: Orange (#ea8e50)  
--- 18: Light Blue (#97cae9)  
--- 19: Dark Pink (#b26287)  
--- 20: Dark Yellow (#8f8d79)  
--- 21: Dark Orange (#a6755e)  
--- 22: Light Gray (#afa8a8)  
--- 23: Light Pink (#e78d9a)  
--- 24: Lemon Green (#bbd65b)  
--- 25: Forest Green (#0c7b56)  
--- 26: Electric Blue (#7ac3fe)  
--- 27: Bright Purple (#ab3ce6)  
--- 28: Dark Taxi Yellow (#cda80c)  
--- 29: Dark Blue (#4561ab)  
--- 30: Dark Cyan (#29a5b8)  
--- 31: Light Brown (#b89b7b)  
--- 32: Very Light Blue (#c8e0fe)  
--- 33: Light Yellow (#f0f096)  
--- 34: Light Pink (#ed8ca1)  
--- 35: Light Red (#f98a8a)  
--- 36: Light Yellow (#fbeea5)  
--- 37: White (#fefefe)  
--- 38: Blue (#2c6db8)  
--- 39: Light Gray (#9a9a9a)  
--- 40: Dark Gray (#4c4c4c)  
--- Certainly a lot more remaining.  
--- 
--- @param blip Blip
--- @param color number
function SetBlipColour(blip, color) end

