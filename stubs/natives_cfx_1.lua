
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleWanted(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleAlarmSet(vehicle) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the handlingName field from handling.meta.
--- Example: SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))
--- @param vehicle string
--- @param class_ string
--- @param fieldName string
--- @param value vector3
function SetHandlingVector(vehicle, class_, fieldName, value) end

--- Requests whether or not the commerce data for the specified player has loaded.
--- @param playerSrc string
--- @return boolean
function IsPlayerCommerceInfoLoaded(playerSrc) end

--- An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
--- @param eventName string
function RegisterResourceAsEventHandler(eventName) end


--- @param requestData string
--- @param requestDataLength number
--- @return number
function PerformHttpRequestInternal(requestData, requestDataLength) end

--- Registers a specified font name for use with text draw commands.
--- @param fontName string
--- @return number
function RegisterFontId(fontName) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- 
--- Registers a set of entities with the game engine. These should match CEntityDef class information from the game.
--- At this time, this function **should not be used in a live environment**.
--- @param factory func
function RegisterEntities(factory) end

--- Registers a listener for console output messages.
--- @param listener func
function RegisterConsoleListener(listener) end

--- Adds the specified player to the target list for the specified Mumble voice target ID.
--- @param targetId number
--- @param serverId number
function MumbleAddVoiceTargetPlayerByServerId(targetId, serverId) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleInteriorLightOn(vehicle) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- 
--- Registers a cached resource asset with the resource system, similar to the automatic scanning of the stream/ folder.
--- @param resourceName string
--- @param fileName string
--- @return string
function RegisterResourceAsset(resourceName, fileName) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- 
--- Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.
--- 
--- Use IS_STREAMING_FILE_READY to check if the asset has been registered successfully.
--- @param registerAs string
--- @param url string
function RegisterStreamingFileFromUrl(registerAs, url) end

--- Reads the contents of a text file in a specified resource.
--- If executed on the client, this file has to be included in files in the resource manifest.
--- Example: local data = LoadResourceFile("devtools", "data.json")
--- @param resourceName string
--- @param fileName string
--- @return string
function LoadResourceFile(resourceName, fileName) end


--- @param callbackType string
function RegisterNuiCallbackType(callbackType) end

--- Returns the owner ID of the specified entity.
--- @param entity Entity
--- @return number
function NetworkGetEntityOwner(entity) end


--- @param vehicle Vehicle
--- @return boolean
function HasEntityBeenMarkedAsNoLongerNeeded(vehicle) end

--- Returns the offset of the specified wheel relative to the wheel's axle center.
--- @param vehicle Vehicle
--- @param wheelIndex number
--- @return number
function GetVehicleWheelXOffset(vehicle, wheelIndex) end

--- Returns whether or not a browser is created for a specified DUI browser object.
--- @param duiObject long
--- @return boolean
function IsDuiAvailable(duiObject) end


--- @param principal string
--- @param object string
--- @return boolean
function IsPrincipalAceAllowed(principal, object) end

--- Adds the specified channel to the target list for the specified Mumble voice target ID.
--- @param targetId number
--- @param channel number
function MumbleAddVoiceTargetChannel(targetId, channel) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehiclePreviouslyOwnedByPlayer(vehicle) end


--- @param object string
--- @return boolean
function IsAceAllowed(object) end


--- @param vehicle Vehicle
--- @param wheelIndex number
--- @return number
function GetVehicleWheelYRotation(vehicle, wheelIndex) end

--- Scope exit for profiler.
function ProfilerExitScope() end

--- Create a permanent voice channel.
--- @param id number
function MumbleCreateChannel(id) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- 
--- Registers a dynamic streaming asset from the server with the GTA streaming module system.
--- @param resourceName string
--- @param fileName string
--- @param cacheString string
function RegisterStreamingFileFromCache(resourceName, fileName, cacheString) end

--- Gets whether or not this is the CitizenFX server.
--- @return boolean
function IsDuplicityVersion() end

--- Returns vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
--- Only works on non-default wheels (returns 0 in case of default wheels).
--- @param vehicle Vehicle
--- @return number
function GetVehicleWheelWidth(vehicle) end

--- Registers a build task factory for resources.
--- The function should return an object (msgpack map) with the following fields:
--- 
--- 
--- {
--- // returns whether the specific resource should be built
--- shouldBuild = func(resourceName: string): bool,
--- 
--- // asynchronously start building the specific resource.
--- // call cb when completed
--- build = func(resourceName: string, cb: func(success: bool, status: string): void): void
--- }
--- 
--- @param factoryId string
--- @param factoryFn func
function RegisterResourceBuildTaskFactory(factoryId, factoryFn) end

--- Registers a key mapping for the current resource.
--- 
--- See the related [cookbook post](https://cookbook.fivem.net/2020/01/06/using-the-new-console-key-bindings/) for more information.
--- @param commandString string
--- @param description string
--- @param defaultMapper string
--- @param defaultParameter string
function RegisterKeyMapping(commandString, description, defaultMapper, defaultParameter) end

--- Resets values from the zoom level data by index to defaults from mapzoomdata.meta.
--- @param index number
function ResetMapZoomDataLevel(index) end

--- Returns true if the profiler is active.
--- @return boolean
function ProfilerIsRecording() end


--- @param vehicle Vehicle
--- @return number
function GetVehicleWindowTint(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleSirenOn(vehicle) end


--- @param modelHash Hash
--- @param ratePerSecond number
--- @param headlightRotation number
--- @param invertRotation boolean
function SetModelHeadlightConfiguration(modelHash, ratePerSecond, headlightRotation, invertRotation) end


--- @param playerSrc string
--- @param object string
--- @return boolean
function IsPlayerAceAllowed(playerSrc, object) end

--- A getter for [\_SET_WEAPON_DAMAGE_MODIFIER](#_0x4757F00BC6323CFE).
--- @param weaponHash Hash
--- @return number
function GetWeaponDamageModifier(weaponHash) end


--- @param interiorId number
--- @param roomIndex number
--- @param flag number
function SetInteriorRoomFlag(interiorId, roomIndex, flag) end

--- Sets the current Mumble voice target ID to broadcast voice to.
--- @param targetId number
function MumbleSetVoiceTarget(targetId) end

--- Injects a 'mouse wheel' event for a DUI object.
--- @param duiObject long
--- @param deltaY number
--- @param deltaX number
function SendDuiMouseWheel(duiObject, deltaY, deltaX) end


--- @param netId number
--- @return Entity
function NetworkGetEntityFromNetworkId(netId) end

--- Requests the commerce data for the specified player, including the owned SKUs. Use IS_PLAYER_COMMERCE_INFO_LOADED to check if it has loaded.
--- @param playerSrc string
function LoadPlayerCommerceData(playerSrc) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- 
--- Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
--- @param kvsKey string
function RegisterStreamingFileFromKvs(kvsKey) end

--- Clears the target list for the specified Mumble voice target ID.
--- @param targetId number
function MumbleClearVoiceTarget(targetId) end

--- Overrides the output volume for a particular player with the specified server id and player name on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
--- @param serverId number
--- @param volume number
function MumbleSetVolumeOverrideByServerId(serverId, volume) end


--- @param mapName string
function SetMapName(mapName) end


--- @param key string
--- @param value number
function SetResourceKvpFloat(key, value) end

--- Sets whether or not SHUTDOWN_LOADING_SCREEN automatically shuts down the NUI frame for the loading screen. If this is enabled,
--- you will have to manually invoke SHUTDOWN_LOADING_SCREEN_NUI whenever you want to hide the NUI loading screen.
--- @param manualShutdown boolean
function SetManualShutdownLoadingScreenNui(manualShutdown) end

--- Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
--- @param duiObject long
--- @param button string
function SendDuiMouseUp(duiObject, button) end


--- @param varName string
--- @param value string
function SetConvarReplicated(varName, value) end


--- @param vehicle Vehicle
--- @param wheelID number
--- @param completely boolean
--- @return boolean
function IsVehicleTyreBurst(vehicle, wheelID, completely) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- 
--- Returns whether an asynchronous streaming file registration completed.
--- @param registerAs string
--- @return boolean
function IsStreamingFileReady(registerAs) end

--- Returns whether or not the currently executing event was canceled.
--- @return boolean
function WasEventCanceled() end

--- Clears players from the target list for the specified Mumble voice target ID.
--- @param targetId number
function MumbleClearVoiceTargetPlayers(targetId) end

--- Sends a message to the loadingScreen NUI frame, which contains the HTML page referenced in loadscreen resources.
--- @param jsonString string
--- @return boolean
function SendLoadingScreenMessage(jsonString) end

--- This native sets the hover text of the small image asset for the discord rich presence implementation.
--- @param text string
function SetDiscordRichPresenceAssetSmallText(text) end

--- Sets a pixel in the specified runtime texture. This will have to be committed using COMMIT_RUNTIME_TEXTURE to have any effect.
--- @param tex long
--- @param x number
--- @param y number
--- @param r number
--- @param g number
--- @param b number
--- @param a number
function SetRuntimeTexturePixel(tex, x, y, r, g, b, a) end


--- @param vehicle Vehicle
--- @param clutch number
function SetVehicleClutch(vehicle, clutch) end


--- @param gametypeName string
function SetGameType(gametypeName) end

--- <!-- Native implemented by Disquse. 0xFFF65C63 -->
--- 
--- Returns true if the minimap is currently expanded. False if it's the normal minimap state.
--- Use [IsBigmapFull](#_0x66EE14B2) to check if the full map is currently revealed on the minimap.
--- @return boolean
function IsBigmapActive() end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleEngineStarting(vehicle) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
--- 
--- Registers a set of archetypes with the game engine. These should match CBaseArchetypeDef class information from the game.
--- @param factory func
function RegisterArchetypes(factory) end


--- @param vehicle Vehicle
--- @param level number
function SetVehicleFuelLevel(vehicle, level) end


--- @param tex long
--- @param buffer string
--- @param length number
--- @return boolean
function SetRuntimeTextureArgbData(tex, buffer, length) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using SET_HANDLING_FIELD, this might require some experimentation.
--- Example: SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)
--- @param vehicle Vehicle
--- @param class_ string
--- @param fieldName string
--- @param value any
function SetVehicleHandlingField(vehicle, class_, fieldName, value) end

--- Experimental natives, please do not use in a live environment.
--- @param origTxd string
--- @param origTxn string
function RemoveReplaceTexture(origTxd, origTxn) end


--- @param enabled boolean
--- @return boolean
function SetTextChatEnabled(enabled) end

--- This native sets the hover text of the image asset for the discord rich presence implementation.
--- @param text string
function SetDiscordRichPresenceAssetText(text) end


--- @param interiorId number
--- @param portalIndex number
--- @param flag number
function SetInteriorPortalFlag(interiorId, portalIndex, flag) end

--- Sets the player's rich presence detail state for social platform providers to a specified string.
--- @param presenceState string
function SetRichPresence(presenceState) end


--- @param keepInput boolean
function SetNuiFocusKeepInput(keepInput) end


--- @param interiorId number
--- @param portalIndex number
--- @param roomTo number
function SetInteriorPortalRoomTo(interiorId, portalIndex, roomTo) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using SET_HANDLING_INT, this might require some experimentation.
--- @param vehicle Vehicle
--- @param class_ string
--- @param fieldName string
--- @param value number
function SetVehicleHandlingInt(vehicle, class_, fieldName, value) end


--- @param interiorId number
--- @param roomIndex number
--- @param timecycleHash number
function SetInteriorRoomTimecycle(interiorId, roomIndex, timecycleHash) end

--- the status of default voip system. It affects on NETWORK_IS_PLAYER_TALKING and mp_facial animation.
--- This function doesn't need to be called every frame, it works like a switcher.
--- @param player Player
--- @param state boolean
function SetPlayerTalkingOverride(player, state) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the handlingName field from handling.meta.
--- @param vehicle string
--- @param class_ string
--- @param fieldName string
--- @param value number
function SetHandlingInt(vehicle, class_, fieldName, value) end


--- @param varName string
--- @param value string
function SetConvarServerInfo(varName, value) end


--- @param vehicle Vehicle
--- @param gravity number
function SetVehicleGravityAmount(vehicle, gravity) end

--- This native sets the app id for the discord rich presence implementation.
--- @param appId string
function SetDiscordAppId(appId) end

--- This native sets the image asset for the discord rich presence implementation.
--- @param assetName string
function SetDiscordRichPresenceAsset(assetName) end

--- Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
--- @param duiObject long
--- @param button string
function SendDuiMouseDown(duiObject, button) end


--- @param name string
--- @param path string
--- @param data string
function SetSnakeoilForEntry(name, path, data) end

--- Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance
--- will open the browser prompting further purchase details.
--- @param playerSrc string
--- @param skuId number
function RequestPlayerCommerceSession(playerSrc, skuId) end

--- Overrides how many real ms are equal to one game minute.
--- A setter for [GetMillisecondsPerGameMinute](#_0x2F8B4D1C595B11DB).
--- @param value number
function SetMillisecondsPerGameMinute(value) end


--- @param vehicle Vehicle
--- @param gear number
function SetVehicleHighGear(vehicle, gear) end

--- Disables the vehicle from being repaired when a vehicle extra is enabled.
--- @param vehicle Vehicle
--- @param value boolean
function SetVehicleAutoRepairDisabled(vehicle, value) end

--- Writes the specified data to a file in the specified resource.
--- Using a length of -1 will automatically detect the length assuming the data is a C string.
--- @param resourceName string
--- @param fileName string
--- @param data string
--- @param dataLength number
--- @return boolean
function SaveResourceFile(resourceName, fileName, data, dataLength) end


--- @param vehicle Vehicle
--- @param pressure number
function SetVehicleTurboPressure(vehicle, pressure) end

--- Schedules the specified resource to run a tick as soon as possible, bypassing the server's fixed tick rate.
--- @param resourceName string
function ScheduleResourceTick(resourceName) end


--- @param interiorId number
--- @param roomIndex number
--- @param bbMinX number
--- @param bbMinY number
--- @param bbMinZ number
--- @param bbMaxX number
--- @param bbMaxY number
--- @param bbMaxZ number
function SetInteriorRoomExtents(interiorId, roomIndex, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end


--- @param varName string
--- @param value string
function SetConvar(varName, value) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using SET_HANDLING_FLOAT, this might require some experimentation.
--- Example: SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)
--- @param vehicle Vehicle
--- @param class_ string
--- @param fieldName string
--- @param value number
function SetVehicleHandlingFloat(vehicle, class_, fieldName, value) end


--- @param handler func
function SetHttpHandler(handler) end

--- Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
--- @param duiObject long
--- @param jsonString string
function SendDuiMessage(duiObject, jsonString) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using SET_HANDLING_VECTOR, this might require some experimentation.
--- @param vehicle Vehicle
--- @param class_ string
--- @param fieldName string
--- @param value vector3
function SetVehicleHandlingVector(vehicle, class_, fieldName, value) end


--- @param vehicle Vehicle
--- @param temperature number
function SetVehicleEngineTemperature(vehicle, temperature) end

--- Use along with SetVehicleWheelWidth to resize the wheels (this native sets the collider width affecting physics while SetVehicleWheelWidth will change visual width).
--- @param vehicle Vehicle
--- @param wheelIndex number
--- @param value number
function SetVehicleWheelTireColliderWidth(vehicle, wheelIndex, value) end


--- @param vehicle Vehicle
--- @param time number
function SetVehicleAlarmTimeLeft(vehicle, time) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the handlingName field from handling.meta.
--- Example: SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)
--- @param vehicle string
--- @param class_ string
--- @param fieldName string
--- @param value number
function SetHandlingFloat(vehicle, class_, fieldName, value) end

--- Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
--- @param duiObject long
--- @param x number
--- @param y number
function SendDuiMouseMove(duiObject, x, y) end


--- @param key string
--- @param value string
function SetResourceKvp(key, value) end

--- This native sets the small image asset for the discord rich presence implementation.
--- @param assetName string
function SetDiscordRichPresenceAssetSmall(assetName) end

--- Sets the display info for a minimap overlay.
--- @param miniMap number
--- @param x number
--- @param y number
--- @param xScale number
--- @param yScale number
--- @param alpha number
function SetMinimapOverlayDisplay(miniMap, x, y, xScale, yScale, alpha) end


--- @param vehicle Vehicle
--- @param level number
function SetVehicleOilLevel(vehicle, level) end


--- @param interiorId number
--- @param portalIndex number
--- @param roomFrom number
function SetInteriorPortalRoomFrom(interiorId, portalIndex, roomFrom) end

--- Sets vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
--- Only works on non-default wheels.
--- Returns whether change was successful (can be false if trying to set width for non-default wheels).
--- @param vehicle Vehicle
--- @param width number
--- @return boolean
function SetVehicleWheelWidth(vehicle, width) end


--- @param hasFocus boolean
--- @param hasCursor boolean
function SetNuiFocus(hasFocus, hasCursor) end


--- @param key string
--- @param value number
function SetResourceKvpInt(key, value) end

--- Navigates the specified DUI browser to a different URL.
--- @param duiObject long
--- @param url string
function SetDuiUrl(duiObject, url) end


--- @param jsonString string
--- @return boolean
function SendNuiMessage(jsonString) end

--- Shuts down the loadingScreen NUI frame, similarly to SHUTDOWN_LOADING_SCREEN.
function ShutdownLoadingScreenNui() end


--- @param playerSrc string
--- @param reason string
function TempBanPlayer(playerSrc, reason) end


--- @param prefix string
--- @return number
function StartFindKvp(prefix) end

--- Sets values to the zoom level data by index.
--- @param index number
--- @param zoomScale number
--- @param zoomSpeed number
--- @param scrollSpeed number
--- @param tilesX number
--- @param tilesY number
function SetMapZoomDataLevel(index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY) end

--- Adjusts the offset of the specified wheel relative to the wheel's axle center.
--- Needs to be called every frame in order to function properly, as GTA will reset the offset otherwise.
--- This function can be especially useful to set the track width of a vehicle, for example:
--- 
--- 
--- function SetVehicleFrontTrackWidth(vehicle, width)
--- SetVehicleWheelXOffset(vehicle, 0, -width/2)
--- SetVehicleWheelXOffset(vehicle, 1, width/2)
--- end
--- 
--- @param vehicle Vehicle
--- @param wheelIndex number
--- @param offset number
function SetVehicleWheelXOffset(vehicle, wheelIndex, offset) end

--- The backing function for TriggerLatentClientEvent.
--- @param eventName string
--- @param eventTarget string
--- @param eventPayload string
--- @param payloadLength number
--- @param bps number
function TriggerLatentClientEventInternal(eventName, eventTarget, eventPayload, payloadLength, bps) end

--- The backing function for TriggerLatentServerEvent.
--- @param eventName string
--- @param eventPayload string
--- @param payloadLength number
--- @param bps number
function TriggerLatentServerEventInternal(eventName, eventPayload, payloadLength, bps) end


--- @param vehicle Vehicle
--- @param scale number
function SetVehicleSteeringScale(vehicle, scale) end


--- @param interiorId number
--- @param portalIndex number
--- @param cornerIndex number
--- @param posX number
--- @param posY number
--- @param posZ number
function SetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex, posX, posY, posZ) end


--- @param vehicle Vehicle
--- @param wheelIndex number
--- @param value number
function SetVehicleWheelYRotation(vehicle, wheelIndex, value) end


--- @param vehicle Vehicle
--- @param rpm number
function SetVehicleCurrentRpm(vehicle, rpm) end


--- @param resourceName string
--- @return boolean
function StopResource(resourceName) end


--- @param vehicle Vehicle
--- @param wheelIndex number
--- @param health number
function SetVehicleWheelHealth(vehicle, wheelIndex, health) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the handlingName field from handling.meta.
--- Example: SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)
--- @param vehicle string
--- @param class_ string
--- @param fieldName string
--- @param value any
function SetHandlingField(vehicle, class_, fieldName, value) end


--- @param vehicle Vehicle
--- @param angle number
function SetVehicleSteeringAngle(vehicle, angle) end

--- Sets vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
--- Only works on non-default wheels.
--- Returns whether change was successful (can be false if trying to set size for non-default wheels).
--- @param vehicle Vehicle
--- @param size number
--- @return boolean
function SetVehicleWheelSize(vehicle, size) end

--- Not sure what this changes, probably determines physical rim size in case the tire is blown.
--- @param vehicle Vehicle
--- @param wheelIndex number
--- @param value number
function SetVehicleWheelRimColliderSize(vehicle, wheelIndex, value) end

--- Example script: <https://pastebin.com/J6XGbkCW>
--- 
--- List of known states:
--- 
--- 
--- 1: Not wheeling.
--- 65: Vehicle is ready to do wheelie (burnouting).
--- 129: Vehicle is doing wheelie.
--- 
--- @param vehicle Vehicle
--- @param state number
function SetVehicleWheelieState(vehicle, state) end


--- @param resourceName string
--- @return boolean
function StartResource(resourceName) end

--- Use along with SetVehicleWheelSize to resize the wheels (this native sets the collider size affecting physics while SetVehicleWheelSize will change visual size).
--- @param vehicle Vehicle
--- @param wheelIndex number
--- @param value number
function SetVehicleWheelTireColliderSize(vehicle, wheelIndex, value) end

--- The backing function for TriggerServerEvent.
--- @param eventName string
--- @param eventPayload string
--- @param payloadLength number
function TriggerServerEventInternal(eventName, eventPayload, payloadLength) end

--- The backing function for TriggerClientEvent.
--- @param eventName string
--- @param eventTarget string
--- @param eventPayload string
--- @param payloadLength number
function TriggerClientEventInternal(eventName, eventTarget, eventPayload, payloadLength) end

--- The backing function for TriggerEvent.
--- @param eventName string
--- @param eventPayload string
--- @param payloadLength number
function TriggerEventInternal(eventName, eventPayload, payloadLength) end

--- Overrides a floating point value from visualsettings.dat temporarily.
--- @param name string
--- @param value number
function SetVisualSettingFloat(name, value) end


--- @param password string
--- @param hash string
--- @return boolean
function VerifyPasswordHash(password, hash) end

