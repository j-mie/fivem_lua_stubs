
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 boolean
--- @param p8 any
--- @return any
function AddNavmeshBlockingObject(p0, p1, p2, p3, p4, p5, p6, p7, p8) end


--- @return boolean
function AreAllNavmeshRegionsLoaded() end


--- @param x number
--- @param y number
--- @param radius number
function AddNavmeshRequiredRegion(x, y, radius) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param p6 any
function DisableNavmeshInArea(p0, p1, p2, p3, p4, p5, p6) end

--- 
--- Only did a quick disassembly, but this function seems to load all path nodes in the given area. Parameters appear to be start x, start y, end x, end y.  
--- 
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @return boolean
function ArePathNodesLoadedInArea(x1, y1, x2, y2) end


--- @param p0 any
--- @return boolean
function DoesNavmeshBlockingObjectExist(p0) end

--- Calculates the travel distance between a set of points.
--- Doesn't seem to correlate with distance on gps sometimes.
--- 
--- This function returns the value 100000.0 over long distances, seems to be a failure mode result, potentially occurring when not all path nodes are loaded into pathfind.
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @return number
function CalculateTravelDistanceBetweenPoints(x1, y1, z1, x2, y2, z2) end

--- 
--- Usage example:  
--- Public Function GenerateDirectionsToCoord(Pos As Vector3) As Tuple(Of String, Single, Single)  
---         Dim f4, f5, f6 As New OutputArgument()  
---         Native.Function.Call(Hash.GENERATE_DIRECTIONS_TO_COORD, Pos.X, Pos.Y, Pos.Z, True, f4, f5, f6)  
---         Dim direction As String = f4.GetResult(Of Single)()  
---         Return New Tuple(Of String, Single, Single)(direction.Substring(0, 1), f5.GetResult(Of Single)(), f6.GetResult(Of Single)())  
---     End Function  
--- p3 I use 1  
--- direction:  
--- 0 = You Have Arrived
--- 1 = Recalculating Route, Please make a u-turn where safe  
--- 2 = Please Proceed the Highlighted Route  
--- 3 = In (distToNxJunction) Turn Left  
--- 4 = In (distToNxJunction) Turn Right  
--- 5 = In (distToNxJunction) Go Straight  
--- 6 = In (distToNxJunction) Keep Left  
--- 7 = In (distToNxJunction) Keep Right
--- 8 = In (distToNxJunction) Join the freeway  
--- 9 = In (distToNxJunction) Exit Freeway  
--- return value set to 0 always  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param p3 boolean
--- @param direction number
--- @param vehicle number
--- @param distToNxJunction number
--- @return number
function GenerateDirectionsToCoord(x, y, z, p3, direction, vehicle, distToNxJunction) end

--- Clears a disabled GPS route area from a certain index previously set using [SET_GPS_DISABLED_ZONE_AT_INDEX](#_0xD0BC1C6FB18EE154).
--- @param index number
function ClearGpsDisabledZoneAtIndex(index) end

--- 
--- p1 seems to be always 1.0f in the scripts  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param p3 number
--- @param p4 number
--- @param p5 vector3
--- @param p6 vector3
--- @param p7 any
--- @param p8 any
--- @param p9 number
--- @param p10 boolean
--- @return any
function GetClosestRoad(x, y, z, p3, p4, p5, p6, p7, p8, p9, p10) end

--- 
--- Get the closest vehicle node to a given position, unknown1 = 3.0, unknown2 = 0  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param outPosition vector3
--- @param unknown1 number
--- @param unknown2 number
--- @return boolean
function GetClosestMajorVehicleNode(x, y, z, outPosition, unknown1, unknown2) end

--- 
--- FYI: When falling through the map (or however you got under it) you will respawn when your player ped's height is <= -200.0 meters (I think you all know this) and when in a vehicle you will actually respawn at the closest vehicle node.  
--- ----------  
--- Vector3 nodePos;  
--- GET_CLOSEST_VEHICLE_NODE(x,y,z,&nodePos,...)  
--- p4 is either 0, 1 or 8. 1 means any path/road. 0 means node in the middle of the closest main (asphalt) road.  
--- p5, p6 are always the same:  
--- 0x40400000 (3.0), 0  
--- p5 can also be 100.0 and p6 can be 2.5:  
--- PATHFIND::GET_CLOSEST_VEHICLE_NODE(a_0, &v_5, v_9, 100.0, 2.5)  
--- Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   
--- The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.   
--- Starting at 2, every fourth node is under the map, always same coords.  
--- Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).   
--- gtaforums.com/topic/843561-pathfind-node-types  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param outPosition vector3
--- @param nodeType number
--- @param p5 number
--- @param p6 number
--- @return boolean
function GetClosestVehicleNode(x, y, z, outPosition, nodeType, p5, p6) end

--- 
--- p5, p6 and p7 seems to be about the same as p4, p5 and p6 for GET_CLOSEST_VEHICLE_NODE. p6 and/or p7 has something to do with finding a node on the same path/road and same direction(at least for this native, something to do with the heading maybe). Edit this when you find out more.  
--- p5 is either 1 or 12. 1 means any path/road. 12, 8, 0 means node in the middle of the closest main (asphalt) road.  
--- p6 is always 3.0  
--- p7 is always 0.  
--- Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   
--- The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.   
--- Starting at 2, every fourth node is under the map, always same coords.  
--- Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).  
--- gtaforums.com/topic/843561-pathfind-node-types  
--- Example of usage, moving vehicle to closest path/road:  
--- Vector3 coords = ENTITY::GET_ENTITY_COORDS(playerVeh, true);  
--- Vector3 closestVehicleNodeCoords;   
--- float roadHeading;   
--- PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x, coords.y, coords.z, &closestVehicleNodeCoords, &roadHeading, 1, 3, 0);   
--- ENTITY::SET_ENTITY_HEADING(playerVeh, roadHeading);  
--- ENTITY::SET_ENTITY_COORDS(playerVeh, closestVehicleNodeCoords.x, closestVehicleNodeCoords.y, closestVehicleNodeCoords.z, 1, 0, 0, 1);  
--- VEHICLE::SET_VEHICLE_ON_GROUND_PROPERLY(playerVeh);  
--- ------------------------------------------------------------------  
--- C# Example (ins1de) : pastebin.com/fxtMWAHD  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param outPosition vector3
--- @param outHeading number
--- @param nodeType number
--- @param p6 number
--- @param p7 number
--- @return boolean
function GetClosestVehicleNodeWithHeading(x, y, z, outPosition, outHeading, nodeType, p6, p7) end


--- @return boolean
function GetGpsBlipRouteFound() end


--- @return number
function GetGpsBlipRouteLength() end

--- 
--- Returns CGameWorldHeightMap's minimum Z among all grid nodes that intersect with the specified rectangle.
--- 
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @return number
function GetHeightmapBottomZForArea(x1, y1, x2, y2) end

--- 
--- Returns CGameWorldHeightMap's minimum Z value at specified point (grid node).
--- 
--- @param x number
--- @param y number
--- @return number
function GetHeightmapBottomZForPosition(x, y) end

--- 
--- Returns CGameWorldHeightMap's maximum Z among all grid nodes that intersect with the specified rectangle.
--- 
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @return number
function GetHeightmapTopZForArea(x1, y1, x2, y2) end

--- Gets the next zone that has been disabled using SET_GPS_DISABLED_ZONE_AT_INDEX.
--- 
--- 
--- NativeDB Removed Parameter 1: int index
--- 
--- @param index number
--- @return number
function GetNextGpsDisabledZoneIndex(index) end

--- 
--- Returns CGameWorldHeightMap's maximum Z value at specified point (grid node).
--- 
--- @param x number
--- @param y number
--- @return number
function GetHeightmapTopZForPosition(x, y) end


--- @param x number
--- @param y number
--- @param z number
--- @param nthClosest number
--- @param outPosition vector3
--- @param unknown1 any
--- @param unknown2 any
--- @param unknown3 any
--- @return boolean
function GetNthClosestVehicleNode(x, y, z, nthClosest, outPosition, unknown1, unknown2, unknown3) end

--- 
--- See gtaforums.com/topic/843561-pathfind-node-types for node type info. 0 = paved road only, 1 = any road, 3 = water  
--- p10 always equal 0x40400000  
--- p11 always equal 0  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param desiredX number
--- @param desiredY number
--- @param desiredZ number
--- @param nthClosest number
--- @param outPosition vector3
--- @param outHeading number
--- @param nodetype number
--- @param p10 any
--- @param p11 any
--- @return boolean
function GetNthClosestVehicleNodeFavourDirection(x, y, z, desiredX, desiredY, desiredZ, nthClosest, outPosition, outHeading, nodetype, p10, p11) end

--- 
--- Returns the id.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param nth number
--- @param nodetype number
--- @param p5 number
--- @param p6 number
--- @return number
function GetNthClosestVehicleNodeId(x, y, z, nth, nodetype, p5, p6) end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param nthClosest number
--- @param outPosition vector3
--- @param outHeading number
--- @param p6 any
--- @param p7 number
--- @param p8 number
--- @return any
function GetNthClosestVehicleNodeIdWithHeading(x, y, z, nthClosest, outPosition, outHeading, p6, p7, p8) end

--- 
--- Get the nth closest vehicle node and its heading. (unknown2 = 9, unknown3 = 3.0, unknown4 = 2.5)  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param nthClosest number
--- @param outPosition vector3
--- @param heading number
--- @param unknown1 any
--- @param unknown2 number
--- @param unknown3 number
--- @param unknown4 number
--- @return boolean
function GetNthClosestVehicleNodeWithHeading(x, y, z, nthClosest, outPosition, heading, unknown1, unknown2, unknown3, unknown4) end


--- @param x number
--- @param y number
--- @param z number
--- @param p3 number
--- @param outPosition vector3
--- @return boolean
function GetPointOnRoadSide(x, y, z, p3, outPosition) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param p4 boolean
--- @param p5 boolean
--- @param p6 boolean
--- @param outPosition vector3
--- @param nodeId number
--- @return boolean
function GetRandomVehicleNode(x, y, z, radius, p4, p5, p6, outPosition, nodeId) end


--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param outPosition vector3
--- @return boolean
function GetRoadSidePointWithHeading(x, y, z, heading, outPosition) end

--- 
--- When onGround == true outPosition is a position located on the nearest pavement.  
--- When a safe coord could not be found the result of a function is false and outPosition == Vector3.Zero.  
--- In the scripts these flags are used: 0, 14, 12, 16, 20, 21, 28. 0 is most commonly used, then 16.   
--- 16 works for me, 0 crashed the script.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param onGround boolean
--- @param outPosition vector3
--- @param flags number
--- @return boolean
function GetSafeCoordForPed(x, y, z, onGround, outPosition, flags) end

--- 
--- Determines the name of the street which is the closest to the given coordinates.  
--- x,y,z - the coordinates of the street  
--- streetName - returns a hash to the name of the street the coords are on  
--- crossingRoad - if the coordinates are on an intersection, a hash to the name of the crossing road  
--- Note: the names are returned as hashes, the strings can be returned using the function UI::GET_STREET_NAME_FROM_HASH_KEY.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param streetName Hash
--- @param crossingRoad Hash
function GetStreetNameAtCoord(x, y, z, streetName, crossingRoad) end

--- 
--- p0 = VEHICLE_NODE_ID  
--- Returns false for nodes that aren't used for GPS routes.  
--- Example:  
--- Nodes in Fort Zancudo and LSIA are false  
--- 
--- @param nodeID number
--- @return boolean
function GetVehicleNodeIsGpsAllowed(nodeID) end

--- 
--- Calling this with an invalid node id, will crash the game.  
--- Note that IS_VEHICLE_NODE_ID_VALID simply checks if nodeId is not zero. It does not actually ensure that the id is valid.  
--- Eg. IS_VEHICLE_NODE_ID_VALID(1) will return true, but will crash when calling GET_VEHICLE_NODE_POSITION().  
--- sfink: This native returns a pointer to a packed Vector3 struct in the RAX register, as do the following natives:  
--- AI::WAYPOINT_RECORDING_GET_COORD  
--- ENTITY::GET_ENTITY_MATRIX  
--- FIRE::GET_CLOSEST_FIRE_POS  
--- GAMEPLAY::FIND_SPAWN_POINT_IN_DIRECTION  
--- GAMEPLAY::GET_MODEL_DIMENSIONS  
--- GAMEPLAY::OVERRIDE_SAVE_HOUSE  
--- GAMEPLAY::_0x82FDE6A57EE4EE44  
--- GAMEPLAY::_0x8BDC7BFC57A81E76  
--- GAMEPLAY::_0x8D7A43EC6A5FEA45  
--- GAMEPLAY::_0xA4A0065E39C9F25C  
--- GAMEPLAY::_0xDFB4138EEFED7B81  
--- MOBILE::GET_MOBILE_PHONE_POSITION  
--- MOBILE::GET_MOBILE_PHONE_ROTATION  
--- NETWORK::NETWORK_GET_RESPAWN_RESULT  
--- OBJECT::_0x163F8B586BC95F2A  
--- PATHFIND::GET_CLOSEST_MAJOR_VEHICLE_NODE  
--- PATHFIND::GET_CLOSEST_ROAD  
--- PATHFIND::GET_CLOSEST_VEHICLE_NODE  
--- PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING  
--- PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE  
--- PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION  
--- PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING  
--- PATHFIND::GET_RANDOM_VEHICLE_NODE  
--- PATHFIND::GET_SAFE_COORD_FOR_PED  
--- PATHFIND::GET_VEHICLE_NODE_POSITION  
--- PATHFIND::_0x16F46FB18C8009E4  
--- VEHICLE::_0xA4822F1CF23F4810  
--- VEHICLE::_0xDF7E3EEB29642C38  
--- WATER::TEST_PROBE_AGAINST_ALL_WATER  
--- WATER::TEST_PROBE_AGAINST_WATER  
--- WEAPON::GET_PED_LAST_WEAPON_IMPACT_COORD  
--- WORLDPROBE::_0xFF6BE494C7987F34  
--- WORLDPROBE::_GET_RAYCAST_RESULT  
--- 
--- @param nodeId number
--- @param outPosition vector3
function GetVehicleNodePosition(nodeId, outPosition) end

--- 
--- p0 = VEHICLE_NODE_ID  
--- Returns true when the node is Offroad. Alleys, some dirt roads, and carparks return true.  
--- Normal roads where plenty of Peds spawn will return false  
--- 
--- @param nodeID number
--- @return boolean
function GetVehicleNodeIsSwitchedOff(nodeID) end

--- 
--- Returns whether navmesh for the region is loaded. The region is a rectangular prism defined by it's top left deepest corner to it's bottom right shallowest corner.  
--- If you can re-word this so it makes more sense, please do. I'm horrible with words sometimes...  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @return boolean
function IsNavmeshLoadedInArea(x1, y1, z1, x2, y2, z2) end

--- 
--- MulleDK19: Gets the density and flags of the closest node to the specified position.  
--- Density is a value between 0 and 15, indicating how busy the road is.  
--- Flags is a bit field.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param density number
--- @param flags number
--- @return boolean
function GetVehicleNodeProperties(x, y, z, density, flags) end

--- 
--- Gets a value indicating whether the specified position is on a road.  
--- The vehicle parameter is not implemented (ignored).  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param vehicle Vehicle
--- @return boolean
function IsPointOnRoad(x, y, z, vehicle) end

--- 
--- Loads all path nodes.  
--- If keepInMemory is true, all path nodes will be loaded and be kept in memory; otherwise, all path nodes will be loaded, but unloaded as the game sees fit.  
--- - MulleDK19.  
--- August 29, 2017: This native has been removed in v1180.  
--- 
--- @param keepInMemory boolean
--- @return boolean
function LoadAllPathNodes(keepInMemory) end

--- 
--- IS_*
--- 
--- @return boolean
function IsNavmeshRequiredRegionOwnedByAnyThread() end

--- 
--- Returns true if the id is non zero.  
--- 
--- @param vehicleNodeId number
--- @return boolean
function IsVehicleNodeIdValid(vehicleNodeId) end


--- @param p0 any
function RemoveNavmeshBlockingObject(p0) end

--- 
--- Used internally for long range tasks
--- 
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @return boolean
function RequestPathsPreferAccurateBoundingstruct(x1, y1, x2, y2) end


--- @param multiplier number
function SetAmbientPedRangeMultiplierThisFrame(multiplier) end


--- @param toggle boolean
function SetIgnoreNoGpsFlag(toggle) end

--- 
--- See: SET_BLIP_ROUTE
--- 
--- @param toggle boolean
function SetIgnoreSecondaryRouteNodes(toggle) end


function RemoveNavmeshRequiredRegions() end

--- 
--- NativeDB Added Parameter 8: Any p7
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param unknown boolean
function SetPedPathsInArea(x1, y1, z1, x2, y2, z2, unknown) end

--- 
--- missing a last parameter int p6  
--- 
--- 
--- 
--- NativeDB Added Parameter 7: Any p6
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
function SetRoadsBackToOriginal(p0, p1, p2, p3, p4, p5) end

--- 
--- Toggles a global boolean, name is probably a hash collision but describes its functionality.
--- 
--- @param toggle boolean
function SetAllPathsCacheBoundingstruct(toggle) end

--- 
--- /* Corrected conflicting parameter names */  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param angle number
--- @param unknown1 boolean
--- @param unknown2 boolean
--- @param unknown3 boolean
function SetRoadsInAngledArea(x1, y1, z1, x2, y2, z2, angle, unknown1, unknown2, unknown3) end

--- Disables the GPS route displayed on the minimap while within a certain zone (area). When in a disabled zone and creating a waypoint, the GPS route is not shown on the minimap until you are outside of the zone. When disabled, the direct distance is shown on minimap opposed to distance to travel. Seems to only work before setting a waypoint.
--- 
--- You can clear the disabled zone with CLEAR_GPS_DISABLED_ZONE_AT_INDEX.
--- 
--- **Setting a waypoint at the same coordinate:**
--- 
--- Disabled Zone: <https://i.imgur.com/P9VUuxM.png>
--- 
--- Enabled Zone (normal): <https://i.imgur.com/BPi24aw.png>
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param index number
function SetGpsDisabledZoneAtIndex(x1, y1, z1, x2, y2, z2, index) end

--- When this is set to false, all nodes in the area get disabled.
--- 
--- GET_VEHICLE_NODE_IS_SWITCHED_OFF returns true afterwards.
--- 
--- If it's true,
--- 
--- GET_VEHICLE_NODE_IS_SWITCHED_OFF returns false.
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param nodeEnabled boolean
--- @param unknown2 boolean
function SetRoadsInArea(x1, y1, z1, x2, y2, z2, nodeEnabled, unknown2) end

--- 
--- NativeDB Parameter 0: float x1
--- NativeDB Parameter 1: float y1
--- NativeDB Parameter 2: float z1
--- NativeDB Parameter 3: float x2
--- NativeDB Parameter 4: float y2
--- NativeDB Parameter 5: float z3
--- 
--- @param x1 any
--- @param y1 any
--- @param z1 any
--- @param x2 any
--- @param y2 any
--- @param z3 any
function SetGpsDisabledZone(x1, y1, z1, x2, y2, z3) end

--- 
--- NativeDB Added Parameter 7: Any p6
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
function SetPedPathsBackToOriginal(p0, p1, p2, p3, p4, p5) end

--- 
--- bool p7 - always 1  
--- 
--- 
--- 
--- NativeDB Added Parameter 8: Any p7
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param p6 number
function SetRoadsBackToOriginalInAngledArea(x1, y1, z1, x2, y2, z2, p6) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 any
function UpdateNavmeshBlockingObject(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

