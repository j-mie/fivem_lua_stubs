--- 
--- I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down  
--- 
--- @param value number
--- @return number
function Ceil(value) end


--- @param value number
--- @return number
function Cos(value) end


--- @param value number
--- @return number
function Floor(value) end


--- @param base number
--- @param exponent number
--- @return number
function Pow(base, exponent) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param value number
--- @return number
function Log10(value) end


--- @param value number
--- @return number
function Round(value) end

--- 
--- 0 = high
--- 1 = normal
--- 2 = low
--- 
--- @param priority number
function SetThreadPriority(priority) end


--- @param value number
function Settimera(value) end


--- @param value number
--- @param bitShift number
--- @return number
function ShiftLeft(value, bitShift) end


--- @param value number
function Settimerb(value) end


--- @param value number
--- @return number
function Sin(value) end


--- @param value number
--- @param bitShift number
--- @return number
function ShiftRight(value, bitShift) end

--- 
--- Examples:  
--- g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);  
--- l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);  
--- SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);  
--- SYSTEM::START_NEW_SCRIPT("emergencycall", 512);  
--- SYSTEM::START_NEW_SCRIPT("emergencycall", 512);   
--- SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);  
--- SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);  
--- SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);  
--- SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);  
--- 		Decompiled examples of usage when starting a script:  
---    SCRIPT::REQUEST_SCRIPT(a_0);  
---    if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {  
---        SYSTEM::START_NEW_SCRIPT(a_0, v_3);  
---        SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);  
---        return 1;  
---    }  
--- 		or:  
---    v_2 = "MrsPhilips2";  
---    SCRIPT::REQUEST_SCRIPT(v_2);  
---    while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {  
---    SCRIPT::REQUEST_SCRIPT(v_2);  
---    SYSTEM::WAIT(0);  
---    }  
---    sub_8792(36);  
---    SYSTEM::START_NEW_SCRIPT(v_2, 17000);  
---    SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);  
--- 		All native script names: pastebin.com/K9adDsu4 and pastebin.com/yLNWicUi  
--- 
--- @param scriptName string
--- @param stackSize number
--- @return number
function StartNewScript(scriptName, stackSize) end


--- @param scriptHash Hash
--- @param stackSize number
--- @return number
function StartNewScriptWithNameHash(scriptHash, stackSize) end


--- @param value number
--- @return number
function Sqrt(value) end

--- 
--- return : script thread id, 0 if failed  
--- Pass pointer to struct of args in p1, size of struct goes into p2  
--- 
--- @param scriptName string
--- @param args any
--- @param argCount number
--- @param stackSize number
--- @return number
function StartNewScriptWithArgs(scriptName, args, argCount, stackSize) end


--- @param scriptHash Hash
--- @param args any
--- @param argCount number
--- @param stackSize number
--- @return number
function StartNewScriptWithNameHashAndArgs(scriptHash, args, argCount, stackSize) end

--- 
--- Gets the current frame time.  
--- 
--- @return number
function Timestep() end

--- 
--- Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).  
--- 
--- @return number
function Timera() end


--- @return number
function Timerb() end

--- 
--- Calculates distance between vectors.  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @return number
function Vdist(x1, y1, z1, x2, y2, z2) end


--- @param value number
--- @return number
function ToFloat(value) end

--- 
--- Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @return number
function Vdist2(x1, y1, z1, x2, y2, z2) end

--- 
--- Calculates the magnitude of a vector.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @return number
function Vmag(x, y, z) end

--- 
--- Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @return number
function Vmag2(x, y, z) end

--- 
--- Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use   
--- static void WAIT(DWORD time);  
--- 		found in main.h   
--- 		--------------------------------------------------------------------  
--- 		It does not actually seem to wait the amount of milliseconds stated like the normal WAIT() command does, but it does seem to make task sequences work more smoothly  
--- 		System native hashes do not change on gameupdate  
--- 
--- @param ms number
function Wait(ms) end

