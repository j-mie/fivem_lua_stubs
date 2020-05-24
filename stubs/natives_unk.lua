--- 
--- Returns the user's defined langauge as ID   
--- english: 12  
--- french = 7  
--- german = 22  
--- italian = 21  
--- japanese = 9  
--- korean = 17  
--- portuguese = 16  
--- spanish = 10  
--- russian = 25  
--- 
--- @return number
function GetUserLanguageId() end

--- 
--- american = 0  
--- french = 1   
--- german = 2  
--- italian =3  
--- spanish = 4  
--- portuguese = 5  
--- polish = 6  
--- russian = 7  
--- korean = 8  
--- chinesetraditional = 9  
--- japanese = 10  
--- mexican = 11  
--- chinesesimplified = 12
--- 
--- @return number
function GetCurrentLanguage() end


--- @return boolean
function LoadingscreenGetLoadFreemode() end


--- @return boolean
function LoadingscreenIsLoadingFreemode() end


--- @return boolean
function LoadingscreenGetLoadFreemodeWithEventName() end


--- @param toggle boolean
function LoadingscreenSetIsLoadingFreemode(toggle) end


--- @param toggle boolean
function LoadingscreenSetLoadFreemode(toggle) end

--- 
--- Only occurrence was false, in maintransition.  
--- 
--- @param toggle boolean
function LoadingscreenSetLoadFreemodeWithEventName(toggle) end

