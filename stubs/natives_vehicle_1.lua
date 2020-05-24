
--- @param vehicleClass number
--- @return number
function GetVehicleClassMaxAcceleration(vehicleClass) end

--- 
--- For a full enum, see here : pastebin.com/i2GGAjY0  
--- char buffer[128];  
--- std::sprintf(buffer, "VEH_CLASS_%i", VEHICLE::GET_VEHICLE_CLASS_FROM_NAME (hash));  
--- char* className = UI::_GET_LABEL_TEXT(buffer);  
--- 
--- @param modelHash Hash
--- @return number
function GetVehicleClassFromName(modelHash) end


--- @param vehicleClass number
--- @return number
function GetVehicleClassMaxAgility(vehicleClass) end


--- @param vehicleClass number
--- @return number
function GetVehicleClassMaxBraking(vehicleClass) end


--- @param vehicleClass number
--- @return number
function GetVehicleClassMaxTraction(vehicleClass) end

--- 
--- What's this for? Primary and Secondary RGB have their own natives and this one doesn't seem specific.  
--- 
--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function GetVehicleColor(vehicle, r, g, b) end


--- @param vehicle Vehicle
--- @param colorPrimary number
--- @param colorSecondary number
function GetVehicleColours(vehicle, colorPrimary, colorSecondary) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleColourCombination(vehicle) end


--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function GetVehicleCustomPrimaryColour(vehicle, r, g, b) end

--- Similar to [_GET_AIRCRAFT_BOMB_COUNT](#_0xEA12BD130D7569A1), this gets the amount of countermeasures that are present on this vehicle.
--- 
--- Use [_SET_AIRCRAFT_COUNTERMEASURE_COUNT](#_0x9BDA23BF666F0855) to set the current amount.
--- @param aircraft Vehicle
--- @return number
function GetVehicleCountermeasureCount(aircraft) end


--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function GetVehicleCustomSecondaryColour(vehicle, r, g, b) end


--- @param vehicle Vehicle
--- @param color number
function GetVehicleDashboardColour(vehicle, color) end

--- 
--- The only example I can find of this function in the scripts, is this:  
--- struct _s = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(rPtr((A_0) + 4), 1.21f, 6.15f, 0.3f);  
--- -----------------------------------------------------------------------------------------------------------------------------------------  
--- PC scripts:  
--- v_5/*{3}*/ = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(a_0._f1, 1.21, 6.15, 0.3);  
--- 
--- @param vehicle Vehicle
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
--- @return vector3
function GetVehicleDeformationAtPos(vehicle, offsetX, offsetY, offsetZ) end

--- 
--- example in vb:  
--- Public Shared Function Get_Vehicle_Door_Angle(Vehicle As Vehicle, Door As VehicleDoor) As Single  
---     Return Native.Function.Call(Of Single)(Hash.GET_VEHICLE_DOOR_ANGLE_RATIO, Vehicle.Handle, Door)  
--- End Function  
--- 		I'm Not MentaL  
--- 
--- @param vehicle Vehicle
--- @param door number
--- @return number
function GetVehicleDoorAngleRatio(vehicle, door) end

--- 
--- Dirt level 0..15  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleDirtLevel(vehicle) end

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


--- @param vehicle Vehicle
--- @param player Player
--- @return boolean
function GetVehicleDoorsLockedForPlayer(vehicle, player) end

--- 
--- Returns 1000.0 if the function is unable to get the address of the specified vehicle or if it's not a vehicle.  
--- Minimum: -4000  
--- Maximum: 1000  
--- -4000: Engine is destroyed  
--- 0 and below: Engine catches fire and health rapidly declines  
--- 300: Engine is smoking and losing functionality  
--- 1000: Engine is perfect  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleEngineHealth(vehicle) end

--- 
--- formerly known as _GET_VEHICLE_PAINT_FADE  
--- The result is a value from 0-1, where 0 is fresh paint.  
--- -----------------------------------------------------------------------  
--- The actual value isn't stored as a float but as an unsigned char (BYTE).  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleEnveffScale(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleEstimatedMaxSpeed(vehicle) end


--- @param vehicle Vehicle
--- @param pearlescentColor number
--- @param wheelColor number
function GetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end


--- @param vehicle Vehicle
--- @return boolean
function GetVehicleHasKers(vehicle) end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param vehicle Vehicle
--- @return any
function GetVehicleHasLandingGear(vehicle) end


--- @param vehicle Vehicle
--- @return Hash
function GetVehicleLayoutHash(vehicle) end


--- @param vehicle Vehicle
--- @param color number
function GetVehicleInteriorColour(vehicle, color) end


--- @param vehicle Vehicle
--- @param lightsOn boolean
--- @param highbeamsOn boolean
--- @return boolean
function GetVehicleLightsState(vehicle, lightsOn, highbeamsOn) end

--- 
--- -1 = no livery  
--- 
--- @param trailers2 Vehicle
--- @return number
function GetVehicleLivery(trailers2) end

--- 
--- The resulting entity can be a Vehicle or Ped.  
--- =========================  
--- on a side note watching changes in memory this will only store your ped's entityPoolAddress if it's your personal vehicle. So seems to be related to personal vehicles or atleast a specific decor of it maybe.  
--- 
--- @param vehicle Vehicle
--- @param entity Entity
--- @return boolean
function GetVehicleLockOnTarget(vehicle, entity) end

--- 
--- Returns -1 if the vehicle has no livery  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleLiveryCount(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleMaxNumberOfPassengers(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleMaxBraking(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleMaxTraction(vehicle) end

--- 
--- In b944, there are 50 (0 - 49) mod types.  
--- Returns -1 if the vehicle mod is stock  
--- 
--- @param vehicle Vehicle
--- @param modType number
--- @return number
function GetVehicleMod(vehicle, modType) end

--- 
--- p3 seems to be the pearlescent highlight color.  
--- Seems redondant with void GET_VEHICLE_EXTRA_COLOURS(Vehicle vehicle, int *pearlescentColor, int *wheelColor)  
--- 
--- @param vehicle Vehicle
--- @param paintType number
--- @param color number
--- @param pearlescentColor number
function GetVehicleModColor1(vehicle, paintType, color, pearlescentColor) end

--- 
--- returns a string which is the codename of the vehicle's currently selected primary color  
--- p1 is always 0  
--- 
--- @param vehicle Vehicle
--- @param p1 boolean
--- @return string
function GetVehicleModColor1Name(vehicle, p1) end

--- 
--- returns a string which is the codename of the vehicle's currently selected secondary color  
--- 
--- @param vehicle Vehicle
--- @return string
function GetVehicleModColor2Name(vehicle) end


--- @param vehicle Vehicle
--- @param paintType number
--- @param color number
function GetVehicleModColor2(vehicle, paintType, color) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleModKit(vehicle) end

--- 
--- Can be used for IS_DLC_VEHICLE_MOD and _0xC098810437312FFF  
--- 
--- 
--- 
--- NativeDB Return Type: Hash
--- 
--- @param vehicle Vehicle
--- @param modType number
--- @param modIndex number
--- @return any
function GetVehicleModIdentifierHash(vehicle, modType, modIndex) end


--- @param vehicle Vehicle
--- @param modType number
--- @param modIndex number
--- @return number
function GetVehicleModModifierValue(vehicle, modType, modIndex) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleModKitType(vehicle) end

--- 
--- Returns the acceleration of the specified model.  
--- For a full list, see here: pastebin.com/GaN6vT4R  
--- 
--- @param modelHash Hash
--- @return number
function GetVehicleModelAcceleration(modelHash) end

--- 
--- Returns true if the wheels are custom wheels  
--- 
--- @param vehicle Vehicle
--- @param modType number
--- @return boolean
function GetVehicleModVariation(vehicle, modType) end

--- 
--- GET_VEHICLE_MODEL_*  
--- 9.8 * thrust if air vehicle, else 0.38 + drive force?  
--- For a full list, see here: pastebin.com/bJQeDqNd  
--- 
--- @param modelHash Hash
--- @return number
function GetVehicleModelDownForce(modelHash) end

--- 
--- Returns max speed (without mods) of the specified vehicle model in m/s.
--- 
--- @param modelHash Hash
--- @return number
function GetVehicleModelEstimatedMaxSpeed(modelHash) end

--- 
--- Returns max braking of the specified vehicle model.  
--- For a full list, see here: pastebin.com/3N8DVbpG  
--- 
--- @param modelHash Hash
--- @return number
function GetVehicleModelMaxBraking(modelHash) end

--- 
--- max braking if air vehicle, else max braking + 0.1  
--- -------------------  
--- For a full list, see here: pastebin.com/Cb9L1Cn0  
--- 
--- @param modelHash Hash
--- @return number
function GetVehicleModelMaxBrakingMaxMods(modelHash) end

--- 
--- GET_VEHICLE_MODEL_*  
--- Function pertains only to aviation vehicles.  
--- For a full list, see here: pastebin.com/JwuGNp2K  
--- 
--- @param modelHash Hash
--- @return number
function GetVehicleModelMaxKnots(modelHash) end

--- 
--- Returns max traction of the specified vehicle model.  
--- For a full list, see here: pastebin.com/ERnntVjK  
--- 
--- @param modelHash Hash
--- @return number
function GetVehicleModelMaxTraction(modelHash) end

--- 
--- GET_VEHICLE_MODEL_*  
--- called if the vehicle is a boat -- returns vecMoveResistanceX?  
--- For a full list, see here: pastebin.com/Pyb2RhZ9  
--- 
--- @param modelHash Hash
--- @return number
function GetVehicleModelMoveResistance(modelHash) end

--- 
--- Returns max number of passengers (including the driver) for the specified vehicle model.  
--- For a full list, see here: pastebin.com/MdETCS1j  
--- 
--- @param modelHash Hash
--- @return number
function GetVehicleModelNumberOfSeats(modelHash) end

--- 
--- Gets the color of the neon lights of the specified vehicle.  
--- See _SET_VEHICLE_NEON_LIGHTS_COLOUR (0x8E0A582209A62695) for more information  
--- 
--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function GetVehicleNeonLightsColour(vehicle, r, g, b) end

--- 
--- GET_VEHICLE_NUMBER_*
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleNumberOfBrokenBones(vehicle) end

--- 
--- GET_VEHICLE_NUMBER_*
--- Also includes 'turnOffBones' when vehicle mods are installed.
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleNumberOfBrokenOffBones(vehicle) end

--- 
--- Gets the number of passengers, NOT including the driver. Use IS_VEHICLE_SEAT_FREE(Vehicle, -1) to also check for the driver  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleNumberOfPassengers(vehicle) end

--- 
--- Returns the license plate text from a vehicle.  8 chars maximum.  
--- 
--- @param vehicle Vehicle
--- @return string
function GetVehicleNumberPlateText(vehicle) end

--- 
--- Returns the PlateType of a vehicle  
--- Blue_on_White_1 = 3,  
--- Blue_on_White_2 = 0,  
--- Blue_on_White_3 = 4,  
--- Yellow_on_Blue = 2,  
--- Yellow_on_Black = 1,  
--- North_Yankton = 5,  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleNumberPlateTextIndex(vehicle) end

--- 
--- 1000 is max health  
--- Begins leaking gas at around 650 health  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehiclePetrolTankHealth(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetVehiclePlateType(vehicle) end


--- @param p0 number
--- @param p1 string
--- @return number
function GetVehicleRecordingId(p0, p1) end

--- Returns index of the current vehicle's rooftop livery.
--- A getter for [\_SET_VEHICLE_ROOF_LIVERY](#_0xA6D3A8750DC73270).
--- @param vehicle Vehicle
--- @return number
function GetVehicleRoofLivery(vehicle) end

--- Returns a number of available rooftop liveries, or -1 if vehicle has no rooftop liveries available.
--- @param vehicle Vehicle
--- @return number
function GetVehicleRoofLiveryCount(vehicle) end

--- 
--- Outputs 2 Vector3's.
--- Scripts check if out2.x - out1.x > someshit.x
--- Could be suspension related, as in max suspension height and min suspension height, considering the natives location.
--- 
--- @param vehicle Vehicle
--- @param out1 vector3
--- @param out2 vector3
function GetVehicleSuspensionBounds(vehicle, out1, out2) end

--- 
--- Gets the height of the vehicle's suspension.  
--- The higher the value the lower the suspension. Each 0.002 corresponds with one more level lowered.  
--- 0.000 is the stock suspension.  
--- 0.008 is Ultra Suspension.  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleSuspensionHeight(vehicle) end

--- 
--- Gets the trailer of a vehicle and puts it into the trailer parameter.  
--- 
--- @param vehicle Vehicle
--- @param trailer Vehicle
--- @return boolean
function GetVehicleTrailerVehicle(vehicle, trailer) end


--- @param vehicle Vehicle
--- @return boolean
function GetVehicleTyresCanBurst(vehicle) end


--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function GetVehicleTyreSmokeColor(vehicle, r, g, b) end


--- @param vehicle Vehicle
--- @param weaponIndex number
--- @return number
function GetVehicleWeaponCapacity(vehicle, weaponIndex) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleWindowTint(vehicle) end

--- 
--- Returns an int  
--- Wheel Types:  
--- 0: Sport  
--- 1: Muscle  
--- 2: Lowrider  
--- 3: SUV  
--- 4: Offroad  
--- 5: Tuner  
--- 6: Bike Wheels  
--- 7: High End  
--- Tested in Los Santos Customs  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleWheelType(vehicle) end


--- @param vehicleAsset number
--- @return boolean
function HasVehicleAssetLoaded(vehicleAsset) end

--- Returns the headlight color index from the vehicle. Value between 0, 12.
--- Use [\_SET_VEHICLE_HEADLIGHTS_COLOUR](#_0xE41033B25D003A07) to set the headlights color for the vehicle.
--- Must enable xenon headlights before it'll take affect.
--- 
--- List of colors and ids:
--- 
--- 
--- enum headlightColors {
---     Default = -1,
---     White = 0,
---     Blue = 1,
---     Electric_Blue = 2,
---     Mint_Green = 3,
---     Lime_Green = 4,
---     Yellow = 5,
---     Golden_Shower = 6,
---     Orange = 7,
---     Red = 8,
---     Pony_Pink = 9,
---     Hot_Pink = 10,
---     Purple = 11,
---     Blacklight = 12
--- }
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleXenonLightsColour(vehicle) end


--- @return boolean
function HasVehiclePhoneExplosiveDevice() end


--- @param p0 any
--- @return boolean
function HasPreloadModsFinished(p0) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function HideVehicleTombstone(vehicle, toggle) end


--- @param p0 any
--- @param p1 any
--- @return boolean
function HasVehicleRecordingBeenLoaded(p0, p1) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @return boolean
function IsAnyVehicleNearPoint(x, y, z, radius) end


--- @param vehicle Vehicle
--- @return boolean
function IsAnyPassengerRappelingFromVehicle(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function IsBigVehicle(vehicle) end

--- 
--- IS_*
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsBoatAnchoredAndFrozen(vehicle) end


--- @param vehicle Vehicle
--- @param entity Entity
--- @return boolean
function IsEntityAttachedToHandlerFrame(vehicle, entity) end

--- 
--- Usage:  
--- public bool isCopInRange(Vector3 Location, float Range)  
---         {  
---             return Function.Call<bool>(Hash.IS_COP_PED_IN_AREA_3D, Location.X - Range, Location.Y - Range, Location.Z - Range, Location.X + Range, Location.Y + Range, Location.Z + Range);  
---         }  
--- 
--- @param x1 number
--- @param x2 number
--- @param y1 number
--- @param y2 number
--- @param z1 number
--- @param z2 number
--- @return boolean
function IsCopVehicleInArea3d(x1, x2, y1, y2, z1, z2) end


--- @param vehicle Vehicle
--- @return boolean
function IsHeliLandingAreaBlocked(vehicle) end


--- @param handler Vehicle
--- @param container Entity
--- @return boolean
function IsHandlerFrameAboveContainer(handler, container) end

--- 
--- Vehicle has landing gear?  
--- 
--- @param plane Vehicle
--- @return boolean
function IsPlaneLandingGearIntact(plane) end


--- @param vehicle Vehicle
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 boolean
--- @return boolean
function IsHeliPartBroken(vehicle, p1, p2, p3) end


--- @param vehicle Vehicle
--- @return boolean
function IsPlaybackUsingAiGoingOnForVehicle(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function IsPlaybackGoingOnForVehicle(vehicle) end

--- 
--- NativeDB Parameter 1: int seatIndex
--- 
--- @param vehicle Vehicle
--- @param seatIndex boolean
--- @return boolean
function IsSeatWarpOnly(vehicle, seatIndex) end


--- @param vehicle Vehicle
--- @return boolean
function IsTaxiLightOn(vehicle) end


--- @param model Hash
--- @return boolean
function IsThisModelABicycle(model) end

--- 
--- Returns true if the model is motorcycle or bycicle.  
--- 
--- @param model Hash
--- @return boolean
function IsThisModelABike(model) end


--- @param model Hash
--- @return boolean
function IsThisModelABoat(model) end

--- 
--- To check if the model is an amphibious car, see gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-33#entry1069317363 (for build 944 and above only!)  
--- 
--- @param model Hash
--- @return boolean
function IsThisModelACar(model) end


--- @param model Hash
--- @return boolean
function IsThisModelAHeli(model) end

--- 
--- Checks if model is a boat, then checks for FLAG_IS_JETSKI.  
--- @whoever named this _IS_THIS_MODEL_AN_EMERGENCY_BOAT: please do some tests before naming natives, thanks.  
--- 
--- @param model Hash
--- @return boolean
function IsThisModelAJetski(model) end


--- @param model Hash
--- @return boolean
function IsThisModelAPlane(model) end


--- @param model Hash
--- @return boolean
function IsThisModelAQuadbike(model) end


--- @param model Hash
--- @return boolean
function IsThisModelAnAmphibiousCar(model) end


--- @param model Hash
--- @return boolean
function IsThisModelATrain(model) end

--- 
--- NativeDB Parameter 0: Hash model
--- 
--- @param model any
--- @return boolean
function IsThisModelAnAmphibiousQuadbike(model) end


--- @param vehicle Vehicle
--- @param modType number
--- @return boolean
function IsToggleModOn(vehicle, modType) end


--- @param vehicle Vehicle
--- @param seatIndex number
--- @return boolean
function IsTurretSeat(vehicle, seatIndex) end

--- 
--- p1 is false almost always.  
--- However, in launcher_carwash/carwash1/carwash2 scripts, p1 is true and is accompanied by DOES_VEHICLE_HAVE_ROOF  
--- 
--- @param vehicle Vehicle
--- @param p1 boolean
--- @return boolean
function IsVehicleAConvertible(vehicle, p1) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleAlarmActivated(vehicle) end


--- @param cargobob Vehicle
--- @param vehicleAttached Vehicle
--- @return boolean
function IsVehicleAttachedToCargobob(cargobob, vehicleAttached) end

--- 
--- Scripts verify that towTruck is the first parameter, not the second.  
--- 
--- @param towTruck Vehicle
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleAttachedToTowTruck(towTruck, vehicle) end

--- 
--- Public Function isVehicleAttachedToTrailer(vh As Vehicle) As Boolean  
--- Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_ATTACHED_TO_TRAILER, vh)  
--- 		    End Function  
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleAttachedToTrailer(vehicle) end

--- 
--- IS_VEHICLE_BUMPER_HANGING_OFF  
--- Not sure what the actual name is but this checks if the bumper of a vehicle is hanging off. It will return true if it is hanging, false if it falls off and false if it is not hanging off.  
--- 
--- @param vehicle Vehicle
--- @param frontBumper boolean
--- @return boolean
function IsVehicleBumperBouncing(vehicle, frontBumper) end


--- @param vehicle Vehicle
--- @param front boolean
--- @return boolean
function IsVehicleBumperBrokenOff(vehicle, front) end

--- 
--- Appears to return true if the vehicle has any damage, including cosmetically.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleDamaged(vehicle) end

--- 
--- doorID starts at 0, not seeming to skip any numbers. Four door vehicles intuitively range from 0 to 3.  
--- 
--- @param veh Vehicle
--- @param doorID number
--- @return boolean
function IsVehicleDoorDamaged(veh, doorID) end

--- doorIndex:
--- 0 = Front Left Door  
--- 1 = Front Right Door  
--- 2 = Back Left Door  
--- 3 = Back Right Door  
--- 4 = Hood  
--- 5 = Trunk  
--- 6 = Trunk2
--- @param vehicle Vehicle
--- @param doorIndex number
--- @return boolean
function IsVehicleDoorFullyOpen(vehicle, doorIndex) end

--- 
--- p1 is always 0 in the scripts.  
--- p1 = check if vehicle is on fire  
--- 
--- @param vehicle Vehicle
--- @param isOnFireCheck boolean
--- @return boolean
function IsVehicleDriveable(vehicle, isOnFireCheck) end

--- Only ever used once in decompiled scripts: **am_pi_menu**:
--- Returns true if the engine is on fire, or if the vehicle engine health is &lt; 0 and it **has been** on fire.
--- 
--- It sometimes doesn't return true when the vehicle engine has been on fire, and has since been fixed. I'm not really sure what the exact conditions are.
--- 
--- This usually returns true even if there are no visible flames yet (engine health > 0). However if you monitor engine health you'll see that it starts decreasing as soon as this returns true.
--- 
--- 
--- if (((ENTITY::DOES_ENTITY_EXIST(Global_1281959) && !ENTITY::IS_ENTITY_DEAD(Global_1281959, 0)) && func_1545(Global_1281959)) && !func_205(PLAYER::PLAYER_ID()))
--- {
---     if (VEHICLE::GET_VEHICLE_ENGINE_HEALTH(Global_1281959) > 0f && VEHICLE::GET_IS_VEHICLE_ENGINE_RUNNING(Global_1281959))
---     {
---         bVar0 = true;
---     }
---     else
---     {
---         bVar0 = false;
---     }
---     if (VEHICLE::_0xEC69ADF931AAE0C3(Global_1281959)) // _IS_VEHICLE_ENGINE_ON_FIRE
---     {
---         bVar0 = false;
---     }
--- }
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleEngineOnFire(vehicle) end


--- @param vehicle Vehicle
--- @param extraId number
--- @return boolean
function IsVehicleExtraTurnedOn(vehicle, extraId) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleHighDetail(vehicle) end

--- 
--- Returns whether the specified vehicle is currently in a burnout.  
--- vb.net  
--- Public Function isVehicleInBurnout(vh As Vehicle) As Boolean  
---         Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_IN_BURNOUT, vh)  
---     End Function  
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleInBurnout(vehicle) end

--- 
--- garageName example "Michael - Beverly Hills"  
--- For a full list, see here: pastebin.com/73VfwsmS  
--- 
--- @param garageName string
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleInGarageArea(garageName, vehicle) end

--- 
--- Returns whether or not the vehicle has a CVehicleStreamRequestGfx that's trying to load mods.  
--- True if it isn't loading mods, false if it is.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleModLoadDone(vehicle) end


--- @param vehicle Vehicle
--- @param model Hash
--- @return boolean
function IsVehicleModel(vehicle, model) end

--- 
--- Public Function isVehicleOnAllWheels(vh As Vehicle) As Boolean  
--- Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_ON_ALL_WHEELS, vh)  
--- 		    End Function  
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleOnAllWheels(vehicle) end

--- 
--- indices:  
--- 0 = Left  
--- 1 = Right  
--- 2 = Front  
--- 3 = Back  
--- 
--- @param vehicle Vehicle
--- @param index number
--- @return boolean
function IsVehicleNeonLightEnabled(vehicle, index) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleRocketBoostActive(vehicle) end

--- 
--- Possibly: Returns whether the searchlight (found on police vehicles) is toggled on.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleSearchlightOn(vehicle) end

--- 
--- Has an additional BOOL parameter since version [???].  
--- Check if a vehicle seat is free.  
--- -1 being the driver seat.  
--- Use GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 for last seat index.  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: BOOL p2
--- 
--- @param vehicle Vehicle
--- @param seatIndex number
--- @return boolean
function IsVehicleSeatFree(vehicle, seatIndex) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleSirenAudioOn(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleSirenOn(vehicle) end

--- 
--- Checks for FLAG_NO_RESPRAY  
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleSprayable(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleStolen(vehicle) end

--- 
--- MulleDK19: Returns true if the vehicle's speed is equal to, or less than 0.02 meters per second, or 0.05 meters per second, if the vehicle's handbrake is engaged.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleStopped(vehicle) end

--- 
--- is this for red lights only?  more testing required.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleStoppedAtTrafficLights(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleStuckOnRoof(vehicle) end

--- 
--- p1 can be anywhere from 0 to 3 in the scripts. p2 is generally somewhere in the 1000 to 10000 range.  
--- 
--- @param vehicle Vehicle
--- @param p1 number
--- @param p2 number
--- @return boolean
function IsVehicleStuckTimerUp(vehicle, p1, p2) end

--- 
--- wheelID used for 4 wheelers seem to be (0, 1, 4, 5)  
--- completely - is to check if tire completely gone from rim.  
--- '0 = wheel_lf / bike, plane or jet front  
--- '1 = wheel_rf  
--- '2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left  
--- '3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right  
--- '4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left  
--- '5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right  
--- '45 = 6 wheels trailer mid wheel left  
--- '47 = 6 wheels trailer mid wheel right  
--- 
--- @param vehicle Vehicle
--- @param wheelID number
--- @param completely boolean
--- @return boolean
function IsVehicleTyreBurst(vehicle, wheelID, completely) end

--- 
--- must be called after TRACK_VEHICLE_VISIBILITY   
--- it's not instant so probabilly must pass an 'update' to see correct result.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsVehicleVisible(vehicle) end

--- 
--- NativeDB Parameter 0: Hash weaponHash
--- 
--- @param weaponHash any
--- @param vehicle Vehicle
--- @param owner Ped
--- @return any
function IsVehicleWeaponDisabled(weaponHash, vehicle, owner) end


--- @param vehicle Vehicle
--- @param windowIndex number
--- @return boolean
function IsVehicleWindowIntact(vehicle, windowIndex) end


--- @param vehicle Vehicle
--- @param instantlyLower boolean
function LowerConvertibleRoof(vehicle, instantlyLower) end


--- @param vehicle Vehicle
function LowerRetractableWheels(vehicle) end

--- 
--- Vehicle power multiplier.  
--- Does not have to be looped each frame. Can be set once.  
--- Values lower than 1f don't work.  
--- Note: If the value is set with GET_RANDOM_FLOAT_IN_RANGE, the vehicle will have an absurdly high ammount of power, and will become almost undrivable for the player or NPCs. The range doesn't seem to matter.  
--- An high value like 10000000000f will visually remove the wheels that apply the power (front wheels for FWD, rear wheels for RWD), but the power multiplier will still apply, and the wheels still work.  
--- ------  
--- value is a percentage bump which affects directly the parameter known as fInitialDriveForce in handling.meta. For example:  
--- VEHICLE::_SET_VEHICLE_ENGINE_POWER_MULTIPLIER(myVehicle, 30.0)  
--- will have this effect: DriveForce *= 1.3  
--- 
--- @param vehicle Vehicle
--- @param value number
function ModifyVehicleTopSpeed(vehicle, value) end


--- @param vehicle Vehicle
function OpenBombBayDoors(vehicle) end


--- @param vehicle Vehicle
function PausePlaybackRecordedVehicle(vehicle) end


--- @param p0 any
--- @param modType number
--- @param p2 any
function PreloadVehicleMod(p0, modType, p2) end


--- @param vehicle Vehicle
--- @param instantlyRaise boolean
function RaiseConvertibleRoof(vehicle, instantlyRaise) end


--- @param vehicle Vehicle
function RaiseRetractableWheels(vehicle) end


--- @param vehicle Vehicle
function ReleasePreloadMods(vehicle) end

--- 
--- Used to remove a speedzone.  
--- This is the speed zone native.  
--- Example usage C#:  
--- uint speedZone = Function.Call<uint>((Hash) 0x2CE544C68FB812A0, Game.PlayerPed.Position.X, Game.PlayerPed.Position.Y, Game.PlayerPed.Position.Z, 100.0f, 0.0f, false);  
--- bool speedZoneClosed = Function.Call<bool>((Hash) 0x1033371FC8E842A7, speedZone);  
--- (Thanks to alexguirre for his help!)  
--- 
--- @param speedzone number
--- @return boolean
function RemoveSpeedZone(speedzone) end

