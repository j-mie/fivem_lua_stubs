--- It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position).
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param ped Ped
--- @param animDict string
--- @param animName string
--- @param posX number
--- @param posY number
--- @param posZ number
--- @param rotX number
--- @param rotY number
--- @param rotZ number
--- @param animEnterSpeed number
--- @param animExitSpeed number
--- @param duration number
--- @param flag any
--- @param animTime number
--- @param p14 any
--- @param p15 any
function TaskPlayAnimAdvanced(ped, animDict, animName, posX, posY, posZ, rotX, rotY, rotZ, animEnterSpeed, animExitSpeed, duration, flag, animTime, p14, p15) end

--- 
--- from armenian3.c4  
--- AI::TASK_PUT_PED_DIRECTLY_INTO_MELEE(PlayerPed, armenianPed, 0.0, -1.0, 0.0, 0);  
--- 
--- @param ped Ped
--- @param meleeTarget Ped
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 boolean
function TaskPutPedDirectlyIntoMelee(ped, meleeTarget, p2, p3, p4, p5) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param timeout any
--- @param p5 boolean
--- @param p6 number
--- @param p7 boolean
--- @param p8 boolean
--- @param p9 any
--- @param p10 boolean
function TaskPutPedDirectlyIntoCover(ped, x, y, z, timeout, p5, p6, p7, p8, p9, p10) end


--- @param ped Ped
--- @param fleeTarget Ped
function TaskReactAndFleePed(ped, fleeTarget) end

--- 
--- Only appears twice in the scripts.  
--- AI::TASK_RAPPEL_FROM_HELI(PLAYER::PLAYER_PED_ID(), 0x41200000);  
--- AI::TASK_RAPPEL_FROM_HELI(a_0, 0x41200000);  
--- Fixed, definitely not a float and since it's such a big number obviously not a bool. All though note when I thought it was a bool and set it to 1 it seemed to work that same as int 0x41200000.  
--- 0x41200000 = 10.0 as float.  
--- Not all helicopters support rappelling.  
--- 
--- 
--- 
--- NativeDB Parameter 1: float unused
--- 
--- @param ped Ped
--- @param unused number
function TaskRappelFromHeli(ped, unused) end

--- 
--- From fm_mission_controller.c:  
--- reserve_network_mission_objects(get_num_reserved_mission_objects(0) + 1);  
--- 	vVar28 = {0.094f, 0.02f, -0.005f};  
--- 	vVar29 = {-92.24f, 63.64f, 150.24f};  
--- 	func_253(&uVar30, joaat("prop_ld_case_01"), Global_1592429.imm_34757[iParam1 <268>], 1, 1, 0, 1);  
--- 	set_entity_lod_dist(net_to_ent(uVar30), 500);  
--- 	attach_entity_to_entity(net_to_ent(uVar30), iParam0, get_ped_bone_index(iParam0, 28422), vVar28, vVar29, 1, 0, 0, 0, 2, 1);  
--- 	Var31.imm_4 = 1065353216;  
--- 	Var31.imm_5 = 1065353216;  
--- 	Var31.imm_9 = 1065353216;  
--- 	Var31.imm_10 = 1065353216;  
--- 	Var31.imm_14 = 1065353216;  
--- 	Var31.imm_15 = 1065353216;  
--- 	Var31.imm_17 = 1040187392;  
--- 	Var31.imm_18 = 1040187392;  
--- 	Var31.imm_19 = -1;  
--- 	Var32.imm_4 = 1065353216;  
--- 	Var32.imm_5 = 1065353216;  
--- 	Var32.imm_9 = 1065353216;  
--- 	Var32.imm_10 = 1065353216;  
--- 	Var32.imm_14 = 1065353216;  
--- 	Var32.imm_15 = 1065353216;  
--- 	Var32.imm_17 = 1040187392;  
--- 	Var32.imm_18 = 1040187392;  
--- 	Var32.imm_19 = -1;  
--- 	Var31 = 1;  
--- 	Var31.imm_1 = "weapons@misc@jerrycan@mp_male";  
--- 	Var31.imm_2 = "idle";  
--- 	Var31.imm_20 = 1048633;  
--- 	Var31.imm_4 = 0.5f;  
--- 	Var31.imm_16 = get_hash_key("BONEMASK_ARMONLY_R");  
--- 	task_scripted_animation(iParam0, &Var31, &Var32, &Var32, 0f, 0.25f);  
--- 	set_model_as_no_longer_needed(joaat("prop_ld_case_01"));  
--- 	remove_anim_dict("anim@heists@biolab@");  
--- 
--- @param ped Ped
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 number
--- @param p5 number
function TaskScriptedAnimation(ped, p1, p2, p3, p4, p5) end

--- 
--- The 2nd param (unused) is not implemented.  
--- -----------------------------------------------------------------------  
--- The only occurrence I found in a R* script ("assassin_construction.ysc.c4"):  
---             if (((v_3 < v_4) && (AI::GET_SCRIPT_TASK_STATUS(PLAYER::PLAYER_PED_ID(), 0x6a67a5cc) != 1)) && (v_5 > v_3)) {  
---                 AI::TASK_RELOAD_WEAPON(PLAYER::PLAYER_PED_ID(), 1);  
---             }  
--- 
--- @param ped Ped
--- @param unused boolean
function TaskReloadWeapon(ped, unused) end


--- @param ped Ped
--- @param target Ped
--- @param duration number
--- @param p3 boolean
function TaskSeekCoverFromPed(ped, target, duration, p3) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param duration number
--- @param p5 boolean
function TaskSeekCoverFromPos(ped, x, y, z, duration, p5) end

--- 
--- from michael2:  
--- AI::TASK_SEEK_COVER_TO_COORDS(ped, 967.5164794921875, -2121.603515625, 30.479299545288086, 978.94677734375, -2125.84130859375, 29.4752, -1, 1);  
--- appears to be shorter variation  
--- from michael3:  
--- AI::TASK_SEEK_COVER_TO_COORDS(ped, -2231.011474609375, 263.6326599121094, 173.60195922851562, -1, 0);  
--- 
--- @param ped Ped
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param p7 any
--- @param p8 boolean
function TaskSeekCoverToCoords(ped, x1, y1, z1, x2, y2, z2, p7, p8) end


--- @param p0 any
--- @param p1 any
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 any
--- @param p6 boolean
function TaskSeekCoverToCoverPoint(p0, p1, p2, p3, p4, p5, p6) end

--- 
--- I cant believe I have to define this, this is one of the best natives.  
--- It makes the ped ignore basically all shocking events around it. Occasionally the ped may comment or gesture, but other than that they just continue their daily activities. This includes shooting and wounding the ped. And - most importantly - they do not flee.  
--- Since it is a task, every time the native is called the ped will stop for a moment.  
--- 
--- @param ped Ped
--- @param toggle boolean
function TaskSetBlockingOfNonTemporaryEvents(ped, toggle) end

--- 
--- p1 is always GET_HASH_KEY("empty") in scripts, for the rare times this is used  
--- 
--- @param ped Ped
--- @param p1 Hash
function TaskSetDecisionMaker(ped, p1) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
function TaskSetSphereDefensiveArea(p0, p1, p2, p3, p4) end


--- @param ped Ped
--- @param eventHandle number
function TaskShockingEventReact(ped, eventHandle) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param duration number
--- @param firingPattern Hash
function TaskShootAtCoord(ped, x, y, z, duration, firingPattern) end

--- 
--- //this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds  
--- Entity aimedentity;  
--- Player player = PLAYER::PLAYER_ID();  
--- PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);  
--- //bg is an array of peds  
--- AI::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, GAMEPLAY::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));  
--- in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.  
--- 
--- @param entity Entity
--- @param target Entity
--- @param duration number
--- @param firingPattern Hash
function TaskShootAtEntity(entity, target, duration, firingPattern) end

--- 
--- Makes the specified ped shuffle to the next vehicle seat.  
--- The ped MUST be in a vehicle and the vehicle parameter MUST be the ped's current vehicle.  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: Any p2
--- 
--- @param ped Ped
--- @param vehicle Vehicle
function TaskShuffleToNextVehicleSeat(ped, vehicle) end

--- 
--- NativeDB Added Parameter 2: BOOL p1
--- 
--- @param ped Ped
function TaskSkyDive(ped) end

--- 
--- Makes the specified ped flee the specified distance from the specified position.  
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param distance number
--- @param time number
--- @param p6 boolean
--- @param p7 boolean
function TaskSmartFleeCoord(ped, x, y, z, distance, time, p6, p7) end

--- 
--- Makes a ped run away from another ped (fleeTarget).  
--- distance = ped will flee this distance.  
--- fleeTime = ped will flee for this amount of time, set to "-1" to flee forever  
--- 
--- @param ped Ped
--- @param fleeTarget Ped
--- @param distance number
--- @param fleeTime any
--- @param p4 boolean
--- @param p5 boolean
function TaskSmartFleePed(ped, fleeTarget, distance, fleeTime, p4, p5) end

--- 
--- scenarioName example: "WORLD_HUMAN_GUARD_STAND"  
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param scenarioName string
function TaskStandGuard(ped, x, y, z, heading, scenarioName) end

--- 
--- Makes the specified ped stand still for (time) milliseconds.  
--- 
--- @param ped Ped
--- @param time number
function TaskStandStill(ped, time) end

--- 
--- List of scenarioNames: pastebin.com/6mrYTdQv  
--- Also a few more listed at AI::TASK_START_SCENARIO_IN_PLACE just above.  
--- ---------------  
--- The first parameter in every scenario has always been a Ped of some sort. The second like TASK_START_SCENARIO_IN_PLACE is the name of the scenario.   
--- The next 4 parameters were harder to decipher. After viewing "hairdo_shop_mp.ysc.c4", and being confused from seeing the case in other scripts, they passed the first three of the arguments as one array from a function, and it looked like it was obviously x, y, and z.  
--- I haven't seen the sixth parameter go to or over 360, making me believe that it is rotation, but I really can't confirm anything.  
--- I have no idea what the last 3 parameters are, but I'll try to find out.  
--- -going on the last 3 parameters, they appear to always be "0, 0, 1"  
--- p6 -1 also used in scrips  
--- p7 used for sitting scenarios  
--- p8 teleports ped to position  
--- 
--- @param ped Ped
--- @param scenarioName string
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param duration number
--- @param sittingScenario boolean
--- @param teleport boolean
function TaskStartScenarioAtPosition(ped, scenarioName, x, y, z, heading, duration, sittingScenario, teleport) end

--- 
--- Plays a scenario on a Ped at their current location.  
--- unkDelay - Usually 0 or -1, doesn't seem to have any effect. Might be a delay between sequences.  
--- playEnterAnim - Plays the "Enter" anim if true, otherwise plays the "Exit" anim. Scenarios that don't have any "Enter" anims won't play if this is set to true.  
--- ----  
--- From "am_hold_up.ysc.c4" at line 339:  
--- AI::TASK_START_SCENARIO_IN_PLACE(NETWORK::NET_TO_PED(l_8D._f4), sub_adf(), 0, 1);  
--- I'm unsure of what the last two parameters are, however sub_adf() randomly returns 1 of 3 scenarios, those being:  
--- WORLD_HUMAN_SMOKING  
--- WORLD_HUMAN_HANG_OUT_STREET  
--- WORLD_HUMAN_STAND_MOBILE  
--- This makes sense, as these are what I commonly see when going by a liquor store.  
--- -------------------------  
--- List of scenarioNames: pastebin.com/6mrYTdQv  
--- (^ Thank you so fucking much for this)  
--- Also these:  
--- WORLD_FISH_FLEE  
--- DRIVE  
--- WORLD_HUMAN_HIKER  
--- WORLD_VEHICLE_ATTRACTOR  
--- WORLD_VEHICLE_BICYCLE_MOUNTAIN  
--- WORLD_VEHICLE_BIKE_OFF_ROAD_RACE  
--- WORLD_VEHICLE_BIKER  
--- WORLD_VEHICLE_CONSTRUCTION_PASSENGERS  
--- WORLD_VEHICLE_CONSTRUCTION_SOLO  
--- WORLD_VEHICLE_DRIVE_PASSENGERS  
--- WORLD_VEHICLE_DRIVE_SOLO  
--- WORLD_VEHICLE_EMPTY  
--- WORLD_VEHICLE_PARK_PARALLEL  
--- WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN  
--- WORLD_VEHICLE_POLICE_BIKE  
--- WORLD_VEHICLE_POLICE_CAR  
--- WORLD_VEHICLE_POLICE_NEXT_TO_CAR  
--- WORLD_VEHICLE_SALTON_DIRT_BIKE  
--- WORLD_VEHICLE_TRUCK_LOGS  
--- 
--- @param ped Ped
--- @param scenarioName string
--- @param unkDelay number
--- @param playEnterAnim boolean
function TaskStartScenarioInPlace(ped, scenarioName, unkDelay, playEnterAnim) end

--- 
--- Makes the ped run to take cover  
--- 
--- @param ped Ped
function TaskStayInCover(ped) end

--- 
--- Stealth kill action name hashes:  
--- stealth kills can be found here: Grand Theft Auto V\common.rpf\data\action\stealth_kills.meta  
--- ...  
--- {  
---     "ACT_stealth_kill_a",  
---     "ACT_stealth_kill_weapon",  
---     "ACT_stealth_kill_b",  
---     "ACT_stealth_kill_c",  
---     "ACT_stealth_kill_d",  
---     "ACT_stealth_kill_a_gardener"  
--- }  
--- Only known script using this native: fbi4_prep2  
--- EXAMPLE:  
--- ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_a"), 1f, 0);ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_knife"), 1f, 0);  
--- Also it may be important to note, that each time this task is called, it's followed by AI::CLEAR_PED_TASKS on the target  
--- 
--- @param killer Ped
--- @param target Ped
--- @param actionType Hash
--- @param p3 number
--- @param p4 any
function TaskStealthKill(killer, target, actionType, p3, p4) end

--- 
--- TODO: add hash from x360  
--- ^^^  
--- I got you, x360 Hash: 0x5A32D4B4.   
--- Note: Whoever named this I just compared it and the hash matches, it was the correct name thanks.   
--- Note: Alexander Blade, needs to fix this site or his code one, as when we do find the right name the server throws an error saying the name is already in use. AB is a legend coder, so I'm sure this is a simple fix for him.  
--- 
--- 
--- 
--- NativeDB Added Parameter 2: float p1
--- 
--- @param ped Ped
function TaskStopPhoneGestureAnimation(ped) end


--- @param ped Ped
--- @param p1 boolean
function TaskSwapWeapon(ped, p1) end

--- 
--- This function is called on peds in vehicles.  
--- anim: animation name  
--- p2, p3, p4: "sweep_low", "sweep_med" or "sweep_high"  
--- p5: no idea what it does but is usually -1  
--- 
--- @param ped Ped
--- @param anim string
--- @param p2 string
--- @param p3 string
--- @param p4 string
--- @param p5 number
--- @param vehicle Vehicle
--- @param p7 number
--- @param p8 number
function TaskSweepAimEntity(ped, anim, p2, p3, p4, p5, vehicle, p7, p8) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param p10 number
function TaskSweepAimPosition(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

--- 
--- AI::TASK_SYNCHRONIZED_SCENE(ped, scene, "creatures@rottweiler@in_vehicle@std_car", "get_in", 1000.0, -8.0, 4, 0, 0x447a0000, 0);  
--- Animations List : www.ls-multiplayer.com/dev/index.php?section=3  
--- 
--- @param ped Ped
--- @param scene number
--- @param animDictionary string
--- @param animationName string
--- @param blendInSpeed number
--- @param blendOutSpeed number
--- @param duration number
--- @param flag number
--- @param playbackRate number
--- @param p9 any
function TaskSynchronizedScene(ped, scene, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, p9) end

--- 
--- In every case of this native, I've only seen the first parameter passed as 0, although I believe it's a Ped after seeing tasks around it using 0. That's because it's used in a Sequence Task.  
--- The last 3 parameters are definitely coordinates after seeing them passed in other scripts, and even being used straight from the player's coordinates.  
--- ---  
--- It seems that - in the decompiled scripts - this native was used on a ped who was in a vehicle to throw a projectile out the window at the player. This is something any ped will naturally do if they have a throwable and they are doing driveby-combat (although not very accurately).  
--- It is possible, however, that this is how SWAT throws smoke grenades at the player when in cover.  
--- ----------------------------------------------------  
--- The first comment is right it definately is the ped as if you look in script finale_heist2b.c line 59628 in Xbox Scripts atleast you will see task_throw_projectile and the first param is Local_559[2 <14>] if you look above it a little bit line 59622 give_weapon_to_ped uses the same exact param Local_559[2 <14>] and we all know the first param of that native is ped. So it guaranteed has to be ped. 0 just may mean to use your ped by default for some reason.  
--- 
--- 
--- 
--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
function TaskThrowProjectile(ped, x, y, z) end

--- 
--- used in sequence task  
--- both parameters seems to be always 0  
--- 
--- @param p0 boolean
--- @param p1 boolean
function TaskToggleDuck(p0, p1) end

--- 
--- duration in milliseconds  
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param duration number
function TaskTurnPedToFaceCoord(ped, x, y, z, duration) end

--- 
--- duration: the amount of time in milliseconds to do the task. -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped  
--- 
--- @param ped Ped
--- @param entity Entity
--- @param duration number
function TaskTurnPedToFaceEntity(ped, entity, duration) end

--- 
--- Actually has 3 params, not 2.  
--- p0: Ped  
--- p1: int (or bool?)  
--- p2: int  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: Any p2
--- 
--- @param ped Ped
--- @param p1 number
function TaskUseMobilePhone(ped, p1) end


--- @param ped Ped
--- @param duration number
function TaskUseMobilePhoneTimed(ped, duration) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 any
function TaskUseNearestScenarioChainToCoord(p0, p1, p2, p3, p4, p5) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 any
function TaskUseNearestScenarioChainToCoordWarp(p0, p1, p2, p3, p4, p5) end

--- 
--- Updated variables  
--- An alternative to AI::TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP. Makes the ped walk to the scenario instead.  
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param distance number
--- @param duration number
function TaskUseNearestScenarioToCoord(ped, x, y, z, distance, duration) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param p5 any
function TaskUseNearestScenarioToCoordWarp(ped, x, y, z, radius, p5) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
function TaskVehicleAimAtCoord(ped, x, y, z) end


--- @param ped Ped
--- @param target Ped
function TaskVehicleAimAtPed(ped, target) end

--- 
--- chases targetEnt fast and aggressively  
--- --  
--- Makes ped (needs to be in vehicle) chase targetEnt.  
--- 
--- @param driver Ped
--- @param targetEnt Entity
function TaskVehicleChase(driver, targetEnt) end

--- 
--- info about driving modes: HTTP://gtaforums.com/topic/822314-guide-driving-styles/  
--- ---------------------------------------------------------------  
--- Passing P6 value as floating value didn't throw any errors, though unsure what is it exactly, looks like radius or something.  
--- P10 though, it is mentioned as float, however, I used bool and set it to true, that too worked.  
--- Here the e.g. code I used  
--- Function.Call(Hash.TASK_VEHICLE_DRIVE_TO_COORD, Ped, Vehicle, Cor X, Cor Y, Cor Z, 30f, 1f, Vehicle.GetHashCode(), 16777216, 1f, true);  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param x number
--- @param y number
--- @param z number
--- @param speed number
--- @param p6 any
--- @param vehicleModel Hash
--- @param drivingMode number
--- @param stopRange number
--- @param p10 number
function TaskVehicleDriveToCoord(ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, p10) end


--- @param ped Ped
--- @param vehicle Vehicle
--- @param x number
--- @param y number
--- @param z number
--- @param speed number
--- @param driveMode number
--- @param stopRange number
function TaskVehicleDriveToCoordLongrange(ped, vehicle, x, y, z, speed, driveMode, stopRange) end


--- @param ped Ped
--- @param vehicle Vehicle
--- @param speed number
--- @param drivingStyle number
function TaskVehicleDriveWander(ped, vehicle, speed, drivingStyle) end

--- 
--- Makes a ped follow the targetVehicle with <minDistance> in between.  
--- note: minDistance is ignored if drivingstyle is avoiding traffic, but Rushed is fine.  
--- Mode: The mode defines the relative position to the targetVehicle. The ped will try to position its vehicle there.  
--- -1 = behind  
--- 0 = ahead  
--- 1 = left  
--- 2 = right  
--- 3 = back left  
--- 4 = back right  
--- if the target is closer than noRoadsDistance, the driver will ignore pathing/roads and follow you directly.  
--- Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param targetVehicle Vehicle
--- @param mode number
--- @param speed number
--- @param drivingStyle number
--- @param minDistance number
--- @param p7 number
--- @param noRoadsDistance number
function TaskVehicleEscort(ped, vehicle, targetVehicle, mode, speed, drivingStyle, minDistance, p7, noRoadsDistance) end

--- 
--- Makes a ped in a vehicle follow an entity (ped, vehicle, etc.)  
--- Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/  
--- AI::_TASK_VEHICLE_FOLLOW(l_244[3/*1*/], l_268[3/*1*/], l_278, 40.0, 262144, 10);  
--- What is this known as in the decompiled scripts ffs. I need more examples. I've searched in all scripts for keywords suchas,  
--- TASK_VEHICLE_FOLLOW, FC545A9F0626E3B6, 0xFC545A9F0626E3B6, all the parameters in the above example even just search the last few params '40.0, 262144, 10' and couldnt find where this native is used in scripts at all unless whoever decompiled the scripts gave it a whack a.. name.  
--- 
--- @param driver Ped
--- @param vehicle Vehicle
--- @param targetEntity Entity
--- @param speed number
--- @param drivingStyle number
--- @param minDistance number
function TaskVehicleFollow(driver, vehicle, targetEntity, speed, drivingStyle, minDistance) end

--- 
--- task_vehicle_follow_waypoint_recording(Ped p0, Vehicle p1, string p2, int p3, int p4, int p5, int p6, float.x p7, float.Y p8, float.Z p9, bool p10, int p11)  
--- p2 = Waypoint recording string (found in update\update.rpf\x64\levels\gta5\waypointrec.rpf  
--- p3 = 786468  
--- p4 = 0  
--- p5 = 16  
--- p6 = -1 (angle?)  
--- p7/8/9 = usually v3.zero  
--- p10 = bool (repeat?)  
--- p11 = 1073741824  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param WPRecording string
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 boolean
--- @param p9 number
function TaskVehicleFollowWaypointRecording(ped, vehicle, WPRecording, p3, p4, p5, p6, p7, p8, p9) end

--- 
--- Differs from TASK_VEHICLE_DRIVE_TO_COORDS in that it will pick the shortest possible road route without taking one-way streets and other "road laws" into consideration.  
--- WARNING:  
--- A behaviorFlag value of 0 will result in a clunky, stupid driver!  
--- Recommended settings:  
--- speed = 30.0f,  
--- behaviorFlag = 156,   
--- stoppingRange = 5.0f;  
--- If you simply want to have your driver move to a fixed location, call it only once, or, when necessary in the event of interruption.   
--- If using this to continually follow a Ped who is on foot:  You will need to run this in a tick loop.  Call it in with the Ped's updated coordinates every 20 ticks or so and you will have one hell of a smart, fast-reacting NPC driver -- provided he doesn't get stuck.  If your update frequency is too fast, the Ped may not have enough time to figure his way out of being stuck, and thus, remain stuck.  One way around this would be to implement an "anti-stuck" mechanism, which allows the driver to realize he's stuck, temporarily pause the tick, unstuck, then resume the tick.  
--- EDIT:  This is being discussed in more detail at http://gtaforums.com/topic/818504-any-idea-on-how-to-make-peds-clever-and-insanely-fast-c/  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param x number
--- @param y number
--- @param z number
--- @param speed number
--- @param behaviorFlag number
--- @param stoppingRange number
function TaskVehicleGotoNavmesh(ped, vehicle, x, y, z, speed, behaviorFlag, stoppingRange) end

--- 
--- pilot, vehicle and altitude are rather self-explanatory.  
--- p4: is unused variable in the function.  
--- entityToFollow: you can provide a Vehicle entity or a Ped entity, the heli will protect them.  
--- 'targetSpeed':  The pilot will dip the nose AS MUCH AS POSSIBLE so as to reach this value AS FAST AS POSSIBLE.  As such, you'll want to modulate it as opposed to calling it via a hard-wired, constant #.  
--- 'radius' isn't just "stop within radius of X of target" like with ground vehicles.  In this case, the pilot will fly an entire circle around 'radius' and continue to do so.  
--- NOT CONFIRMED:  p7 appears to be a FlyingStyle enum.  Still investigating it as of this writing, but playing around with values here appears to result in different -behavior- as opposed to offsetting coordinates, altitude, target speed, etc.  
--- NOTE: If the pilot finds enemies, it will engage them until it kills them, but will return to protect the ped/vehicle given shortly thereafter.  
--- 
--- @param pilot Ped
--- @param vehicle Vehicle
--- @param entityToFollow Entity
--- @param targetSpeed number
--- @param p4 number
--- @param radius number
--- @param altitude number
--- @param p7 number
function TaskVehicleHeliProtect(pilot, vehicle, entityToFollow, targetSpeed, p4, radius, altitude, p7) end


--- @param p0 number
--- @param p1 number
--- @param veh Vehicle
--- @param p3 any
--- @param p4 number
--- @param p5 any
--- @param p6 number
--- @param p7 number
--- @param p8 boolean
function TaskVehicleMission(p0, p1, veh, p3, p4, p5, p6, p7, p8) end

--- 
--- Example from fm_mission_controller.c4:  
--- AI::TASK_VEHICLE_MISSION_COORS_TARGET(l_65E1, l_65E2, 324.84588623046875, 325.09619140625, 104.3525, 4, 15.0, 802987, 5.0, 5.0, 0);  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param x number
--- @param y number
--- @param z number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param p10 boolean
function TaskVehicleMissionCoorsTarget(ped, vehicle, x, y, z, p5, p6, p7, p8, p9, p10) end

--- 
--- Modes:  
--- 8= flees  
--- 1=drives around the ped  
--- 4=drives and stops near  
--- 7=follows  
--- 10=follows to the left  
--- 11=follows to the  right  
--- 12 = follows behind  
--- 13=follows ahead  
--- 14=follows, stop when near  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param pedTarget Ped
--- @param mode number
--- @param maxSpeed number
--- @param drivingStyle number
--- @param minDistance number
--- @param p7 number
--- @param p8 boolean
function TaskVehicleMissionPedTarget(ped, vehicle, pedTarget, mode, maxSpeed, drivingStyle, minDistance, p7, p8) end

--- 
--- Modes:  
--- 0 - ignore heading  
--- 1 - park forward  
--- 2 - park backwards  
--- Depending on the angle of approach, the vehicle can park at the specified heading or at its exact opposite (-180) angle.  
--- Radius seems to define how close the vehicle has to be -after parking- to the position for this task considered completed. If the value is too small, the vehicle will try to park again until it's exactly where it should be. 20.0 Works well but lower values don't, like the radius is measured in centimeters or something.  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param mode number
--- @param radius number
--- @param keepEngineOn boolean
function TaskVehiclePark(ped, vehicle, x, y, z, heading, mode, radius, keepEngineOn) end

--- 
--- Most probably plays a specific animation on vehicle. For example getting chop out of van etc...  
--- Here's how its used -   
--- AI::TASK_VEHICLE_PLAY_ANIM(l_325, "rcmnigel1b", "idle_speedo");  
--- AI::TASK_VEHICLE_PLAY_ANIM(l_556[0/*1*/], "missfra0_chop_drhome", "InCar_GetOutofBack_Speedo");  
--- FYI : Speedo is the name of van in which chop was put in the mission.  
--- 
--- 
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param vehicle Vehicle
--- @param animation_set string
--- @param animation_name string
function TaskVehiclePlayAnim(vehicle, animation_set, animation_name) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param p4 number
function TaskVehicleShootAtCoord(ped, x, y, z, p4) end


--- @param ped Ped
--- @param target Ped
--- @param p2 number
function TaskVehicleShootAtPed(ped, target, p2) end

--- 
--- '1   
--- '3 - brake + reverse  
--- '4 - turn left 90 + braking  
--- '5 - turn right 90 + braking  
--- '6 - brake strong (handbrake?) until time ends  
--- '7 - turn left + accelerate  
--- '7 - turn right + accelerate  
--- '9 - weak acceleration  
--- '10 - turn left + restore wheel pos to center in the end  
--- '11 - turn right + restore wheel pos to center in the end  
--- '13 - turn left + go reverse  
--- '14 - turn left + go reverse  
--- '16 - crash the game after like 2 seconds :)  
--- '17 - keep actual state, game crashed after few tries  
--- '18 - game crash  
--- '19 - strong brake + turn left/right  
--- '20 - weak brake + turn left then turn right  
--- '21 - weak brake + turn right then turn left  
--- '22 - brake + reverse  
--- '23 - accelerate fast  
--- '24   
--- '25 - brake turning left then when almost stopping it turns left more  
--- '26 - brake turning right then when almost stopping it turns right more  
--- '27 - brake until car stop or until time ends  
--- '28 - brake + strong reverse acceleration  
--- '30 - performs a burnout (brake until stop + brake and accelerate)  
--- '31 - accelerate + handbrake  
--- '32 - accelerate very strong  
--- Seems to be this:  
--- Works on NPCs, but overrides their current task. If inside a task sequence (and not being the last task), "time" will work, otherwise the task will be performed forever until tasked with something else  
--- 
--- @param driver Ped
--- @param vehicle Vehicle
--- @param action number
--- @param time number
function TaskVehicleTempAction(driver, vehicle, action, time) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param minimalLength number
--- @param timeBetweenWalks number
function TaskWanderInArea(ped, x, y, z, radius, minimalLength, timeBetweenWalks) end

--- 
--- Makes ped walk around the area.  
--- set p1 to 10.0f and p2 to 10 if you want the ped to walk anywhere without a duration.  
--- 
--- @param ped Ped
--- @param p1 number
--- @param p2 number
function TaskWanderStandard(ped, p1, p2) end

--- 
--- Seat Numbers  
--- -------------------------------  
--- Driver = -1  
--- Any = -2  
--- Left-Rear = 1  
--- Right-Front = 0  
--- Right-Rear = 2  
--- Extra seats = 3-14(This may differ from vehicle type e.g. Firetruck Rear Stand, Ambulance Rear)  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param seat number
function TaskWarpPedIntoVehicle(ped, vehicle, seat) end

--- 
--- EX: Function.Call(Ped1, Ped2, Time, 0);  
--- The last parameter is always 0 for some reason I do not know. The first parameter is the pedestrian who will writhe to the pedestrian in the other parameter. The third paremeter is how long until the Writhe task ends. When the task ends, the ped will die. If set to -1, he will not die automatically, and the task will continue until something causes it to end. This can be being touched by an entity, being shot, explosion, going into ragdoll, having task cleared. Anything that ends the current task will kill the ped at this point.  
--- MulleDK19: Third parameter does not appear to be time. The last parameter is not implemented (It's not used, regardless of value).  
--- 
--- 
--- 
--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- 
--- @param ped Ped
--- @param target Ped
--- @param time number
--- @param p3 number
function TaskWrithe(ped, target, time, p3) end


--- @param p0 Ped
--- @param p1 Ped
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 boolean
function UpdateTaskAimGunScriptedTarget(p0, p1, p2, p3, p4, p5) end


--- @param ped Ped
function UncuffPed(ped) end


--- @param ped Ped
--- @param entity Entity
function UpdateTaskSweepAimEntity(ped, entity) end


--- @param ped Ped
--- @param duration number
function UpdateTaskHandsUpDuration(ped, duration) end


--- @param name string
--- @param p1 boolean
--- @param p2 number
--- @param p3 number
function UseWaypointRecordingAsAssistedMovementRoute(name, p1, p2, p3) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
function UpdateTaskSweepAimPosition(p0, p1, p2, p3) end


--- @param vehicle Vehicle
function VehicleWaypointPlaybackPause(vehicle) end


--- @param vehicle Vehicle
--- @param speed number
function VehicleWaypointPlaybackOverrideSpeed(vehicle, speed) end


--- @param vehicle Vehicle
function VehicleWaypointPlaybackUseDefaultSpeed(vehicle) end


--- @param vehicle Vehicle
function VehicleWaypointPlaybackResume(vehicle) end


--- @param p0 any
--- @return boolean
function WaypointPlaybackGetIsPaused(p0) end


--- @param p0 any
--- @param p1 number
--- @param p2 boolean
function WaypointPlaybackOverrideSpeed(p0, p1, p2) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function WaypointPlaybackPause(p0, p1, p2) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 any
--- @param p3 any
function WaypointPlaybackResume(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 boolean
function WaypointPlaybackStartAimingAtCoord(p0, p1, p2, p3, p4) end


--- @param p0 any
--- @param p1 any
--- @param p2 boolean
function WaypointPlaybackStartAimingAtPed(p0, p1, p2) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 boolean
--- @param p5 any
function WaypointPlaybackStartShootingAtCoord(p0, p1, p2, p3, p4, p5) end


--- @param p0 any
--- @param p1 any
--- @param p2 boolean
--- @param p3 any
function WaypointPlaybackStartShootingAtPed(p0, p1, p2, p3) end

