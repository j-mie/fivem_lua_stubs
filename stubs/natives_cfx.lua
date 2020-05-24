
--- @param enabled boolean
function EnableEnhancedHostSupport(enabled) end


--- @param findHandle number
--- @param outEntity Entity
--- @return boolean
function FindNextPickup(findHandle, outEntity) end


--- @param outEntity Entity
--- @return number
function FindFirstVehicle(outEntity) end

--- Returns whether or not the specified player has enough information to start a commerce session for.
--- @param playerSrc string
--- @return boolean
function CanPlayerStartCommerceSession(playerSrc) end

--- Currently it only works with peds.
--- @param entity Entity
--- @return number
function GetEntityMaxHealth(entity) end


--- @param entryKey string
--- @param entryText string
function AddTextEntry(entryKey, entryText) end

--- This is similar to the PushScaleformMovieFunction natives, except it calls in the TIMELINE of a minimap overlay.
--- @param miniMap number
--- @param fnName string
--- @return boolean
function CallMinimapScaleformFunction(miniMap, fnName) end


--- @param varName string
--- @param default_ string
--- @return string
function GetConvar(varName, default_) end


--- @param referenceIdentity string
function DeleteFunctionReference(referenceIdentity) end


--- @param findHandle number
function EndFindVehicle(findHandle) end


--- @param outEntity Entity
--- @return number
function FindFirstObject(outEntity) end

--- Creates a runtime texture from a DUI handle.
--- @param txd long
--- @param txn string
--- @param duiHandle string
--- @return long
function CreateRuntimeTextureFromDuiHandle(txd, txn, duiHandle) end

--- Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
--- @param camera Cam
--- @param rightVector vector3
--- @param forwardVector vector3
--- @param upVector vector3
--- @param position vector3
function GetCamMatrix(camera, rightVector, forwardVector, upVector, position) end


--- @param entity Object
--- @return boolean
function DoesEntityExist(entity) end


--- @param findHandle number
function EndFindPickup(findHandle) end


--- @param entity Entity
--- @return vector3
function GetEntityVelocity(entity) end


--- @param playerSrc string
--- @param reason string
function DropPlayer(playerSrc, reason) end

--- Forces the game snow pass to render.
--- @param enabled boolean
function ForceSnowPass(enabled) end

--- This native is not implemented.
--- @param entity Entity
--- @param data string
function ExperimentalLoadCloneSync(entity, data) end

--- Gets the current coordinates for a specified entity. This native is used server side when using OneSync. See <a href="#_0x3FEF770D40960D5A" >GET_ENTITY_COORDS</a> for client side.
--- @param entity Entity
--- @return vector3
function GetEntityCoords(entity) end

--- Destroys a DUI browser.
--- @param duiObject long
function DestroyDui(duiObject) end

--- Currently it only works with peds.
--- @param entity Entity
--- @return number
function GetEntityHealth(entity) end

--- Returns the peer address of the remote game server that the user is currently connected to.
--- @return string
function GetCurrentServerEndpoint() end

--- Cancels the currently executing event.
function CancelEvent() end

--- Experimental natives, please do not use in a live environment.
--- @param origTxd string
--- @param origTxn string
--- @param newTxd string
--- @param newTxn string
function AddReplaceTexture(origTxd, origTxn, newTxd, newTxn) end

--- Returns the NUI window handle for a specified DUI browser object.
--- @param duiObject long
--- @return string
function GetDuiHandle(duiObject) end

--- Returns the current console output buffer.
--- @return string
function GetConsoleBuffer() end


--- @param handle number
function EndFindKvp(handle) end


--- @param entryKey Hash
--- @param entryText string
function AddTextEntryByHash(entryKey, entryText) end

--- Loads a minimap overlay from a GFx file in the current resource.
--- @param name string
--- @return number
function AddMinimapOverlay(name) end


--- @param handle number
--- @return string
function FindKvp(handle) end


--- @param outEntity Entity
--- @return number
function FindFirstPed(outEntity) end

--- A getter for [SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME](#_0x90B6DA738A9A25DA).
--- @return number
function GetAmbientVehicleRangeMultiplier() end


--- @param findHandle number
--- @param outEntity Entity
--- @return boolean
function FindNextPed(findHandle, outEntity) end

--- Creates a runtime texture from the specified file in the current resource.
--- @param txd long
--- @param txn string
--- @param fileName string
--- @return long
function CreateRuntimeTextureFromImage(txd, txn, fileName) end


--- @param outEntity Entity
--- @return number
function FindFirstPickup(outEntity) end

--- Requests whether or not the player owns the specified package.
--- @param playerSrc string
--- @param skuId number
--- @return boolean
function DoesPlayerOwnSkuExt(playerSrc, skuId) end


--- @param private_ boolean
function FlagServerAsPrivate(private_) end

--- Returns all player indices for 'active' physical players known to the client.
--- The data returned adheres to the following layout:
--- 
--- 
--- [127, 42, 13, 37]
--- 
--- @return object
function GetActivePlayers() end


--- @param entity Entity
--- @return number
function GetEntityPopulationType(entity) end


--- @param commandString string
function ExecuteCommand(commandString) end


--- @param entity Entity
--- @return Hash
function GetEntityModel(entity) end


--- @param varName string
--- @param default_ number
--- @return number
function GetConvarInt(varName, default_) end

--- Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
--- @param url string
--- @param width number
--- @param height number
--- @return long
function CreateDui(url, width, height) end


--- @param vehicle Vehicle
--- @return boolean
function GetIsVehiclePrimaryColourCustom(vehicle) end

--- This native is not implemented.
--- @param entity Entity
--- @return string
function ExperimentalSaveCloneCreate(entity) end


--- @param referenceIdentity string
--- @return string
function DuplicateFunctionReference(referenceIdentity) end


--- @param entity Entity
--- @return vector3
function GetEntityRotationVelocity(entity) end


--- @param entity Entity
--- @return vector3
function GetEntityRotation(entity) end

--- Commits the backing pixels to the specified runtime texture.
--- @param tex long
function CommitRuntimeTexture(tex) end

--- Returns the name of the currently executing resource.
--- @return string
function GetCurrentResourceName() end


--- @param findHandle number
function EndFindPed(findHandle) end


--- @param key string
function DeleteResourceKvp(key) end

--- Creates a blank runtime texture.
--- @param txd long
--- @param txn string
--- @param width number
--- @param height number
--- @return long
function CreateRuntimeTexture(txd, txn, width, height) end

--- Requests whether or not the player owns the specified SKU.
--- @param playerSrc string
--- @param skuId number
--- @return boolean
function DoesPlayerOwnSku(playerSrc, skuId) end


--- @param entity Entity
--- @return number
function GetEntityHeading(entity) end

--- This native is not implemented.
--- @param data string
--- @param objectId number
--- @param tree string
--- @return Entity
function ExperimentalLoadCloneCreate(data, objectId, tree) end


--- @param findHandle number
--- @param outEntity Entity
--- @return boolean
function FindNextVehicle(findHandle, outEntity) end

--- A getter for [SET_PED_DENSITY_MULTIPLIER_THIS_FRAME](#_0x95E3D6257B166CF2).
--- @return number
function GetPedDensityMultiplier() end


--- @param findHandle number
function EndFindObject(findHandle) end

--- This native is not implemented.
--- @param entity Entity
--- @return string
function ExperimentalSaveCloneSync(entity) end


--- @param entity Entity
--- @return number
function GetEntityType(entity) end

--- A getter for [\_SET_PED_FACE_FEATURE](#_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
--- @param ped Ped
--- @param index number
--- @return number
function GetPedFaceFeature(ped, index) end

--- A getter for [SET_AMBIENT_PED_RANGE_MULTIPLIER_THIS_FRAME](#_0x0B919E1FB47CC4E0).
--- @return number
function GetAmbientPedRangeMultiplier() end

--- Returns all vehicle handles known to the server.
--- The data returned adheres to the following layout:
--- 
--- 
--- [127, 42, 13, 37]
--- 
--- @return object
function GetAllVehicles() end


--- @param interiorId number
--- @param portalIndex number
--- @return number
function GetInteriorPortalRoomTo(interiorId, portalIndex) end


--- @param ped Ped
--- @return number
function GetPedDesiredHeading(ped) end


--- @param findHandle number
--- @param outEntity Entity
--- @return boolean
function FindNextObject(findHandle, outEntity) end

--- This native converts the passed string to a hash.
--- @param model string
--- @return Hash
function GetHashKey(model) end


--- @param password string
--- @return string
function GetPasswordHash(password) end

--- A getter for [SET_PLAYER_VEHICLE_DEFENSE_MODIFIER](#_0x4C60E6EFDAFF2462).
--- @param playerId Player
--- @return number
function GetPlayerVehicleDefenseModifier(playerId) end

--- Creates a runtime texture dictionary with the specified name.
--- Example:
--- 
--- lua
--- local txd = CreateRuntimeTxd('meow')
--- 
--- @param name string
--- @return long
function CreateRuntimeTxd(name) end


--- @param interiorId number
--- @param portalIndex number
--- @param cornerIndex number
--- @param posX number
--- @param posY number
--- @param posZ number
function GetInteriorPortalCornerPosition(interiorId, portalIndex, cornerIndex, posX, posY, posZ) end


--- @param interiorId number
--- @param portalIndex number
--- @return number
function GetInteriorPortalRoomFrom(interiorId, portalIndex) end

--- A getter for [SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER](#_0xAE540335B4ABC4E2).
--- @param playerId Player
--- @return number
function GetPlayerMeleeWeaponDefenseModifier(playerId) end


--- @param interiorId number
--- @param posX number
--- @param posY number
--- @param posZ number
function GetInteriorPosition(interiorId, posX, posY, posZ) end


--- @param playerSrc string
--- @return number
function GetPlayerLastMsg(playerSrc) end


--- @param playerSrc string
--- @return string
function GetPlayerEndpoint(playerSrc) end


--- @param index number
--- @return string
function GetPlayerFromIndex(index) end


--- @param x number
--- @param y number
function GetNuiCursorPosition(x, y) end

--- A getter for [\_SET_PED_HAIR_COLOR](#_0x4CFFC65454C93A49). Returns -1 if fails to get.
--- @param ped Ped
--- @return number
function GetPedHairColor(ped) end


--- @param interiorId number
--- @param roomIndex number
--- @return number
function GetInteriorRoomTimecycle(interiorId, roomIndex) end


--- @param playerSrc string
--- @return string
function GetPlayerGuid(playerSrc) end


--- @param interiorId number
--- @param rotx number
--- @param rotY number
--- @param rotZ number
--- @param rotW number
function GetInteriorRotation(interiorId, rotx, rotY, rotZ, rotW) end

--- Returns the zoom level data by index from mapzoomdata.meta file.
--- @param index number
--- @param zoomScale number
--- @param zoomSpeed number
--- @param scrollSpeed number
--- @param tilesX number
--- @param tilesY number
--- @return boolean
function GetMapZoomDataLevel(index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY) end


--- @return number
function GetNumResources() end

--- A getter for [SET_PLAYER_VEHICLE_DAMAGE_MODIFIER](#_0xA50E117CDDF82F0C).
--- @param playerId Player
--- @return number
function GetPlayerVehicleDamageModifier(playerId) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleDoorStatus(vehicle) end

--- Gets the current game timer in milliseconds.
--- @return long
function GetGameTimer() end

--- Returns all commands that are registered in the command system.
--- The data returned adheres to the following layout:
--- 
--- 
--- [
--- {
--- "name": "cmdlist"
--- },
--- {
--- "name": "command1"
--- }
--- ]
--- 
--- @return object
function GetRegisteredCommands() end


--- @param player Player
--- @return number
function GetPlayerServerId(player) end


--- @param ped Ped
--- @return Hash
function GetPedCauseOfDeath(ped) end

--- A getter for [SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#_0xB3B3359379FE77D3).
--- Same as vehicle density multiplier.
--- @return number
function GetRandomVehicleDensityMultiplier() end

--- Gets the metadata value at a specified key/index from a resource's manifest.
--- See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
--- @param resourceName string
--- @param metadataKey string
--- @param index number
--- @return string
function GetResourceMetadata(resourceName, metadataKey, index) end


--- @param playerSrc string
--- @return number
function GetPlayerPing(playerSrc) end


--- @param interiorId number
--- @return number
function GetInteriorPortalCount(interiorId) end


--- @param key string
--- @return number
function GetResourceKvpFloat(key) end


--- @param ped Ped
--- @return number
function GetPedArmour(ped) end


--- @param playerSrc string
--- @param identifier number
--- @return string
function GetPlayerIdentifier(playerSrc, identifier) end


--- @param interiorId number
--- @param portalIndex number
--- @return number
function GetInteriorPortalFlag(interiorId, portalIndex) end

--- A getter for [SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#_0xEAE6DCC7EEE3DB1D).
--- @return number
function GetParkedVehicleDensityMultiplier() end


--- @param interiorId number
--- @param roomHash number
--- @return number
function GetInteriorRoomIndexByHash(interiorId, roomHash) end


--- @param interiorId number
--- @param roomIndex number
--- @return string
function GetInteriorRoomName(interiorId, roomIndex) end


--- @param interiorId number
--- @param roomIndex number
--- @param bbMinX number
--- @param bbMinY number
--- @param bbMinZ number
--- @param bbMaxX number
--- @param bbMaxY number
--- @param bbMaxZ number
function GetInteriorRoomExtents(interiorId, roomIndex, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end


--- @param interiorId number
--- @param roomIndex number
--- @return number
function GetInteriorRoomFlag(interiorId, roomIndex) end


--- @return string
function GetHostId() end


--- @param entity Entity
--- @return string
function GetEntityScript(entity) end


--- @param findIndex number
--- @return string
function GetResourceByFindIndex(findIndex) end


--- @param ped Ped
--- @return number
function GetPedMaxHealth(ped) end


--- @param key string
--- @return number
function GetResourceKvpInt(key) end

--- A getter for [\_SET_PED_EYE_COLOR](#_0x50B56988B170AFDF). Returns -1 if fails to get.
--- @param ped Ped
--- @return number
function GetPedEyeColor(ped) end


--- @return number
function GetInstanceId() end

--- A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#_0x2D83BC011CA14A3C).
--- @param playerId Player
--- @return number
function GetPlayerWeaponDefenseModifier(playerId) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleGravityAmount(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function GetVehicleHandbrake(vehicle) end


--- @param playerSrc string
--- @return Entity
function GetPlayerPed(playerSrc) end

--- Gets brake pressure of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @param vehicle Vehicle
--- @param wheelIndex number
--- @return number
function GetVehicleWheelBrakePressure(vehicle, wheelIndex) end

--- A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#_0xCE07B9F7817AADA3).
--- @param playerId Player
--- @return number
function GetPlayerWeaponDamageModifier(playerId) end

--- A getter for [SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME](#_0x7A556143A1C03898).
--- @return number
function GetScenarioPedDensityMultiplier() end


--- @param vehicle Vehicle
--- @param lightsOn boolean
--- @param highbeamsOn boolean
--- @return boolean
function GetVehicleLightsState(vehicle, lightsOn, highbeamsOn) end


--- @param playerSrc string
--- @return string
function GetPlayerName(playerSrc) end


--- @param interiorId number
--- @param bbMinX number
--- @param bbMinY number
--- @param bbMinZ number
--- @param bbMaxX number
--- @param bbMaxY number
--- @param bbMaxZ number
function GetInteriorEntitiesExtents(interiorId, bbMinX, bbMinY, bbMinZ, bbMaxX, bbMaxY, bbMaxZ) end

--- A getter for [SET_VEHICLE_CHEAT_POWER_INCREASE](#_0xB59E4BD37AE292DB).
--- @param vehicle Vehicle
--- @return number
function GetVehicleCheatPowerIncrease(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function GetIsVehicleEngineRunning(vehicle) end

--- A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER_2](#_0xBCFDE9EDE4CF27DC).
--- @param playerId Player
--- @return number
function GetPlayerWeaponDefenseModifier2(playerId) end

--- Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
--- See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
--- @param resourceName string
--- @param metadataKey string
--- @return number
function GetNumResourceMetadata(resourceName, metadataKey) end


--- @return string
function GetInvokingResource() end


--- @param vehicle Vehicle
--- @return number
function GetVehicleRoofLivery(vehicle) end

--- A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#_0x4A3DC7ECCC321032).
--- @return number
function GetPlayerMeleeWeaponDamageModifier() end


--- @param vehicle Vehicle
--- @return number
function GetVehicleClutch(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function GetIsVehicleSecondaryColourCustom(vehicle) end

--- Returns the effective handling data of a vehicle as an integer value.
--- Example: local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')
--- @param vehicle Vehicle
--- @param class_ string
--- @param fieldName string
--- @return number
function GetVehicleHandlingInt(vehicle, class_, fieldName) end


--- @return number
function GetNumPlayerIndices() end


--- @param playerSrc string
--- @return number
function GetNumPlayerIdentifiers(playerSrc) end


--- @param serverId number
--- @return Player
function GetPlayerFromServerId(serverId) end


--- @param interiorId number
--- @return number
function GetInteriorRoomCount(interiorId) end

--- A getter for [SET_PED_HEAD_OVERLAY](#_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#_0x497BF74A7B9CB952) natives.
--- @param ped Ped
--- @param index number
--- @param overlayValue number
--- @param colourType number
--- @param firstColour number
--- @param secondColour number
--- @param overlayOpacity number
--- @return boolean
function GetPedHeadOverlayData(ped, index, overlayValue, colourType, firstColour, secondColour, overlayOpacity) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleAlarmTimeLeft(vehicle) end

--- A getter for [\_SET_PED_HAIR_COLOR](#_0x4CFFC65454C93A49). Returns -1 if fails to get.
--- @param ped Ped
--- @return number
function GetPedHairHighlightColor(ped) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleOilLevel(vehicle) end

--- Returns a hash of selected ped weapon.
--- @param ped Ped
--- @return Hash
function GetSelectedPedWeapon(ped) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleNextGear(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleNumberOfWheels(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleDashboardSpeed(vehicle) end


--- @param vehicle Vehicle
--- @return string
function GetVehicleNumberPlateText(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleHighGear(vehicle) end


--- @param vehicle Vehicle
--- @param color number
function GetVehicleDashboardColour(vehicle, color) end

--- Currently it only works when set to "all players".
--- @param vehicle Vehicle
--- @return number
function GetVehicleDoorsLockedForPlayer(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleNeedsToBeHotwired(vehicle) end

--- A getter for [MODIFY_VEHICLE_TOP_SPEED](#_0x93A3996368C94158). Returns -1.0 if a modifier is not set.
--- @param vehicle Vehicle
--- @return number
function GetVehicleTopSpeedModifier(vehicle) end


--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function GetVehicleCustomPrimaryColour(vehicle, r, g, b) end


--- @param key string
--- @return string
function GetResourceKvpString(key) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleEngineHealth(vehicle) end


--- @param vehicle Vehicle
--- @param wheelIndex number
--- @return number
function GetVehicleWheelHealth(vehicle, wheelIndex) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleRadioStationIndex(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleEngineTemperature(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehiclePetrolTankHealth(vehicle) end

--- Gets steering angle of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @param vehicle Vehicle
--- @param wheelIndex number
--- @return number
function GetVehicleWheelSteeringAngle(vehicle, wheelIndex) end

--- List of known states:
--- 
--- 
--- 1: Not wheeling.
--- 65: Vehicle is ready to do wheelie (burnouting).
--- 129: Vehicle is doing wheelie.
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleWheelieState(vehicle) end

--- Gets speed of a wheel at the tyre.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- @param vehicle Vehicle
--- @param wheelIndex number
--- @return number
function GetVehicleWheelSpeed(vehicle, wheelIndex) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleLivery(vehicle) end

--- Gets a vehicle's multiplier used with a wheel's GET_VEHICLE_WHEEL_STEERING_ANGLE to determine the angle the wheel is rendered.
--- @param vehicle Vehicle
--- @return number
function GetVehicleDrawnWheelAngleMult(vehicle) end

--- Gets the height of the specified runtime texture.
--- @param tex long
--- @return number
function GetRuntimeTextureHeight(tex) end

--- Returns the effective handling data of a vehicle as a floating-point value.
--- Example: local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')
--- @param vehicle Vehicle
--- @param class_ string
--- @param fieldName string
--- @return number
function GetVehicleHandlingFloat(vehicle, class_, fieldName) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleCurrentGear(vehicle) end


--- @param train Vehicle
--- @return number
function GetTrainCurrentTrackNode(train) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleCurrentAcceleration(vehicle) end


--- @param vehicle Vehicle
--- @param colorPrimary number
--- @param colorSecondary number
function GetVehicleColours(vehicle, colorPrimary, colorSecondary) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleCurrentRpm(vehicle) end

--- Returns the physical on-disk path of the specified resource.
--- @param resourceName string
--- @return string
function GetResourcePath(resourceName) end


--- @param vehicle Vehicle
--- @param wheelIndex number
--- @return number
function GetVehicleWheelRimColliderSize(vehicle, wheelIndex) end

--- Returns vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
--- Only works on non-default wheels (returns 0 in case of default wheels).
--- @param vehicle Vehicle
--- @return number
function GetVehicleWheelSize(vehicle) end

--- Returns the effective handling data of a vehicle as a vector value.
--- Example: local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')
--- @param vehicle Vehicle
--- @param class_ string
--- @param fieldName string
--- @return vector3
function GetVehicleHandlingVector(vehicle, class_, fieldName) end

--- Returns the current state of the specified resource.
--- @param resourceName string
--- @return string
function GetResourceState(resourceName) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleSteeringAngle(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleSteeringScale(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleTurboPressure(vehicle) end

--- Requests the commerce data from Tebex for the specified player, including the owned SKUs. Use IS_PLAYER_COMMERCE_INFO_LOADED to check if it has loaded.
--- @param playerSrc string
function LoadPlayerCommerceDataExt(playerSrc) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleWheelType(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleDirtLevel(vehicle) end


--- @param vehicle Vehicle
--- @param wheelIndex number
--- @return number
function GetVehicleWheelTireColliderSize(vehicle, wheelIndex) end

--- Overrides the output volume for a particular player on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
--- 
--- Set to -1.0 to reset the Volume override.
--- @param player Player
--- @param volume number
function MumbleSetVolumeOverride(player, volume) end

--- Gets the row pitch of the specified runtime texture, for use when creating data for SET_RUNTIME_TEXTURE_ARGB_DATA.
--- @param tex long
--- @return number
function GetRuntimeTexturePitch(tex) end

--- Gets the width of the specified runtime texture.
--- @param tex long
--- @return number
function GetRuntimeTextureWidth(tex) end


--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function GetVehicleCustomSecondaryColour(vehicle, r, g, b) end

--- Returns whether or not the specific minimap overlay has loaded.
--- @param id number
--- @return boolean
function HasMinimapOverlayLoaded(id) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleFuelLevel(vehicle) end

--- Gets the vehicle the specified Ped is/was in depending on bool value. This native is used server side when using OneSync.
--- @param ped Ped
--- @param lastVehicle boolean
--- @return Vehicle
function GetVehiclePedIsIn(ped, lastVehicle) end


--- @param vehicle Vehicle
--- @param color number
function GetVehicleInteriorColour(vehicle, color) end

--- 
--- enum VehicleLockStatus = {
---     None = 0,
---     Unlocked = 1,
---     Locked = 2,
---     LockedForPlayer = 3,
---     StickPlayerInside = 4, -- Doesn't allow players to exit the vehicle with the exit vehicle key.
---     CanBeBrokenInto = 7, -- Can be broken into the car. If the glass is broken, the value will be set to 1
---     CanBeBrokenIntoPersist = 8, -- Can be broken into persist
---     CannotBeTriedToEnter = 10, -- Cannot be tried to enter (Nothing happens when you press the vehicle enter key).
--- }
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleDoorLockStatus(vehicle) end

--- Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
--- @param vehicle Vehicle
--- @return number
function GetVehicleIndicatorLights(vehicle) end


--- @param vehicle Vehicle
--- @param pearlescentColor number
--- @param wheelColor number
function GetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleNumberPlateTextIndex(vehicle) end

--- Registers a specified .gfx file as GFx font library.
--- The .gfx file has to be registered with the streamer already.
--- @param fileName string
function RegisterFontFile(fileName) end


--- @param vehicle Vehicle
--- @return boolean
function HasVehicleBeenOwnedByPlayer(vehicle) end

--- Clears channels from the target list for the specified Mumble voice target ID.
--- @param targetId number
function MumbleClearVoiceTargetChannels(targetId) end

--- Adds the specified player to the target list for the specified Mumble voice target ID.
--- @param targetId number
--- @param player Player
function MumbleAddVoiceTargetPlayer(targetId, player) end


--- @param entity Entity
--- @return number
function NetworkGetNetworkIdFromEntity(entity) end

--- <!-- Native implemented by Disquse. 0x66EE14B2 -->
--- 
--- Returns true if the full map is currently revealed on the minimap. 
--- Use [IsBigmapActive](#_0xFFF65C63) to check if the minimap is currently expanded or in it's normal state.
--- @return boolean
function IsBigmapFull() end

--- Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a /.
--- 
--- Commands registered using this function can also be executed by resources, using the [ExecuteCommand native](#_0x561C060B).
--- 
--- The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).
--- 
--- **Example result**:
--- 
--- ![](https://i.imgur.com/TaCnG09.png)
--- @param commandName string
--- @param handler func
--- @param restricted boolean
function RegisterCommand(commandName, handler, restricted) end


--- @param referenceIdentity string
--- @param argsSerialized string
--- @param argsLength number
--- @param retvalLength number
--- @return string
function InvokeFunctionReference(referenceIdentity, argsSerialized, argsLength, retvalLength) end


--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function GetVehicleTyreSmokeColor(vehicle, r, g, b) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleHeadlightsColour(vehicle) end

--- Returns the mumble voice channel from a player's server id.
--- @param serverId number
--- @return number
function MumbleGetVoiceChannelFromServerId(serverId) end


--- @param vehicle Vehicle
--- @param wheelIndex number
--- @return number
function GetVehicleWheelTireColliderWidth(vehicle, wheelIndex) end

--- A getter for [SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#_0x245A6883D966D537).
--- @return number
function GetVehicleDensityMultiplier() end

--- Scope entry for profiler.
--- @param scopeName string
function ProfilerEnterScope(scopeName) end

--- Requests whether or not the commerce data for the specified player has loaded from Tebex.
--- @param playerSrc string
--- @return boolean
function IsPlayerCommerceInfoLoadedExt(playerSrc) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleBodyHealth(vehicle) end

