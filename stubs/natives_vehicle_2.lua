--- 
--- Retracts the hook on the cargobob.  
--- Note: after you retract it the natives for dropping the hook no longer work  
--- 
--- @param cargobob Vehicle
function RemovePickUpRopeForCargobob(cargobob) end


--- @param p0 any
function RemoveVehicleCombatAvoidanceArea(p0) end


--- @param vehicleAsset number
function RemoveVehicleAsset(vehicleAsset) end


--- @param vehicle Vehicle
--- @param modType number
function RemoveVehicleMod(vehicle, modType) end


--- @param vehicle Vehicle
function RemoveVehicleHighDetailModel(vehicle) end


--- @param p0 number
--- @param p1 string
function RemoveVehicleRecording(p0, p1) end


--- @param vehicle Vehicle
function RemoveVehicleUpsidedownCheck(vehicle) end


--- @param vehicle Vehicle
function RemoveVehicleStuckCheck(vehicle) end

--- 
--- windowIndex:  
--- 0 = Front Right Window  
--- 1 = Front Left Window  
--- 2 = Back Right Window  
--- 3 = Back Left Window  
--- 
--- @param vehicle Vehicle
--- @param windowIndex number
function RemoveVehicleWindow(vehicle, windowIndex) end

--- 
--- REQUEST_VEHICLE_ASSET(GET_HASH_KEY(cargobob3), 3);  
--- vehicle found that have asset's:  
--- cargobob3  
--- submersible  
--- blazer  
--- 
--- @param vehicleHash Hash
--- @param vehicleAsset number
function RequestVehicleAsset(vehicleHash, vehicleAsset) end


--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param unk any
function RemoveVehiclesFromGeneratorsInArea(x1, y1, z1, x2, y2, z2, unk) end

--- 
--- REQUEST_VEHICLE_*  
--- 
--- @param vehicle Vehicle
function RequestVehicleDashboardScaleformMovie(vehicle) end

--- 
--- In script files, seen as REQUEST_VEHICLE_RECORDING(1, "FBIs1UBER");  
--- 
--- @param i number
--- @param name string
function RequestVehicleRecording(i, name) end


--- @param vehicle Vehicle
function RequestVehicleHighDetailModel(vehicle) end

--- 
--- The inner function has a switch on the second parameter. It's the stuck timer index.  
--- Here's some pseudo code I wrote for the inner function:  
--- void __fastcall NATIVE_RESET_VEHICLE_STUCK_TIMER_INNER(CUnknown* unknownClassInVehicle, int timerIndex)  
--- {  
--- 	switch (timerIndex)  
--- 	{  
--- 	case 0:  
--- unknownClassInVehicle->FirstStuckTimer = (WORD)0u;  
--- 	case 1:  
--- unknownClassInVehicle->SecondStuckTimer = (WORD)0u;  
--- 	case 2:  
--- unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;  
--- 	case 3:  
--- unknownClassInVehicle->FourthStuckTimer = (WORD)0u;  
--- 	case 4:  
--- unknownClassInVehicle->FirstStuckTimer = (WORD)0u;  
--- unknownClassInVehicle->SecondStuckTimer = (WORD)0u;  
--- unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;  
--- unknownClassInVehicle->FourthStuckTimer = (WORD)0u;  
--- break;  
--- 	};  
--- }  
--- 
--- @param vehicle Vehicle
--- @param nullAttributes number
function ResetVehicleStuckTimer(vehicle, nullAttributes) end


--- @param vehicle Vehicle
--- @param toggle boolean
function ResetVehicleWheels(vehicle, toggle) end

--- 
--- windowIndex:  
--- 0 = Front Right Window  
--- 1 = Front Left Window  
--- 2 = Back Right Window  
--- 3 = Back Left Window  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @param vehicle Vehicle
--- @param windowIndex number
--- @return any
function RollDownWindow(vehicle, windowIndex) end

--- 
--- Roll down all the windows of the vehicle passed through the first parameter.  
--- 
--- @param vehicle Vehicle
function RollDownWindows(vehicle) end

--- 0 = Front Left Window  
--- 1 = Front Right Window  
--- 2 = Back Left Window  
--- 3 = Back Right Window  
--- 
--- NativeDB Return Type: void
--- @param vehicle Vehicle
--- @param windowIndex number
--- @return any
function RollUpWindow(vehicle, windowIndex) end


function SetAllVehicleGeneratorsActive() end


--- @param active boolean
function SetAllLowPriorityVehicleGeneratorsActive(active) end

--- Sets the ambient vehicle spawn range.
--- For example, if you set the range to 0.1, the ambient cars will spawn close to your player.
--- 
--- This native needs to be called every frame.
--- @param range number
function SetAmbientVehicleRangeMultiplierThisFrame(range) end


--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param p6 boolean
--- @param p7 boolean
function SetAllVehicleGeneratorsActiveInArea(x1, y1, z1, x2, y2, z2, p6, p7) end

--- 
--- Works with boats, submarines, submarine cars, amphibious bikes, and planes that implement CSeaPlaneExtension
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetBoatAnchor(vehicle, toggle) end

--- 
--- Only works on bikes, both X and Y work in the -1 - 1 range.
--- X forces the bike to turn left or right (-1, 1)
--- Y forces the bike to lean to the left or to the right (-1, 1)
--- Example with X -1/Y 1
--- http://i.imgur.com/TgIuAPJ.jpg
--- 
--- @param vehicle Vehicle
--- @param x number
--- @param y number
function SetBikeOnStand(vehicle, x, y) end

--- 
--- Vehicle must be a boat.  
--- 
--- @param vehicle Vehicle
--- @param value number
function SetBoatAnchorBuoyancyCoefficient(vehicle, value) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetBoatFrozenWhenAnchored(vehicle, toggle) end


--- @param vehicle Vehicle
function SetBoatSinking(vehicle) end


--- @param vehicle Vehicle
--- @param p1 boolean
function SetBoatDisableAvoidance(vehicle, p1) end

--- 
--- Disables wheel cambering & hydraulics
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetCamberedWheelsDisabled(vehicle, toggle) end

--- 
--- NativeDB Parameter 1: BOOL toggle
--- 
--- @param vehicle Vehicle
--- @param toggle Vehicle
function SetBoatSinksWhenWrecked(vehicle, toggle) end

--- 
--- Something to do with "high speed bump severity"?  
--- if (!sub_87a46("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER")) {  
---     VEHICLE::_84FD40F56075E816(0.0);  
---     sub_8795b("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER", 1);  
--- }  
--- 
--- @param multiplier number
function SetCarHighSpeedBumpSeverityMultiplier(multiplier) end

--- 
--- For now, I changed the last one from bool to int.  
--- According to scripts specifically 'fm_mission_controller' this last parameter is 'false/0' when its called after the create rope native above is called for the magnet and 'true/1' after the create rope native above is called for the hook.  
--- 
--- @param cargobob Vehicle
--- @param xOffset number
--- @param yOffset number
--- @param state number
function SetCargobobHookPosition(cargobob, xOffset, yOffset, state) end

--- 
--- Hardcoded to not work in multiplayer.  
--- 
--- @param vehicle Vehicle
--- @param state boolean
function SetCanResprayVehicle(vehicle, state) end

--- Opens the trunk of the vehicle. Initially used in Max Payne 3, that's why we know the name.
--- @param vehicle Vehicle
function SetCarBootOpen(vehicle) end


--- @param vehicle Vehicle
--- @param p1 number
function SetCargobobPickupMagnetEffectRadius(vehicle, p1) end


--- @param cargobob Vehicle
--- @param p1 number
function SetCargobobPickupMagnetPullRopeLength(cargobob, p1) end

--- 
--- Won't attract or magnetize to any helicopters or planes of course, but that's common sense.  
--- 
--- @param cargobob Vehicle
--- @param isActive boolean
function SetCargobobPickupMagnetActive(cargobob, isActive) end


--- @param vehicle Vehicle
--- @param p1 number
function SetCargobobPickupMagnetFalloff(vehicle, p1) end


--- @param cargobob Vehicle
--- @param p1 number
function SetCargobobPickupMagnetPullStrength(cargobob, p1) end


--- @param cargobob Vehicle
--- @param vehicle Vehicle
function SetCargobobPickupMagnetReducedStrength(cargobob, vehicle) end


--- @param cargobob Vehicle
--- @param p1 number
function SetCargobobPickupMagnetReducedFalloff(cargobob, p1) end

--- 
--- NativeDB Parameter 1: float p1
--- 
--- @param cargobob Vehicle
--- @param p1 Player
function SetCargobobPickupRopeDampingMultiplier(cargobob, p1) end


--- @param cargobob Vehicle
--- @param strength number
function SetCargobobPickupMagnetStrength(cargobob, strength) end


--- @param vehicle Vehicle
--- @param state boolean
function SetConvertibleRoofLatchState(vehicle, state) end


--- @param vehicle Vehicle
--- @param state number
function SetCargobobPickupRopeType(vehicle, state) end


--- @param vehicle Vehicle
--- @param p1 boolean
function SetDisablePretendOccupants(vehicle, p1) end


--- @param vehicle Vehicle
--- @param p1 boolean
function SetConvertibleRoof(vehicle, p1) end

--- 
--- SET_*_MULTIPLIER_THIS_FRAME  
--- 
--- @param toggle boolean
function SetDisableRandomTrainsThisFrame(toggle) end


--- @param vehicle Vehicle
--- @param p1 boolean
function SetDisableVehicleEngineFires(vehicle, p1) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetDisableVehiclePetrolTankFires(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetDisableVehiclePetrolTankDamage(vehicle, toggle) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param toggle boolean
function SetDisableVehicleUnk(toggle) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param toggle boolean
function SetDisableVehicleUnk2(toggle) end

--- 
--- Toggles to render distant vehicles. They may not be vehicles but images to look like vehicles.  
--- 
--- @param toggle boolean
function SetDistantCarsEnabled(toggle) end

--- 
--- Must be called each frame
--- 
--- @param vehicle Vehicle
--- @param p1 boolean
function SetDisableVehicleWindowCollisions(vehicle, p1) end


--- @param toggle boolean
function SetFarDrawVehicles(toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetForceHdVehicle(vehicle, toggle) end

--- 
--- Sets some values in a vehicle gadget (tow arm, digger arm, etc.). Don't know which one though.  
--- I've tested on the towtruck 1 & 2, Dock Lift (Crate Arm), Dozer, and such have no effect. However when used on a Forklift it sets the height of the forks. 0.0 = Lowest 1.0 = Highest. This is best to be used if you wanna pick-up a car since un-realistically on GTA V forklifts can't pick up much of anything due to vehicle mass. If you put this under a car then set it above 0.0 to a 'lifted-value' it will raise the car with no issue lol  
--- 
--- @param vehicle Vehicle
--- @param height number
function SetForkliftForkHeight(vehicle, height) end

--- 
--- X,Y position of boat is frozen in place when anchored and its engine disabled, only the Z value changes. Requires 0xE3EBAAE484798530 to be set to true.
--- SET_FORCED_ZENITH_QUADTREE?
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetForcedBoatLocationWhenAnchored(vehicle, toggle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param toggle boolean
--- @return any
function SetGarbageTrucks(toggle) end

--- 
--- Sets the speed of the helicopter blades in percentage of the full speed.  
--- vehicleHandle: The helicopter.  
--- speed: The speed in percentage, 0.0f being 0% and 1.0f being 100%.  
--- 
--- @param vehicle Vehicle
--- @param speed number
function SetHeliBladesSpeed(vehicle, speed) end

--- 
--- Equivalent of SET_HELI_BLADES_SPEED(vehicleHandle, 1.0f);  
--- this native works on planes to?  
--- 
--- @param vehicle Vehicle
function SetHeliBladesFullSpeed(vehicle) end

--- 
--- If false the tail to the helicopter stays attached to the helicopter on explosion.
--- 
--- 
--- 
--- NativeDB Parameter 1: BOOL p1
--- NativeDB Return Type: void
--- 
--- @param vehicle Vehicle
--- @param p1 boolean
--- @return boolean
function SetHeliTailExplodeThrowDashboard(vehicle, p1) end


--- @param vehicle Vehicle
--- @param health number
function SetHeliTailRotorHealth(vehicle, health) end


--- @param vehicle Vehicle
--- @param p1 number
function SetHeliTurbulenceScalar(vehicle, p1) end

--- 
--- value between 0.0 and 1.0  
--- 
--- @param helicopter Vehicle
--- @param multiplier number
function SetHelicopterRollPitchYawMult(helicopter, multiplier) end


--- @param vehicle Vehicle
--- @param state number
function SetHydraulicWheelState(vehicle, state) end

--- 
--- Toggles between raised & lower hydraulics
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetHydraulicRaised(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param wheelID number
--- @param height number
function SetHydraulicState(vehicle, wheelID, height) end


--- @param vehicle Vehicle
--- @param wheelID number
--- @param p2 any
--- @param p3 number
--- @param p4 number
function SetHydraulicWheelStateTransition(vehicle, wheelID, p2, p3, p4) end


--- @param distance number
function SetLightsCutoffDistanceTweak(distance) end


--- @param vehicle Vehicle
function SetLastDrivenVehicle(vehicle) end


--- @param train Vehicle
--- @param x number
--- @param y number
--- @param z number
function SetMissionTrainCoords(train, x, y, z) end

--- 
--- p1 is always 0  
--- 
--- @param train Vehicle
--- @param p1 boolean
function SetMissionTrainAsNoLongerNeeded(train, p1) end


--- @param multiplier number
function SetParkedVehicleDensityMultiplierThisFrame(multiplier) end

--- 
--- NativeDB Return Type: void
--- 
--- @param value number
--- @return any
function SetNumberOfParkedVehicles(value) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param vehicle Vehicle
--- @param direction number
function SetPlaneVtolAnimationDisabled(vehicle, direction) end


--- @param vehicle Vehicle
--- @param flag number
function SetPlaybackToUseAi(vehicle, flag) end

--- This native sets the turbulence multiplier. It only works for planes.
--- 0.0 = no turbulence at all.
--- 1.0 = heavy turbulence.
--- 
--- Works by just calling it once, does not need to be called every tick.
--- @param vehicle Vehicle
--- @param multiplier number
function SetPlaneTurbulenceMultiplier(vehicle, multiplier) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 boolean
function SetPlaybackToUseAiTryToRevertBackLater(p0, p1, p2, p3) end


--- @param vehicle Vehicle
--- @param speed number
function SetPlaybackSpeed(vehicle, speed) end

--- 
--- NativeDB Return Type: void
--- 
--- @param vehicle Vehicle
--- @return any
function SetPlayersLastVehicle(vehicle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param toggle boolean
--- @return any
function SetRandomBoats(toggle) end


--- @param toggle boolean
function SetRandomTrains(toggle) end

--- 
--- makes the train all jumbled up and derailed as it moves on the tracks (though that wont stop it from its normal operations)  
--- 
--- @param train Vehicle
--- @param toggle boolean
function SetRenderTrainAsDerailed(train, toggle) end


--- @param multiplier number
function SetRandomVehicleDensityMultiplierThisFrame(multiplier) end

--- 
--- Only called once in the decompiled scripts. Presumably activates the specified generator.  
--- 
--- @param vehicleGenerator number
--- @param enabled boolean
function SetScriptVehicleGenerator(vehicleGenerator, enabled) end

--- 
--- NativeDB Introduced: v1365
--- 
--- @param vehicle Vehicle
--- @param ratio number
function SetSpecialflightWingRatio(vehicle, ratio) end


--- @param plane Vehicle
--- @param height number
function SetTaskVehicleGotoPlaneMinHeightAboveTerrain(plane, height) end

--- 
--- When I called this with what the script was doing, which was -190f for yaw pitch and roll, all my car did was jitter a little. I also tried 0 and 190f. I altered the p1 variable between TRUE and FALSE and didn't see a difference.  
--- This might have something to do with the physbox of the vehicle, but I'm not sure.  
--- 
--- @param submarine Vehicle
--- @param toggle boolean
--- @param crushWarningDepth1 number
--- @param crushWarningDepth2 number
--- @param crushDepth number
function SetSubmarineCrushDepths(submarine, toggle, crushWarningDepth1, crushWarningDepth2, crushDepth) end

--- 
--- This is not tested - it's just an assumption.  
--- Doesn't seem to work.  I'll try with an int instead. --JT  
--- Read the scripts, im dumpass.   
--- Doesn't work at all, wether with an bool neither an int  
---                             if (!VEHICLE::IS_TAXI_LIGHT_ON(l_115)) {  
---                                 VEHICLE::SET_TAXI_LIGHTS(l_115, 1);  
---                             }  
--- 
--- @param vehicle Vehicle
--- @param state boolean
function SetTaxiLights(vehicle, state) end


--- @param vehicle Vehicle
--- @param p1 number
function SetTrailerInverseMassScale(vehicle, p1) end

--- 
--- Inverse of 0x95CF53B3D687F9FA
--- 
--- 
--- 
--- NativeDB Added Parameter 1: Vehicle vehicle
--- 
function SetTrailerLegsLowered() end

--- 
--- Also related to the attachment strength of the trailer (e.g., only detaching on negative health).
--- 
--- @param vehicle Vehicle
function SetTrailerLegsRaised(vehicle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param train Vehicle
--- @param speed number
--- @return any
function SetTrainCruiseSpeed(train, speed) end

--- 
--- NativeDB Return Type: void
--- 
--- @param train Vehicle
--- @param speed number
--- @return any
function SetTrainSpeed(train, speed) end

--- 
--- Only called once inside main_persitant with the parameters, 0  
--- 
--- @param trackIndex number
--- @param frequency number
function SetTrainTrackSpawnFrequency(trackIndex, frequency) end

--- 
--- NativeDB Introduced: v1365
--- 
--- @param vehicle Vehicle
--- @param value number
function SetUnkFloatN0x104ForSubmarineVehicleTask(vehicle, value) end

--- 
--- NativeDB Introduced: v1365
--- 
--- @param vehicle Vehicle
--- @param value boolean
function SetUnkBoolN0x102ForSubmarineVehicleTask(vehicle, value) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleActiveDuringPlayback(vehicle, toggle) end

--- Allows vehicles with the FLAG_JUMPING_CAR flag to jump higher (i.e. Ruiner 2000).
--- @param vehicle Vehicle
--- @param toggle boolean
function SetUseHigherVehicleJumpForce(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param state boolean
function SetVehicleAlarm(vehicle, state) end

--- 
--- Makes the vehicle accept no passengers.  
--- 
--- @param veh Vehicle
--- @param toggle boolean
function SetVehicleAllowNoPassengersLockon(veh, toggle) end

--- 
--- Please change to void.  
--- 
--- @param vehicle Vehicle
--- @param p1 boolean
--- @param p2 any
--- @return any
function SetVehicleAutomaticallyAttaches(vehicle, p1, p2) end

--- 
--- p2 often set to 1000.0 in the decompiled scripts.  
--- 
--- @param vehicle Vehicle
--- @param value number
function SetVehicleBodyHealth(vehicle, value) end

--- Sets the amount of bombs that this vehicle has. As far as I know, this does _not_ impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane. 
--- 
--- In decompiled scripts this is used to deduct from or add to the count whenever bombs are dropped or purchased/restocked. 
--- 
--- Use [_GET_AIRCRAFT_BOMB_COUNT](#_0xEA12BD130D7569A1) to get the amount of bombs on that vehicle.
--- @param aircraft Vehicle
--- @param bombCount number
function SetVehicleBombCount(aircraft, bombCount) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleBrake(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleBrakeLights(vehicle, toggle) end

--- 
--- On accelerating, spins the driven wheels with the others braked, so you don't go anywhere.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleBurnout(vehicle, toggle) end

--- Sets the arm position of a bulldozer. Position must be a value between 0.0 and 1.0. Ignored when p2 is set to false, instead incrementing arm position by 0.1 (or 10%).
--- @param vehicle Vehicle
--- @param position number
--- @param p2 boolean
function SetVehicleBulldozerArmPosition(vehicle, position, p2) end

--- 
--- SET_VEHICLE_AL*
--- 
--- @param vehicle Vehicle
--- @param canBeLockedOn boolean
--- @param unk boolean
function SetVehicleCanBeLockedOn(vehicle, canBeLockedOn, unk) end

--- 
--- This has not yet been tested - it's just an assumption of what the types could be.  
--- 
--- @param vehicle Vehicle
--- @param state boolean
function SetVehicleCanBeTargetted(vehicle, state) end


--- @param vehicle Vehicle
--- @param state boolean
function SetVehicleCanBeVisiblyDamaged(vehicle, state) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleCanBeUsedByFleeingPeds(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleCanBreak(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleCanDeformWheels(vehicle, toggle) end

--- 
--- Allows some vehicles (related to "strModelFlags" within handling?) to continue to operate while its engine health (see 0xC45D23BAF168AAB8) is less than zero
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleCanEngineOperateOnFire(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param p1 boolean
function SetVehicleCanLeakPetrol(vehicle, p1) end

--- 
--- from Decrypted Scripts I found  
--- VEHICLE::SET_VEHICLE_CEILING_HEIGHT(l_BD9[2/*2*/], 420.0);  
--- 
--- @param vehicle Vehicle
--- @param height number
function SetVehicleCeilingHeight(vehicle, height) end


--- @param vehicle Vehicle
--- @param p1 boolean
function SetVehicleCanLeakOil(vehicle, p1) end

--- 
--- if (!ENTITY::DOES_ENTITY_BELONG_TO_THIS_SCRIPT(g_10A5A._f8B[a_0/*1*/], 1)) {  
--- sub_20af7("No longer needed: Vehicle owned by other script");  
--- if ((((a_0 == 24) && (!sub_3a04(g_10A5A._f8B[a_0/*1*/]))) && (!sub_39c9(g_10A5A._f8B[a_0/*1*/]))) && (ENTITY::GET_ENTITY_MODEL(g_10A5A._f8B[a_0/*1*/]) != ${monster})) {  
---     VEHICLE::_428BACCDF5E26EAD(g_10A5A._f8B[a_0/*1*/], 1);  
--- }  
--- g_10A5A._f8B[a_0/*1*/] = 0;  
--- g_10A5A[a_0/*1*/] = 1;  
--- sub_20ada(a_0);  
--- return ;  
--- 		}  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleCanSaveInGarage(vehicle, toggle) end

--- Sets the selected vehicle's colors to their default value (specific variant specified using the colorCombination parameter).
--- 
--- Range of possible values for colorCombination is currently unknown, I couldn't find where these values are stored either (Disquse's guess was vehicles.meta but I haven't seen it in there.)
--- @param vehicle Vehicle
--- @param colorCombination number
function SetVehicleColourCombination(vehicle, colorCombination) end

--- 
--- <1.0 - Decreased torque
--- =1.0 - Default torque
--- >1.0 - Increased torque
--- Negative values will cause the vehicle to go backwards instead of forwards while accelerating.
--- value - is between 0.2 and 1.8 in the decompiled scripts.
--- This needs to be called every frame to take effect.
--- 
--- @param vehicle Vehicle
--- @param value number
function SetVehicleCheatPowerIncrease(vehicle, value) end

--- 
--- colorPrimary & colorSecondary are the paint index for the vehicle.  
--- For a list of valid paint indexes, view: pastebin.com/pwHci0xK  
--- -------------------------------------------------------------------------  
--- Use this to get the number of color indices: pastebin.com/RQEeqTSM  
--- Note: minimum color index is 0, maximum color index is (numColorIndices - 1)  
--- 
--- @param vehicle Vehicle
--- @param colorPrimary number
--- @param colorSecondary number
function SetVehicleColours(vehicle, colorPrimary, colorSecondary) end

--- 
--- If zero, clears the flag that makes the PED check if the door is open prior to ignition.
--- SET_VEHICLE_CLOSE_ORDER_IGNORING_POSE?
--- 
--- @param vehicle Vehicle
--- @param p1 boolean
function SetVehicleCloseDoorDeferedAction(vehicle, p1) end

--- 
--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)  
--- 
--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function SetVehicleCustomPrimaryColour(vehicle, r, g, b) end

--- Similar to [_SET_AIRCRAFT_BOMB_COUNT](#_0xF4B2ED59DEB5D774), this sets the amount of countermeasures that are present on this vehicle.
--- 
--- Use [_GET_AIRCRAFT_COUNTERMEASURE_COUNT](#_0xF846AA63DF56B804) to get the current amount.
--- @param aircraft Vehicle
--- @param count number
function SetVehicleCountermeasureCount(aircraft, count) end

--- 
--- SET_VEHICLE_D*
--- 
--- @param vehicle Vehicle
--- @param p1 number
--- @return any
function SetVehicleDamageModifier(vehicle, p1) end

--- 
--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)  
--- 
--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function SetVehicleCustomSecondaryColour(vehicle, r, g, b) end


--- @param vehicle Vehicle
--- @param color number
function SetVehicleDashboardColour(vehicle, color) end

--- 
--- Apply damage to vehicle at a location. Location is relative to vehicle model (not world).  
--- Radius of effect damage applied in a sphere at impact location  
--- 
--- @param vehicle Vehicle
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param damage number
--- @param radius number
--- @param p6 boolean
function SetVehicleDamage(vehicle, xOffset, yOffset, zOffset, damage, radius, p6) end

--- 
--- You can't use values greater than 15.0  
--- You can see why here: pastebin.com/Wbn34fGD  
--- Also, R* does (float)(rand() % 15) to get a random dirt level when generating a vehicle.  
--- 
--- @param vehicle Vehicle
--- @param dirtLevel number
function SetVehicleDirtLevel(vehicle, dirtLevel) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleDisableTowing(vehicle, toggle) end

--- 
--- This fixes the deformation of a vehicle but the vehicle health doesn't improve  
--- 
--- @param vehicle Vehicle
function SetVehicleDeformationFixed(vehicle) end

--- **Usage:**
--- 
--- -   Use this native inside a looped function.
--- -   Values:
---     -   0.0 = no vehicles on streets
---     -   1.0 = normal vehicles on streets
--- 
--- 1.0 Seems to be the maximum.
--- @param multiplier number
function SetVehicleDensityMultiplierThisFrame(multiplier) end

--- 
--- Keeps Vehicle Doors/Hood/Trunk from breaking off  
--- 
--- @param vehicle Vehicle
--- @param doorIndex number
--- @param isBreakable boolean
function SetVehicleDoorCanBreak(vehicle, doorIndex, isBreakable) end

--- 
--- doorIndex:  
--- 0 = Front Right Door  
--- 1 = Front Left Door  
--- 2 = Back Right Door  
--- 3 = Back Left Door  
--- 4 = Hood  
--- 5 = Trunk  
--- Changed last paramater from CreateDoorObject To NoDoorOnTheFloor because when on false, the door object is created,and not created when on true...the former parameter name was counter intuitive...(by Calderon)  
--- 
--- @param vehicle Vehicle
--- @param doorIndex number
--- @param deleteDoor boolean
function SetVehicleDoorBroken(vehicle, doorIndex, deleteDoor) end

--- 
--- doorIndex:  
--- 0 = Front Left Door (driver door)  
--- 1 = Front Right Door  
--- 2 = Back Left Door  
--- 3 = Back Right Door  
--- 4 = Hood  
--- 5 = Trunk  
--- 6 = Trunk2  
--- p2:  
--- mostly use 0 and 1, very rare using 3 and 5  
--- p3:  
--- It seems it is an angle  
--- Example in VB:   
---     Public Shared Sub Set_Vehicle_Door_Angle(Vehicle As Vehicle, Door As VehicleDoor, Angle As Single)  
---         Native.Function.Call(Hash.SET_VEHICLE_DOOR_CONTROL, Vehicle.Handle, Door, 1, Angle)  
---     End Sub  
--- I'm Not MentaL  
--- sfink: p2 is speed, 5 is fast, 1 is slow 3 is medium  
--- 
--- @param vehicle Vehicle
--- @param doorIndex number
--- @param speed number
--- @param angle number
function SetVehicleDoorControl(vehicle, doorIndex, speed, angle) end

--- 
--- destroyType is 1 for opens on damage, 2 for breaks on damage.  
--- 
--- @param vehicle Vehicle
--- @param doorIndex number
--- @param destroyType number
function SetVehicleDoorDestroyType(vehicle, doorIndex, destroyType) end

--- 
--- When lock is false other entities can overwrite it.  
--- 
--- @param vehicle Vehicle
--- @param doorIndex number
--- @param forceClose boolean
--- @param lock boolean
--- @param p4 boolean
function SetVehicleDoorLatched(vehicle, doorIndex, forceClose, lock, p4) end

--- 
--- doorIndex:  
--- 0 = Front Left Door  
--- 1 = Front Right Door  
--- 2 = Back Left Door  
--- 3 = Back Right Door  
--- 4 = Hood  
--- 5 = Trunk  
--- 6 = Back  
--- 7 = Back2  
--- 
--- @param vehicle Vehicle
--- @param doorIndex number
--- @param loose boolean
--- @param openInstantly boolean
function SetVehicleDoorOpen(vehicle, doorIndex, loose, openInstantly) end

