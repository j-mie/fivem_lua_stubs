--- 
--- ADD_*
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @return any
function AddVehicleCombatAngledAvoidanceArea(p0, p1, p2, p3, p4, p5, p6) end

--- 
--- This is used to add a speedzone on a position.  
--- Example usage C#:  
--- uint speedZone = Function.Call<uint>((Hash) 0x2CE544C68FB812A0, Game.PlayerPed.Position.X, Game.PlayerPed.Position.Y, Game.PlayerPed.Position.Z, 100.0f, 0.0f, false);  
--- (Thanks to alexguirre for his help!)  
--- ==========================================  
--- What is the point in adding a speed zone? Does it just generally affect the speed NPCs will drive? I can imagine running this on every section of the interstate setting it to 3 MPH rip.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param speed number
--- @param p5 boolean
--- @return number
function AddSpeedZoneForCoord(x, y, z, radius, speed, p5) end


--- @param p0 any
--- @param p1 number
--- @param p2 any
--- @param p3 boolean
--- @param p4 boolean
--- @param p5 boolean
--- @param p6 any
function AddVehicleStuckCheckWithWarp(p0, p1, p2, p3, p4, p5, p6) end


--- @param vehicle Vehicle
function AddVehiclePhoneExplosiveDevice(vehicle) end

--- 
--- Appears to return false if any window is broken.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function AreAllVehicleWindowsIntact(vehicle) end


--- @param vehicle Vehicle
function AddVehicleUpsidedownCheck(vehicle) end

--- 
--- Returns false if every seat is occupied.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function AreAnyVehicleSeatsFree(vehicle) end

--- Returns true when the bomb bay doors of this plane are open. False if they're closed.
--- @param aircraft Vehicle
--- @return boolean
function AreBombBayDoorsOpen(aircraft) end

--- 
--- Found this in the decompiled scripts, I'd do more research before changing the name --  
--- if (!ENTITY::IS_ENTITY_DEAD(l_1911)) {  
---     if (!VEHICLE::_755D6D5267CBBD7E(l_1911)) {  
---         sub_1ba80("TRAFFICKING AIR: FAILING - PROPELLERS ARE DAMAGED");  
---         l_12CE = 9;  
---     }  
--- }  
--- 
--- @param plane Vehicle
--- @return boolean
function ArePlanePropellersIntact(plane) end

--- 
--- Can be used for planes only!  
--- 
--- @param plane Vehicle
--- @return boolean
function ArePlaneWingsIntact(plane) end


--- @param vehicle Vehicle
--- @param entity Entity
--- @param p2 number
--- @param x number
--- @param y number
--- @param z number
function AttachEntityToCargobob(vehicle, entity, p2, x, y, z) end


--- @param vehicle Vehicle
--- @param trailer Vehicle
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param p10 number
--- @param p11 number
function AttachVehicleOnToTrailer(vehicle, trailer, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end


--- @param vehicle Vehicle
--- @param cargobob Vehicle
--- @param p2 number
--- @param x number
--- @param y number
--- @param z number
function AttachVehicleToCargobob(vehicle, cargobob, p2, x, y, z) end

--- 
--- HookOffset defines where the hook is attached. leave at 0 for default attachment.  
--- When using the tow truck online, this is not used (set a breakpoint and never called during tow truck attachment)  
--- 
--- @param towTruck Vehicle
--- @param vehicle Vehicle
--- @param rear boolean
--- @param hookOffsetX number
--- @param hookOffsetY number
--- @param hookOffsetZ number
function AttachVehicleToTowTruck(towTruck, vehicle, rear, hookOffsetX, hookOffsetY, hookOffsetZ) end


--- @param vehicle Vehicle
--- @param trailer Vehicle
--- @param radius number
function AttachVehicleToTrailer(vehicle, trailer, radius) end

--- 
--- This native makes the vehicle stop immediately, as happens when we enter a MP garage.  
--- . distance defines how far it will travel until stopping. Garage doors use 3.0.  
--- . If killEngine is set to 1, you cannot resume driving the vehicle once it stops. This looks like is a bitmapped integer.  
--- 
--- @param vehicle Vehicle
--- @param distance number
--- @param duration number
--- @param unknown boolean
function BringVehicleToHalt(vehicle, distance, duration, unknown) end


--- @param vehicle Vehicle
--- @return boolean
function CanAnchorBoatHere(vehicle) end

--- 
--- Differs from 0x26C10ECBDA5D043B in that 0x140EFCC10 (1604 retail) is called with a2 = true.
--- 
--- NativeDB Introduced: v678
--- 
--- @param vehicle Vehicle
--- @return boolean
function CanBoatBeAnchored2(vehicle) end


--- @param vehicle Vehicle
--- @param p1 any
--- @return boolean
function CanShuffleSeat(vehicle, p1) end


function ClearLastDrivenVehicle() end


--- @param vehicle Vehicle
--- @return boolean
function CanVehicleParachuteBeActivated(vehicle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param vehicle Vehicle
--- @return any
function ClearVehicleCustomSecondaryColour(vehicle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param vehicle Vehicle
--- @return any
function ClearVehicleCustomPrimaryColour(vehicle) end


--- @param vehicle Vehicle
function ClearVehicleRouteHistory(vehicle) end


function ClearVehiclePhoneExplosiveDevice() end

--- 
--- Works for vehicles with a retractable landing gear  
--- landing gear states:  
--- 0: Deployed  
--- 1: Closing  
--- 2: Opening  
--- 3: Retracted  
--- 
--- @param vehicle Vehicle
--- @param state number
function ControlLandingGear(vehicle, state) end


--- @param vehicle Vehicle
function CloseBombBayDoors(vehicle) end

--- 
--- Train models HAVE TO be loaded (requested) before you use this.  
--- For variation 15 - request:  
--- freight  
--- freightcar  
--- freightgrain  
--- freightcont1  
--- freightcont2  
--- freighttrailer  
--- 
--- @param variation number
--- @param x number
--- @param y number
--- @param z number
--- @param direction boolean
--- @return Vehicle
function CreateMissionTrain(variation, x, y, z, direction) end

--- Copy the damage like broken bumpers and broken lights from a vehicle and paste them on another vehicle.
--- @param sourceVehicle Vehicle
--- @param targetVehicle Vehicle
function CopyVehicleDamages(sourceVehicle, targetVehicle) end

--- 
--- Drops the Hook/Magnet on a cargobob  
--- state  
--- enum eCargobobHook  
--- {  
--- 	CARGOBOB_HOOK = 0,  
--- 	CARGOBOB_MAGNET = 1,  
--- };  
--- 
--- @param cargobob Vehicle
--- @param state number
function CreatePickUpRopeForCargobob(cargobob, state) end

--- 
--- Creates a script vehicle generator at the given coordinates. Most parameters after the model hash are unknown.  
--- Parameters:  
--- a/w/s - Generator position  
--- heading - Generator heading  
--- p4 - Unknown (always 5.0)  
--- p5 - Unknown (always 3.0)  
--- modelHash - Vehicle model hash  
--- p7/8/9/10 - Unknown (always -1)  
--- p11 - Unknown (usually TRUE, only one instance of FALSE)  
--- p12/13 - Unknown (always FALSE)  
--- p14 - Unknown (usally FALSE, only two instances of TRUE)  
--- p15 - Unknown (always TRUE)  
--- p16 - Unknown (always -1)  
--- Vector3 coords = GET_ENTITY_COORDS(PLAYER_PED_ID(), 0);	CREATE_SCRIPT_VEHICLE_GENERATOR(coords.x, coords.y, coords.z, 1.0f, 5.0f, 3.0f, GET_HASH_KEY("adder"), -1. -1, -1, -1, -1, true, false, false, false, true, -1);  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param p4 number
--- @param p5 number
--- @param modelHash Hash
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param p10 number
--- @param p11 boolean
--- @param p12 boolean
--- @param p13 boolean
--- @param p14 boolean
--- @param p15 boolean
--- @param p16 number
--- @return number
function CreateScriptVehicleGenerator(x, y, z, heading, p4, p5, modelHash, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16) end


function DeleteAllTrains() end

--- 
--- NativeDB Added Parameter 8: BOOL p7
--- 
--- @param modelHash Hash
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param isNetwork boolean
--- @param netMissionEntity boolean
--- @return Vehicle
function CreateVehicle(modelHash, x, y, z, heading, isNetwork, netMissionEntity) end


--- @param train Vehicle
function DeleteMissionTrain(train) end


--- @param vehicleGenerator number
function DeleteScriptVehicleGenerator(vehicleGenerator) end

--- 
--- Deletes a vehicle.  
--- The vehicle must be a mission entity to delete, so call this before deleting: SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true);  
--- eg how to use:  
--- SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true);  
--- DELETE_VEHICLE(&vehicle);  
--- Deletes the specified vehicle, then sets the handle pointed to by the pointer to NULL.  
--- 
--- @param vehicle Vehicle
function DeleteVehicle(vehicle) end


--- @param vehicle Vehicle
function DetachContainerFromHandlerFrame(vehicle) end


--- @param vehicle Vehicle
--- @param entity Entity
--- @return any
function DetachEntityFromCargobob(vehicle, entity) end


--- @param vehicle Vehicle
--- @return boolean
function DetachVehicleFromAnyCargobob(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function DetachVehicleFromAnyTowTruck(vehicle) end


--- @param vehicle Vehicle
--- @param cargobob Vehicle
function DetachVehicleFromCargobob(vehicle, cargobob) end

--- 
--- First two parameters swapped. Scripts verify that towTruck is the first parameter, not the second.  
--- 
--- @param towTruck Vehicle
--- @param vehicle Vehicle
function DetachVehicleFromTowTruck(towTruck, vehicle) end

--- 
--- Detaches the vehicle's windscreen.  
--- For further information, see : gtaforums.com/topic/859570-glass/#entry1068894566  
--- 
--- @param vehicle Vehicle
function DetachVehicleWindscreen(vehicle) end

--- 
--- Public Sub detatchTrailer(vh1 As Vehicle)  
--- Native.Function.Call(Hash.DETACH_VEHICLE_FROM_TRAILER, vh1)  
--- 		    End Sub  
--- 
--- @param vehicle Vehicle
function DetachVehicleFromTrailer(vehicle) end

--- 
--- used for the remote vehicle explode thing with phones  
--- 
function DetonateVehiclePhoneExplosiveDevice() end

--- 
--- Ailerons are responsible for the rolling motion of a plane.  
--- 
--- @param vehicle Vehicle
--- @param p1 boolean
--- @param p2 boolean
function DisablePlaneAileron(vehicle, p1, p2) end

--- 
--- Disables propeller animation. Used in pilot_school_mp for the Titan's timed engine detonation.
--- 
--- @param vehicle Vehicle
--- @param propeller number
function DisablePlanePropeller(vehicle, propeller) end


--- @param vehicle Vehicle
--- @param toggle boolean
function DisableVehicleNeonLights(vehicle, toggle) end


--- @param vehicle Vehicle
function DisableVehicleTurretMovementThisFrame(vehicle) end

--- 
--- how does this work?  
--- 
--- @param disabled boolean
--- @param weaponHash Hash
--- @param vehicle Vehicle
--- @param owner Ped
function DisableVehicleWeapon(disabled, weaponHash, vehicle, owner) end

--- 
--- Returns true only when the hook is active, will return false if the magnet is active  
--- 
--- @param cargobob Vehicle
--- @return boolean
function DoesCargobobHavePickUpRope(cargobob) end

--- 
--- Checks via CVehicleModelInfo  
--- 
--- @param vehicle Vehicle
--- @param extraId number
--- @return boolean
function DoesExtraExist(vehicle, extraId) end

--- 
--- Returns true only when the magnet is active, will return false if the hook is active  
--- 
--- @param cargobob Vehicle
--- @return boolean
function DoesCargobobHavePickupMagnet(cargobob) end


--- @param vehicleGenerator number
--- @return boolean
function DoesScriptVehicleGeneratorExist(vehicleGenerator) end


--- @param decorator string
--- @return boolean
function DoesVehicleExistWithDecorator(decorator) end

--- 
--- Returns true if the vehicle has the FLAG_ALLOWS_RAPPEL flag set.
--- 
--- @param vehicle Vehicle
--- @return boolean
function DoesVehicleAllowRappel(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function DoesVehicleHaveParachute(vehicle) end


--- @param vehicle Vehicle
--- @param doorIndex number
--- @return boolean
function DoesVehicleHaveDoor(vehicle, doorIndex) end


--- @param vehicle Vehicle
--- @return boolean
function DoesVehicleHaveRocketBoost(vehicle) end

--- 
--- Returns true if the vehicle has the FLAG_JUMPING_CAR flag set.
--- 
--- @param vehicle Vehicle
--- @return boolean
function DoesVehicleHaveJumpingAbility(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function DoesVehicleHaveWeapons(vehicle) end


--- @param vehicle Vehicle
--- @param x number
--- @param y number
--- @param z number
function EjectJb700Roof(vehicle, x, y, z) end


--- @param vehicle Vehicle
--- @return boolean
function DoesVehicleHaveRetractableWheels(vehicle) end


--- @param vehicle Vehicle
--- @param p1 boolean
function ExplodeVehicleInCutscene(vehicle, p1) end


--- @param vehicle Vehicle
--- @return boolean
function DoesVehicleHaveRoof(vehicle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function ForceSubmarineSurfaceMode(vehicle, toggle) end

--- 
--- NativeDB Parameter 0: int* vehArray
--- 
--- @param vehArray any
--- @return number
function GetAllVehicles(vehArray) end

--- 
--- Maximum amount of vehicles with vehicle stuck check appears to be 16.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function DoesVehicleHaveStuckVehicleCheck(vehicle) end

--- 
--- Gets the position of the cargobob hook, in world coords.  
--- 
--- @param cargobob Vehicle
--- @return vector3
function GetCargobobHookPosition(cargobob) end

--- 
--- Explodes a selected vehicle.  
--- Vehicle vehicle = Vehicle you want to explode.  
--- BOOL isAudible = If explosion makes a sound.  
--- BOOL isInvisible = If the explosion is invisible or not.  
--- First BOOL does not give any visual explosion, the vehicle just falls apart completely but slowly and starts to burn.  
--- 
--- @param vehicle Vehicle
--- @param isAudible boolean
--- @param isInvisible boolean
function ExplodeVehicle(vehicle, isAudible, isInvisible) end

--- 
--- 0 -> up  
--- 1 -> lowering down  
--- 2 -> down  
--- 3 -> raising up  
--- enum RoofState  
--- {  
---      ROOFSTATE_UP = 0;  
---      ROOFSTATE_LOWERING,  
---      ROOFSTATE_DOWN,  
---      ROOFSTATE_RAISING  
--- };  
--- 
--- @param vehicle Vehicle
--- @return number
function GetConvertibleRoofState(vehicle) end


--- @param vehicle Vehicle
--- @return number
function GetCurrentPlaybackForVehicle(vehicle) end

--- int index = 0 to 13
--- 
--- 0 = front right window
--- 1 = front left window
--- 2 = rear right window
--- 3 = rear left window
--- 4 = unsure
--- 5 = unsure
--- 6 = windowscreen
--- 7 = unsure
--- 8 = rear windowscreen
--- 9 = unsure
--- 10 = unsure
--- 11 = unsure
--- 12 = unsure
--- 13 = unsure
--- 
--- Additional information: FIX_VEHICLE_WINDOW (0x140D0BB88) references an array of bone vehicle indices (0x141D4B3E0) { 2Ah, 2Bh, 2Ch, 2Dh, 2Eh, 2Fh, 28h, 29h } that correspond to: window_lf, window_rf, window_lr, window_rr, window_lm, window_rm, windscreen, windscreen_r. This array is used by most vehwindow natives.
--- 
--- Also, this function is coded to not work on vehicles of type: CBike, Bmx, CBoat, CTrain, and CSubmarine.
--- @param vehicle Vehicle
--- @param index number
--- @return any
function FixVehicleWindow(vehicle, index) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param vehicle Vehicle
--- @return boolean
function GetDoesVehicleHaveTombstone(vehicle) end


--- @param towTruck Vehicle
--- @return Entity
function GetEntityAttachedToTowTruck(towTruck) end


--- @param vehicle Vehicle
--- @return number
function GetBoatBoomPositionRatio(vehicle) end

--- 
--- Max 1000.  
--- At 0 the main rotor will stall.  
--- 
--- @param vehicle Vehicle
--- @return number
function GetHeliMainRotorHealth(vehicle) end

--- 
--- Max 1000.
--- At -100 both helicopter rotors will stall.
--- 
--- @param vehicle Vehicle
--- @return number
function GetHeliTailBoomHealth(vehicle) end

--- 
--- Example usage  
--- VEHICLE::GET_CLOSEST_VEHICLE(x, y, z, radius, hash, unknown leave at 70)   
--- x, y, z: Position to get closest vehicle to.  
--- radius: Max radius to get a vehicle.  
--- modelHash: Limit to vehicles with this model. 0 for any.  
--- flags: The bitwise flags altering the function's behaviour.  
--- Does not return police cars or helicopters.  
--- It seems to return police cars for me, does not seem to return helicopters, planes or boats for some reason  
--- Only returns non police cars and motorbikes with the flag set to 70 and modelHash to 0. ModelHash seems to always be 0 when not a modelHash in the scripts, as stated above.   
--- These flags were found in the b617d scripts: 0,2,4,6,7,23,127,260,2146,2175,12294,16384,16386,20503,32768,67590,67711,98309,100359.  
--- Converted to binary, each bit probably represents a flag as explained regarding another native here: gtaforums.com/topic/822314-guide-driving-styles  
--- Conversion of found flags to binary: pastebin.com/kghNFkRi  
--- At exactly 16384 which is 0100000000000000 in binary and 4000 in hexadecimal only planes are returned.   
--- It's probably more convenient to use worldGetAllVehicles(int *arr, int arrSize) and check the shortest distance yourself and sort if you want by checking the vehicle type with for example VEHICLE::IS_THIS_MODEL_A_BOAT  
--- -------------------------------------------------------------------------  
--- Conclusion: This native is not worth trying to use. Use something like this instead: pastebin.com/xiFdXa7h  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param modelHash Hash
--- @param flags number
--- @return Vehicle
function GetClosestVehicle(x, y, z, radius, modelHash, flags) end

--- 
--- From the driver's perspective, is the left headlight broken.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function GetIsLeftVehicleHeadlightDamaged(vehicle) end

--- 
--- Returns model name of vehicle in all caps. Needs to be displayed through localizing text natives to get proper display name.  
--- -----------------------------------------------------------------------------------------------------------------------------------------  
--- While often the case, this does not simply return the model name of the vehicle (which could be hashed to return the model hash). Variations of the same vehicle may also use the same display name.  
--- -----------------------------------------------------------------------------------------------------------------------------------------  
--- Returns "CARNOTFOUND" if the hash doesn't match a vehicle hash.  
--- Using UI::_GET_LABEL_TEXT, you can get the localized name.  
--- For a full list, see here: pastebin.com/wvpyS4kS (pastebin.com/dA3TbkZw)  
--- 
--- @param modelHash Hash
--- @return string
function GetDisplayNameFromVehicleModel(modelHash) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param vehicle Vehicle
--- @return boolean
function GetIsSubmarineVehicleTransformed(vehicle) end

--- 
--- Returns whether this vehicle is currently disabled by an EMP mine.
--- 
--- NativeDB Introduced: v1604
--- 
--- @param vehicle Vehicle
--- @return boolean
function GetIsVehicleEmpDisabled(vehicle) end


--- @param vehicle Vehicle
--- @return Entity
function GetEntityAttachedToCargobob(vehicle) end


--- @param vehicle Vehicle
--- @return boolean
function GetIsVehiclePrimaryColourCustom(vehicle) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param vehicle Vehicle
--- @return boolean
function GetIsVehicleShuntBoostActive(vehicle) end


--- @param vehicle Vehicle
--- @param doorIndex number
--- @return vector3
function GetEntryPositionOfDoor(vehicle, doorIndex) end


--- @param vehicle Vehicle
--- @return boolean
function GetIsWheelsLoweredStateActive(vehicle) end

--- 
--- Max 1000.  
--- At 0 the tail rotor will stall.  
--- 
--- @param vehicle Vehicle
--- @return number
function GetHeliTailRotorHealth(vehicle) end

--- 
--- Not exactly sure on this one, but here's a snippet of code:  
--- if (PED::IS_PED_IN_ANY_VEHICLE(PLAYER::PLAYER_PED_ID(), 0)) {  
---     v_2 = PED::GET_VEHICLE_PED_IS_IN(PLAYER::PLAYER_PED_ID(), 0);  
--- } else {   
---     v_2 = VEHICLE::_B2D06FAEDE65B577();  
--- }  
--- 
--- @return Vehicle
function GetLastDrivenVehicle() end


--- @param vehicle Vehicle
--- @param seatIndex number
--- @return Ped
function GetLastPedInVehicleSeat(vehicle, seatIndex) end

--- 
--- From the driver's perspective, is the right headlight broken.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function GetIsRightVehicleHeadlightDamaged(vehicle) end

--- 
--- Second Param = LiveryIndex  
--- example   
--- int count = VEHICLE::GET_VEHICLE_LIVERY_COUNT(veh);  
--- for (int i = 0; i < count; i++)    
--- 	{  
--- char* LiveryName = VEHICLE::GET_LIVERY_NAME(veh, i);  
--- 	}  
--- this example will work fine to fetch all names   
--- for example for Sanchez we get   
--- SANC_LV1  
--- SANC_LV2  
--- SANC_LV3  
--- SANC_LV4  
--- SANC_LV5  
--- Use _GET_LABEL_TEXT, to get the localized livery name.  
--- -----------  
--- NOTE: You may need to set the vehicle's modKit to 0 by using this function: SET_VEHICLE_MOD_KIT() before getting the name, otherwise this native may return NULL.  
--- dev-c.com/nativedb/func/info/1f2aa07f00b3217a  
--- 
--- @param vehicle Vehicle
--- @param liveryIndex number
--- @return string
function GetLiveryName(vehicle, liveryIndex) end

--- 
--- Returns the name for the type of vehicle mod(Armour, engine etc)  
--- -----------  
--- for some reason this native seems unreliable: sometimes returns NULL, and when retval != NULL the string can be empty  
--- 
--- @param vehicle Vehicle
--- @param modType number
--- @return string
function GetModSlotName(vehicle, modType) end

--- 
--- Returns true when in a vehicle, false whilst entering/exiting.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function GetIsVehicleEngineRunning(vehicle) end


--- @param p0 number
--- @param p1 boolean
--- @return number
function GetNumModColors(p0, p1) end

--- 
--- Check if Vehicle Secondary is avaliable for customize  
--- 
--- @param vehicle Vehicle
--- @return boolean
function GetIsVehicleSecondaryColourCustom(vehicle) end

--- 
--- Returns how many possible mods a vehicle has for a given mod type  
--- 
--- @param vehicle Vehicle
--- @param modType number
--- @return number
function GetNumVehicleMods(vehicle, modType) end

--- 
--- Landing gear states:  
--- 0: Deployed  
--- 1: Closing (Retracting)
--- 3: Opening (Deploying)
--- 4: Retracted  
--- 
--- 
--- Landing gear state 2 is never used.
--- @param vehicle Vehicle
--- @return number
function GetLandingGearState(vehicle) end


--- @return number
function GetNumVehicleWindowTints() end


--- @param vehicle Vehicle
--- @return number
function GetNumberOfVehicleDoors(vehicle) end

--- 
--- Returns last vehicle that was rammed by the given vehicle using the shunt boost.
--- 
--- NativeDB Introduced: v1604
--- 
--- @param vehicle Vehicle
--- @return Vehicle
function GetLastRammedVehicle(vehicle) end

--- 
--- Returns the number of *types* of licence plates, enumerated below in SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX.  
--- 
--- @return number
function GetNumberOfVehicleNumberPlates() end

--- 
--- Quick disassembly and test seems to indicate that this native gets the Ped currently using the specified door.  
--- 
--- @param vehicle Vehicle
--- @param doorIndex number
--- @return Ped
function GetPedUsingVehicleDoor(vehicle, doorIndex) end

--- 
--- Returns the text label of a mod type for a given vehicle  
--- Use _GET_LABEL_TEXT to get the part name in the game's language  
--- 
--- @param vehicle Vehicle
--- @param modType number
--- @param modValue number
--- @return string
function GetModTextLabel(vehicle, modType, modValue) end


--- @param p0 any
--- @return number
function GetPositionInRecording(p0) end


--- @param vehicle Vehicle
--- @return number
function GetNumModKits(vehicle) end

--- 
--- p1 is some kind of tolerance  
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 string
--- @return vector3
function GetPositionOfVehicleRecordingAtTime(p0, p1, p2) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @return Vehicle
function GetRandomVehicleBackBumperInSphere(p0, p1, p2, p3, p4, p5, p6) end

--- 
--- Actually number of color combinations  
--- 
--- @param vehicle Vehicle
--- @return number
function GetNumberOfVehicleColours(vehicle) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @return Vehicle
function GetRandomVehicleFrontBumperInSphere(p0, p1, p2, p3, p4, p5, p6) end

--- 
--- indexes:
--- -1 = Driver
--- 0 = Front Right Passenger
--- 1 = Back Left Passenger
--- 2 = Back Right Passenger
--- 3 = Further Back Left Passenger (vehicles > 4 seats)
--- 4 = Further Back Right Passenger (vehicles > 4 seats)
--- 
--- Can use GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) to help get max index
--- 
--- 
--- 
--- NativeDB Added Parameter 3: Any p2
--- 
--- @param vehicle Vehicle
--- @param index number
--- @return Ped
function GetPedInVehicleSeat(vehicle, index) end

--- 
--- Not present in the retail version! It's just a nullsub.  
--- p0 always true (except in one case)  
--- p1 a random vehicle hash loaded in memory  
--- p2 0 if success, -1 if failed  
--- 
--- @param p0 boolean
--- @param modelHash Hash
--- @param p2 number
function GetRandomVehicleModelInMemory(p0, modelHash, p2) end


--- @param id number
--- @param time number
--- @return vector3
function GetRotationOfVehicleRecordingIdAtTime(id, time) end

--- A float indicating the percentage of the hover mode. 1.0 = in VTOL mode, 0.0 = in normal flying mode.
--- @param aircraft Vehicle
--- @return number
function GetPlaneVtolDirection(aircraft) end

--- 
--- NativeDB Return Type: float
--- 
--- @param p0 any
--- @param p1 any
--- @return any
function GetTotalDurationOfVehicleRecording(p0, p1) end

--- 
--- NativeDB Return Type: Vector3
--- 
--- @param id number
--- @param time number
--- @return number
function GetPositionOfVehicleRecordingIdAtTime(id, time) end

--- 
--- Gets a random vehicle in a sphere at the specified position, of the specified radius.  
--- x: The X-component of the position of the sphere.  
--- y: The Y-component of the position of the sphere.  
--- z: The Z-component of the position of the sphere.  
--- radius: The radius of the sphere. Max is 9999.9004.  
--- modelHash: The vehicle model to limit the selection to. Pass 0 for any model.  
--- flags: The bitwise flags that modifies the behaviour of this function.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param modelHash Hash
--- @param flags number
--- @return Vehicle
function GetRandomVehicleInSphere(x, y, z, radius, modelHash, flags) end


--- @param p0 any
--- @return number
function GetTotalDurationOfVehicleRecordingId(p0) end

--- 
--- NativeDB Return Type: Vector3
--- 
--- @param p0 any
--- @param p1 number
--- @param p2 any
--- @return number
function GetRotationOfVehicleRecordingAtTime(p0, p1, p2) end

--- 
--- static - max acceleration  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleAcceleration(vehicle) end

--- 
--- Returns attached vehicle (Vehicle in parameter must be cargobob)  
--- 
--- @param cargobob Vehicle
--- @return Vehicle
function GetVehicleAttachedToCargobob(cargobob) end


--- @param p0 any
--- @return number
function GetTimePositionInRecording(p0) end

--- 
--- Seems related to vehicle health, like the one in IV.  
--- Max 1000, min 0.  
--- Vehicle does not necessarily explode or become undrivable at 0.  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleBodyHealth(vehicle) end

--- 
--- Corrected p1. it's basically the 'carriage/trailer number'. So if the train has 3 trailers you'd call the native once with a var or 3 times with 1, 2, 3.  
--- 
--- @param train Vehicle
--- @param trailerNumber number
--- @return Entity
function GetTrainCarriage(train, trailerNumber) end

--- Gets the amount of bombs that this vehicle has. As far as I know, this does _not_ impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane. 
--- 
--- In decompiled scripts this is used to check if the vehicle has enough bombs before a bomb can be dropped (bombs are dropped by using [_SHOOT_SINGLE_BULLET_BETWEEN_COORDS_WITH_EXTRA_PARAMS](#_0xBFE5756E7407064A)). 
--- 
--- Use [_SET_AIRCRAFT_BOMB_COUNT](#_0xF4B2ED59DEB5D774) to set the amount of bombs on that vehicle.
--- @param aircraft Vehicle
--- @return number
function GetVehicleBombCount(aircraft) end

--- 
--- Get the vehicle attached to the object/entity? May also just convert it to a vehicle, but I'm not sure.  
--- 
--- @param entity Entity
--- @return Vehicle
function GetVehicleAttachedToEntity(entity) end

--- 
--- iVar3 = get_vehicle_cause_of_destruction(uLocal_248[iVar2]);  
--- if (iVar3 == joaat("weapon_stickybomb"))  
--- {  
---      func_171(726);  
---      iLocal_260 = 1;  
--- }  
--- 
--- @param vehicle Vehicle
--- @return Hash
function GetVehicleCauseOfDestruction(vehicle) end

--- 
--- 0 min 100 max  
--- starts at 100  
--- Seams to have health zones  
--- Front of vehicle when damaged goes from 100-50 and stops at 50.  
--- Rear can be damaged from 100-0  
--- Only tested with two cars.  
--- any idea how this differs from the first one?  
--- --  
--- May return the vehicle health on a scale of 0.0 - 100.0 (needs to be confirmed)  
--- example:  
--- v_F = ENTITY::GET_ENTITY_MODEL(v_3);  
--- if (((v_F == ${tanker}) || (v_F == ${armytanker})) || (v_F == ${tanker2})) {  
---     if (VEHICLE::_GET_VEHICLE_BODY_HEALTH_2(v_3) <= 1.0) {  
---         NETWORK::NETWORK_EXPLODE_VEHICLE(v_3, 1, 1, -1);  
---     }  
--- }  
--- 
--- 
--- 
--- NativeDB Added Parameter 2: Any p1
--- NativeDB Added Parameter 3: Any p2
--- NativeDB Added Parameter 4: Any p3
--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- NativeDB Added Parameter 7: Any p6
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleBodyHealth2(vehicle) end


--- @param vehicleClass number
--- @return number
function GetVehicleClassEstimatedMaxSpeed(vehicleClass) end

--- 
--- Returns an int  
--- Vehicle Classes:  
--- 0: Compacts  
--- 1: Sedans  
--- 2: SUVs  
--- 3: Coupes  
--- 4: Muscle  
--- 5: Sports Classics  
--- 6: Sports  
--- 7: Super  
--- 8: Motorcycles  
--- 9: Off-road  
--- 10: Industrial  
--- 11: Utility  
--- 12: Vans  
--- 13: Cycles  
--- 14: Boats  
--- 15: Helicopters  
--- 16: Planes  
--- 17: Service  
--- 18: Emergency  
--- 19: Military  
--- 20: Commercial  
--- 21: Trains  
--- char buffer[128];  
--- std::sprintf(buffer, "VEH_CLASS_%i", VEHICLE::GET_VEHICLE_CLASS(vehicle));  
--- char* className = UI::_GET_LABEL_TEXT(buffer);  
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleClass(vehicle) end

