--- Disables the radio station from the radio wheel.  
--- Note: You cannot disable LSUR, WCTR and Blaine County Radio.  
--- 
--- List of known station names;
--- 
--- 
--- RADIO_01_CLASS_ROCK  
--- RADIO_02_POP  
--- RADIO_03_HIPHOP_NEW  
--- RADIO_04_PUNK  
--- RADIO_05_TALK_01  
--- RADIO_06_COUNTRY  
--- RADIO_07_DANCE_01  
--- RADIO_08_MEXICAN  
--- RADIO_09_HIPHOP_OLD  
--- RADIO_12_REGGAE  
--- RADIO_13_JAZZ  
--- RADIO_14_DANCE_02  
--- RADIO_15_MOTOWN  
--- RADIO_20_THELAB  
--- RADIO_16_SILVERLAKE  
--- RADIO_17_FUNK  
--- RADIO_18_90S_ROCK  
--- RADIO_21_DLC_XM17  
--- RADIO_22_DLC_BATTLE_MIX1_RADIO  
--- RADIO_19_USER 
--- HIDDEN_RADIO_AMBIENT_TV  
--- HIDDEN_RADIO_AMBIENT_TV_BRIGHT  
--- HIDDEN_RADIO_01_CLASS_ROCK  
--- HIDDEN_RADIO_ADVERTS  
--- HIDDEN_RADIO_02_POP  
--- HIDDEN_RADIO_03_HIPHOP_NEW  
--- HIDDEN_RADIO_04_PUNK  
--- HIDDEN_RADIO_06_COUNTRY  
--- HIDDEN_RADIO_07_DANCE_01  
--- HIDDEN_RADIO_09_HIPHOP_OLD  
--- HIDDEN_RADIO_12_REGGAE  
--- HIDDEN_RADIO_15_MOTOWN  
--- HIDDEN_RADIO_16_SILVERLAKE  
--- RADIO_22_DLC_BATTLE_MIX1_CLUB  
--- HIDDEN_RADIO_STRIP_CLUB  
--- DLC_BATTLE_MIX1_CLUB_PRIV  
--- HIDDEN_RADIO_BIKER_CLASSIC_ROCK  
--- DLC_BATTLE_MIX2_CLUB_PRIV  
--- HIDDEN_RADIO_BIKER_MODERN_ROCK  
--- RADIO_23_DLC_BATTLE_MIX2_CLUB  
--- RADIO_25_DLC_BATTLE_MIX4_CLUB  
--- DLC_BATTLE_MIX3_CLUB_PRIV  
--- RADIO_26_DLC_BATTLE_CLUB_WARMUP  
--- HIDDEN_RADIO_BIKER_PUNK  
--- RADIO_24_DLC_BATTLE_MIX3_CLUB  
--- DLC_BATTLE_MIX4_CLUB_PRIV  
--- HIDDEN_RADIO_BIKER_HIP_HOP  
--- 
--- @param stationName string
--- @param Toggle boolean
function SetRadioStationDisabled(stationName, Toggle) end

--- Does stuff like this:  
--- gyazo.com/7fcb78ea3520e3dbc5b2c0c0f3712617  
--- Example:  
--- int GetHash = GET_HASH_KEY("fe_menu_version_corona_lobby");  
--- ACTIVATE_FRONTEND_MENU(GetHash, 0, -1);  
--- BOOL p1 is a toggle to define the game in pause.  
--- int p2 is unknown but -1 always works, not sure why though.  
--- [30/03/2017] ins1de :  
--- the int p2 is actually a component variable. When the pause menu is visible, it opens the tab related to it.  
--- Example : Function.Call(Hash.ACTIVATE_FRONTEND_MENU,-1171018317, 0, 42);  
--- Result : Opens the "Online" tab without pausing the menu, with -1 it opens the map.  
--- 
--- Below is a list of all known Frontend Menu Hashes.
--- 
--- -   FE_MENU_VERSION_SP_PAUSE
--- -   FE_MENU_VERSION_MP_PAUSE
--- -   FE_MENU_VERSION_CREATOR_PAUSE
--- -   FE_MENU_VERSION_CUTSCENE_PAUSE
--- -   FE_MENU_VERSION_SAVEGAME
--- -   FE_MENU_VERSION_PRE_LOBBY
--- -   FE_MENU_VERSION_LOBBY
--- -   FE_MENU_VERSION_MP_CHARACTER_SELECT
--- -   FE_MENU_VERSION_MP_CHARACTER_CREATION
--- -   FE_MENU_VERSION_EMPTY
--- -   FE_MENU_VERSION_EMPTY_NO_BACKGROUND
--- -   FE_MENU_VERSION_TEXT_SELECTION
--- -   FE_MENU_VERSION_CORONA
--- -   FE_MENU_VERSION_CORONA_LOBBY
--- -   FE_MENU_VERSION_CORONA_JOINED_PLAYERS
--- -   FE_MENU_VERSION_CORONA_INVITE_PLAYERS
--- -   FE_MENU_VERSION_CORONA_INVITE_FRIENDS
--- -   FE_MENU_VERSION_CORONA_INVITE_CREWS
--- -   FE_MENU_VERSION_CORONA_INVITE_MATCHED_PLAYERS
--- -   FE_MENU_VERSION_CORONA_INVITE_LAST_JOB_PLAYERS
--- -   FE_MENU_VERSION_CORONA_RACE
--- -   FE_MENU_VERSION_CORONA_BETTING
--- -   FE_MENU_VERSION_JOINING_SCREEN
--- -   FE_MENU_VERSION_LANDING_MENU
--- -   FE_MENU_VERSION_LANDING_KEYMAPPING_MENU
--- @param menuhash Hash
--- @param togglePause boolean
--- @param component number
function ActivateFrontendMenu(menuhash, togglePause, component) end

--- Adds a rectangular blip for the specified coordinates/area.
--- 
--- It is recommended to use [SET_BLIP_ROTATION](#_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.
--- 
--- By default, the blip will show as a _regular_ blip with the specified color/sprite if it is outside of the minimap view.
--- 
--- Example image:
--- ![minimap](https://w.wew.wtf/pdcjig.png)
--- ![big map](https://w.wew.wtf/zgcjcm.png)
--- 
--- (Native name is _likely_ to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
--- @param x number
--- @param y number
--- @param z number
--- @param width number
--- @param height number
--- @return Blip
function AddBlipForArea(x, y, z, width, height) end

--- Creates a blip for the specified coordinates. You can use SET_BLIP_ natives to change the blip.
--- @param x number
--- @param y number
--- @param z number
--- @return Blip
function AddBlipForCoord(x, y, z) end


--- @param pickup Pickup
--- @return Blip
function AddBlipForPickup(pickup) end

--- 
--- Returns red ( default ) blip attached to entity.  
--- Example:  
--- Blip blip; //Put this outside your case or option  
--- blip = UI::ADD_BLIP_FOR_ENTITY(YourPedOrBodyguardName);  
--- UI::SET_BLIP_AS_FRIENDLY(blip, true);  
--- 
--- @param entity Entity
--- @return Blip
function AddBlipForEntity(entity) end


--- @param posX number
--- @param posY number
--- @param posZ number
--- @param radius number
--- @return Blip
function AddBlipForRadius(posX, posY, posZ, radius) end


--- @param p0 boolean
function AddNextMessageToPreviousBriefs(p0) end


--- @param x number
--- @param y number
--- @param z number
function AddPointToGpsCustomRoute(x, y, z) end


--- @param x number
--- @param y number
--- @param z number
function AddPointToGpsMultiRoute(x, y, z) end


--- @param value number
--- @param decimalPlaces number
function AddTextComponentFloat(value, decimalPlaces) end


--- @param value number
--- @param commaSeparated boolean
function AddTextComponentFormattedInteger(value, commaSeparated) end


--- @param blip Blip
function AddTextComponentSubstringBlipName(blip) end


--- @param value number
function AddTextComponentInteger(value) end


--- @param p0 string
function AddTextComponentSubstringKeyboardDisplay(p0) end

--- 
--- p1 was always -1.  
--- used for phone applications; scaleform  
--- 
--- @param p0 string
--- @param p1 number
function AddTextComponentSubstringPhoneNumber(p0, p1) end

--- Adds an arbitrary string as a text component placeholder, replacing ~a~ in the current text command's text label.
--- 
--- See the documentation on text formatting for more information.
--- @param text string
function AddTextComponentSubstringPlayerName(text) end

--- 
--- It adds the localized text of the specified GXT entry name. Eg. if the argument is GET_HASH_KEY("ES_HELP"), adds "Continue". Just uses a text labels hash key  
--- 
--- @param gxtEntryHash Hash
function AddTextComponentSubstringTextLabelHashKey(gxtEntryHash) end


--- @param labelName string
function AddTextComponentSubstringTextLabel(labelName) end

--- Allows opening the pause menu this frame, when the player is dead.
function AllowPauseMenuWhenDeadThisFrame() end

--- 
--- Initializes the text entry for the the text next to a loading prompt. All natives for for building UI texts can be used here  
--- BEGIN_TEXT_COMMAND_PRINT  
--- e.g  
--- void StartLoadingMessage(char *text, int spinnerType = 3)  
--- 	{  
--- _SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- _SHOW_LOADING_PROMPT(spinnerType);  
--- 	}  
--- /*OR*/  
--- 	void ShowLoadingMessage(char *text, int spinnerType = 3, int timeMs = 10000)  
--- 	{  
--- _SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- _SHOW_LOADING_PROMPT(spinnerType);  
--- WAIT(timeMs);  
--- _REMOVE_LOADING_PROMPT();  
--- 	}  
--- These are some localized strings used in the loading spinner.  
--- "PM_WAIT"                   = Please Wait  
--- "CELEB_WPLYRS"              = Waiting For Players.  
--- "CELL_SPINNER2"             = Scanning storage.  
--- "ERROR_CHECKYACHTNAME" = Registering your yacht's name. Please wait.  
--- "ERROR_CHECKPROFANITY"   = Checking your text for profanity. Please wait.  
--- "FM_COR_AUTOD"                        = Just spinner no text  
--- "FM_IHELP_WAT2"                        = Waiting for other players  
--- "FM_JIP_WAITO"                            = Game options are being set  
--- "FMMC_DOWNLOAD"                    = Downloading  
--- "FMMC_PLYLOAD"                         = Loading  
--- "FMMC_STARTTRAN"                    = Launching session  
--- "HUD_QUITTING"                           =  Quiting session  
--- "KILL_STRIP_IDM"                         = Waiting for to accept  
--- "MP_SPINLOADING"                      = Loading  
--- 
--- @param string string
function BeginTextCommandBusyspinnerOn(string) end

--- 
--- Adds a timer (e.g. "00:00:00:000"). The appearance of the timer depends on the flags, which needs more research.  
--- 
--- @param timestamp number
--- @param flags number
function AddTextComponentSubstringTime(timestamp, flags) end

--- 
--- clears a print text command with this text  
--- 
--- @param text string
function BeginTextCommandClearPrint(text) end

--- 
--- This native (along with 0x5F68520888E69014 and 0x6C188BE134E074AA) do not actually filter anything. They simply add the provided text (as of 944)  
--- 
--- @param website string
function AddTextComponentSubstringWebsite(website) end

--- 
--- BOOL IsContextActive(char *ctx)  
--- {  
--- 	BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(ctx);  
--- 	return END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(0);  
--- }  
--- 
--- @param labelName string
function BeginTextCommandIsThisHelpMessageBeingDisplayed(labelName) end

--- 
--- get's line count  
--- int GetLineCount(char *text, float x, float y)  
--- 	{  
--- _BEGIN_TEXT_COMMAND_LINE_COUNT("STRING");  
---                 ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- return _END_TEXT_COMMAND_GET_LINE_COUNT(x, y);  
--- 	}  
--- 
--- @param entry string
function BeginTextCommandLineCount(entry) end


--- @param p0 boolean
function AllowSonarBlips(p0) end

--- 
--- void message(char *text)  
--- {  
--- 	_BEGIN_TEXT_COMMAND_TIMER("STRING");  
--- 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- 	_END_TEXT_COMMAND_TIMER(0);  
--- }  
--- 
--- @param gxtEntry string
function BeginTextCommandOverrideButtonText(gxtEntry) end

--- Starts a text command to change the name of a blip displayed in the pause menu.
--- 
--- This should be paired with [END_TEXT_COMMAND_SET_BLIP_NAME](#_0xBC38B49BCB83BC9B), once adding all required text components.
--- @param textLabel string
function BeginTextCommandSetBlipName(textLabel) end

--- 
--- Used to be known as _SET_TEXT_COMPONENT_FORMAT  
--- 
--- @param inputType string
function BeginTextCommandDisplayHelp(inputType) end

--- Example output preview:
--- 
--- ![](https://i.imgur.com/TJvqkYq.png)
--- @param text string
function BeginTextCommandThefeedPost(text) end

--- 
--- The following were found in the decompiled script files:  
--- STRING, TWOSTRINGS, NUMBER, PERCENTAGE, FO_TWO_NUM, ESMINDOLLA, ESDOLLA, MTPHPER_XPNO, AHD_DIST, CMOD_STAT_0, CMOD_STAT_1, CMOD_STAT_2, CMOD_STAT_3, DFLT_MNU_OPT, F3A_TRAFDEST, ES_HELP_SOC3  
--- ESDOLLA   
--- ESMINDOLLA - cash (negative)  
--- Used to be known as _SET_TEXT_ENTRY  
--- 
--- @param text string
function BeginTextCommandDisplayText(text) end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return Pickup
function BusyspinnerIsDisplaying() end

--- 
--- nothin doin.   
--- BOOL Message(char* text)  
--- 	{  
--- BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED("STRING");  
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- return END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED();  
--- 	}  
--- 
--- @param text string
function BeginTextCommandIsMessageDisplayed(text) end


--- @return boolean
function BusyspinnerIsOn() end


--- @param p0 number
--- @param p1 boolean
function ClearAdditionalText(p0, p1) end

--- 
--- nothin doin.   
--- void message()  
--- 	{  
--- _BEGIN_TEXT_COMMAND_OBJECTIVE("AHT_RTIT");  
--- _END_TEXT_COMMAND_OBJECTIVE(0);  
--- 	}  
--- 
--- @param p0 string
function BeginTextCommandObjective(p0) end

--- Clears all active blip routes that have been set with [SetBlipRoute](#_0x3E160C90).
function ClearAllBlipRoutes() end


function ClearBrief() end

--- 
--- Used to be known as _SET_TEXT_ENTRY_2  
--- void ShowSubtitle(char *text)  
--- {  
--- 	BEGIN_TEXT_COMMAND_PRINT("STRING");  
--- 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- 	END_TEXT_COMMAND_PRINT(2000, 1);  
--- }  
--- 
--- @param GxtEntry string
function BeginTextCommandPrint(GxtEntry) end

--- 
--- p0 looks like int in script  
--- 
--- @param p0 any
--- @param p1 boolean
function ClearFloatingHelp(p0, p1) end

--- 
--- Example:  
--- _BEGIN_TEXT_COMMAND_WIDTH("NUMBER");  
--- ADD_TEXT_COMPONENT_FLOAT(69.420f, 2);  
--- float width = _END_TEXT_COMMAND_GET_WIDTH(true);  
--- 
--- @param text string
function BeginTextCommandWidth(text) end


function ClearGpsCustomRoute() end

--- 
--- Removes the loading prompt at the bottom right of the screen, created by the UI::_SHOW_LOADING_PROMPT native.  
--- 
function BusyspinnerOff() end

--- Does the same as [SET_GPS_MULTI_ROUTE_RENDER(false)](https://runtime.fivem.net/doc/reference.html#_0x3DDA37128DD1ACA8)
function ClearGpsMultiRoute() end


function ClearGpsPlayerWaypoint() end


function ClearAllHelpMessages() end


--- @param toggle boolean
function ClearHelp(toggle) end


function ClearDynamicPauseMenuErrorMessage() end


function ClearPrints() end

--- **This native does absolutely nothing, just a nullsub**
function ClearReminderMessage() end

--- 
--- Clears the GPS flags. Only the script that originally called SET_GPS_FLAGS can clear them.  
--- Doesn't seem like the flags are actually read by the game at all.  
--- 
function ClearGpsFlags() end


function ClearSmallPrints() end

--- 
--- Aborts the current message in the text chat.  
--- 
function CloseMultiplayerChat() end

--- 
--- Does the same as SET_RACE_TRACK_RENDER(false);
--- 
function ClearGpsRaceTrack() end


function CloseSocialClubMenu() end


function ClearPedInPauseMenu() end

--- 
--- Remove all BLIP_GALLERY blips from the map.
--- 
function ClearRaceGalleryBlips() end


--- @param player Player
--- @param username string
--- @param pointedClanTag boolean
--- @param isRockstarClan boolean
--- @param clanTag string
--- @param clanFlag number
--- @param r number
--- @param g number
--- @param b number
function CreateMpGamerTagWithCrewColor(player, username, pointedClanTag, isRockstarClan, clanTag, clanFlag, r, g, b) end


function DisableFrontendThisFrame() end


--- @param toggle boolean
function DisplayAreaName(toggle) end

--- 
--- p0: found arguments in the b617d scripts: pastebin.com/X5akCN7z  
--- 
--- @param p0 string
function ClearThisPrint(p0) end

--- 
--- "DISPLAY_CASH(false);" makes the cash amount render on the screen when appropriate  
--- "DISPLAY_CASH(true);" disables cash amount rendering  
--- 
--- @param toggle boolean
function DisplayCash(toggle) end

--- 
--- p0 was the return of NET_TO_PED in fm_mission_controler.  
--- p4 was always "".  
--- returns headDisplayId  
--- 
--- @param ped Ped
--- @param username string
--- @param pointedClanTag boolean
--- @param isRockstarClan boolean
--- @param clanTag string
--- @param clanFlag number
--- @return number
function CreateFakeMpGamerTag(ped, username, pointedClanTag, isRockstarClan, clanTag, clanFlag) end

--- 
--- If Hud should be displayed  
--- 
--- @param toggle boolean
function DisplayHud(toggle) end

--- 
--- If Minimap / Radar should be displayed.  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @param toggle boolean
--- @return any
function DisplayRadar(toggle) end


function DeleteWaypoint() end

--- 
--- Displays the crosshair for this frame.  
--- 
function DisplaySniperScopeThisFrame() end


--- @param display boolean
function DisplayAmmoThisFrame(display) end


--- @param blip Blip
--- @return boolean
function DoesBlipHaveGpsRoute(blip) end

--- 
--- Returns whether the ped's blip is controlled by the game.   
--- It's the default blip you can see on enemies during freeroam in singleplayer (the one that fades out quickly).  
--- 
--- @param ped Ped
--- @return boolean
function DoesPedHaveAiBlip(ped) end

--- 
--- The messages are localized strings.  
--- Examples:  
--- "No_bus_money"  
--- "Enter_bus"  
--- "Tour_help"  
--- "LETTERS_HELP2"  
--- "Dummy"  
--- **The bool appears to always be false (if it even is a bool, as it's represented by a zero)**  
--- --------  
--- p1 doesn't seem to make a difference, regardless of the state it's in.   
--- picture of where on the screen this is displayed?  
--- 
--- @param message string
--- @param p1 boolean
function DisplayHelpTextThisFrame(message, p1) end


function DisplayHudWhenPausedThisFrame() end

--- 
--- Checks if the passed gxt name exists in the game files.  
--- 
--- @param gxt string
--- @return boolean
function DoesTextLabelExist(gxt) end


--- @param blip Blip
--- @return boolean
function DoesBlipExist(blip) end


--- @param gxt string
--- @return boolean
function DoesTextBlockExist(gxt) end

--- 
--- This does NOT get called per frame. Call it once to show, then use UI::_REMOVE_LOADING_PROMPT to remove it  
--- Changes the the above native's (UI::_SET_LOADING_PROMPT_TEXT_ENTRY) spinning circle type.  
--- Types:  
--- enum LoadingPromptTypes  
--- {  
--- 	LOADING_PROMPT_LEFT,  
--- 	LOADING_PROMPT_LEFT_2,  
--- 	LOADING_PROMPT_LEFT_3,  
--- 	SAVE_PROMPT_LEFT,  
--- 	LOADING_PROMPT_RIGHT,  
--- };  
--- 
--- @param busySpinnerType number
function EndTextCommandBusyspinnerOn(busySpinnerType) end


function EndTextCommandClearPrint() end

--- 
--- When calling this, the current frame will have the players "arrow icon" be focused on the dead center of the radar.
--- 
function DontTiltMinimapThisFrame() end

--- 
--- -----------  
--- p3 (duration in MS) was previously mentioned as "shape", but with some more testing it seems that it's more likely to be a duration in MS. (Tested this when not calling it every tick, but instead only once and let it display for the specified duration).   
--- -1 seems to be default delay (around 3 seconds), 5000 (ms) seems to be the max. Anything > 5000 will still result in 5 seconds of display time.  
--- Old p3 (shape) description: "shape goes from -1 to 50 (may be more)."  
--- --------------  
--- p0 is always 0.  
--- Example:  
--- void FloatingHelpText(char* text)  
--- {  
--- 	BEGIN_TEXT_COMMAND_DISPLAY_HELP("STRING");  
--- 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
--- 	END_TEXT_COMMAND_DISPLAY_HELP (0, 0, 1, -1);  
--- }  
--- Image:  
--- - imgbin.org/images/26209.jpg  
--- more inputs/icons:  
--- - pastebin.com/nqNYWMSB  
--- Used to be known as _DISPLAY_HELP_TEXT_FROM_STRING_LABEL  
--- 
--- @param p0 number
--- @param loop boolean
--- @param beep boolean
--- @param shape number
function EndTextCommandDisplayHelp(p0, loop, beep, shape) end

--- instructionalKey enum list:
--- 
--- 
--- Buttons = {
---       Empty = 0,
---       Select = 1, -- (RETURN)
---       Ok = 2, -- (RETURN)
---       Yes = 4, -- (RETURN)
---       Back = 8, -- (ESC)
---       Cancel = 16, -- (ESC)
---       No = 32, -- (ESC)
---       RetrySpace = 64, -- (SPACE)
---       Restart = 128, -- (SPACE)
---       Skip = 256, -- (SPACE)
---       Quit = 512, -- (ESC)
---       Adjust = 1024, -- (ARROWS)
---       SpaceKey = 2048, -- (SPACE)
---       Share = 4096, -- (SPACE)
---       SignIn = 8192, -- (SPACE)
---       Continue = 16384, -- (RETURN)
---       AdjustLeftRight = 32768, -- (SCROLL L/R)
---       AdjustUpDown = 65536, -- (SCROLL U/D)
---       Overwrite = 131072, -- (SPACE)
---       SocialClubSignup = 262144, -- (RETURN)
---       Confirm = 524288, -- (RETURN)
---       Queue = 1048576, -- (RETURN)
---       RetryReturn = 2097152, -- (RETURN)
---       BackEsc = 4194304, -- (ESC)
---       SocialClub = 8388608, -- (RETURN)
---       Spectate = 16777216, -- (SPACE)
---       OkEsc = 33554432, -- (ESC)
---       CancelTransfer = 67108864, -- (ESC)
---       LoadingSpinner = 134217728,
---       NoReturnToGTA = 268435456, -- (ESC)
---       CancelEsc = 536870912, -- (ESC)
--- }
--- 
--- Alt = {
---       Empty = 0,
---       No = 1, -- (SPACE)
---       Host = 2, -- (ESC)
---       SearchForJob = 4, -- (RETURN)
---       ReturnKey = 8, -- (TURN)
---       Freemode = 16, -- (ESC)
--- }
--- 
--- 
--- **Result of the example code:** <https://i.imgur.com/TvmNF4k.png>
--- 
--- 
--- NativeDB Parameter 5: BOOL p5
--- NativeDB Return Type: void
--- 
--- @param labelTitle string
--- @param labelMsg string
--- @param p2 number
--- @param p3 number
--- @param labelMsg2 string
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 string
--- @param p9 string
--- @param background boolean
--- @param errorCode number
--- @return any
function DrawFrontendAlert(labelTitle, labelMsg, p2, p3, labelMsg2, p5, p6, p7, p8, p9, background, errorCode) end

--- 
--- Determines how many lines the text string will use when drawn on screen.   
--- Must use _BEGIN_TEXT_COMMAND_LINE_COUNT for setting up  
--- 
--- @param x number
--- @param y number
--- @return number
function EndTextCommandGetLineCount(x, y) end


--- @return boolean
function EndTextCommandIsMessageDisplayed() end

--- 
--- After applying the properties to the text (See UI::SET_TEXT_), this will draw the text in the applied position. Also 0.0f < x, y < 1.0f, percentage of the axis.  
--- Used to be known as _DRAW_TEXT  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: int p2
--- 
--- @param x number
--- @param y number
function EndTextCommandDisplayText(x, y) end


--- @param p0 number
--- @return boolean
function EndTextCommandIsThisHelpMessageBeingDisplayed(p0) end

--- 
--- NativeDB Parameter 0: int p0
--- 
--- @param p0 boolean
function EndTextCommandOverrideButtonText(p0) end

--- 
--- Used with _BEGIN_TEXT_COMMAND_WIDTH.  
--- In scripts, p0 is false when used in combination with "ESMINDOLLA" or "ESDOLLA", otherwise it's true.  
--- Returns from range 0 to 1.  
--- 
--- @param p0 boolean
--- @return number
function EndTextCommandGetWidth(p0) end

--- Finalizes a text command started with [BEGIN_TEXT_COMMAND_SET_BLIP_NAME](#_0xF9113A30DE5C6670), setting the name
--- of the specified blip.
--- @param blip Blip
function EndTextCommandSetBlipName(blip) end

--- 
--- p0 is always false in scripts.  
--- 
--- @param p0 boolean
function EndTextCommandObjective(p0) end

--- Shows an "award" notification above the minimap, lua example result:
--- 
--- ![](https://i.imgur.com/e2DNaKX.png)
--- 
--- Old description:
--- 
--- 
--- Example:  
--- UI::_SET_NOTIFICATION_TEXT_ENTRY("HUNT");  
--- UI::_0xAA295B6F28BD587D("Hunting", "Hunting_Gold_128", 0, 109, "HUD_MED_UNLKED");  
--- 
--- @param textureDict string
--- @param textureName string
--- @param rpBonus number
--- @param colorOverlay number
--- @param titleLabel string
--- @return number
function EndTextCommandThefeedPostAward(textureDict, textureName, rpBonus, colorOverlay, titleLabel) end

--- 
--- Draws the subtitle at middle center of the screen.  
--- int duration = time in milliseconds to show text on screen before disappearing  
--- drawImmediately = If true, the text will be drawn immediately, if false, the text will be drawn after the previous subtitle has finished  
--- Used to be known as _DRAW_SUBTITLE_TIMED  
--- 
--- @param duration number
--- @param drawImmediately boolean
function EndTextCommandPrint(duration, drawImmediately) end

--- 
--- p0 = 1 or 0  
--- crashes my game...  
--- this is for sending invites to network players - jobs/apartment/ect...   
--- return notification handle  
--- int invite(Player player)  
--- 	{  
--- networkHandleMgr netHandle;  
--- networkClanMgr clan;  
--- char *playerName = GET_PLAYER_NAME(player);  
--- _SET_NOTIFICATION_TEXT_ENTRY("STRING");  
--- _SET_NOTIFACTION_COLOR_NEXT(1);  
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
--- NETWORK_HANDLE_FROM_PLAYER(player, &netHandle.netHandle, 13);  
--- if (NETWORK_CLAN_PLAYER_IS_ACTIVE(&netHandle.netHandle))  
--- {  
--- 	NETWORK_CLAN_PLAYER_GET_DESC(&clan.clanHandle, 35, &netHandle.netHandle);  
--- 	_DRAW_NOTIFICATION_CLAN_INVITE(0, _0x54E79E9C(&clan.clanHandle, 35), &clan.unk17, clan.isLeader, 0, 0, clan.clanHandle, playerName, 0, 0, 0);  
--- }  
--- 	}  
--- 
--- @param crewTypeIsPrivate boolean
--- @param crewTagContainsRockstar boolean
--- @param crewTag number
--- @param rank number
--- @param isLeader boolean
--- @param isImportant boolean
--- @param clanHandle number
--- @param gamerStr string
--- @param r number
--- @param g number
--- @param b number
--- @return number
function EndTextCommandThefeedPostCrewtagWithGameName(crewTypeIsPrivate, crewTagContainsRockstar, crewTag, rank, isLeader, isImportant, clanHandle, gamerStr, r, g, b) end

--- 
--- Example, only occurrence in the scripts:  
--- UI::_8EFCCF6EC66D85E4(&v_23, &v_13, &v_13, 1, v_34);  
--- 
--- @param chTitle string
--- @param clanTxd string
--- @param clanTxn string
--- @param isImportant boolean
--- @param showSubtitle boolean
--- @return number
function EndTextCommandThefeedPostCrewRankup(chTitle, clanTxd, clanTxn, isImportant, showSubtitle) end

--- NOTE: 'duration' is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.
--- 
--- Example, only occurrence in the scripts:
--- 
--- 
--- v_8 = UI::END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 0, 0, &v_9, "", a_5);
--- 
--- 
--- Example result:
--- 
--- ![](https://i.imgur.com/YrN4Bcm.png)
--- @param picTxd string
--- @param picTxn string
--- @param flash boolean
--- @param iconType number
--- @param nameStr string
--- @param subtitleStr string
--- @param duration number
--- @return number
function EndTextCommandThefeedPostMessagetextTu(picTxd, picTxn, flash, iconType, nameStr, subtitleStr, duration) end

--- 
--- This function and the one below it are for after you receive an invite, not sending it.  
--- p0 = 1 or 0  
--- nothin doin.   
--- int invite(Player player)  
--- 	{  
--- int iVar2, iVar3;  
--- networkHandleMgr handle;  
--- NETWORK_HANDLE_FROM_PLAYER(player, &handle.netHandle, 13);  
--- networkClanMgr clan;  
--- char *playerName = GET_PLAYER_NAME(player);  
--- _SET_NOTIFICATION_TEXT_ENTRY("STRING");  
--- _SET_NOTIFACTION_COLOR_NEXT(0);  
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
--- if (NETWORK_CLAN_PLAYER_GET_DESC(&clan, 35, &handle.netHandle))  
--- {  
--- 	iVar2 = 0;  
--- 	if (ARE_STRINGS_EQUAL(clan.unk22, "Leader") && clan.unk30 == 0)  
--- 	{  
--- iVar2 = 1;  
--- 	}  
--- 	if (clan.unk21 > 0)  
--- 	{  
--- iVar3 = 0;  
--- 	}  
--- 	else  
--- 	{  
--- iVar3 = 1;  
--- 	}  
--- 	BOOL unused = _0x54E79E9C(&clan.clanHandle, 35);  
--- 	return _DRAW_NOTIFICATION_APARTMENT_INVITE(iVar3, 0 /*unused*/, &clan.unk17, clan.unk30, iVar2, 0, clan.clanHandle, 0, 0, 0);  
--- }  
--- 	}  
--- 
--- @param crewTypeIsPrivate boolean
--- @param crewTagContainsRockstar boolean
--- @param crewTag number
--- @param rank number
--- @param hasFounderStatus boolean
--- @param isImportant boolean
--- @param clanHandle number
--- @param r number
--- @param g number
--- @param b number
--- @return number
function EndTextCommandThefeedPostCrewtag(crewTypeIsPrivate, crewTagContainsRockstar, crewTag, rank, hasFounderStatus, isImportant, clanHandle, r, g, b) end

--- 
--- List of picNames pastebin.com/XdpJVbHz  
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
--- 
--- @param picTxd string
--- @param picTxn string
--- @param flash boolean
--- @param iconType number
--- @param nameStr string
--- @param subtitleStr string
--- @param duration number
--- @param crewPackedStr string
--- @return number
function EndTextCommandThefeedPostMessagetextWithCrewTag(picTxd, picTxn, flash, iconType, nameStr, subtitleStr, duration, crewPackedStr) end

--- 
--- Alias of 0x2ED7843F8F801023
--- 
--- @param isImportant boolean
--- @param bHasTokens boolean
--- @return number
function EndTextCommandThefeedPostMpticker(isImportant, bHasTokens) end

--- Sets some extra options for a notification. It adds an image (or icon type) and sets a notification title (sender) and subtitle (subject).
--- 
--- Texture dictionary and texture name parameters are usually the same exact value.
--- 
--- Example result:
--- 
--- ![](https://i.imgur.com/LviutDl.png)
--- 
--- Old description with list of possible icons and texture names:
--- 
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
--- 
--- @param textureDict string
--- @param textureName string
--- @param flash boolean
--- @param iconType number
--- @param sender string
--- @param subject string
--- @return number
function EndTextCommandThefeedPostMessagetext(textureDict, textureName, flash, iconType, sender, subject) end

--- 
--- returns a notification handle, prints out a notification like below:  
--- type range: 0   
--- if you set type to 1, button accepts "~INPUT_SOMETHING~"  
--- example:  
--- UI::_0xDD6CB2CCE7C2735C(1, "~INPUT_TALK~", "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");  
--- - imgur.com/UPy0Ial  
--- Examples from the scripts:  
--- l_D1[1/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");  
--- l_D1[2/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_SAVE_REPLAY_CLIP~","");  
--- l_D1[1/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");  
--- l_D1[2/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING_SECONDARY~","");  
--- 
--- @param eType number
--- @param sIcon string
--- @param sSubtitle string
--- @return number
function EndTextCommandThefeedPostReplayInput(eType, sIcon, sSubtitle) end

--- Needs more research.
--- Only one type of usage in the scripts:
--- 
--- 
--- UI::_SET_NOTIFICATION_MESSAGE_3("CHAR_ACTING_UP", "CHAR_ACTING_UP", 0, 0, "DI_FEED_CHAR", a_0);
--- 
--- 
--- Example result:
--- 
--- ![](https://i.imgur.com/UglK7Gq.png)
--- @param picTxd string
--- @param picTxn string
--- @param flash boolean
--- @param iconType number
--- @param entryText string
--- @param text string
--- @return number
function EndTextCommandThefeedPostMessagetextEntry(picTxd, picTxn, flash, iconType, entryText, text) end

--- [List of picture names](https://pastebin.com/XdpJVbHz)
--- 
--- Example result:
--- 
--- ![](https://i.imgur.com/SdEZ22m.png)
--- @param statTitle string
--- @param iconEnum number
--- @param stepVal boolean
--- @param barValue number
--- @param isImportant boolean
--- @param picTxd string
--- @param picTxn string
--- @return number
function EndTextCommandThefeedPostStats(statTitle, iconEnum, stepVal, barValue, isImportant, picTxd, picTxn) end

