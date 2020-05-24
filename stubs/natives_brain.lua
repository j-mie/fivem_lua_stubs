
--- @param playerX number
--- @param playerY number
--- @param playerZ number
--- @param radiusX number
--- @param radiusY number
--- @param radiusZ number
--- @param p6 boolean
--- @param p7 boolean
--- @param p8 boolean
--- @param p9 boolean
function AddCoverBlockingArea(playerX, playerY, playerZ, radiusX, radiusY, radiusZ, p6, p7, p8, p9) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 any
--- @param p5 any
--- @param p6 any
--- @param p7 boolean
--- @return ScrHandle
function AddCoverPoint(p0, p1, p2, p3, p4, p5, p6, p7) end


--- @param p0 any
--- @param p1 any
function AddPatrolRouteLink(p0, p1) end

--- 
--- Example:   
--- AI::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", -193.4915, -2378.864990234375, 10.9719, -193.4915, -2378.864990234375, 10.9719, 3000);  
--- p0 is between 0 and 4 in the scripts.  
--- p1 is "WORLD_HUMAN_GUARD_STAND" or "StandGuard".  
--- p2, p3 and p4 is only one parameter sometimes in the scripts. Most likely a Vector3 hence p2, p3 and p4 are coordinates.   
--- Examples:   
--- AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_739[7/*3*/], 0.0, 0.0, 0.0, 0);  
--- AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_B0[17/*44*/]._f3, l_B0[17/*44*/]._f3, 2000);  
--- p5, p6 and p7 are for example set to: 1599.0406494140625, 2713.392578125, 44.4309.  
--- p8 is an int, often random set to for example: GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000).  
--- 
--- @param p0 number
--- @param p1 string
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param p8 number
function AddPatrolRouteNode(p0, p1, x1, y1, z1, x2, y2, z2, p8) end

--- 
--- x, y, z: offset in world coords from some entity.  
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
function AddVehicleSubtaskAttackCoord(ped, x, y, z) end

--- 
--- BRAIN::ADD_SCRIPT_TO_RANDOM_PED("pb_prostitute", ${s_f_y_hooker_01}, 100, 0);  
--- -----  
--- Hardcoded to not work in Multiplayer.  
--- ------  
--- Which I'm sure can easily be bypassed by nop'ing the branch preventing it from working if you are in multiplayer lol. Which would still be pointless since you don't need this to make peds do what you wish.  
--- 
--- @param name string
--- @param model Hash
--- @param p2 number
--- @param p3 number
function AddScriptToRandomPed(name, model, p2, p3) end


--- @param route string
--- @return boolean
function AssistedMovementIsRouteLoaded(route) end


--- @param ped Ped
--- @param ped2 Ped
function AddVehicleSubtaskAttackPed(ped, ped2) end


--- @param dist number
function AssistedMovementOverrideLoadDistanceThisFrame(dist) end


--- @param route string
function AssistedMovementRemoveRoute(route) end

--- 
--- Routes: "1_FIBStairs", "2_FIBStairs", "3_FIBStairs", "4_FIBStairs", "5_FIBStairs", "5_TowardsFire", "6a_FIBStairs", "7_FIBStairs", "8_FIBStairs", "Aprtmnt_1", "AssAfterLift", "ATM_1", "coroner2", "coroner_stairs", "f5_jimmy1", "fame1", "family5b", "family5c", "Family5d", "family5d", "FIB_Glass1", "FIB_Glass2", "FIB_Glass3", "finaBroute1A", "finalb1st", "finalB1sta", "finalbround", "finalbroute2", "Hairdresser1", "jan_foyet_ft_door", "Jo_3", "Lemar1", "Lemar2", "mansion_1", "Mansion_1", "pols_1", "pols_2", "pols_3", "pols_4", "pols_5", "pols_6", "pols_7", "pols_8", "Pro_S1", "Pro_S1a", "Pro_S2", "Towards_case", "trev_steps", "tunrs1", "tunrs2", "tunrs3", "Wave01457s"  
--- 
--- @param route string
function AssistedMovementRequestRoute(route) end


--- @param route string
--- @param props number
function AssistedMovementSetRouteProperties(route, props) end


--- @param ped Ped
function ClearDrivebyTaskUnderneathDrivingTask(ped) end


--- @param ped Ped
function ClearPedSecondaryTask(ped) end


--- @param ped Ped
function ClearPedTasks(ped) end

--- 
--- NativeDB Return Type: void
--- 
--- @param taskSequenceId number
--- @return any
function ClearSequenceTask(taskSequenceId) end

--- 
--- Immediately stops the pedestrian from whatever it's doing. They stop fighting, animations, etc. they forget what they were doing.  
--- 
--- @param ped Ped
function ClearPedTasksImmediately(ped) end

--- 
--- Forces the ped to use the mounted weapon.  
--- Returns false if task is not possible.  
--- 
--- @param ped Ped
--- @return boolean
function ControlMountedWeapon(ped) end


function ClosePatrolRoute() end


function CreatePatrolRoute() end

--- 
--- NativeDB Return Type: void
--- 
--- @param taskSequenceId number
--- @return any
function CloseSequenceTask(taskSequenceId) end


--- @param brainSet number
function DisableScriptBrainSet(brainSet) end

--- 
--- From the b617d scripts:  
--- AI::DELETE_PATROL_ROUTE("miss_merc0");  
--- AI::DELETE_PATROL_ROUTE("miss_merc1");  
--- AI::DELETE_PATROL_ROUTE("miss_merc2");  
--- AI::DELETE_PATROL_ROUTE("miss_dock");  
--- 
--- @param patrolRoute string
function DeletePatrolRoute(patrolRoute) end

--- 
--- Occurrences in the b617d scripts:  
--- "ARMY_GUARD",  
--- "ARMY_HELI",  
--- "Cinema_Downtown",  
--- "Cinema_Morningwood",  
--- "Cinema_Textile",  
--- "City_Banks",  
--- "Countryside_Banks",  
--- "DEALERSHIP",  
--- "GRAPESEED_PLANES",  
--- "KORTZ_SECURITY",  
--- "LOST_BIKERS",  
--- "LSA_Planes",  
--- "LSA_Planes",  
--- "MP_POLICE",  
--- "Observatory_Bikers",   
--- "POLICE_POUND1",  
--- "POLICE_POUND2",  
--- "POLICE_POUND3",  
--- "POLICE_POUND4",  
--- "POLICE_POUND5"  
--- "QUARRY",  
--- "SANDY_PLANES",  
--- "SCRAP_SECURITY",  
--- "SEW_MACHINE",  
--- "SOLOMON_GATE",  
--- "Triathlon_1_Start",   
--- "Triathlon_2_Start",   
--- "Triathlon_3_Start"  
--- Sometimes used with IS_SCENARIO_GROUP_ENABLED:  
--- if (AI::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") && (!AI::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {  
--- else if (AI::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {  
--- 
--- @param scenarioGroup string
--- @return boolean
function DoesScenarioGroupExist(scenarioGroup) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param b boolean
--- @return boolean
function DoesScenarioExistInArea(x, y, z, radius, b) end

--- 
--- Checks if there is a cover point at position  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @return boolean
function DoesScriptedCoverPointExistAtCoords(x, y, z) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 any
--- @param p4 number
--- @param p5 boolean
--- @return boolean
function DoesScenarioOfTypeExistInArea(p0, p1, p2, p3, p4, p5) end


--- @param vehicle Vehicle
--- @return number
function GetActiveVehicleMissionType(vehicle) end

--- 
--- #4  
--- 
--- @param brainSet number
function EnableScriptBrainSet(brainSet) end

--- 
--- from docks_heistb.c4:  
--- AI::GET_IS_TASK_ACTIVE(PLAYER::PLAYER_PED_ID(), 2))  
--- Known Tasks: pastebin.com/2gFqJ3Px  
--- 
--- @param ped Ped
--- @param taskIndex number
--- @return boolean
function GetIsTaskActive(ped, taskIndex) end


--- @param p0 number
--- @return string
function GetClipSetForScriptedGunTask(p0) end

--- 
--- For a full list, see here: pastebin.com/Tp0XpBMN  
--- 
--- @param name string
--- @return boolean
function GetIsWaypointRecordingLoaded(name) end

--- 
--- Looks like the last parameter returns true if the path has been calculated, while the first returns the remaining distance to the end of the path.  
--- Return value of native is the same as GET_NAVMESH_ROUTE_RESULT  
--- Looks like the native returns an int for the path's state:  
--- 1 - ???  
--- 2   
--- 3 - Finished Generating  
--- 
--- @param ped Ped
--- @param distRemaining number
--- @param isPathReady boolean
--- @return number
function GetNavmeshRouteDistanceRemaining(ped, distRemaining, isPathReady) end


--- @param ped Ped
--- @return number
function GetPedDesiredMoveBlendRatio(ped) end

--- 
--- See GET_NAVMESH_ROUTE_DISTANCE_REMAINING for more details.  
--- 
--- @param ped Ped
--- @return number
function GetNavmeshRouteResult(ped) end


--- @param p0 any
--- @return number
function GetPedWaypointDistance(p0) end

--- 
--- Returns the progress percent to current waypoint.  
--- 
--- @param ped Ped
--- @return number
function GetPedWaypointProgress(ped) end


--- @param ped Ped
--- @return number
function GetPhoneGestureAnimTotalTime(ped) end


--- @param ped Ped
--- @return number
function GetPhoneGestureAnimCurrentTime(ped) end


--- @param coverpoint ScrHandle
--- @return vector3
function GetScriptedCoverPointCoords(coverpoint) end

--- 
--- Gets the status of a script-assigned task. The hash does not seem to match the actual native name, but is assigned hardcoded from the executable during task creation.  
--- Statuses are specific to tasks, in addition '7' means the specified task is not assigned to the ped.  
--- A few hashes found in the executable (although not a complete list) can be found at pastebin.com/R9iK6M9W as it was too long for this wiki.  
--- 
--- @param targetPed Ped
--- @param taskHash Hash
--- @return number
function GetScriptTaskStatus(targetPed, taskHash) end

--- 
--- returned values:  
--- 0 to 7 = task that's currently in progress, 0 meaning the first one.  
--- 
--- @param ped Ped
--- @return number
function GetSequenceProgress(ped) end


--- @param ped Ped
--- @param eventName string
--- @return boolean
function GetTaskMoveNetworkEvent(ped, eventName) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param ped Ped
--- @param signalName string
--- @return number
function GetTaskMoveNetworkSignalFloat(ped, signalName) end

--- 
--- Found in scripts:  
--- if (AI::_A7FFBA498E4AAF67(l_9BC, "Run")) {  
--- if (AI::_A7FFBA498E4AAF67(l_9BC, "Escape")) {  
--- 
--- @param ped Ped
--- @param signalName string
--- @return boolean
function GetTaskMoveNetworkSignalBool(ped, signalName) end

--- 
--- If the function fails, returns "Unknown".  
--- Could be task (sequence) name. Needs more research.  
--- 
--- @param ped Ped
--- @return string
function GetTaskMoveNetworkState(ped) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleWaypointProgress(vehicle) end


--- @param p0 string
--- @param p1 number
--- @return number
function GetWaypointDistanceAlongRoute(p0, p1) end


--- @param vehicle Vehicle
--- @return number
function GetVehicleWaypointTargetPoint(vehicle) end


--- @param ped Ped
--- @return boolean
function IsDrivebyTaskUnderneathDrivingTask(ped) end


--- @param ped Ped
--- @return boolean
function IsMountedWeaponTaskUnderneathDrivingTask(ped) end


--- @param ped Ped
--- @return boolean
function IsMoveBlendRatioRunning(ped) end


--- @param ped Ped
--- @return boolean
function IsMoveBlendRatioSprinting(ped) end


--- @param ped Ped
--- @return boolean
function IsMoveBlendRatioWalking(ped) end


--- @param ped Ped
--- @return boolean
function IsMoveBlendRatioStill(ped) end


--- @param object Object
--- @return boolean
function IsObjectWithinBrainActivationRange(object) end


--- @param ped Ped
--- @return boolean
function IsPedActiveInScenario(ped) end

--- 
--- This function is hard-coded to always return 0.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedBeingArrested(ped) end

--- 
--- l  
--- 
--- @param ped Ped
--- @return boolean
function IsPedCuffed(ped) end


--- @param ped Ped
--- @return boolean
function IsPedGettingUp(ped) end

--- 
--- returns true is the ped is on the ground whining like a little female dog from a gunshot wound  
--- 
--- @param ped Ped
--- @return boolean
function IsPedInWrithe(ped) end


--- @param ped Ped
--- @return boolean
function IsPedRunning(ped) end


--- @param ped Ped
--- @return boolean
function IsPedRunningArrestTask(ped) end


--- @param ped Ped
--- @return boolean
function IsPedStill(ped) end


--- @param ped Ped
--- @return boolean
function IsPedSprinting(ped) end

--- 
--- What's strafing?  
--- 
--- @param ped Ped
--- @return boolean
function IsPedStrafing(ped) end


--- @param ped Ped
--- @return boolean
function IsPedWalking(ped) end

--- 
--- Occurrences in the b617d scripts:   
--- "ARMY_GUARD",  
--- "ARMY_HELI",  
--- "BLIMP",  
--- "Cinema_Downtown",  
--- "Cinema_Morningwood",  
--- "Cinema_Textile",  
--- "City_Banks",  
--- "Countryside_Banks",  
--- "DEALERSHIP",  
--- "KORTZ_SECURITY",  
--- "LSA_Planes",  
--- "MP_POLICE",  
--- "Observatory_Bikers",  
--- "POLICE_POUND1",  
--- "POLICE_POUND2",  
--- "POLICE_POUND3",  
--- "POLICE_POUND4",  
--- "POLICE_POUND5",  
--- "Rampage1",  
--- "SANDY_PLANES",  
--- "SCRAP_SECURITY",  
--- "SEW_MACHINE",  
--- "SOLOMON_GATE"  
--- 		Sometimes used with DOES_SCENARIO_GROUP_EXIST:  
--- 		if (AI::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") &&   (!AI::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {  
--- 		else if (AI::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {  
--- 
--- @param scenarioGroup string
--- @return boolean
function IsScenarioGroupEnabled(scenarioGroup) end


--- @param ped Ped
--- @return boolean
function IsPlayingPhoneGestureAnim(ped) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 boolean
--- @return boolean
function IsScenarioOccupied(p0, p1, p2, p3, p4) end

--- 
--- Occurrences in the b617d scripts:  
--- "PROP_HUMAN_SEAT_CHAIR",  
--- "WORLD_HUMAN_DRINKING",  
--- "WORLD_HUMAN_HANG_OUT_STREET",  
--- "WORLD_HUMAN_SMOKING",  
--- "WORLD_MOUNTAIN_LION_WANDER",  
--- "WORLD_HUMAN_DRINKING"  
--- Sometimes used together with GAMEPLAY::IS_STRING_NULL_OR_EMPTY in the scripts.  
--- scenarioType could be the same as scenarioName, used in for example AI::TASK_START_SCENARIO_AT_POSITION.  
--- 
--- @param scenarioType string
--- @return boolean
function IsScenarioTypeEnabled(scenarioType) end


--- @param ped Ped
--- @return boolean
function IsTaskMoveNetworkReadyForTransition(ped) end


--- @param ped Ped
--- @return boolean
function IsTaskMoveNetworkActive(ped) end


--- @param vehicle Vehicle
--- @return boolean
function IsWaypointPlaybackGoingOnForVehicle(vehicle) end


--- @param p0 any
--- @return boolean
function IsWaypointPlaybackGoingOnForPed(p0) end

--- 
--- Gets whether the world point the calling script is registered to is within desired range of the player.  
--- 
--- @return boolean
function IsWorldPointWithinBrainActivationRange() end

--- 
--- patrolRoutes found in the b617d scripts:  
--- "miss_Ass0",  
--- "miss_Ass1",  
--- "miss_Ass2",  
--- "miss_Ass3",  
--- "miss_Ass4",  
--- "miss_Ass5",  
--- "miss_Ass6",  
--- "MISS_PATROL_6",  
--- "MISS_PATROL_7",  
--- "MISS_PATROL_8",  
--- "MISS_PATROL_9",  
--- "miss_Tower_01",  
--- "miss_Tower_02",  
--- "miss_Tower_03",  
--- "miss_Tower_04",  
--- "miss_Tower_05",  
--- "miss_Tower_06",  
--- "miss_Tower_07",  
--- "miss_Tower_08",  
--- "miss_Tower_10"  
--- 
--- @param patrolRoute string
function OpenPatrolRoute(patrolRoute) end

--- 
--- NativeDB Return Type: void
--- 
--- @param taskSequenceId number
--- @return any
function OpenSequenceTask(taskSequenceId) end


--- @param ped Ped
--- @return boolean
function PedHasUseScenarioTask(ped) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param ped Ped
--- @param animDict string
--- @param animName string
function PlayAnimOnRunningScenario(ped, animDict, animName) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 number
--- @param p5 number
function PlayEntityScriptedAnim(p0, p1, p2, p3, p4, p5) end

--- 
--- NativeDB Parameter 0: char* scriptName
--- 
--- @param scriptName any
--- @param activationRange number
--- @param p2 number
function RegisterWorldPointScriptBrain(scriptName, activationRange, p2) end

--- 
--- Registers a script for any object with a specific model hash.  
--- BRAIN::REGISTER_OBJECT_SCRIPT_BRAIN("ob_telescope", ${prop_telescope_01}, 100, 4.0, -1, 9);  
--- 
--- @param scriptName string
--- @param modelHash Hash
--- @param p2 number
--- @param activationRange number
--- @param p4 number
--- @param p5 number
function RegisterObjectScriptBrain(scriptName, modelHash, p2, activationRange, p4, p5) end


--- @param coverpoint ScrHandle
function RemoveCoverPoint(coverpoint) end


function RemoveAllCoverBlockingAreas() end


--- @param ped Ped
--- @param name string
--- @return boolean
function RequestTaskMoveNetworkStateTransition(ped, name) end

--- 
--- For a full list, see here: pastebin.com/Tp0XpBMN  
--- 
--- @param name string
function RemoveWaypointRecording(name) end


function ResetExclusiveScenarioGroup() end

--- 
--- For a full list, see here: pastebin.com/Tp0XpBMN  
--- For a full list of the points, see here: goo.gl/wIH0vn  
--- Max number of loaded recordings is 32.  
--- 
--- @param name string
function RequestWaypointRecording(name) end


function ResetScenarioTypesEnabled() end


function ResetScenarioGroupsEnabled() end


--- @param p0 any
--- @param p1 number
--- @param p2 any
--- @param p3 boolean
function SetAnimRate(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 any
--- @param p3 boolean
function SetAnimLooped(p0, p1, p2, p3) end


--- @param driver Ped
--- @param cruiseSpeed number
function SetDriveTaskCruiseSpeed(driver, cruiseSpeed) end


--- @param p0 any
--- @param p1 number
--- @param p2 any
--- @param p3 any
--- @param p4 boolean
function SetAnimWeight(p0, p1, p2, p3, p4) end


--- @param p0 any
--- @param p1 number
function SetDriveTaskMaxCruiseSpeed(p0, p1) end

--- 
--- This native is used to set the driving style for specific ped.  
--- Driving styles id seems to be:  
--- 786468  
--- 262144  
--- 786469  
--- http://gtaforums.com/topic/822314-guide-driving-styles/  
--- 
--- @param ped Ped
--- @param drivingStyle number
function SetDriveTaskDrivingStyle(ped, drivingStyle) end

--- 
--- Groups found in the scripts used with this native:  
--- "AMMUNATION",  
--- "QUARRY",  
--- "Triathlon_1",  
--- "Triathlon_2",  
--- "Triathlon_3"  
--- 
--- @param scenarioGroup string
function SetExclusiveScenarioGroup(scenarioGroup) end

--- 
--- For p1 & p2 (Ped, Vehicle). I could be wrong, as the only time this native is called in scripts is once and both are 0, but I assume this native will work like SET_MOUNTED_WEAPON_TARGET in which has the same exact amount of parameters and the 1st and last 3 parameters are right and the same for both natives.  
--- 
--- @param shootingPed Ped
--- @param targetPed Ped
--- @param targetVehicle Vehicle
--- @param x number
--- @param y number
--- @param z number
function SetDrivebyTaskTarget(shootingPed, targetPed, targetVehicle, x, y, z) end

--- 
--- Makes the ped ragdoll like when falling from a great height  
--- 
--- @param ped Ped
--- @param p1 any
--- @param p2 any
--- @param p3 any
function SetHighFallTask(ped, p1, p2, p3) end

--- 
--- Birds will try to reach the given height.  
--- 
--- @param height number
function SetGlobalMinBirdFlightHeight(height) end

--- 
--- Note: Look in decompiled scripts and the times that p1 and p2 aren't 0. They are filled with vars. If you look through out that script what other natives those vars are used in, you can tell p1 is a ped and p2 is a vehicle. Which most likely means if you want the mounted weapon to target a ped set targetVehicle to 0 or vice-versa.  
--- 
--- 
--- 
--- NativeDB Added Parameter 7: Any p6
--- NativeDB Added Parameter 8: Any p7
--- 
--- @param shootingPed Ped
--- @param targetPed Ped
--- @param targetVehicle Vehicle
--- @param x number
--- @param y number
--- @param z number
function SetMountedWeaponTarget(shootingPed, targetPed, targetVehicle, x, y, z) end

--- **This native does absolutely nothing, just a nullsub**
--- 
--- 
--- Not used in the scripts.  
--- Bullshit! It's used in spawn_activities  
--- 
--- @param p0 number
function SetNextDesiredMoveState(p0) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
function SetParachuteTaskTarget(ped, x, y, z) end

--- 
--- Appears only in fm_mission_controller and used only 3 times.  
--- ped was always PLAYER_PED_ID()  
--- p1 was always true  
--- p2 was always true  
--- 
--- @param ped Ped
--- @param p1 boolean
--- @param p2 boolean
function SetPedCanPlayAmbientIdles(ped, p1, p2) end


--- @param ped Ped
--- @param thrust number
function SetParachuteTaskThrust(ped, thrust) end


--- @param ped Ped
--- @param avoidFire boolean
function SetPedPathAvoidFire(ped, avoidFire) end


--- @param ped Ped
--- @param p1 number
function SetPedDesiredMoveBlendRatio(ped, p1) end


--- @param ped Ped
--- @param Toggle boolean
function SetPedPathCanDropFromHeight(ped, Toggle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param ped Ped
--- @param Toggle boolean
--- @return any
function SetPedPathCanUseClimbovers(ped, Toggle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param ped Ped
--- @param Toggle boolean
--- @return any
function SetPedPathCanUseLadders(ped, Toggle) end


--- @param ped Ped
--- @param p1 number
function SetPedPathClimbCostModifier(ped, p1) end


--- @param ped Ped
--- @param mayEnterWater boolean
function SetPedPathMayEnterWater(ped, mayEnterWater) end


--- @param ped Ped
--- @param avoidWater boolean
function SetPedPathPreferToAvoidWater(ped, avoidWater) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return any
function SetPedWaypointRouteOffset(p0, p1, p2, p3) end

--- 
--- Occurrences in the b617d scripts: pastebin.com/Tvg2PRHU  
--- 
--- @param scenarioGroup string
--- @param p1 boolean
function SetScenarioGroupEnabled(scenarioGroup, p1) end

--- 
--- seems to enable/disable specific scenario-types from happening in the game world.  
--- Here are some scenario types from the scripts:  
--- "WORLD_MOUNTAIN_LION_REST"                                               
--- "WORLD_MOUNTAIN_LION_WANDER"                                              
--- "DRIVE"                                                                    
--- "WORLD_VEHICLE_POLICE_BIKE"                                               
--- "WORLD_VEHICLE_POLICE_CAR"                                               
--- "WORLD_VEHICLE_POLICE_NEXT_TO_CAR"                                          
--- "WORLD_VEHICLE_DRIVE_SOLO"                                                   
--- "WORLD_VEHICLE_BIKER"                                                        
--- "WORLD_VEHICLE_DRIVE_PASSENGERS"                                             
--- "WORLD_VEHICLE_SALTON_DIRT_BIKE"                                             
--- "WORLD_VEHICLE_BICYCLE_MOUNTAIN"                                             
--- "PROP_HUMAN_SEAT_CHAIR"                                               
--- "WORLD_VEHICLE_ATTRACTOR"                                               
--- "WORLD_HUMAN_LEANING"                                                   
--- "WORLD_HUMAN_HANG_OUT_STREET"                                          
--- "WORLD_HUMAN_DRINKING"                                                  
--- "WORLD_HUMAN_SMOKING"                                                  
--- "WORLD_HUMAN_GUARD_STAND"                                              
--- "WORLD_HUMAN_CLIPBOARD"                                                
--- "WORLD_HUMAN_HIKER"                                                    
--- "WORLD_VEHICLE_EMPTY"                                                        
--- "WORLD_VEHICLE_BIKE_OFF_ROAD_RACE"                                        
--- "WORLD_HUMAN_PAPARAZZI"                                                 
--- "WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN"                              
--- "WORLD_VEHICLE_PARK_PARALLEL"                                                
--- "WORLD_VEHICLE_CONSTRUCTION_SOLO"                                 
--- "WORLD_VEHICLE_CONSTRUCTION_PASSENGERS"                                                                      
--- "WORLD_VEHICLE_TRUCK_LOGS"   
--- -alphazolam  
--- scenarioType could be the same as scenarioName, used in for example AI::TASK_START_SCENARIO_AT_POSITION.  
--- 
--- @param scenarioType string
--- @param toggle boolean
function SetScenarioTypeEnabled(scenarioType, toggle) end


--- @param taskSequenceId number
--- @param _b_repeat boolean
function SetSequenceToRepeat(taskSequenceId, _b_repeat) end

--- 
--- Examples:  
--- AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isFirstPerson", 0);  
--- AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isFirstPerson", 1);  
--- AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isBlocked", sub_179027());  
--- 
--- @param ped Ped
--- @param signalName string
--- @param value boolean
function SetTaskMoveNetworkSignalBool(ped, signalName, value) end

--- 
--- p0 - PLAYER::PLAYER_PED_ID();  
--- p1 - "Phase", "Wobble", "x_axis","y_axis","introphase","speed".  
--- p2 - From what i can see it goes up to 1f (maybe).  
--- -LcGamingHD  
--- Example: AI::_D5BB4025AE449A4E(PLAYER::PLAYER_PED_ID(), "Phase", 0.5);  
--- 
--- @param ped Ped
--- @param signalName string
--- @param value number
function SetTaskMoveNetworkSignalFloat(ped, signalName, value) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param ped Ped
--- @param signalName string
--- @param value number
function SetTaskMoveNetworkSignalFloat2(ped, signalName, value) end


--- @param ped Ped
--- @param flag number
--- @param set boolean
function SetTaskVehicleChaseBehaviorFlag(ped, flag, set) end


--- @param ped Ped
--- @param distance number
function SetTaskVehicleChaseIdealPursuitDistance(ped, distance) end

--- 
--- From re_drunkdriver:  
--- • AI::STOP_ANIM_PLAYBACK(l_5B[0/*1*/], 0, 0);  
--- Looks like p1 may be a flag, still need to do some research, though.  
--- 
--- @param ped Ped
--- @param p1 number
--- @param p2 boolean
function StopAnimPlayback(ped, p1, p2) end

--- 
--- Makes the specified ped achieve the specified heading.  
--- pedHandle: The handle of the ped to assign the task to.  
--- heading: The desired heading.  
--- timeout: The time, in milliseconds, to allow the task to complete. If the task times out, it is cancelled, and the ped will stay at the heading it managed to reach in the time.  
--- 
--- @param ped Ped
--- @param heading number
--- @param timeout number
function TaskAchieveHeading(ped, heading, timeout) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- @param ped Ped
--- @param animDictionary string
--- @param animationName string
--- @param p3 number
function StopAnimTask(ped, animDictionary, animationName, p3) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param time number
--- @param p5 boolean
--- @param p6 boolean
function TaskAimGunAtCoord(ped, x, y, z, time, p5, p6) end


--- @param ped Ped
--- @param ped2 Ped
function TaskAgitatedAction(ped, ped2) end

--- 
--- duration: the amount of time in milliseconds to do the task.  -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped  
--- 
--- @param ped Ped
--- @param entity Entity
--- @param duration number
--- @param p3 boolean
function TaskAimGunAtEntity(ped, entity, duration, p3) end


--- @param ped Ped
--- @param scriptTask Hash
--- @param p2 boolean
--- @param p3 boolean
function TaskAimGunScripted(ped, scriptTask, p2, p3) end


--- @param p0 any
--- @param p1 any
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 any
--- @param p6 boolean
--- @param p7 boolean
function TaskAimGunScriptedWithTarget(p0, p1, p2, p3, p4, p5, p6, p7) end

--- 
--- Example from "me_amanda1.ysc.c4":  
--- AI::TASK_ARREST_PED(l_19F /* This is a Ped */ , PLAYER::PLAYER_PED_ID());  
--- Example from "armenian1.ysc.c4":  
--- if (!PED::IS_PED_INJURED(l_B18[0/*1*/])) {  
---     AI::TASK_ARREST_PED(l_B18[0/*1*/], PLAYER::PLAYER_PED_ID());  
--- }  
--- I would love to have time to experiment to see if a player Ped can arrest another Ped. Might make for a good cop mod.  
--- Looks like only the player can be arrested this way. Peds react and try to arrest you if you task them, but the player charater doesn't do anything if tasked to arrest another ped.  
--- 
--- @param ped Ped
--- @param target Ped
function TaskArrestPed(ped, target) end

--- 
--- You need to call PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS after TASK_BOAT_MISSION in order for the task to execute.  
--- Working example  
--- float vehicleMaxSpeed = VEHICLE::_GET_VEHICLE_MAX_SPEED(ENTITY::GET_ENTITY_MODEL(pedVehicle));  
--- AI::TASK_BOAT_MISSION(pedDriver, pedVehicle, 0, 0, waypointCoord.x, waypointCoord.y, waypointCoord.z, 4, vehicleMaxSpeed, 786469, -1.0, 7);  
--- PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(pedDriver, 1);  
--- P8 appears to be driving style flag - see gtaforums.com/topic/822314-guide-driving-styles/ for documentation  
--- 
--- @param pedDriver Ped
--- @param boat Vehicle
--- @param p2 any
--- @param p3 any
--- @param x number
--- @param y number
--- @param z number
--- @param p7 any
--- @param maxSpeed number
--- @param drivingStyle number
--- @param p10 number
--- @param p11 any
function TaskBoatMission(pedDriver, boat, p2, p3, x, y, z, p7, maxSpeed, drivingStyle, p10, p11) end

--- 
--- p2 tend to be 16, 17 or 1  
--- p3 to p7 tend to be 0.0  
--- 
--- @param ped Ped
--- @param target Ped
--- @param p2 any
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
function TaskChatToPed(ped, target, p2, p3, p4, p5, p6, p7) end

