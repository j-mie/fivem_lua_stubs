--- 
--- Hashed version of 0xDC2BACD920D0A0DD.
--- 
--- NativeDB Introduced: v323
--- 
--- @param contextHash Hash
function BgEndContextHash(contextHash) end

--- 
--- Deletes the given context from the background scripts context map.
--- 
--- NativeDB Introduced: v323
--- 
--- @param contextName string
function BgEndContext(contextName) end

--- 
--- Inserts the given context into the background scripts context map.
--- 
--- NativeDB Introduced: v323
--- 
--- @param contextName string
function BgStartContext(contextName) end

--- 
--- Hashed version of 0x9D5A25BADB742ACD.
--- 
--- NativeDB Introduced: v323
--- 
--- @param contextHash Hash
function BgStartContextHash(contextHash) end

--- 
--- formerly _IS_STREAMED_SCRIPT_RUNNING  
--- Jenkins hash: 0x19EAE282  
--- 
--- @param scriptHash Hash
--- @return boolean
function DoesScriptWithNameHashExist(scriptHash) end

--- 
--- For a full list, see here: pastebin.com/yLNWicUi  
--- 
--- @param scriptName string
--- @return boolean
function DoesScriptExist(scriptName) end

--- 
--- eventGroup: 0 = CEventGroupScriptAI, 1 = CEventGroupScriptNetwork  
--- 
--- @param eventGroup number
--- @param eventIndex number
--- @return number
function GetEventAtIndex(eventGroup, eventIndex) end

--- 
--- eventGroup: 0 = CEventGroupScriptAI, 1 = CEventGroupScriptNetwork  
--- 
--- @param eventGroup number
--- @param eventIndex number
--- @param argStruct number
--- @param argStructSize number
--- @return boolean
function GetEventData(eventGroup, eventIndex, argStruct, argStructSize) end

--- 
--- eventGroup: 0 = CEventGroupScriptAI, 1 = CEventGroupScriptNetwork  
--- 
--- @param eventGroup number
--- @param eventIndex number
--- @return boolean
function GetEventExists(eventGroup, eventIndex) end


--- @return Hash
function GetHashOfThisScriptName() end

--- 
--- The reversed code looks like this (Sasuke78200)  
--- //  
--- char g_szScriptName[64];  
--- char* _0xBE7ACD89(int a_iThreadID)  
--- {  
--- 	scrThread* l_pThread;  
--- 	// Get the script thread  
--- 	l_pThread = GetThreadByID(a_iThreadID);	  
--- 	if(l_pThread == 0 || l_pThread->m_iThreadState == 2)  
--- 	{  
--- strncpy(g_szScriptName, "", 64);  
--- 	}  
--- 	else  
--- 	{  
--- strncpy(g_szScriptName, l_pThread->m_szScriptName, 64);  
--- 	}	  
--- 	return g_szScriptName;  
--- }  
--- 
--- @param threadId number
--- @return string
function GetNameOfThread(threadId) end


--- @return number
function GetIdOfThisThread() end

--- 
--- eventGroup: 0 = CEventGroupScriptAI, 1 = CEventGroupScriptNetwork  
--- 
--- @param eventGroup number
--- @return number
function GetNumberOfEvents(eventGroup) end


--- @return boolean
function GetNoLoadingScreen() end

--- 
--- Gets the number of instances of the specified script is currently running.  
--- Actually returns numInstances - 1.  
--- if (scriptPtr)  
---     v3 = GetNumberOfInstancesOfScript(scriptPtr) - 1;  
--- return v3;  
--- 
--- @param scriptHash Hash
--- @return number
function GetNumberOfInstancesOfScriptWithNameHash(scriptHash) end


--- @return string
function GetThisScriptName() end

--- 
--- Returns if a script has been loaded into the game. Used to see if a script was loaded after requesting.  
--- For a full list, see here: pastebin.com/yLNWicUi  
--- 
--- @param scriptName string
--- @return boolean
function HasScriptLoaded(scriptName) end


--- @param scriptHash Hash
--- @return boolean
function HasScriptWithNameHashLoaded(scriptHash) end


--- @param threadId number
--- @return boolean
function IsThreadActive(threadId) end

--- 
--- For a full list, see here: pastebin.com/yLNWicUi  
--- 
--- @param scriptName string
function RequestScript(scriptName) end

--- 
--- MulleDK19: Gets the ID of the next active thread.  
--- First call _BEGIN_ENUMERATE_THREADS (0xDADFADA5A20143A8).  
--- Any subsequent call to this function will then return the ID of the next active thread.  
--- If the function returns 0, the end of the enumeration has been reached.  
--- -----------------------------------------------------------------------  
--- Here's an example:  
--- 	std::vector<int> vecCurrentThreads;  
--- 	void update_current_threads_list()  
--- 	{  
--- vecCurrentThreads.clear();  
--- _BEGIN_ENUMERATING_THREADS();  
--- int id = _GET_ID_OF_NEXT_THREAD_IN_ENUMERATION();  
--- while (id != 0)  
--- {  
--- 	id = _GET_ID_OF_NEXT_THREAD_IN_ENUMERATION();  
--- 	vecCurrentThreads.push_back(id);  
--- }  
--- 	}  
--- 
--- @return number
function ScriptThreadIteratorGetNextThreadId() end

--- 
--- formerly _REQUEST_STREAMED_SCRIPT  
--- 
--- @param scriptHash Hash
function RequestScriptWithNameHash(scriptHash) end

--- 
--- MulleDK19: Starts a new enumeration of the current threads.  
--- Call this first, then _GET_ID_OF_NEXT_THREAD_IN_ENUMERATION (0x30B4FA1C82DD4B9F)  
--- see _GET_ID_OF_NEXT_THREAD_IN_ENUMERATION (0x30B4FA1C82DD4B9F) for an example  
--- 
function ScriptThreadIteratorReset() end

--- 
--- For a full list, see here: pastebin.com/yLNWicUi  
--- 
--- @param scriptName string
function SetScriptAsNoLongerNeeded(scriptName) end


--- @param toggle boolean
function SetNoLoadingScreen(toggle) end


function ShutdownLoadingScreen() end


--- @param scriptHash Hash
function SetScriptWithNameHashAsNoLongerNeeded(scriptHash) end


--- @param threadId number
function TerminateThread(threadId) end


function TerminateThisThread() end

--- 
--- NativeDB Parameter 0: int eventGroup
--- 
--- @param eventGroup boolean
--- @param args number
--- @param argCount number
--- @param bit number
function TriggerScriptEvent2(eventGroup, args, argCount, bit) end

--- 
--- yis  
--- eventGroup: 0 = CEventGroupScriptAI, 1 = CEventGroupScriptNetwork  
--- ^^ I'm assuming it's like the rest with this parameter.  
--- 
--- @param eventGroup number
--- @param args number
--- @param argCount number
--- @param bit number
function TriggerScriptEvent(eventGroup, args, argCount, bit) end

