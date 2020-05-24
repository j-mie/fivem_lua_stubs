--- 
--- Checks if you're recording, returns TRUE when you start recording (F1) or turn on action replay (F2)  
--- mov al, cs:g_bIsRecordingGameplay // byte_141DD0CD0 in b944  
--- retn  
--- 
--- @return boolean
function IsRecording() end

--- 
--- This will disable the ability to make camera changes in R* Editor.
--- 
--- RE*
--- 
function DisableRockstarEditorCameraChanges() end


--- @return boolean
function SaveRecordingClip() end

--- 
--- Stops recording and discards the recorded clip.  
--- 
function StopRecordingAndDiscardClip() end

--- 
--- Starts recording a replay.  
--- If mode is 0, turns on action replay.  
--- If mode is 1, starts recording.  
--- If already recording a replay, does nothing.  
--- 
--- @param mode number
function StartRecording(mode) end

--- 
--- Stops recording and saves the recorded clip.  
--- 
function StopRecordingAndSaveClip() end

--- This disable the recording feature and has to be called every frame.
function StopRecordingThisFrame() end

