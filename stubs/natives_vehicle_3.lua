--- 
--- doorIndex:  
--- 0 = Front Left Door  
--- 1 = Front Right Door  
--- 2 = Back Left Door  
--- 3 = Back Right Door  
--- 4 = Hood  
--- 5 = Trunk  
--- 6 = Trunk2  
--- 
--- @param vehicle Vehicle
--- @param doorIndex number
--- @param closeInstantly boolean
function SetVehicleDoorShut(vehicle, doorIndex, closeInstantly) end

--- 
--- 1   
--- 2 - CARLOCK_LOCKED (locked)  
--- 3   
--- 4 - CARLOCK_LOCKED_PLAYER_INSIDE (can get in, can't leave)  
--- (maybe, these are leftovers from GTA:VC)  
--- 5   
--- 6   
--- 7   
--- (source: GTA VC miss2 leak, matching constants for 0/2/4, testing)  
--- They use 10 in am_mp_property_int, don't know what it does atm.  
--- 
--- @param vehicle Vehicle
--- @param doorLockStatus number
function SetVehicleDoorsLocked(vehicle, doorLockStatus) end

--- 
--- After some analysis, I've decided that these are what the parameters are.  
--- We can see this being used in R* scripts such as "am_mp_property_int.ysc.c4":  
--- l_11A1 = PED::GET_VEHICLE_PED_IS_IN(PLAYER::PLAYER_PED_ID(), 1);  
--- ...  
--- VEHICLE::SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(l_11A1, 1);  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleDoorsLockedForAllPlayers(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleDoorsLockedForNonScriptPlayers(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param player Player
--- @param toggle boolean
function SetVehicleDoorsLockedForPlayer(vehicle, player, toggle) end


--- @param vehicle Vehicle
--- @param team number
--- @param toggle boolean
function SetVehicleDoorsLockedForTeam(vehicle, team, toggle) end

--- 
--- NativeDB Introduced: v1365
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleDoorsLockedForUnk(vehicle, toggle) end

--- 
--- Closes all doors of a vehicle:  
--- 
--- @param vehicle Vehicle
--- @param closeInstantly boolean
function SetVehicleDoorsShut(vehicle, closeInstantly) end

--- 
--- Money pickups are created around cars when they explodes. Only works when the vehicle model is a car. A single pickup is between 1 and 18 dollars in size. All car models seems to give the same amount of money.  
--- youtu.be/3arlUxzHl5Y   
--- i.imgur.com/WrNpYFs.jpg  
--- From the scripts:  
--- VEHICLE::_068F64F2470F9656(l_36, 0);  
--- Found a "correct" name for this :P  
--- _dead_vehicle_pickups_dies_when_set_exploded_destroy_it_drops_on_money  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleDropsMoneyWhenBlownUp(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleEngineCanDegrade(vehicle, toggle) end

--- 
--- 1000 is max health  
--- Begins leaking gas at around 650 health  
--- -999.90002441406 appears to be minimum health, although nothing special occurs <- false statement  
--- -------------------------  
--- Minimum: -4000  
--- Maximum: 1000  
--- -4000: Engine is destroyed  
--- 0 and below: Engine catches fire and health rapidly declines  
--- 300: Engine is smoking and losing functionality  
--- 1000: Engine is perfect  
--- 
--- @param vehicle Vehicle
--- @param health number
function SetVehicleEngineHealth(vehicle, health) end

--- 
--- formerly known as _SET_VEHICLE_PAINT_FADE  
--- The parameter fade is a value from 0-1, where 0 is fresh paint.  
--- ------------------------------------------------------------------------------------  
--- The actual value isn't stored as a float but as an unsigned char (BYTE). More info here: pastebin.com/r0h6EM5s  
--- --------------  
--- Separate Person: I didn't want to be rude and remove it, but whom ever posted that pastebin above please remove it as the paste says it has been removed.  
--- 
--- @param vehicle Vehicle
--- @param fade number
function SetVehicleEnveffScale(vehicle, fade) end

--- Starts or stops the engine on the specified vehicle.
--- From what I've tested when I do this to a helicopter the propellers turn off after the engine has started.
--- @param vehicle Vehicle
--- @param value boolean
--- @param instantly boolean
--- @param disableAutoStart boolean
function SetVehicleEngineOn(vehicle, value, instantly, disableAutoStart) end

--- 
--- Seems according to TU27 X360 Scripts, this has 3 arguments as well.  
--- SET_VEHICLE_EXCLUSIVE_DRIVER(vehicle, 0, 0); in freemode.c  
--- In case 5 of a switch case, is the only time it shows Arg2 being PLAYER_PED_ID(), otherwise it's 0. Arg3 always seems to be 0.  
--- 
--- 
--- 
--- NativeDB Parameter 1: BOOL toggle
--- 
--- @param vehicle Vehicle
--- @param toggle Ped
function SetVehicleExclusiveDriver(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param ped Ped
--- @param index number
function SetVehicleExclusiveDriver2(vehicle, ped, index) end

--- 
--- Sets a vehicle to be strongly resistant to explosions. p0 is the vehicle; set p1 to false to toggle the effect on/off.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleExplodesOnHighExplosionDamage(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param range number
function SetVehicleExtendedRemovalRange(vehicle, range) end

--- 
--- Note: only some vehicle have extras  
--- extra ids are from 1 - 9 depending on the vehicle  
--- -------------------------------------------------  
--- ^ not sure if outdated or simply wrong. Max extra ID for b944 is 14  
--- -------------------------------------------------  
--- p2 is not a on/off toggle. mostly 0 means on and 1 means off.  
--- not sure if it really should be a BOOL.  
--- -------------------------------------------------  
--- Confirmed p2 does not work as a bool. Changed to int. [0=on, 1=off]  
--- 
--- @param vehicle Vehicle
--- @param extraId number
--- @param disable boolean
function SetVehicleExtra(vehicle, extraId, disable) end

--- 
--- They use the same color indexs as SET_VEHICLE_COLOURS.  
--- 
--- @param vehicle Vehicle
--- @param pearlescentColor number
--- @param wheelColor number
function SetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end

--- 
--- If the vehicle's engine's broken then you cannot fix it with this native.
--- 
--- @param vehicle Vehicle
function SetVehicleFixed(vehicle) end


--- @param vehicle Vehicle
--- @param direction number
function SetVehicleFlightNozzlePosition(vehicle, direction) end


--- @param vehicle Vehicle
--- @param direction number
function SetVehicleFlightNozzlePositionImmediate(vehicle, direction) end


--- @param vehicle Vehicle
--- @param p1 boolean
function SetVehicleForceAfterburner(vehicle, p1) end

--- 
--- SCALE: Setting the speed to 30 would result in a speed of roughly 60mph, according to speedometer.  
--- Speed is in meters per second  
--- You can convert meters/s to mph here:  
--- http://www.calculateme.com/Speed/MetersperSecond/ToMilesperHour.htm  
--- 
--- @param vehicle Vehicle
--- @param speed number
function SetVehicleForwardSpeed(vehicle, speed) end

--- 
--- Seems to be related to the metal parts, not tyres (like i was expecting lol)  
--- Must be called every tick.  
--- 
--- @param vehicle Vehicle
--- @param friction number
function SetVehicleFrictionOverride(vehicle, friction) end

--- 
--- It switch to highbeam when p1 is set to true.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleFullbeam(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleGravity(vehicle, toggle) end

--- 
--- Allows creation of CEventShockingPlaneFlyby, CEventShockingHelicopterOverhead, and other(?) Shocking events
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleGeneratesEngineShockingEvents(vehicle, toggle) end

--- 
--- NativeDB Parameter 1: Hash hash
--- 
--- @param vehicle Vehicle
--- @param hash any
function SetVehicleHandlingHashForAi(vehicle, hash) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleHandbrake(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleHasBeenDrivenFlag(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param owned boolean
function SetVehicleHasBeenOwnedByPlayer(vehicle, owned) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleHasMutedSirens(vehicle, toggle) end

--- 
--- if true, axles won't bend.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleHasStrongAxles(vehicle, toggle) end

--- 
--- If false, anything related to INPUT_VEH_TRANSFORM are ignored (changing hover state through script natives still possible).
--- 
--- 
--- 
--- NativeDB Introduced: v1290
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleHoverTransformEnabled(vehicle, toggle) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleHoverTransformActive(vehicle, toggle) end

--- According to decompiled scripts this should work with the deluxo and oppressor2 vehicles.
--- I've only seen this work for deluxo though, can't figure out what it's supposed to do on oppressor2.
--- 
--- For the deluxo:
--- 
--- -   Set state to 0.0: Fully transform to a 'road' vehicle (non-hover mode).
--- -   Set state to 1.0: Fully transform to a 'flying' vehicle (hover mode).
--- 
--- If you set it to something like 0.5, then something [weird happens](https://streamable.com/p6wmr), you end up in some 50% hover mode, 50% not hover mode.
--- 
--- This doesn't need to be called every tick, just once and the vehicle will transform to that state at the usual transform speed. It'll just stop transforming when it reaches the state you provided.
--- 
--- Once this native is used then players will just be able to hit the vehicle transform key to toggle the transformation cycle; it won't block users from using the key.
--- @param vehicle Vehicle
--- @param state number
function SetVehicleHoverTransformPercentage(vehicle, state) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleInactiveDuringPlayback(vehicle, toggle) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param vehicle Vehicle
--- @param ratio number
function SetVehicleHoverTransformRatio(vehicle, ratio) end

--- 
--- Sets the turn signal enabled for a vehicle.  
--- Set turnSignal to 1 for left light, 0 for right light.  
--- 
--- @param vehicle Vehicle
--- @param turnSignal number
--- @param toggle boolean
function SetVehicleIndicatorLights(vehicle, turnSignal, toggle) end


--- @param vehicle Vehicle
--- @param color number
function SetVehicleInteriorColour(vehicle, color) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleInteriorlight(vehicle, toggle) end

--- 
--- Setting this to false, makes the specified vehicle to where if you press Y your character doesn't even attempt the animation to enter the vehicle. Hence it's not considered aka ignored.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleIsConsideredByPlayer(vehicle, toggle) end

--- 
--- p1 (toggle) was always 1 (true) except in one case in the b678 scripts.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleIsRacing(vehicle, toggle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param vehicle Vehicle
--- @param isStolen boolean
--- @return any
function SetVehicleIsStolen(vehicle, isStolen) end

--- 
--- Sets the wanted state of this vehicle.  
--- 
--- @param vehicle Vehicle
--- @param state boolean
function SetVehicleIsWanted(vehicle, state) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleKersAllowed(vehicle, toggle) end

--- 
--- VEHICLE::SET_VEHICLE_ENGINE_ON is not enough to start jet engines when not inside the vehicle. But with this native set to true it works: youtu.be/OK0ps2fDpxs   
--- i.imgur.com/7XA14pX.png  
--- Certain planes got jet engines.  
--- void VEHICLE::_SET_VEHICLE_JET_ENGINE_ON(scrNativeCallContext *args)  
--- {  
---   bool bOn; // bl@1  
---   CVehicle *pVehicle; // rax@1  
---   scrNativeCallContextArgStruct *pArgs; // rax@1  
---   pArgs = args->pArgs;  
---   bOn = pArgs->a2.INT32 != 0;  
---   pVehicle = getEntityAddressIfVehicle(pArgs->a1.INT32);  
---   if ( pVehicle )  
---   {  
---     pVehicle->bitmapBulletProofTires &= 0xFBu;  
---     pVehicle->bitmapBulletProofTires |= 4 * bOn;  
---   }  
--- } // sfink  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleJetEngineOn(vehicle, toggle) end

--- 
--- set's if the vehicle has lights or not.  
--- not an on off toggle.  
--- p1 = 0 ;vehicle normal lights, off then lowbeams, then highbeams  
--- p1 = 1 ;vehicle doesn't have lights, always off  
--- p1 = 2 ;vehicle has always on lights  
--- p1 = 3 ;or even larger like 4,5,... normal lights like =1  
--- note1: when using =2 on day it's lowbeam,highbeam  
--- but at night it's lowbeam,lowbeam,highbeam  
--- note2: when using =0 it's affected by day or night for highbeams don't exist in daytime.  
--- 
--- @param vehicle Vehicle
--- @param state number
function SetVehicleLights(vehicle, state) end

--- 
--- multiplier = brightness of head lights.  
--- this value isn't capped afaik.  
--- multiplier = 0.0 no lights  
--- multiplier = 1.0 default game value  
--- 
--- @param vehicle Vehicle
--- @param multiplier number
function SetVehicleLightMultiplier(vehicle, multiplier) end

--- 
--- Must be called each frame
--- 
--- @param vehicle Vehicle
--- @param p1 boolean
function SetVehicleLightsCanBeVisiblyDamaged(vehicle, p1) end

--- 
--- p1 can be either 0, 1 or 2.  
--- Determines how vehicle lights behave when toggled.  
--- 0 = Default (Lights can be toggled between off, normal and high beams)  
--- 1 = Lights Disabled (Lights are fully disabled, cannot be toggled)  
--- 2 = Always On (Lights can be toggled between normal and high beams)  
--- 
--- @param vehicle Vehicle
--- @param p1 number
function SetVehicleLightsMode(vehicle, p1) end


--- @param vehicle Vehicle
--- @param livery number
function SetVehicleLivery(vehicle, livery) end


--- @param vehicle Vehicle
--- @param multiplier number
function SetVehicleLodMultiplier(vehicle, multiplier) end

--- 
--- In b944, there are 50 (0 - 49) mod types.  
--- Sets the vehicle mod.  
--- The vehicle must have a mod kit first.  
--- Any out of range ModIndex is stock.  
--- #Mod Type  
--- Spoilers   
--- Front Bumper   
--- Rear Bumper   
--- Side Skirt   
--- Exhaust   
--- Frame   
--- Grille   
--- Hood   
--- Fender   
--- Right Fender   
--- Roof   
--- Engine   
--- Brakes   
--- Transmission   
--- Horns - 14 (modIndex from 0 to 51)  
--- Suspension   
--- Armor   
--- Front Wheels   
--- Back Wheels - 24 //only for motocycles  
--- Plate holders   
--- Trim Design   
--- Ornaments   
--- Dial Design   
--- Steering Wheel   
--- Shifter Leavers   
--- Plaques   
--- Hydraulics   
--- Livery   
--- ENUMS: pastebin.com/QzEAn02v  
--- 
--- @param vehicle Vehicle
--- @param modType number
--- @param modIndex number
--- @param customTires boolean
function SetVehicleMod(vehicle, modType, modIndex, customTires) end

--- This native sets a maximum speed for a vehicle.
--- @param vehicle Vehicle
--- @param speed number
function SetVehicleMaxSpeed(vehicle, speed) end

--- 
--- paintType:  
--- 0: Normal  
--- 1: Metallic  
--- 2: Pearl  
--- 3: Matte  
--- 4: Metal  
--- 5: Chrome  
--- color: number of the color.  
--- p3 seems to always be 0.  
--- 
--- @param vehicle Vehicle
--- @param paintType number
--- @param color number
--- @param p3 number
function SetVehicleModColor1(vehicle, paintType, color, p3) end

--- 
--- Set modKit to 0 if you plan to call SET_VEHICLE_MOD. That's what the game does. Most body modifications through SET_VEHICLE_MOD will not take effect until this is set to 0.  
--- ---------  
--- Setting the modKit to 0 also seems to load some livery related vehicle information. For example, using GET_LIVERY_NAME() will return NULL if you haven't set the modKit to 0 in advance. As soon as you set it to 0, GET_LIVERY_NAME() will work properly.  
--- 
--- @param vehicle Vehicle
--- @param modKit number
function SetVehicleModKit(vehicle, modKit) end

--- 
--- Changes the secondary paint type and color  
--- paintType:  
--- 0: Normal  
--- 1: Metallic  
--- 2: Pearl  
--- 3: Matte  
--- 4: Metal  
--- 5: Chrome  
--- color: number of the color  
--- 
--- @param vehicle Vehicle
--- @param paintType number
--- @param color number
function SetVehicleModColor2(vehicle, paintType, color) end

--- 
--- seems to make the vehicle stop spawning naturally in traffic. Here's an essential example:  
--- VEHICLE::SET_VEHICLE_MODEL_IS_SUPPRESSED(GAMEPLAY::GET_HASH_KEY("taco"), true);  
--- god I hate taco vans  
--- Confirmed to work? Needs to be looped? Can not get it to work.  
--- 
--- @param model Hash
--- @param suppressed boolean
function SetVehicleModelIsSuppressed(model, suppressed) end

--- 
--- NOTE: Debugging functions are not present in the retail version of the game.  
--- 
--- @param vehicle Vehicle
--- @param name string
function SetVehicleNameDebug(vehicle, name) end

--- 
--- Sets the neon lights of the specified vehicle on/off.  
--- Indices:  
--- 0 = Left  
--- 1 = Right  
--- 2 = Front  
--- 3 = Back  
--- 
--- @param vehicle Vehicle
--- @param index number
--- @param toggle boolean
function SetVehicleNeonLightEnabled(vehicle, index, toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleNeedsToBeHotwired(vehicle, toggle) end

--- Sets the color of the neon lights on the specified vehicle.
--- 
--- RGB values and colour names taken from the decompiled scripts:
--- 
--- | Colour        |  R  |  G  |  B  |
--- | ------------- | :-: | :-: | :-: |
--- | White         | 222 | 222 | 255 |
--- | Blue          |  2  |  21 | 255 |
--- | Electric Blue |  3  |  83 | 255 |
--- | Mint Green    |  0  | 255 | 140 |
--- | Lime Green    |  94 | 255 |  1  |
--- | Yellow        | 255 | 255 |  0  |
--- | Golden Shower | 255 | 150 |  0  |
--- | Orange        | 255 |  62 |  0  |
--- | Red           | 255 |  1  |  1  |
--- | Pony Pink     | 255 |  50 | 100 |
--- | Hot Pink      | 255 |  5  | 190 |
--- | Purple        |  35 |  1  | 255 |
--- | Blacklight    |  15 |  3  | 255 |
--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function SetVehicleNeonLightsColour(vehicle, r, g, b) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param vehicle Vehicle
--- @param color number
function SetVehicleNeonLightsColor2(vehicle, color) end

--- 
--- Sets a vehicle's license plate text.  8 chars maximum.  
--- Example:  
--- Ped playerPed = PLAYER::PLAYER_PED_ID();  
--- Vehicle veh = PED::GET_VEHICLE_PED_IS_USING(playerPed);  
--- char *plateText = "KING";  
--- VEHICLE::SET_VEHICLE_NUMBER_PLATE_TEXT(veh, plateText);  
--- 
--- @param vehicle Vehicle
--- @param plateText string
function SetVehicleNumberPlateText(vehicle, plateText) end

--- 
--- Sets a vehicle on the ground on all wheels.  Returns whether or not the operation was successful.  
--- sfink: This has an additional param(Vehicle vehicle, float p1) which is always set to 5.0f in the b944 scripts.  
--- 
--- 
--- 
--- NativeDB Added Parameter 2: float p1
--- 
--- @param vehicle Vehicle
--- @return boolean
function SetVehicleOnGroundProperly(vehicle) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleNitroEnabled(vehicle, toggle) end

--- 
--- Plates:  
--- Blue/White   
--- Yellow/black   
--- Yellow/Blue   
--- Blue/White2   
--- Blue/White3   
--- Yankton  
--- 
--- @param vehicle Vehicle
--- @param plateIndex number
function SetVehicleNumberPlateTextIndex(vehicle, plateIndex) end


--- @param vehicle Vehicle
--- @param active boolean
function SetVehicleParachuteActive(vehicle, active) end

--- 
--- colorIndex = 0  
--- 
--- @param vehicle Vehicle
--- @param textureVariation number
function SetVehicleParachuteTextureVariatiion(vehicle, textureVariation) end

--- 
--- Tested on the player's current vehicle. Unless you kill the driver, the vehicle doesn't loose control, however, if enabled, explodeOnImpact is still active. The moment you crash, boom.  
--- 
--- @param vehicle Vehicle
--- @param killDriver boolean
--- @param explodeOnImpact boolean
function SetVehicleOutOfControl(vehicle, killDriver, explodeOnImpact) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleProvidesCover(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleRampSidewaysLaunchMotion(vehicle, toggle) end

--- 
--- parachuteModel = 230075693  
--- 
--- @param vehicle Vehicle
--- @param modelHash Hash
function SetVehicleParachuteModel(vehicle, modelHash) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleRampUpwardsLaunchMotion(vehicle, toggle) end

--- 
--- 1000 is max health  
--- Begins leaking gas at around 650 health  
--- 
--- @param vehicle Vehicle
--- @param health number
function SetVehiclePetrolTankHealth(vehicle, health) end


--- @param vehicle Vehicle
--- @param active boolean
function SetVehicleRocketBoostActive(vehicle, active) end


--- @param vehicle Vehicle
--- @param p1 number
function SetVehicleRampLaunchModifier(vehicle, p1) end


--- @param vehicle Vehicle
--- @param percentage number
function SetVehicleRocketBoostPercentage(vehicle, percentage) end

--- Used to set the tornado custom (convertible) rooftop livery.
--- 
--- Livery value that works for tornado custom is between 0 and 9 from what i can tell. Maybe 0-8 even.
--- 
--- Might work on other custom vehicles but im not sure what those might be, only confirmed it working with the tornado custom.
--- @param vehicle Vehicle
--- @param livery number
function SetVehicleRoofLivery(vehicle, livery) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleReceivesRampDamage(vehicle, toggle) end

--- 
--- Only works during nighttime.  
--- And only if there is a driver in heli.  
--- 
--- @param heli Vehicle
--- @param toggle boolean
--- @param canBeUsedByAI boolean
function SetVehicleSearchlight(heli, toggle, canBeUsedByAI) end

--- 
--- Reduces grip significantly so it's hard to go anywhere.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleReduceGrip(vehicle, toggle) end

--- 
--- Commands the driver of an armed vehicle (p0) to shoot its weapon at a target (p1). p3, p4 and p5 are the coordinates of the target. Example:  
--- WEAPON::SET_CURRENT_PED_VEHICLE_WEAPON(pilot,GAMEPLAY::GET_HASH_KEY("VEHICLE_WEAPON_PLANE_ROCKET"));VEHICLE::SET_VEHICLE_SHOOT_AT_TARGET(pilot, target, targPos.x, targPos.y, targPos.z);  
--- 
--- @param driver Ped
--- @param entity Entity
--- @param xTarget number
--- @param yTarget number
--- @param zTarget number
function SetVehicleShootAtTarget(driver, entity, xTarget, yTarget, zTarget) end


--- @param vehicle Vehicle
--- @param time number
function SetVehicleRocketBoostRefillTime(vehicle, time) end

--- 
--- Has something to do with trains. Always precedes SET_MISSION_TRAIN_AS_NO_LONGER_NEEDED.  
--- ============================================  
--- May be true that it can be used with trains not sure, but not specifically for trains. Go find Xbox360 decompiled scripts and search for 'func_1333' in freemode.c it isn't used just for trains. Thanks for the info tho.  
--- Btw, func_1333 ends up calling this func which uses this native,  
--- void func_1338(int iParam0)//Position   
--- {  
--- 	ENTITY::FREEZE_ENTITY_POSITION(iParam0, true);  
--- 	ENTITY::SET_ENTITY_COLLISION(iParam0, false, 0);  
--- 	ENTITY::SET_ENTITY_INVINCIBLE(iParam0, true);  
--- 	VEHICLE::_0xDF594D8D(iParam0, true);  
--- }  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleSt(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleRudderBroken(vehicle, toggle) end

--- 
--- Locks the vehicle's steering to the desired angle, explained below.  
--- Requires to be called onTick. Steering is unlocked the moment the function stops being called on the vehicle.  
--- Steer bias:  
--- -1.0 = full right  
--- 0.0 = centered steering  
--- 1.0 = full left  
--- 
--- @param vehicle Vehicle
--- @param value number
function SetVehicleSteerBias(vehicle, value) end

--- 
--- If set to TRUE, it seems to suppress door noises and doesn't allow the horn to be continuous.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleSilent(vehicle, toggle) end

--- 
--- If set to true, vehicle will not take crash damage, but is still susceptible to damage from bullets and explosives  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleStrong(vehicle, toggle) end


--- @param vehicle Vehicle
--- @param position number
--- @param p2 boolean
function SetVehicleTankTurretPosition(vehicle, position, p2) end

--- 
--- Activate siren on vehicle (Only works if the vehicle has a siren).  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleSiren(vehicle, toggle) end

--- 
--- Sets how much the crane on the tow truck is raised, where 0.0 is fully lowered and 1.0 is fully raised.  
--- 
--- @param vehicle Vehicle
--- @param position number
function SetVehicleTowTruckArmPosition(vehicle, position) end


--- @param vehicle Vehicle
--- @param scalar number
function SetVehicleSteeringBiasScalar(vehicle, scalar) end

--- 
--- tyreIndex = 0 to 4 on normal vehicles  
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
--- @param tyreIndex number
function SetVehicleTyreFixed(vehicle, tyreIndex) end

--- 
--- Allows you to toggle bulletproof tires.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleTyresCanBurst(vehicle, toggle) end

--- 
--- VEHICLE::SET_VEHICLE_TIMED_EXPLOSION(v_3, PLAYER::GET_PLAYER_PED(v_5), 1);  
--- 
--- @param vehicle Vehicle
--- @param ped Ped
--- @param toggle boolean
function SetVehicleTimedExplosion(vehicle, ped, toggle) end

--- 
--- Player won't be able to drive the car or enter it, unless you task him to get into any other seat than the driver one.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleUndriveable(vehicle, toggle) end

--- 
--- "To burst tyres VEHICLE::SET_VEHICLE_TYRE_BURST(vehicle, 0, true, 1000.0)  
--- to burst all tyres type it 8 times where p1 = 0 to 7.  
--- p3 seems to be how much damage it has taken. 0 doesn't deflate them, 1000 completely deflates them.  
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
--- @param index number
--- @param onRim boolean
--- @param p3 number
function SetVehicleTyreBurst(vehicle, index, onRim, p3) end

--- 
--- Sets the tire smoke's color of this vehicle.  
--- vehicle: The vehicle that is the target of this method.  
--- r: The red level in the RGB color code.  
--- g: The green level in the RGB color code.  
--- b: The blue level in the RGB color code.  
--- Note:  
--- setting r,g,b to 0 will give the car independance day tyre smoke  
--- 
--- @param vehicle Vehicle
--- @param r number
--- @param g number
--- @param b number
function SetVehicleTyreSmokeColor(vehicle, r, g, b) end

--- 
--- Related to Hao races.
--- 
--- @param vehicle Vehicle
--- @param p1 boolean
function SetVehicleUseAlternateHandling(vehicle, p1) end


--- @param vehicle Vehicle
--- @param p1 boolean
function SetVehicleUsePlayerLightSettings(vehicle, p1) end


--- @param vehicle Vehicle
--- @param multiplier number
function SetVehicleUnkDamageMultiplier(vehicle, multiplier) end


--- @param vehicle Vehicle
--- @param weaponSlot number
function SetVehicleWeaponsDisabled(vehicle, weaponSlot) end


--- @param p0 Vehicle
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 boolean
--- @return any
function SetVehicleUseCutsceneWheelCompression(p0, p1, p2, p3) end

--- 
--- NativeDB Return Type: void
--- 
--- @param vehicle Vehicle
--- @param enabled boolean
--- @return any
function SetVehicleWheelsCanBreak(vehicle, enabled) end


--- @param vehicle Vehicle
--- @param weaponIndex number
--- @param capacity number
function SetVehicleWeaponCapacity(vehicle, weaponIndex, capacity) end

--- 
--- Related to monster trucks in native scripts.
--- 
--- 
--- 
--- NativeDB Introduced: v1604
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleWheelsDealDamage(vehicle, toggle) end

--- 
--- 0: Sport  
--- 1: Muscle  
--- 2: Lowrider  
--- 3: SUV  
--- 4: Offroad  
--- 5: Tuner  
--- 6: Bike Wheels  
--- 7: High End  
--- 
--- @param vehicle Vehicle
--- @param WheelType number
function SetVehicleWheelType(vehicle, WheelType) end

--- 
--- enum WindowTints  
--- {  
--- 	WINDOWTINT_NONE,  
--- 	WINDOWTINT_PURE_BLACK,  
--- 	WINDOWTINT_DARKSMOKE,  
--- 	WINDOWTINT_LIGHTSMOKE,  
--- 	WINDOWTINT_STOCK,  
--- 	WINDOWTINT_LIMO,  
--- 	WINDOWTINT_GREEN  
--- };  
--- 
--- @param vehicle Vehicle
--- @param tint number
function SetVehicleWindowTint(vehicle, tint) end


--- @param p0 any
--- @param p1 number
function SkipTimeInPlaybackRecordedVehicle(p0, p1) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleWheelsCanBreakOffWhenBlowUp(vehicle, toggle) end

--- color is the paint index for the vehicle.
--- Paint index goes from 0 to 12.
--- Be aware that it only works on xenon lights.
--- 
--- You can find the list of colors and ids here: [\_GET_VEHICLE_HEADLIGHTS_COLOUR](#_0x3DFF319A831E0CDB)
--- @param vehicle Vehicle
--- @param color number
function SetVehicleXenonLightsColour(vehicle, color) end

