
--- @param blip Blip
--- @param toggle boolean
function ShowHeightOnBlip(blip, toggle) end

--- Toggles a cyan outline around the blip.
--- 
--- Color can be changed with SET_BLIP_SECONDARY_COLOUR. Enabling this circle will override the "crew" and "friend" half-circles (see [SHOW_CREW_INDICATOR_ON_BLIP](#_0xDCFB5D4DB8BF367E) and [SHOW_FRIEND_INDICATOR_ON_BLIP](#_0x23C3EB807312F01A)). 
--- 
--- ~~Oddly enough, this native is called _SET_BLIP_FRIENDLY, but the color of the circle is only changable for the 'crew' half-circle (using SET_BLIP_SECONDARY_COLOUR), the 'friendly' side can NOT be changed and will always stay cyan/blue. This makes it seem more likely that this should be called _SET_BLIP_CREW_CIRCLE or something similar?~~
--- 
--- Real name is SHOW_OUTLINE_INDICATOR_ON_BLIP, discovered by Blattersturm.
--- @param blip Blip
--- @param toggle boolean
function ShowOutlineIndicatorOnBlip(blip, toggle) end


--- @param blip Blip
--- @param number number
function ShowNumberOnBlip(blip, number) end

--- 
--- Something with Social Club or online.  
--- 
function ShowSigninUi() end

--- Starts a new GPS custom-route, allowing you to plot lines on the map.
--- Lines are drawn directly between points.
--- The GPS custom route works like the GPS multi route, except it does not follow roads.
--- 
--- **Example result:**
--- 
--- ![](https://i.imgur.com/BDm5pzt.png)
--- @param hudColor number
--- @param displayOnFoot boolean
--- @param followPlayer boolean
function StartGpsCustomRoute(hudColor, displayOnFoot, followPlayer) end

--- 
--- Adds a green checkmark on top of a blip.  
--- 
--- @param blip Blip
--- @param toggle boolean
function ShowTickOnBlip(blip, toggle) end

--- Starts a new GPS multi-route, allowing you to create custom GPS paths.
--- GPS functions like the waypoint, except it can contain multiple points it's forced to go through.
--- Once the player has passed a point, the GPS will no longer force its path through it.
--- 
--- Works independently from the player-placed waypoint and blip routes.
--- 
--- **Example result:**
--- 
--- ![](https://i.imgur.com/ZZHQatX.png)
--- @param hudColor number
--- @param routeFromPlayer boolean
--- @param displayOnFoot boolean
function StartGpsMultiRoute(hudColor, routeFromPlayer, displayOnFoot) end


function SuppressFrontendRenderingThisFrame() end

--- 
--- Nulls out the elements stored in CGameStreamMgr + 673, a value inherited from CGameStreamMgr + 15417 (1604)
--- 
function ThefeedClearFrozenPost() end

--- Stops loading screen tips shown by invoking either _0x488043841BBE156F or _0x15CFA549788D35EF
function ThefeedDisable() end

--- 
--- Requires _GAMESTREAM_SHOW_CONTENT to be set.
--- 
function ThefeedFlushQueue() end

--- Displays loading screen tips, requires _0x56C8B608CFD49854 to be called beforehand.
function ThefeedEnable() end

--- 
--- Requires manual management of game stream handles (i.e., 0xBE4390CB40B3E627).
--- 
function ThefeedFreezeNextPost() end

--- Once called each frame hides all above radar notifications.
function ThefeedHideThisFrame() end

--- 
--- Returns the handle for the notification currently displayed on the screen.
--- Name may be a hash collision, but describes the function accurately.
--- 
--- @return number
function ThefeedGetFirstVisibleDeleteRemaining() end

--- 
--- Getter for 0xFDB423997FA30340
--- 
--- @return boolean
function ThefeedIsPaused() end

--- 
--- From the decompiled scripts:  
--- UI::_92F0DA1E27DB96DC(6);  
--- UI::_92F0DA1E27DB96DC(184);  
--- UI::_92F0DA1E27DB96DC(190);  
--- sets background color for the next notification  
--- 6 = red  
--- 184 = green  
--- 190 = yellow  
--- Here is a list of some colors that can be used: gyazo.com/68bd384455fceb0a85a8729e48216e15  
--- this seems to set the alpha to 255 automatically, if you have a work around let me know  
--- 
--- @param hudColorIndex number
function ThefeedNextPostBackgroundColor(hudColorIndex) end

--- 
--- If true, disables the creation of all GAME_STREAM_ENUMS besides TOOLTIPS
--- 
--- @param toggle boolean
function ThefeedOnlyShowTooltips(toggle) end


function ThefeedPause() end

--- 
--- Removes a notification instantly instead of waiting for it to disappear  
--- 
--- @param notificationId number
function ThefeedRemoveItem(notificationId) end


function ThefeedResetAllParameters() end


function ThefeedResume() end

--- 
--- sets color for notification flash  
--- 
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
function ThefeedSetAnimpostfxColor(red, green, blue, alpha) end

--- Related to notification color flashing, setting p0 to 0 invalidates a _SET_NOTIFICATION_FLASH_COLOR call for the target notification.
--- 
--- 
---     var uVar0;
---     var uVar1;
---     var uVar2;
---     var uVar3;
---     int iVar4;
---     iVar4 = 1;
---     
---     UI::GET_HUD_COLOUR(1, &uVar0, &uVar1, &uVar2, &uVar3);
---     UI::_SET_NOTIFICATION_FLASH_COLOR(uVar0, uVar1, uVar2, uVar3);
---     UI::_0x17AD8C9706BDD88A(iVar4);
---     UI::_SET_NOTIFICATION_TEXT_ENTRY("RSMAN_N");
---     UI::_DRAW_NOTIFICATION_2(1, 1);
--- 
--- @param flashCount number
function ThefeedSetAnimpostfxCount(flashCount) end

--- 
--- Requires GAME_STREAM_ENUMS.MSGTEXT. Default sounds: "DPAD_WEAPON_SCROLL" and "HUD_FRONTEND_DEFAULT_SOUNDSET"
--- 
--- @param toggle boolean
function ThefeedSetAnimpostfxSound(toggle) end

--- 
--- If true, remove all feed components instantly. Otherwise tween/animate close each component
--- 
--- @param toggle boolean
function ThefeedSetFlushAnimpostfx(toggle) end


--- @param pos number
function ThefeedSetScriptedMenuHeight(pos) end


function ThefeedSpsExtendWidescreenOff() end


function ThefeedSpsExtendWidescreenOn() end


--- @param posX number
--- @param posY number
--- @param posZ number
--- @param radius number
--- @param p4 number
function TriggerSonarBlip(posX, posY, posZ, radius, p4) end


--- @param toggle boolean
function ToggleStealthRadar(toggle) end


function UnlockMinimapAngle() end


function UnlockMinimapPosition() end

