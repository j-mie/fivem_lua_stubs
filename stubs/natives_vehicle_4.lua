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
--- @param vehicle Vehicle
--- @param index number
--- @return any
function SmashVehicleWindow(vehicle, index) end


--- @param vehicle Vehicle
function SkipToEndAndStopPlaybackRecordedVehicle(vehicle) end


--- @param vehicle Vehicle
--- @param entity Entity
--- @param p2 number
function StabiliseEntityAttachedToHeli(vehicle, entity, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 number
--- @param p4 any
function StartPlaybackRecordedVehicleUsingAi(p0, p1, p2, p3, p4) end


--- @param vehicle Vehicle
--- @param p1 number
--- @param playback string
--- @param p3 boolean
function StartPlaybackRecordedVehicle(vehicle, p1, playback, p3) end

--- 
--- Sounds the horn for the specified vehicle.  
--- vehicle: The vehicle to activate the horn for.  
--- mode: The hash of "NORMAL" or "HELDDOWN". Can be 0.  
--- duration: The duration to sound the horn, in milliseconds.  
--- Note: If a player is in the vehicle, it will only sound briefly.  
--- 
--- @param vehicle Vehicle
--- @param duration number
--- @param mode Hash
--- @param forever boolean
function StartVehicleHorn(vehicle, duration, mode, forever) end


--- @param vehicle Vehicle
--- @param p1 any
--- @param playback string
--- @param p3 any
--- @param p4 any
--- @param p5 any
function StartPlaybackRecordedVehicleWithFlags(vehicle, p1, playback, p3, p4, p5) end


function StopAllGarageActivity() end

--- 
--- NativeDB Return Type: void
--- 
--- @param vehicle Vehicle
--- @return any
function StartVehicleAlarm(vehicle) end

--- 
--- Toggles:  
--- UNK17   
--- Turbo   
--- UNK19   
--- Tire Smoke   
--- UNK21   
--- Xenon Headlights  
--- 
--- @param vehicle Vehicle
--- @param modType number
--- @param toggle boolean
function ToggleVehicleMod(vehicle, modType, toggle) end

--- 
--- in script hook .net   
--- Vehicle v = ...;  
--- Function.Call(Hash.TRACK_VEHICLE_VISIBILITY, v.Handle);  
--- 
--- @param vehicle Vehicle
function TrackVehicleVisibility(vehicle) end


--- @param vehicle Vehicle
function StopPlaybackRecordedVehicle(vehicle) end

--- 
--- NativeDB Return Type: void
--- 
--- @param intersectionId number
--- @param state boolean
--- @return any
function SwitchTrainTrack(intersectionId, state) end

--- Transforms the stormberg to it's "water vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
--- @param vehicle Vehicle
--- @param instantly boolean
function TransformVehicleToSubmarine(vehicle, instantly) end

--- Transforms the stormberg to it's "road vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
--- @param vehicle Vehicle
--- @param instantly boolean
function TransformSubmarineToVehicle(vehicle, instantly) end


--- @param vehicle Vehicle
function UnpausePlaybackRecordedVehicle(vehicle) end

