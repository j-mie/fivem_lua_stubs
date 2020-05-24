
--- @param vehicle Vehicle
--- @param p1 any
function SetAudioVehiclePriority(vehicle, p1) end

--- 
--- p0 is usually 0. sometimes 2. Not sure what this does.  
--- 
--- @param mode number
function SetAudioSpecialEffectMode(mode) end

--- 
--- All occurrences found in b617d, sorted alphabetically and identical lines removed:   
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_AK");  
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_CUSTOM");  
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_TOOTHLESS");  
--- 
--- @param name string
function SetCutsceneAudioOverride(name) end

--- 
--- Examples:  
--- AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_MICHAEL", 1);  
--- AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_MICHAEL", 1);  
--- AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_TREVOR", 1);  
--- AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_SAVE_MICHAEL_TREVOR", 1);  
--- AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "OFF_ROAD_RADIO_ROCK_LIST", 1);  
--- AUDIO::_4E404A9361F75BB2("RADIO_06_COUNTRY", "MAGDEMO2_RADIO_DINGHY", 1);  
--- AUDIO::_4E404A9361F75BB2("RADIO_16_SILVERLAKE", "SEA_RACE_RADIO_PLAYLIST", 1);  
--- AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "OFF_ROAD_RADIO_ROCK_LIST", 1);  
--- 
--- @param radioStation string
--- @param trackListName string
--- @param p2 boolean
function SetCustomRadioTrackList(radioStation, trackListName, p2) end


--- @param active boolean
function SetFrontendRadioActive(active) end


--- @param emitterName string
--- @param radioStation string
function SetEmitterRadioStation(emitterName, radioStation) end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetHornEnabled(vehicle, toggle) end


--- @param active boolean
function SetGpsActive(active) end


--- @param radioStation string
function SetInitialPlayerStation(radioStation) end

--- 
--- If this is the correct name, what microphone? I know your TV isn't going to reach out and adjust your headset so..  
--- 
--- @param p0 boolean
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param x3 number
--- @param y3 number
--- @param z3 number
function SetMicrophonePosition(p0, x1, y1, z1, x2, y2, z2, x3, y3, z3) end


--- @param state boolean
function SetMobilePhoneRadioState(state) end

--- 
--- Enables Radio on phone.  
--- 
--- @param toggle boolean
function SetMobileRadioEnabledDuringGameplay(toggle) end

--- 
--- Sets the ped drunk sounds.  Only works with PLAYER_PED_ID  
--- ====================================================  
--- As mentioned above, this only sets the drunk sound to ped/player.  
--- To give the Ped a drunk effect with drunk walking animation try using SET_PED_MOVEMENT_CLIPSET  
--- Below is an example  
--- if (!Function.Call<bool>(Hash.HAS_ANIM_SET_LOADED, "move_m@drunk@verydrunk"))  
---                 {  
---                     Function.Call(Hash.REQUEST_ANIM_SET, "move_m@drunk@verydrunk");  
---                 }  
---                 Function.Call(Hash.SET_PED_MOVEMENT_CLIPSET, Ped.Handle, "move_m@drunk@verydrunk", 0x3E800000);  
--- And to stop the effect use  
--- RESET_PED_MOVEMENT_CLIPSET  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetPedIsDrunk(ped, toggle) end

--- 
--- Assigns some ambient voice to the ped.  
--- 
--- @param ped Ped
function SetPedScream(ped) end

--- 
--- Speech related.  
--- 
--- @param ped Ped
function SetPedTalk(ped) end


--- @param ped Ped
--- @param toggle boolean
function SetPlayerAngry(ped, toggle) end

--- 
--- Found in the b617d scripts, duplicates removed:    
--- AUDIO::_044DBAD7A7FA2BE5("V_CARSHOWROOM_PS_WINDOW_UNBROKEN", "V_CARSHOWROOM_PS_WINDOW_BROKEN");  
---  AUDIO::_044DBAD7A7FA2BE5("V_CIA_PS_WINDOW_UNBROKEN", "V_CIA_PS_WINDOW_BROKEN");  
---  AUDIO::_044DBAD7A7FA2BE5("V_DLC_HEIST_APARTMENT_DOOR_CLOSED", "V_DLC_HEIST_APARTMENT_DOOR_OPEN");  
---  AUDIO::_044DBAD7A7FA2BE5("V_FINALEBANK_PS_VAULT_INTACT", "V_FINALEBANK_PS_VAULT_BLOWN");  
---  AUDIO::_044DBAD7A7FA2BE5("V_MICHAEL_PS_BATHROOM_WITH_WINDOW", "V_MICHAEL_PS_BATHROOM_WITHOUT_WINDOW");  
--- 
--- @param p0 string
--- @param p1 string
function SetPortalSettingsOverride(p0, p1) end

--- 
--- From the scripts:  
--- AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("PAIGE_PVG"));  
---                 AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("TALINA_PVG"));  
---             AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("FEMALE_LOST_BLACK_PVG"));  
---             AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("FEMALE_LOST_WHITE_PVG"));  
--- 
--- @param ped Ped
--- @param voiceGroupHash Hash
function SetPedVoiceGroup(ped, voiceGroupHash) end


--- @param p0 number
function SetRadioFrontendFadeTime(p0) end


--- @param toggle boolean
function SetRadioAutoUnfreeze(toggle) end

--- 
--- 6 calls in the b617d scripts, removed identical lines:  
--- AUDIO::_774BD811F656A122("RADIO_01_CLASS_ROCK", 1);  
--- AUDIO::_774BD811F656A122(AUDIO::GET_RADIO_STATION_NAME(10), 0);  
--- AUDIO::_774BD811F656A122(AUDIO::GET_RADIO_STATION_NAME(10), 1);  
--- 
--- @param radioStation string
--- @param toggle boolean
function SetRadioStationMusicOnly(radioStation, toggle) end

--- 
--- For a full list, see here: pastebin.com/Kj9t38KF  
--- 
--- @param stationName string
function SetRadioToStationName(stationName) end

--- 
--- Sets radio station by index.  
--- 
--- @param radioStation number
function SetRadioToStationIndex(radioStation) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param radioStationName string
--- @param mixName string
--- @param p2 number
function SetRadioTrackMix(radioStationName, mixName, p2) end

--- 
--- NativeDB Parameter 1: BOOL toggle
--- 
--- @param vehicle Vehicle
--- @param toggle ScrHandle
function SetSirenWithNoDriver(vehicle, toggle) end

--- 
--- Only found this one in the decompiled scripts:  
--- AUDIO::SET_RADIO_TRACK("RADIO_03_HIPHOP_NEW", "ARM1_RADIO_STARTS");  
--- 
--- @param radioStation string
--- @param radioTrack string
function SetRadioTrack(radioStation, radioTrack) end

--- 
--- Sets the position of the audio event to the entity's position for one frame(?)  
--- if (l_8C3 == 0) {  
---     sub_27fd1(0, -1, 1);  
---     if (PED::IS_SYNCHRONIZED_SCENE_RUNNING(l_87D)) {  
---         AUDIO::STOP_SYNCHRONIZED_AUDIO_EVENT(l_87D);  
---     }  
---     if (sub_7dd(l_A00)) {  
---         AUDIO::_950A154B8DAB6185("PAP2_IG1_POPPYSEX", l_A00);  
---     }  
---     sub_91c("TK************ SETTING SYNCH SCENE AUDIO POSITION THIS FRAME ************TK");  
---     l_8C3 = 1;  
--- }  
--- --  
--- Found in the b617d scripts, duplicates removed:   
--- AUDIO::_950A154B8DAB6185("CAR_5_IG_6", l_7FE[1/*1*/]);  
--- AUDIO::_950A154B8DAB6185("EX03_TRAIN_BIKE_LAND",   PLAYER::PLAYER_PED_ID());  
--- AUDIO::_950A154B8DAB6185("FBI_2_MCS_1_LeadIn", l_40[2/*1*/]);  
--- AUDIO::_950A154B8DAB6185("FIN_C2_MCS_1", l_24C[0/*1*/]);  
--- AUDIO::_950A154B8DAB6185("MNT_DNC", l_5F);  
--- AUDIO::_950A154B8DAB6185("PAP2_IG1_POPPYSEX", l_A00);  
--- 
--- @param p0 string
--- @param p1 Entity
function SetSynchronizedAudioEventPositionThisFrame(p0, p1) end

--- 
--- Called 5 times in the scripts. All occurrences found in b617d, sorted alphabetically and identical lines removed:   
--- AUDIO::GET_PLAYER_HEADSET_SOUND_ALTERNATE("INOUT", 0.0);  
--- AUDIO::GET_PLAYER_HEADSET_SOUND_ALTERNATE("INOUT", 1.0);  
--- 
--- @param variableName string
--- @param value number
function SetVariableOnCutsceneAudio(variableName, value) end

--- 
--- NativeDB Parameter 0: Hash doorHash
--- 
--- @param doorHash any
--- @param toggle boolean
function SetScriptUpdateDoorAudio(doorHash, toggle) end

--- 
--- From the scripts, p0:  
--- "ArmWrestlingIntensity",  
--- "INOUT",  
--- "Monkey_Stream",  
--- "ZoomLevel"  
--- 
--- @param p0 string
--- @param p1 number
function SetVariableOnStream(p0, p1) end

--- 
--- Example:  
--- AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false);	AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false);	AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false);  
--- This turns off surrounding sounds not connected directly to peds.  
--- 
--- @param emitterName string
--- @param toggle boolean
function SetStaticEmitterEnabled(emitterName, toggle) end


--- @param toggle boolean
function SetUserRadioControlEnabled(toggle) end

--- 
--- For a full list, see here: pastebin.com/Kj9t38KF  
--- 
--- @param vehicle Vehicle
--- @param radioStation string
function SetVehRadioStation(vehicle, radioStation) end


--- @param vehicle Vehicle
--- @param damageFactor number
function SetVehicleAudioEngineDamageFactor(vehicle, damageFactor) end

--- 
--- can't seem to enable radio on cop cars etc  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleRadioEnabled(vehicle, toggle) end


--- @param soundId number
--- @param variableName string
--- @param value number
function SetVariableOnSound(soundId, variableName, value) end


function SkipRadioForward() end

--- 
--- AUDIO::_733ADF241531E5C2("inTunnel", 1.0);  
--- AUDIO::_733ADF241531E5C2("inTunnel", 0.0);  
--- I do not know as of yet what this does, but this was found in the scripts.  
--- 
--- @param variableName string
--- @param value number
function SetVariableOnUnderWaterStream(variableName, value) end


function SkipToNextScriptedConversationLine() end

--- 
--- SET_VEHICLE_BOOST_ACTIVE(vehicle, 1, 0);  
--- SET_VEHICLE_BOOST_ACTIVE(vehicle, 0, 0);   
--- Will give a boost-soundeffect.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleBoostActive(vehicle, toggle) end

--- 
--- Used to prepare a scene where the surrounding sound is muted or a bit changed. This does not play any sound.  
--- List of all usable scene names found in b617d. Sorted alphabetically and identical names removed: pastebin.com/MtM9N9CC  
--- 
--- @param scene string
--- @return boolean
function StartAudioScene(scene) end


function StartPreloadedConversation() end


--- @param vehicle Vehicle
--- @param toggle boolean
function SetVehicleRadioLoud(vehicle, toggle) end


--- @param p0 boolean
--- @param p1 boolean
function StartScriptPhoneConversation(p0, p1) end

--- 
--- Example:  
--- This will stop the alarm at Fort Zancudo.  
--- AUDIO::STOP_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
--- First parameter (char) is the name of the alarm.  
--- Second parameter (bool) has to be true (1) to have any effect.  
--- 
--- @param alarmName string
--- @param toggle boolean
function StopAlarm(alarmName, toggle) end

--- 
--- SET_*
--- 
--- @param vehicle Vehicle
function SoundVehicleHornThisFrame(vehicle) end

--- 
--- Example:  
--- This will start the alarm at Fort Zancudo.  
--- AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
--- First parameter (char) is the name of the alarm.  
--- Second parameter (bool) is unknown, it does not seem to make a difference if this one is 0 or 1.  
--- ----------  
--- It DOES make a difference but it has to do with the duration or something I dunno yet  
--- ----------  
---  Found in the b617d scripts:  
---  AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS", 0);  
---  AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER", 1);  
---  AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER_B", 0);  
---  AUDIO::START_ALARM("BIG_SCORE_HEIST_VAULT_ALARMS", a_0);  
---  AUDIO::START_ALARM("FBI_01_MORGUE_ALARMS", 1);  
---  AUDIO::START_ALARM("FIB_05_BIOTECH_LAB_ALARMS", 0);  
---  AUDIO::START_ALARM("JEWEL_STORE_HEIST_ALARMS", 0);  
---  AUDIO::START_ALARM("PALETO_BAY_SCORE_ALARM", 1);  
---  AUDIO::START_ALARM("PALETO_BAY_SCORE_CHICKEN_FACTORY_ALARM", 0);  
---  AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
---  AUDIO::START_ALARM("PORT_OF_LS_HEIST_SHIP_ALARMS", 0);  
---  AUDIO::START_ALARM("PRISON_ALARMS", 0);  
---  AUDIO::START_ALARM("PROLOGUE_VAULT_ALARMS", 0);  
--- 
--- @param alarmName string
--- @param p2 boolean
function StartAlarm(alarmName, p2) end


--- @param scene string
function StopAudioScene(scene) end


--- @param p0 boolean
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 boolean
function StartScriptConversation(p0, p1, p2, p3) end

--- 
--- Stops speech.  
--- 
--- @param ped Ped
function StopCurrentPlayingSpeech(ped) end


function StopCutsceneAudio() end


--- @param stop boolean
function StopAllAlarms(stop) end


--- @param ped Ped
function StopPedRingtone(ped) end


--- @param p0 boolean
--- @return number
function StopScriptedConversation(p0) end

--- 
--- ??  
--- 
function StopAudioScenes() end


function StopStream() end

--- 
--- Needs to be called every frame.  
--- 
--- @param ped Ped
function StopCurrentPlayingAmbientSpeech(ped) end

--- 
--- List of all usable event names found in b617d used with this native. Sorted alphabetically and identical names removed: pastebin.com/RzDFmB1W  
--- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
--- 
--- @param eventName string
--- @return boolean
function TriggerMusicEvent(eventName) end


--- @param radioStation string
function UnfreezeRadioStation(radioStation) end


--- @param ped Ped
--- @param shaking boolean
function StopPedSpeaking(ped, shaking) end

--- 
--- 2 calls in the b617d scripts. This line is called 2 times:  
--- AUDIO::_031ACB6ABA18C729("RADIO_16_SILVERLAKE", "MIRRORPARK_LOCKED");  
--- Note: Another name for RADIO_16_SILVERLAKE is RADIO MIRROR PARK  
--- 
--- @param radioStation string
--- @param trackListName string
function UnlockRadioStationTrackList(radioStation, trackListName) end


--- @param soundId number
function StopSound(soundId) end

--- **This native does absolutely nothing, just a nullsub**
--- 
--- 
--- On last-gen this just runs blr and this func is called by several other functions other then the native's table.  
--- 
function UnregisterScriptWithAudio() end


--- @param p0 any
--- @return boolean
function StopSynchronizedAudioEvent(p0) end

--- 
--- I see this as a native that would of been used back in GTA III when you finally unlocked the bridge to the next island and such.  
--- 
--- @param newsStory number
function UnlockMissionNewsStory(newsStory) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param enableMixes boolean
function UpdateLsur(enableMixes) end


--- @param vehicle Vehicle
--- @param toggle boolean
function UseSirenAsHorn(vehicle, toggle) end

