
--- @param p0 any
function TaskClearDefensiveArea(p0) end

--- 
--- Not clear what it actually does, but here's how script uses it -   
--- if (OBJECT::HAS_PICKUP_BEEN_COLLECTED(...)   
--- {  
--- 	if(ENTITY::DOES_ENTITY_EXIST(PLAYER::PLAYER_PED_ID()))  
--- 	{  
--- AI::TASK_CLEAR_LOOK_AT(PLAYER::PLAYER_PED_ID());  
--- 	}  
--- 	...  
--- }  
--- Another one where it doesn't "look" at current player -   
--- AI::TASK_PLAY_ANIM(l_3ED, "missheist_agency2aig_2", "look_at_phone_a", 1000.0, -2.0, -1, 48, v_2, 0, 0, 0);  
--- PED::_2208438012482A1A(l_3ED, 0, 0);  
--- AI::TASK_CLEAR_LOOK_AT(l_3ED);  
--- 
--- @param ped Ped
function TaskClearLookAt(ped) end

--- 
--- Climbs or vaults the nearest thing.  
--- 
--- @param ped Ped
--- @param unused boolean
function TaskClimb(ped, unused) end


--- @param ped Ped
--- @param p1 number
function TaskClimbLadder(ped, p1) end

--- 
--- Despite its name, it only attacks ONE hated target. The one closest hated target.  
--- p2 seems to be always 0  
--- 
--- @param ped Ped
--- @param radius number
--- @param p2 number
function TaskCombatHatedTargetsAroundPed(ped, radius, p2) end


--- @param p0 any
--- @param p1 number
--- @param p2 any
--- @param p3 any
function TaskCombatHatedTargetsAroundPedTimed(p0, p1, p2, p3) end

--- 
--- Despite its name, it only attacks ONE hated target. The one closest to the specified position.  
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param p5 any
function TaskCombatHatedTargetsInArea(ped, x, y, z, radius, p5) end

--- 
--- Makes the specified ped attack the target ped.  
--- p2 should be 0  
--- p3 should be 16  
--- 
--- @param ped Ped
--- @param targetPed Ped
--- @param p2 number
--- @param p3 number
function TaskCombatPed(ped, targetPed, p2, p3) end


--- @param p0 any
--- @param ped Ped
--- @param p2 number
--- @param p3 any
function TaskCombatPedTimed(p0, ped, p2, p3) end


--- @param ped Ped
--- @param duration number
function TaskCower(ped, duration) end

--- 
--- Example:  
--- AI::TASK_DRIVE_BY(l_467[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});  
--- Needs working example. Doesn't seem to do anything.  
--- I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.  
--- I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.  
--- I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.  
--- 
--- @param driverPed Ped
--- @param targetPed Ped
--- @param targetVehicle Vehicle
--- @param targetX number
--- @param targetY number
--- @param targetZ number
--- @param distanceToShoot number
--- @param pedAccuracy number
--- @param p8 boolean
--- @param firingPattern Hash
function TaskDriveBy(driverPed, targetPed, targetVehicle, targetX, targetY, targetZ, distanceToShoot, pedAccuracy, p8, firingPattern) end

--- 
--- speed 1.0 = walk, 2.0 = run  
--- p5 1 = normal, 3 = teleport to vehicle, 16 = teleport directly into vehicle  
--- p6 is always 0  
--- Usage of seat   
--- -1 = driver  
--- 0 = passenger  
--- 1 = left back seat  
--- 2 = right back seat  
--- 3 = outside left  
--- 4 = outside right  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param timeout number
--- @param seat number
--- @param speed number
--- @param flag number
--- @param p6 any
function TaskEnterVehicle(ped, vehicle, timeout, seat, speed, flag, p6) end


--- @param vehicle Vehicle
function TaskEveryoneLeaveVehicle(vehicle) end


--- @param p0 any
--- @param p1 any
--- @param p2 number
--- @param p3 number
--- @param p4 number
function TaskExitCover(p0, p1, p2, p3, p4) end

--- 
--- MulleKD19: Adds a new point to the current point route. Call TASK_FLUSH_ROUTE before the first call to this. Call TASK_FOLLOW_POINT_ROUTE to make the Ped go the route.  
--- A maximum of 8 points can be added.  
--- 
--- @param x number
--- @param y number
--- @param z number
function TaskExtendRoute(x, y, z) end

--- 
--- MulleKD19: Clears the current point route. Call this before TASK_EXTEND_ROUTE and TASK_FOLLOW_POINT_ROUTE.  
--- 
function TaskFlushRoute() end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param speed number
--- @param timeout number
--- @param unkFloat number
--- @param unkInt number
--- @param unkX number
--- @param unkY number
--- @param unkZ number
--- @param unk_40000f number
function TaskFollowNavMeshToCoordAdvanced(ped, x, y, z, speed, timeout, unkFloat, unkInt, unkX, unkY, unkZ, unk_40000f) end

--- 
--- If no timeout, set timeout to -1.  
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param speed number
--- @param timeout number
--- @param stoppingRange number
--- @param persistFollowing boolean
--- @param unk number
function TaskFollowNavMeshToCoord(ped, x, y, z, speed, timeout, stoppingRange, persistFollowing, unk) end

--- 
--- p6 always -1  
--- p7 always 10.0  
--- p8 always 1  
--- 
--- @param ped Ped
--- @param entity Entity
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
--- @param movementSpeed number
--- @param timeout number
--- @param stoppingRange number
--- @param persistFollowing boolean
function TaskFollowToOffsetOfEntity(ped, entity, offsetX, offsetY, offsetZ, movementSpeed, timeout, stoppingRange, persistFollowing) end

--- 
--- MulleKD19: Makes the ped go on the created point route.  
--- ped: The ped to give the task to.  
--- speed: The speed to move at in m/s.  
--- int: Unknown. Can be 0, 1, 2 or 3.  
--- Example:  
--- TASK_FLUSH_ROUTE();  
--- TASK_EXTEND_ROUTE(0f, 0f, 70f);  
--- TASK_EXTEND_ROUTE(10f, 0f, 70f);  
--- TASK_EXTEND_ROUTE(10f, 10f, 70f);  
--- TASK_FOLLOW_POINT_ROUTE(GET_PLAYER_PED(), 1f, 0);  
--- 
--- @param ped Ped
--- @param speed number
--- @param unknown number
function TaskFollowPointRoute(ped, speed, unknown) end

--- 
--- p2 always false  
--- [30/03/2017] ins1de :  
--- See dev-c.com/nativedb/func/info/f28965d04f570dca  
--- 
--- @param ped Ped
--- @param state Hash
--- @param p2 boolean
function TaskForceMotionState(ped, state, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
function TaskFollowWaypointRecording(p0, p1, p2, p3, p4) end

--- 
--- Jenkins of this native is 0x4293601F. This is the actual name.  
--- 
--- @param ped Ped
--- @param boat Vehicle
function TaskGetOffBoat(ped, boat) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param speed number
--- @param timeout number
--- @param targetHeading number
--- @param distanceToSlide number
function TaskGoStraightToCoord(ped, x, y, z, speed, timeout, targetHeading, distanceToSlide) end


--- @param entity1 Entity
--- @param entity2 Entity
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 any
function TaskGoStraightToCoordRelativeToEntity(entity1, entity2, p2, p3, p4, p5, p6) end

--- 
--- The ped will walk or run towards goToLocation, aiming towards goToLocation or focusLocation (depending on the aimingFlag) and shooting if shootAtEnemies = true to any enemy in his path.  
--- If the ped is closer than noRoadsDistance, the ped will ignore pathing/navmesh and go towards goToLocation directly. This could cause the ped to get stuck behind tall walls if the goToLocation is on the other side. To avoid this, use 0.0f and the ped will always use pathing/navmesh to reach his destination.  
--- If the speed is set to 0.0f, the ped will just stand there while aiming, if set to 1.0f he will walk while aiming, 2.0f will run while aiming.  
--- The ped will stop aiming when he is closer than distanceToStopAt to goToLocation.  
--- I still can't figure out what unkTrue is used for. I don't notice any difference if I set it to false but in the decompiled scripts is always true.  
--- I think that unkFlag, like the driving styles, could be a flag that "work as a list of 32 bits converted to a decimal integer. Each bit acts as a flag, and enables or disables a function". What leads me to this conclusion is the fact that in the decompiled scripts, unkFlag takes values like: 0, 1, 5 (101 in binary) and 4097 (4096 + 1 or 1000000000001 in binary). For now, I don't know what behavior enable or disable this possible flag so I leave it at 0.  
--- Note: After some testing, using unkFlag = 16 (0x10) enables the use of sidewalks while moving towards goToLocation.  
--- The aimingFlag takes 2 values: 0 to aim at the focusLocation, 1 to aim at where the ped is heading (goToLocation).  
--- Example:  
--- enum AimFlag  
--- {  
---    AimAtFocusLocation,  
---    AimAtGoToLocation  
--- };  
--- Vector3 goToLocation1 = { 996.2867f, 0, -2143.044f, 0, 28.4763f, 0 }; // remember the padding.  
--- Vector3 goToLocation2 = { 990.2867f, 0, -2140.044f, 0, 28.4763f, 0 }; // remember the padding.  
--- Vector3 focusLocation = { 994.3478f, 0, -2136.118f, 0, 29.2463f, 0 }; // the coord z should be a little higher, around +1.0f to avoid aiming at the ground  
--- // 1st example  
--- AI::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation1.x, goToLocation1.y, goToLocation1.z, focusLocation.x, focusLocation.y, focusLocation.z, 2.0f /*run*/, true /*shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtGoToLocation, -957453492 /*FullAuto pattern*/);  
--- // 2nd example  
--- AI::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation2.x, goToLocation2.y, goToLocation2.z, focusLocation.x, focusLocation.y, focusLocation.z, 1.0f /*walk*/, false /*don't shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtFocusLocation, -957453492 /*FullAuto pattern*/);  
--- 1st example: The ped (pedhandle) will run towards goToLocation1. While running and aiming towards goToLocation1, the ped will shoot on sight to any enemy in his path, using "FullAuto" firing pattern. The ped will stop once he is closer than distanceToStopAt to goToLocation1.  
--- 2nd example: The ped will walk towards goToLocation2. This time, while walking towards goToLocation2 and aiming at focusLocation, the ped will point his weapon on sight to any enemy in his path without shooting. The ped will stop once he is closer than distanceToStopAt to goToLocation2.  
--- 
--- @param pedHandle Ped
--- @param goToLocationX number
--- @param goToLocationY number
--- @param goToLocationZ number
--- @param focusLocationX number
--- @param focusLocationY number
--- @param focusLocationZ number
--- @param speed number
--- @param shootAtEnemies boolean
--- @param distanceToStopAt number
--- @param noRoadsDistance number
--- @param unkTrue boolean
--- @param unkFlag number
--- @param aimingFlag number
--- @param firingPattern Hash
function TaskGoToCoordAndAimAtHatedEntitiesNearCoord(pedHandle, goToLocationX, goToLocationY, goToLocationZ, focusLocationX, focusLocationY, focusLocationZ, speed, shootAtEnemies, distanceToStopAt, noRoadsDistance, unkTrue, unkFlag, aimingFlag, firingPattern) end

--- 
--- example from fm_mission_controller  
--- AI::TASK_GO_TO_COORD_ANY_MEANS(l_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);  
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param speed number
--- @param p5 any
--- @param p6 boolean
--- @param walkingStyle number
--- @param p8 number
function TaskGoToCoordAnyMeans(ped, x, y, z, speed, p5, p6, walkingStyle, p8) end

--- 
--- NativeDB Added Parameter 13: Any p12
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param speed number
--- @param p5 any
--- @param p6 boolean
--- @param walkingStyle number
--- @param p8 number
--- @param p9 any
--- @param p10 any
--- @param p11 any
function TaskGoToCoordAnyMeansExtraParams(ped, x, y, z, speed, p5, p6, walkingStyle, p8, p9, p10, p11) end

--- 
--- NativeDB Added Parameter 14: Any p13
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param speed number
--- @param p5 any
--- @param p6 boolean
--- @param walkingStyle number
--- @param p8 number
--- @param p9 any
--- @param p10 any
--- @param p11 any
--- @param p12 any
function TaskGoToCoordAnyMeansExtraParamsWithCruiseSpeed(ped, x, y, z, speed, p5, p6, walkingStyle, p8, p9, p10, p11, p12) end

--- Will make the ped move to a coordinate while aiming (and optionally shooting) at given coordinates.
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param aimAtX number
--- @param aimAtY number
--- @param aimAtZ number
--- @param moveSpeed number
--- @param shoot boolean
--- @param p9 number
--- @param p10 number
--- @param p11 boolean
--- @param flags any
--- @param p13 boolean
--- @param firingPattern Hash
function TaskGoToCoordWhileAimingAtCoord(ped, x, y, z, aimAtX, aimAtY, aimAtZ, moveSpeed, shoot, p9, p10, p11, flags, p13, firingPattern) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 any
--- @param p5 number
--- @param p6 boolean
--- @param p7 number
--- @param p8 number
--- @param p9 boolean
--- @param p10 any
--- @param p11 boolean
--- @param p12 any
--- @param p13 any
function TaskGoToCoordWhileAimingAtEntity(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13) end

--- 
--- The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0  
--- Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.  
--- Example: AI::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)  
--- Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).  
--- 
--- @param entity Entity
--- @param target Entity
--- @param duration number
--- @param distance number
--- @param speed number
--- @param p5 number
--- @param p6 number
function TaskGoToEntity(entity, target, duration, distance, speed, p5, p6) end


--- @param p0 any
--- @param p1 any
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 boolean
--- @param p7 number
--- @param p8 number
--- @param p9 boolean
--- @param p10 boolean
--- @param p11 any
function TaskGoToEntityWhileAimingAtCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

--- 
--- shootatEntity:  
--- If true, peds will shoot at Entity till it is dead.  
--- If false, peds will just walk till they reach the entity and will cease shooting.  
--- 
--- @param ped Ped
--- @param entityToWalkTo Entity
--- @param entityToAimAt Entity
--- @param speed number
--- @param shootatEntity boolean
--- @param p5 number
--- @param p6 number
--- @param p7 boolean
--- @param p8 boolean
--- @param firingPattern Hash
function TaskGoToEntityWhileAimingAtEntity(ped, entityToWalkTo, entityToAimAt, speed, shootatEntity, p5, p6, p7, p8, firingPattern) end

--- 
--- eg  
--- AI::TASK_GOTO_ENTITY_AIMING(v_2, PLAYER::PLAYER_PED_ID(), 5.0, 25.0);  
--- 		ped = Ped you want to perform this task.  
--- 		target = the Entity they should aim at.  
--- 		distanceToStopAt = distance from the target, where the ped should stop to aim.  
--- 		StartAimingDist = distance where the ped should start to aim.  
--- 
--- @param ped Ped
--- @param target Entity
--- @param distanceToStopAt number
--- @param StartAimingDist number
function TaskGotoEntityAiming(ped, target, distanceToStopAt, StartAimingDist) end


--- @param ped Ped
--- @param p1 any
--- @param p2 any
--- @param x number
--- @param y number
--- @param z number
--- @param duration number
function TaskGotoEntityOffset(ped, p1, p2, x, y, z, duration) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 any
function TaskGuardAssignedDefensiveArea(p0, p1, p2, p3, p4, p5, p6) end


--- @param ped Ped
--- @param entity Entity
--- @param duration number
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param moveBlendRatio number
--- @param useNavmesh boolean
function TaskGotoEntityOffsetXy(ped, entity, duration, xOffset, yOffset, zOffset, moveBlendRatio, useNavmesh) end

--- 
--- p0 - Guessing PedID  
--- p1, p2, p3 - XYZ?  
--- p4 - ???  
--- p5 - Maybe the size of sphere from XYZ?  
--- p6 - ???  
--- p7, p8, p9 - XYZ again?  
--- p10 - Maybe the size of sphere from second XYZ?  
--- 
--- @param p0 Ped
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 any
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param p10 number
function TaskGuardSphereDefensiveArea(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

--- 
--- From re_prisonvanbreak:  
--- AI::TASK_GUARD_CURRENT_POSITION(l_DD, 35.0, 35.0, 1);  
--- 
--- @param p0 Ped
--- @param p1 number
--- @param p2 number
--- @param p3 boolean
function TaskGuardCurrentPosition(p0, p1, p2, p3) end

--- 
--- Ped pilot should be in a heli.  
--- EntityToFollow can be a vehicle or Ped.  
--- x,y,z appear to be how close to the EntityToFollow the heli should be. Scripts use 0.0, 0.0, 80.0. Then the heli tries to position itself 80 units above the EntityToFollow. If you reduce it to -5.0, it tries to go below (if the EntityToFollow is a heli or plane)  
--- NOTE: If the pilot finds enemies, it will engage them, then remain there idle, not continuing to chase the Entity given.  
--- 
--- @param pilot Ped
--- @param entityToFollow Entity
--- @param x number
--- @param y number
--- @param z number
function TaskHeliChase(pilot, entityToFollow, x, y, z) end

--- 
--- In the scripts, p3 was always -1.  
--- p3 seems to be duration or timeout of turn animation.  
--- Also facingPed can be 0 or -1 so ped will just raise hands up.  
--- 
--- @param ped Ped
--- @param duration number
--- @param facingPed Ped
--- @param p3 number
--- @param p4 boolean
function TaskHandsUp(ped, duration, facingPed, p3, p4) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param pilot Ped
--- @param heli1 Vehicle
--- @param heli2 Vehicle
--- @param p3 number
--- @param p4 number
--- @param p5 number
function TaskHeliEscortHeli(pilot, heli1, heli2, p3, p4, p5) end

--- 
--- Definition is wrong. This has 4 parameters (Not sure when they were added. v350 has 2, v678 has 4).  
--- v350: Ped ped, bool unused  
--- v678: Ped ped, bool unused, bool flag1, bool flag2  
--- flag1 = super jump, flag2 = do nothing if flag1 is false and doubles super jump height if flag1 is true.  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: Any p2
--- NativeDB Added Parameter 4: Any p3
--- 
--- @param ped Ped
--- @param unused boolean
function TaskJump(ped, unused) end

--- 
--- EDITED (8/16/2017)  
--- DESCRIPTION:  
--- Allow a ped to fly to a specific destination.  
--- USAGE:  
--- -- REQUIRED --  
--- • pilot = The ped flying the aircraft.  
--- • aircraft = The aircraft the pilot is flying.  
--- -- OPTIONAL -- [atleast 1 must be assigned]  
--- • targetVehicle = The vehicle the pilot will target.  
--- • targetPed = The ped the pilot will target.  
--- • destinationX, destinationY, destinationZ = The location the pilot will target.  
--- -- LOGIC --  
--- • missionFlag = The type of mission.  
--- • maxSpeed = The speed in mph that the pilot will limit his/her self to while flying.  
--- • landingRadius = The distance from the destination that the pilot must be to land.  
--- • targetHeading = The heading that the pilot will try to achieve while flying.  
--- • unk1, unk2 = Set to -1 and it will be okay.  
--- • unk3 = I'm almost sure this is a vehicle record/waypoint recording hash. A value of -1 is for none. Maybe it's a float? Idk.  
--- • landingFlags = Bit flags used for landing. All I know is:  
--- 0 = Hover over the destination.  
--- 32 = Land on destination.  
--- 1024 = Erratic, crash into nearby obstacles.  
--- 4096 = Rushed movement + Hover over destination  
--- Known Mission Types:  
--- 4 = FlyToCoord  
--- 8 = FleeFromPed  
--- 9 = CircleAroundTarget  
--- 10 = CopyTargetHeading  
--- 20 = LandNearPed  
--- 21 = Crash  
--- Example C#:  
--- Function.Call(Hash.TASK_HELI_MISSION, driver, heli, 0, 0, position.X, position.Y, position.Z, 4, 50.0, 10.0, (position - heli.Position).ToHeading(), -1, -1, -1, 32);  
--- OLD USAGE: pastebin.com/ndkSjaaW  
--- 
--- @param pilot Ped
--- @param aircraft Vehicle
--- @param targetVehicle Vehicle
--- @param targetPed Ped
--- @param destinationX number
--- @param destinationY number
--- @param destinationZ number
--- @param missionFlag number
--- @param maxSpeed number
--- @param landingRadius number
--- @param targetHeading number
--- @param unk1 number
--- @param unk2 number
--- @param unk3 Hash
--- @param landingFlags number
function TaskHeliMission(pilot, aircraft, targetVehicle, targetPed, destinationX, destinationY, destinationZ, missionFlag, maxSpeed, landingRadius, targetHeading, unk1, unk2, unk3, landingFlags) end

--- 
--- Flags from decompiled scripts:  
--- 0 = normal exit and closes door.  
--- 1 = normal exit and closes door.  
--- 16 = teleports outside, door kept closed.  
--- 64 = normal exit and closes door, maybe a bit slower animation than 0.  
--- 256 = normal exit but does not close the door.  
--- 4160 = ped is throwing himself out, even when the vehicle is still.  
--- 262144 = ped moves to passenger seat first, then exits normally  
--- Others to be tried out: 320, 512, 131072.  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param flags number
function TaskLeaveVehicle(ped, vehicle, flags) end


--- @param ped Ped
--- @param p1 number
--- @param p2 number
function TaskLeaveAnyVehicle(ped, p1, p2) end

--- 
--- param3: duration in ms, use -1 to look forever  
--- param4: using 2048 is fine  
--- param5: using 3 is fine  
--- 
--- @param ped Ped
--- @param lookAt Entity
--- @param duration number
--- @param unknown1 number
--- @param unknown2 number
function TaskLookAtEntity(ped, lookAt, duration, unknown1, unknown2) end

--- 
--- p5 = 0, p6 = 2  
--- 
--- @param entity Entity
--- @param x number
--- @param y number
--- @param z number
--- @param duration number
--- @param p5 any
--- @param p6 any
function TaskLookAtCoord(entity, x, y, z, duration, p5, p6) end

--- 
--- Example:  
--- AI::_2D537BA194896636(PLAYER::PLAYER_PED_ID(), "arm_wrestling_sweep_paired_a_rev3", 0.0, 1, "mini@arm_wrestling", 0);  
--- 
--- @param ped Ped
--- @param task string
--- @param multiplier number
--- @param p3 boolean
--- @param animDict string
--- @param flags number
function TaskMoveNetworkByName(ped, task, multiplier, p3, animDict, flags) end

--- 
--- Example:  
--- AI::_D5B35BEA41919ACB(PLAYER::PLAYER_PED_ID(), "minigame_tattoo_michael_parts", 324.13, 181.29, 102.6, 0.0, 0.0, 22.32, 2, 0, 0, 0, 0);  
--- 
--- @param ped Ped
--- @param p1 string
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 any
--- @param p9 number
--- @param p10 boolean
--- @param animDict string
--- @param flags number
function TaskMoveNetworkAdvancedByName(ped, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, animDict, flags) end


--- @param ped Ped
--- @param vehicle Vehicle
--- @param timeOut number
--- @param doorIndex number
--- @param speed number
function TaskOpenVehicleDoor(ped, vehicle, timeOut, doorIndex, speed) end

--- 
--- Used only once in the scripts (am_mp_nightclub)
--- 
--- NativeDB Introduced: v1493
--- 
--- @param ped Ped
--- @param p1 string
--- @param data any
--- @param p3 number
--- @param p4 boolean
--- @param animDict string
--- @param flags number
function TaskMoveNetworkScripted(ped, p1, data, p3, p4, animDict, flags) end

--- 
--- makes ped parachute to coords x y z. Works well with PATHFIND::GET_SAFE_COORD_FOR_PED  
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
function TaskParachuteToTarget(ped, x, y, z) end

--- 
--- This function has a third parameter as well (bool).  
--- Second parameter is unused.  
--- seconds parameter was for jetpack in the early stages of gta and the hard coded code is now removed  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: BOOL p2
--- 
--- @param ped Ped
--- @param p1 boolean
function TaskParachute(ped, p1) end

--- This tasks the ped to do nothing for the specified amount of miliseconds.
--- This is useful if you want to add a delay between tasks when using a sequence task.
--- @param ped Ped
--- @param ms number
function TaskPause(ped, ms) end

--- 
--- After looking at some scripts the second parameter seems to be an id of some kind. Here are some I found from some R* scripts:  
--- "miss_Tower_01" (this went from 01 - 10)  
--- "miss_Ass0" (0, 4, 6, 3)  
--- "MISS_PATROL_8"  
--- I think they're patrol routes, but I'm not sure. And I believe the 3rd parameter is a BOOL, but I can't confirm other than only seeing 0 and 1 being passed.  
--- As far as I can see the patrol routes names such as "miss_Ass0" have been defined earlier in the scripts. This leads me to believe we can defined our own new patrol routes by following the same approach.   
--- From the scripts  
---     AI::OPEN_PATROL_ROUTE("miss_Ass0");  
---     AI::ADD_PATROL_ROUTE_NODE(0, "WORLD_HUMAN_GUARD_STAND", l_738[0/*3*/], -139.4076690673828, -993.4732055664062, 26.2754, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));  
---     AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_738[1/*3*/], -116.1391830444336, -987.4984130859375, 26.38541030883789, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));  
---     AI::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", l_738[2/*3*/], -128.46847534179688, -979.0340576171875, 26.2754, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));  
---     AI::ADD_PATROL_ROUTE_LINK(0, 1);  
---     AI::ADD_PATROL_ROUTE_LINK(1, 2);  
---     AI::ADD_PATROL_ROUTE_LINK(2, 0);  
---     AI::CLOSE_PATROL_ROUTE();  
---     AI::CREATE_PATROL_ROUTE();  
--- 
--- @param ped Ped
--- @param p1 string
--- @param p2 any
--- @param p3 boolean
--- @param p4 boolean
function TaskPatrol(ped, p1, p2, p3, p4) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param duration number
function TaskPedSlideToCoord(ped, x, y, z, heading, duration) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param p5 number
--- @param p6 number
function TaskPedSlideToCoordHdgRate(ped, x, y, z, heading, p5, p6) end

--- 
--- NativeDB Return Type: void
--- 
--- @param ped Ped
--- @param taskSequenceId number
--- @return any
function TaskPerformSequence(ped, taskSequenceId) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function TaskPerformSequenceFromProgress(p0, p1, p2, p3) end


--- @param ped Ped
--- @param taskSequenceId number
function TaskPerformSequenceLocally(ped, taskSequenceId) end


--- @param pilot Ped
--- @param entityToFollow Entity
--- @param x number
--- @param y number
--- @param z number
function TaskPlaneChase(pilot, entityToFollow, x, y, z) end

--- 
--- Function.Call(Hash.TASK_PLANE_LAND, pilot, selectedAirplane, runwayStartPoint.X, runwayStartPoint.Y, runwayStartPoint.Z, runwayEndPoint.X, runwayEndPoint.Y, runwayEndPoint.Z);  
--- 
--- @param pilot Ped
--- @param plane Vehicle
--- @param runwayStartX number
--- @param runwayStartY number
--- @param runwayStartZ number
--- @param runwayEndX number
--- @param runwayEndY number
--- @param runwayEndZ number
function TaskPlaneLand(pilot, plane, runwayStartX, runwayStartY, runwayStartZ, runwayEndX, runwayEndY, runwayEndZ) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param p6 any
--- @param p7 any
--- @param p8 any
--- @param p9 any
function TaskPlaneGotoPreciseVtol(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param p6 any
function TaskPlaneTaxi(p0, p1, p2, p3, p4, p5, p6) end

--- 
--- EDITED (7/13/2017)  
--- NOTE: If you want air combat, AI::TASK_COMBAT_PED (while your pilot is in an aircraft) also does the same thing as this native.  
--- DESCRIPTION:  
--- Ever wish your buddy could shoot down one of your enemies for you? Ever wanted an auto-pilot? Well look no further! This is the native for you! (Ped intelligence may vary)  
--- USAGE:  
--- -- REQUIRED --  
--- • pilot = The ped flying the aircraft.  
--- • aircraft = The aircraft the pilot is flying  
--- -- OPTIONAL -- [atleast 1 must be assigned]  
--- • targetVehicle = The vehicle the pilot will target.  
--- • targetPed = The ped the pilot will target.  
--- • destinationX, destinationY, destinationZ = The location the pilot will target.  
--- -- LOGIC --  
--- • missionFlag = The type of mission. pastebin.com/R8x73dbv  
--- • angularDrag = The higher the value, the slower the plane will rotate. Value ranges from 0 - Infinity.  
--- • unk = Set to 0, and you'll be fine.  
--- • targetHeading = The target angle (from world space north) that the pilot will try to acheive before executing an attack/landing.  
--- • maxZ = Maximum Z coordinate height for flying.  
--- • minZ = Minimum Z coordinate height for flying.  
--- Z: 2,700 is the default max height a pilot will be able to fly. Anything greater and he will fly downward until reaching 2,700 again.  
--- Mission Types (incase you don't like links..):  
--- 0 = None  
--- 1 = Unk  
--- 2 = CTaskVehicleRam  
--- 3 = CTaskVehicleBlock  
--- 4 = CTaskVehicleGoToPlane  
--- 5 = CTaskVehicleStop  
--- 6 = CTaskVehicleAttack  
--- 7 = CTaskVehicleFollow  
--- 8 = CTaskVehicleFleeAirborne  
--- 9 = CTaskVehicleCircle  
--- 10 = CTaskVehicleEscort  
--- 15 = CTaskVehicleFollowRecording  
--- 16 = CTaskVehiclePoliceBehaviour  
--- 17 = CTaskVehicleCrash  
--- Example C#:  
--- Function.Call(Hash.TASK_PLANE_MISSION, pilot, vehicle, 0, Game.Player.Character, 0, 0, 0, 6, 0f, 0f, 0f, 2500.0f, -1500f);  
--- Example C++  
--- AI::TASK_PLANE_MISSION(pilot, vehicle, 0, PLAYER::GET_PLAYER_PED(PLAYER::GET_PLAYER_INDEX()), 0, 0, 0, 6, 0.0, 0.0, 0.0, 2500.0, -1500.0);  
--- [DEPRECATED] EXAMPLE USAGE:  
--- pastebin.com/gx7Finsk  
--- 
--- 
--- 
--- NativeDB Added Parameter 14: Any p13
--- 
--- @param pilot Ped
--- @param aircraft Vehicle
--- @param targetVehicle Vehicle
--- @param targetPed Ped
--- @param destinationX number
--- @param destinationY number
--- @param destinationZ number
--- @param missionFlag number
--- @param angularDrag number
--- @param unk number
--- @param targetHeading number
--- @param maxZ number
--- @param minZ number
function TaskPlaneMission(pilot, aircraft, targetVehicle, targetPed, destinationX, destinationY, destinationZ, missionFlag, angularDrag, unk, targetHeading, maxZ, minZ) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- 
--- 
--- float blendInSpeed > normal speed is 8.0f
--- ----------------------  
--- float blendOutSpeed > normal speed is 8.0f
--- ----------------------  
--- int duration: time in millisecond  
--- ----------------------  
--- -1 _ _ _ _ _ _ _> Default (see flag)  
--- 0 _ _ _ _ _ _ _ > Not play at all  
--- Small value _ _ > Slow down animation speed  
--- Other _ _ _ _ _ > freeze player control until specific time (ms) has   
--- _ _ _ _ _ _ _ _ _ passed. (No effect if flag is set to be   
--- _ _ _ _ _ _ _ _ _ controllable.)  
--- int flag:  
--- ----------------------  
--- enum eAnimationFlags  
--- {  
---  ANIM_FLAG_NORMAL = 0,  
---    ANIM_FLAG_REPEAT = 1,  
---    ANIM_FLAG_STOP_LAST_FRAME = 2,  
---    ANIM_FLAG_UPPERBODY = 16,  
---    ANIM_FLAG_ENABLE_PLAYER_CONTROL = 32,  
---    ANIM_FLAG_CANCELABLE = 120,  
--- };  
--- Odd number : loop infinitely  
--- Even number : Freeze at last frame  
--- Multiple of 4: Freeze at last frame but controllable  
--- 01 to 15 > Full body  
--- 10 to 31 > Upper body  
--- 32 to 47 > Full body > Controllable  
--- 48 to 63 > Upper body > Controllable  
--- ...  
--- 001 to 255 > Normal  
--- 256 to 511 > Garbled  
--- ...  
--- playbackRate:  
--- values are between 0.0 and 1.0  
--- lockX:    
--- 0 in most cases 1 for rcmepsilonism8 and rcmpaparazzo_3  
--- > 1 for mini@sprunk  
--- lockY:  
--- 0 in most cases   
--- 1 for missfam5_yoga, missfra1mcs_2_crew_react  
--- lockZ:   
---     0 for single player   
---     Can be 1 but only for MP  
--- 
--- @param ped Ped
--- @param animDictionary string
--- @param animationName string
--- @param blendInSpeed number
--- @param blendOutSpeed number
--- @param duration number
--- @param flag number
--- @param playbackRate number
--- @param lockX boolean
--- @param lockY boolean
--- @param lockZ boolean
function TaskPlayAnim(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
function TaskPlantBomb(ped, x, y, z, heading) end

--- 
--- Example from the scripts:  
--- AI::TASK_PLAY_PHONE_GESTURE_ANIMATION(PLAYER::PLAYER_PED_ID(), v_3, v_2, v_4, 0.25, 0.25, 0, 0);  
--- =========================================================  
--- ^^ No offense, but Idk how that would really help anyone.  
--- As for the animDict & animation, they're both store in a global in all 5 scripts. So if anyone would be so kind as to read that global and comment what strings they use. Thanks.  
--- Known boneMaskTypes'  
--- "BONEMASK_HEADONLY"  
--- "BONEMASK_HEAD_NECK_AND_ARMS"  
--- "BONEMASK_HEAD_NECK_AND_L_ARM"  
--- "BONEMASK_HEAD_NECK_AND_R_ARM"  
--- p4 known args - 0.0f, 0.5f, 0.25f  
--- p5 known args - 0.0f, 0.25f  
--- p6 known args - 1 if a global if check is passed.  
--- p7 known args - 1 if a global if check is passed.  
--- The values found above, I found within the 5 scripts this is ever called in. (fmmc_launcher, fm_deathmatch_controller, fm_impromptu_dm_controller, fm_mission_controller, and freemode).  
--- =========================================================  
--- 
--- @param ped Ped
--- @param animDict string
--- @param animation string
--- @param boneMaskType string
--- @param p4 number
--- @param p5 number
--- @param p6 boolean
--- @param p7 boolean
function TaskPlayPhoneGestureAnimation(ped, animDict, animation, boneMaskType, p4, p5, p6, p7) end

