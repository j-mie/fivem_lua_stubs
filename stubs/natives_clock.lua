
--- @param hours number
--- @param minutes number
--- @param seconds number
function AddToClockTime(hours, minutes, seconds) end


--- @param hour number
--- @param minute number
--- @param second number
function AdvanceClockTimeTo(hour, minute, second) end

--- 
--- Gets the current day of the week.  
--- 0: Sunday  
--- 1: Monday  
--- 2: Tuesday  
--- 3: Wednesday  
--- 4: Thursday  
--- 5: Friday  
--- 6: Saturday  
--- 
--- @return number
function GetClockDayOfWeek() end


--- @return number
function GetClockDayOfMonth() end

--- 
--- Gets the current ingame clock minute.  
--- 
--- @return number
function GetClockMinutes() end

--- 
--- Gets the current ingame hour, expressed without zeros. (09:34 will be represented as 9)  
--- 
--- @return number
function GetClockHours() end

--- 
--- Gets the current ingame clock second. Note that ingame clock seconds change really fast since a day in GTA is only 48 minutes in real life.  
--- 
--- @return number
function GetClockSeconds() end


--- @return number
function GetClockMonth() end

--- 
--- Gets local system time as year, month, day, hour, minute and second.  
--- Example usage:  
--- int year;  
--- int month;  
--- int day;  
--- int hour;  
--- int minute;  
--- int second;  
--- or use std::tm struct  
--- TIME::GET_LOCAL_TIME(&year, &month, &day, &hour, &minute, &second);  
--- 
--- @param year number
--- @param month number
--- @param day number
--- @param hour number
--- @param minute number
--- @param second number
function GetLocalTime(year, month, day, hour, minute, second) end


--- @return number
function GetClockYear() end

--- 
--- Gets system time as year, month, day, hour, minute and second.  
--- Example usage:  
--- 	int year;  
--- 	int month;  
--- 	int day;  
--- 	int hour;  
--- 	int minute;  
--- 	int second;  
--- 	TIME::GET_POSIX_TIME(&year, &month, &day, &hour, &minute, &second);  
--- 
--- @param year number
--- @param month number
--- @param day number
--- @param hour number
--- @param minute number
--- @param second number
function GetPosixTime(year, month, day, hour, minute, second) end

--- Returns how many real ms are equal to one game minute.
--- A getter for [SetMillisecondsPerGameMinute](#_0x36CA2554).
--- @return number
function GetMillisecondsPerGameMinute() end


--- @param day number
--- @param month number
--- @param year number
function SetClockDate(day, month, year) end

--- 
--- gets current UTC time  
--- 
--- @param year number
--- @param month number
--- @param day number
--- @param hour number
--- @param minute number
--- @param second number
function GetUtcTime(year, month, day, hour, minute, second) end

--- 
--- SET_CLOCK_TIME(12, 34, 56);  
--- 
--- @param hour number
--- @param minute number
--- @param second number
function SetClockTime(hour, minute, second) end


--- @param toggle boolean
function PauseClock(toggle) end

