--- 
--- Most likely ADD_CURRENT_*
--- 
--- @param xLow number
--- @param yLow number
--- @param xHigh number
--- @param yHigh number
--- @param height number
--- @return number
function AddCurrentRise(xLow, yLow, xHigh, yHigh, height) end

--- 
--- Gets the aggressiveness factor of the ocean waves.  
--- 
--- @return number
function GetDeepOceanScaler() end

--- 
--- This function set height to the value of z-axis of the water surface.  
--- This function works with sea and lake. However it does not work with shallow rivers (e.g. raton canyon will return -100000.0f)  
--- note: seems to return true when you are in water  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param height number
--- @return boolean
function GetWaterHeight(x, y, z, height) end


--- @param x number
--- @param y number
--- @param z number
--- @param height number
--- @return boolean
function GetWaterHeightNoWaves(x, y, z, height) end

--- 
--- Sets the water height for a given position and radius.  
--- 
--- @param x number
--- @param y number
--- @param radius number
--- @param height number
function ModifyWater(x, y, radius, height) end

--- 
--- p0 is the handle returned from _0xFDBF4CDBC07E1706  
--- 
--- @param p0 number
function RemoveCurrentRise(p0) end

--- 
--- Sets the waves intensity back to original (1.0 in most cases). 
--- 
function ResetDeepOceanScaler() end

--- 
--- Sets a value that determines how aggressive the ocean waves will be. Values of 2.0 or more make for very aggressive waves like you see during a thunderstorm.  
--- Works only ~200 meters around the player.  
--- 
--- @param intensity number
function SetDeepOceanScaler(intensity) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param p6 any
--- @param p7 any
--- @return boolean
function TestProbeAgainstAllWater(p0, p1, p2, p3, p4, p5, p6, p7) end


--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param result vector3
--- @return boolean
function TestProbeAgainstWater(x1, y1, z1, x2, y2, z2, result) end

--- 
--- I guess p3 is shape test flags?  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param p3 any
--- @param height number
--- @return boolean
function TestVerticalProbeAgainstAllWater(x, y, z, p3, height) end

