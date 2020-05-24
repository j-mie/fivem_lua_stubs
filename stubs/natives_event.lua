--- 
--- duration is float here  
--- Event types - camx.me/gtav/tasks/shockingevents.txt  
--- 
--- @param type number
--- @param entity Entity
--- @param duration number
--- @return ScrHandle
function AddShockingEventForEntity(type, entity, duration) end

--- 
--- duration is float here  
--- Event types- camx.me/gtav/tasks/shockingevents.txt  
--- 
--- @param type number
--- @param x number
--- @param y number
--- @param z number
--- @param duration number
--- @return ScrHandle
function AddShockingEventAtPosition(type, x, y, z, duration) end


--- @param name Hash
--- @param type number
function ClearDecisionMakerEventResponse(name, type) end


--- @param name Hash
--- @param type number
function BlockDecisionMakerEvent(name, type) end

--- 
--- Some events that i found, not sure about them, but seems to have logic based on my tests:  
--- '82 - dead body  
--- '86   
--- '87   
--- '88 - shooting, fire extinguisher in use  
--- '89   
--- '93 - ped using horn  
--- '95 - ped receiving melee attack  
--- '102 - living ped receiving shot  
--- '104 - player thrown grenade, tear gas, smoke grenade, jerry can dropping gasoline  
--- '105 - melee attack against veh  
--- '106 - player running  
--- '108 - vehicle theft  
--- '112 - melee attack  
--- '113 - veh rollover ped  
--- '114 - dead ped receiving shot  
--- '116 - aiming at ped  
--- '121   
--- 		Here is full dump of shocking event types from the exe camx.me/gtav/tasks/shockingevents.txt  
--- 
--- @param type number
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @return boolean
function IsShockingEventInSphere(type, x, y, z, radius) end


--- @param p0 boolean
function RemoveAllShockingEvents(p0) end


function RemoveShockingEventSpawnBlockingAreas() end


--- @param event ScrHandle
--- @return boolean
function RemoveShockingEvent(event) end


function SuppressAgitationEventsNextFrame() end


--- @param ped Ped
--- @param name Hash
function SetDecisionMaker(ped, name) end


function SuppressShockingEventsNextFrame() end


--- @param type number
function SuppressShockingEventTypeNextFrame(type) end


--- @param name Hash
--- @param type number
function UnblockDecisionMakerEvent(name, type) end

