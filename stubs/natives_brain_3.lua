
--- @param p0 any
function WaypointPlaybackStopAimingOrShooting(p0) end


--- @param p0 any
function WaypointPlaybackUseDefaultSpeed(p0) end

--- 
--- For a full list, see here: pastebin.com/Tp0XpBMN  
--- For a full list of the points, see here: goo.gl/wIH0vn  
--- 
--- @param name string
--- @param point number
--- @param coord vector3
--- @return boolean
function WaypointRecordingGetCoord(name, point, coord) end


--- @param name string
--- @param point number
--- @return number
function WaypointRecordingGetSpeedAtPoint(name, point) end

--- 
--- For a full list, see here: pastebin.com/Tp0XpBMN  
--- For a full list of the points, see here: goo.gl/wIH0vn  
--- 
--- @param name string
--- @param x number
--- @param y number
--- @param z number
--- @param point number
--- @return boolean
function WaypointRecordingGetClosestWaypoint(name, x, y, z, point) end

--- 
--- For a full list, see here: pastebin.com/Tp0XpBMN  
--- For a full list of the points, see here: goo.gl/wIH0vn  
--- 
--- @param name string
--- @param points number
--- @return boolean
function WaypointRecordingGetNumPoints(name, points) end

