
--- @param p0 string
function ActivateAudioSlowmoMode(p0) end

--- 
--- NOTE: ones that are -1, 0 - 35 are determined by a function where it gets a TextLabel from a global then runs,  
--- _GET_TEXT_SUBSTRING and depending on what the result is it goes in check order of 0 - 9 then A - Z then z (lowercase). So it will then return 0 - 35 or -1 if it's 'z'. The func to handle that ^^ is func_67 in dialog_handler.c atleast in TU27 Xbox360 scripts.  
--- p0 is -1, 0   
--- p1 is a char or string (whatever you wanna call it)  
--- p2 is Global 10597 + i * 6. 'i' is a while(i < 70) loop  
--- p3 is again -1, 0 - 35   
--- p4 is again -1, 0 - 35   
--- p5 is either 0 or 1 (bool ?)  
--- p6 is either 0 or 1 (The func to determine this is bool)  
--- p7 is either 0 or 1 (The func to determine this is bool)  
--- p8 is either 0 or 1 (The func to determine this is bool)  
--- p9 is 0 - 3 (Determined by func_60 in dialogue_handler.c)  
--- p10 is either 0 or 1 (The func to determine this is bool)  
--- p11 is either 0 or 1 (The func to determine this is bool)  
--- p12 is unknown as in TU27 X360 scripts it only goes to p11.  
--- 
--- @param index number
--- @param p1 string
--- @param p2 string
--- @param p3 number
--- @param p4 number
--- @param p5 boolean
--- @param p6 boolean
--- @param p7 boolean
--- @param p8 boolean
--- @param p9 number
--- @param p10 boolean
--- @param p11 boolean
--- @param p12 boolean
function AddLineToConversation(index, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function AudioIsScriptedMusicPlaying() end

--- 
--- ADD_E* (most likely ADD_ENTITY_*)  
--- All found occurrences in b678d:  
--- pastebin.com/ceu67jz8  
--- Still not sure on the functionality of this native but it has something to do with dynamic mixer groups defined in dynamix.dat15  
--- 
--- @param entity Entity
--- @param groupName string
--- @param p2 number
function AddEntityToAudioMixGroup(entity, groupName, p2) end


--- @param toggle boolean
function BlockDeathJingle(toggle) end

--- 
--- Checks if the ped can play the speech or has the speech file, last parameter is usually 0  
--- 
--- @param ped Ped
--- @param speechName string
--- @param unk boolean
--- @return boolean
function CanPedSpeak(ped, speechName, unk) end

--- 
--- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
--- 
--- @param eventName string
--- @return boolean
function CancelMusicEvent(eventName) end


--- @param p0 any
--- @param p1 boolean
function ClearAmbientZoneListState(p0, p1) end

--- 
--- 4 calls in the b617d scripts. The only one with p0 and p2 in clear text:  
--- AUDIO::ADD_PED_TO_CONVERSATION(5, l_AF, "DINAPOLI");  
--- =================================================  
--- One of the 2 calls in dialogue_handler.c p0 is in a while-loop, and so is determined to also possibly be 0 - 15.  
--- Based on it asking if does_entity_exist for the global I have determined that p1 is, in fact, the ped, but could be wrong.  
--- 
--- @param index number
--- @param ped Ped
--- @param p2 string
function AddPedToConversation(index, ped, p2) end

--- 
--- Plays the siren sound of a vehicle which is otherwise activated when fastly double-pressing the horn key.  
--- Only works on vehicles with a police siren.  
--- 
--- @param vehicle Vehicle
function BlipSiren(vehicle) end

--- 
--- 3 calls in the b617d scripts, removed duplicate.  
--- AUDIO::_1654F24A88A8E3FE("RADIO_16_SILVERLAKE");  
--- AUDIO::_1654F24A88A8E3FE("RADIO_01_CLASS_ROCK");  
--- 
--- @param radioStation string
function ClearCustomRadioTrackList(radioStation) end


function CancelCurrentPoliceReport() end


--- @param p0 string
function DeactivateAudioSlowmoMode(p0) end

--- 
--- Removes broken glass particles.  
--- 
function ClearAllBrokenGlass() end

--- 
--- if value is set to true, and ambient siren sound will be played.
--- 
--- @param value boolean
function DistantCopCarSirens(value) end

--- 
--- This function also has a p2, unknown. Signature AUDIO::CLEAR_AMBIENT_ZONE_STATE(char* zoneName, bool p1, Any p2);  
--- Still needs more research.   
--- Here are the names I've found: pastebin.com/AfA0Qjyv  
--- New Ambient Zone List (Combind with old): pastebin.com/h8BsKgUD -DasChaos  
--- 
--- @param zoneName string
--- @param p1 boolean
function ClearAmbientZoneState(zoneName, p1) end


--- @param vehicle Vehicle
--- @param toggle boolean
function EnableStallWarningSounds(vehicle, toggle) end


function CreateNewScriptedConversation() end


--- @param vehicle Vehicle
--- @param toggle boolean
function EnableVehicleExhaustPops(vehicle, toggle) end


--- @param ped Ped
--- @param toggle boolean
function DisablePedPainAudio(ped, toggle) end

--- 
--- This native sets the audio of the specified vehicle to audioName (p1).  
--- Use the audioNameHash found in vehicles.meta  
--- Example:  
--- _FORCE_VEHICLE_ENGINE_SOUND(veh, "ADDER");  
--- The selected vehicle will now have the audio of the Adder.  
--- FORCE_VEHICLE_???  
--- 
--- @param vehicle Vehicle
--- @param audioName string
function ForceVehicleEngineAudio(vehicle, audioName) end


--- @return boolean
function DoesPlayerVehHaveRadio() end


--- @param radioStation string
function FreezeRadioStation(radioStation) end


--- @param station number
--- @return number
function FindRadioStationIndex(station) end

--- 
--- NativeDB Return Type: Hash
--- 
--- @param ped Ped
--- @return any
function GetAmbientVoiceNameHash(ped) end


function FreezeMicrophone() end


--- @return number
function GetAudibleMusicTrackTextId() end


--- @return number
function GetCurrentScriptedConversationLine() end


--- @return boolean
function GetIsPreloadedConversationReady() end

--- 
--- Could this be used alongside either,   
--- SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES or _SET_NETWORK_ID_SYNC_TO_PLAYER to make it so other players can hear the sound while online? It'd be a bit troll-fun to be able to play the Zancudo UFO creepy sounds globally.  
--- 
--- @param soundId number
--- @return number
function GetNetworkIdFromSoundId(soundId) end


--- @return number
function GetMusicPlaytime() end


--- @return number
function GetPlayerRadioStationGenre() end


--- @return number
function GetNumUnlockedRadioStations() end

--- 
--- Returns active radio station name  
--- 
--- @return string
function GetPlayerRadioStationName() end

--- 
--- Returns 255 (radio off index) if the function fails.  
--- 
--- @return number
function GetPlayerRadioStationIndex() end


--- @return number
function GetSoundId() end

--- 
--- Returns String with radio station name.  
--- 
--- @param radioStation number
--- @return string
function GetRadioStationName(radioStation) end


--- @return number
function GetStreamPlayTime() end


--- @param netId number
--- @return number
function GetSoundIdFromNetworkId(netId) end

--- 
--- Returns hash of default vehicle horn  
--- Hash is stored in audVehicleAudioEntity  
--- 
--- @param vehicle Vehicle
--- @return Hash
function GetVehicleDefaultHorn(vehicle) end


--- @param vehicle Vehicle
--- @return Hash
function GetVehicleDefaultHornIgnoreMods(vehicle) end

--- 
--- HAS_*
--- 
--- @return boolean
function HasMultiplayerAudioDataLoaded() end

--- 
--- NativeDB Introduced: v1365
--- 
--- @param vehicle Vehicle
--- @return number
function GetVehicleDefaultHornVariation(vehicle) end


--- @param soundId number
--- @return boolean
function HasSoundFinished(soundId) end

--- 
--- HAS_*
--- 
--- @return boolean
function HasMultiplayerAudioDataUnloaded() end

--- 
--- NativeDB Added Parameter 3: Any p2
--- 
--- @param p0 any
--- @param p1 number
--- @return any
function HintScriptAudioBank(p0, p1) end

--- 
--- NativeDB Parameter 0: char* p0
--- NativeDB Added Parameter 3: int p2
--- 
--- @param p0 any
--- @param p1 number
--- @return any
function HintAmbientAudioBank(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
function InterruptConversation(p0, p1, p2) end

--- 
--- One call found in the b617d scripts:
--- AUDIO::_8A694D7A68F8DC38(NETWORK::NET_TO_PED(l_3989._f26F[0/*1*/]), "CONV_INTERRUPT_QUIT_IT", "LESTER");
--- 
--- @param p0 Ped
--- @param p1 string
--- @param p2 string
function InterruptConversationAndPause(p0, p1, p2) end

--- 
--- Example:  
--- bool playing = AUDIO::IS_ALARM_PLAYING("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");  
--- 
--- @param alarmName string
--- @return boolean
function IsAlarmPlaying(alarmName) end


--- @param ped Ped
--- @return boolean
function IsAmbientSpeechPlaying(ped) end

--- 
--- Common in the scripts:  
--- AUDIO::IS_AMBIENT_SPEECH_DISABLED(PLAYER::PLAYER_PED_ID());  
--- 
--- @param ped Ped
--- @return boolean
function IsAmbientSpeechDisabled(ped) end


--- @param ambientZone string
--- @return boolean
function IsAmbientZoneEnabled(ambientZone) end


--- @param pedHandle Ped
--- @return boolean
function IsAnimalVocalizationPlaying(pedHandle) end


--- @param scene string
--- @return boolean
function IsAudioSceneActive(scene) end


--- @param ped Ped
--- @return boolean
function IsAnySpeechPlaying(ped) end

--- 
--- Hardcoded to return 1  
--- 
--- @return boolean
function IsGameInControlOfMusic() end

--- 
--- Checks whether the horn of a vehicle is currently played.  
--- 
--- @param vehicle Vehicle
--- @return boolean
function IsHornActive(vehicle) end


--- @return boolean
function IsMissionCompletePlaying() end


--- @return boolean
function IsMissionCompleteReadyForUi() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @param newsStory number
--- @return number
function IsMissionNewsStoryUnlocked(newsStory) end


--- @return boolean
function IsMobilePhoneCallOngoing() end


--- @return boolean
function IsMobilePhoneRadioActive() end


--- @return boolean
function IsMusicOneshotPlaying() end


--- @param ped Ped
--- @return boolean
function IsPedInCurrentConversation(ped) end


--- @param ped Ped
--- @return boolean
function IsPedRingtonePlaying(ped) end


--- @return boolean
function IsPlayerVehRadioEnable() end


--- @return boolean
function IsRadioFadedOut() end


--- @return boolean
function IsRadioRetuning() end


--- @return boolean
function IsScriptedConversationLoaded() end


--- @param p0 any
--- @return boolean
function IsScriptedSpeechPlaying(p0) end


--- @return boolean
function IsScriptedConversationOngoing() end


--- @return boolean
function IsStreamPlaying() end


--- @param vehicle Vehicle
--- @return boolean
function IsVehicleRadioLoud(vehicle) end

--- 
--- Example:  
--- AUDIO::LOAD_STREAM("CAR_STEAL_1_PASSBY", "CAR_STEAL_1_SOUNDSET");  
--- All found occurrences in the b678d decompiled scripts: pastebin.com/3rma6w5w  
--- Stream names often ends with "_MASTER", "_SMALL" or "_STREAM". Also "_IN", "_OUT" and numbers.     
--- soundSet is often set to 0 in the scripts. These are common to end the soundSets: "_SOUNDS", "_SOUNDSET" and numbers.  
--- 
--- @param streamName string
--- @param soundSet string
--- @return boolean
function LoadStream(streamName, soundSet) end

--- 
--- L* (LINK_*?)
--- 
--- @param emitterName string
--- @param entity Entity
function LinkStaticEmitterToEntity(emitterName, entity) end

--- 
--- Example:  
--- AUDIO::LOAD_STREAM_WITH_START_OFFSET("STASH_TOXIN_STREAM", 2400, "FBI_05_SOUNDS");  
--- Only called a few times in the scripts.  
--- 
--- @param streamName string
--- @param startOffset number
--- @param soundSet string
--- @return boolean
function LoadStreamWithStartOffset(streamName, startOffset, soundSet) end

--- 
--- Disables the radio station (hides it from the radio wheel).
--- 
--- NativeDB Introduced: v1493
--- 
--- @param radioStationName string
--- @param toggle boolean
function LockRadioStation(radioStationName, toggle) end

--- 
--- NativeDB Parameter 0: Hash hash
--- 
--- @param hash any
--- @param toggle boolean
function OverridePlayerGroundMaterial(hash, toggle) end


--- @param p0 any
--- @param p1 boolean
function OverrideUnderwaterStream(p0, p1) end

--- 
--- NativeDB Parameter 0: Hash hash
--- 
--- @param hash any
--- @param toggle boolean
function OverrideMicrophoneSettings(hash, toggle) end


--- @param p0 boolean
function PauseScriptedConversation(p0) end

--- 
--- Plays ambient speech. See also _0x444180DB.  
--- ped: The ped to play the ambient speech.  
--- speechName: Name of the speech to play, eg. "GENERIC_HI".  
--- speechParam: Can be one of the following:  
--- SPEECH_PARAMS_STANDARD  
--- SPEECH_PARAMS_ALLOW_REPEAT  
--- SPEECH_PARAMS_BEAT  
--- SPEECH_PARAMS_FORCE  
--- SPEECH_PARAMS_FORCE_FRONTEND  
--- SPEECH_PARAMS_FORCE_NO_REPEAT_FRONTEND  
--- SPEECH_PARAMS_FORCE_NORMAL  
--- SPEECH_PARAMS_FORCE_NORMAL_CLEAR  
--- SPEECH_PARAMS_FORCE_NORMAL_CRITICAL  
--- SPEECH_PARAMS_FORCE_SHOUTED  
--- SPEECH_PARAMS_FORCE_SHOUTED_CLEAR  
--- SPEECH_PARAMS_FORCE_SHOUTED_CRITICAL  
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY  
--- SPEECH_PARAMS_MEGAPHONE  
--- SPEECH_PARAMS_HELI  
--- SPEECH_PARAMS_FORCE_MEGAPHONE  
--- SPEECH_PARAMS_FORCE_HELI  
--- SPEECH_PARAMS_INTERRUPT  
--- SPEECH_PARAMS_INTERRUPT_SHOUTED  
--- SPEECH_PARAMS_INTERRUPT_SHOUTED_CLEAR  
--- SPEECH_PARAMS_INTERRUPT_SHOUTED_CRITICAL  
--- SPEECH_PARAMS_INTERRUPT_NO_FORCE  
--- SPEECH_PARAMS_INTERRUPT_FRONTEND  
--- SPEECH_PARAMS_INTERRUPT_NO_FORCE_FRONTEND  
--- SPEECH_PARAMS_ADD_BLIP  
--- SPEECH_PARAMS_ADD_BLIP_ALLOW_REPEAT  
--- SPEECH_PARAMS_ADD_BLIP_FORCE  
--- SPEECH_PARAMS_ADD_BLIP_SHOUTED  
--- SPEECH_PARAMS_ADD_BLIP_SHOUTED_FORCE  
--- SPEECH_PARAMS_ADD_BLIP_INTERRUPT  
--- SPEECH_PARAMS_ADD_BLIP_INTERRUPT_FORCE  
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED  
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CLEAR  
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CRITICAL  
--- SPEECH_PARAMS_SHOUTED  
--- SPEECH_PARAMS_SHOUTED_CLEAR  
--- SPEECH_PARAMS_SHOUTED_CRITICAL  
--- Note: A list of Name and Parameters can be found here pastebin.com/1GZS5dCL  
--- Full list of speeches and voices names by some spanish shitbag: gist.github.com/alexguirre/0af600eb3d4c91ad4f900120a63b8992  
--- 
--- 
--- 
--- NativeDB Added Parameter 4: Any p3
--- 
--- @param ped Ped
--- @param speechName string
--- @param speechParam string
function PlayAmbientSpeech1(ped, speechName, speechParam) end

--- 
--- NativeDB Parameter 0: char* p0
--- 
--- @param p0 any
function OverrideTrevorRage(p0) end


--- @param p0 string
--- @param p1 string
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 string
function PlayAmbientSpeechAtCoords(p0, p1, p2, p3, p4, p5) end

--- Overrides the vehicle's horn hash.
--- 
--- When changing this hash on a vehicle, [_GET_VEHICLE_HORN_HASH](#_0xACB5DCCA1EC76840) will **not** return the 'overwritten' hash. It will still always return the default horn hash (same as [GET_VEHICLE_DEFAULT_HORN](#_0x02165D55000219AC)).
--- 
--- List of possible hashes (found in decompiled scripts):
--- 
--- |        signed |     unsigned |      hex     |
--- | ------------: | -----------: | :----------: |
--- |  1604822495 | 1604822495 | 0x5FA7A5DF |
--- | -1262465009 | 3032502287 | 0xB4C0500F |
--- |  -889553789 | 3405413507 | 0xCAFA7C83 |
--- | -1557943086 | 2737024210 | 0xA323ACD2 |
--- | -1318696617 | 2976270679 | 0xB1664957 |
--- |    -7740003 | 4287227293 | 0xFF89E59D |
--- | -1815146967 | 2479820329 | 0x93CF0E29 |
--- |  -339919356 | 3955047940 | 0xEBBD3E04 |
--- 
--- Old description:
--- 
--- 
--- vehicle - the vehicle whose horn should be overwritten  
--- mute - p1 seems to be an option for muting the horn  
--- p2 - maybe a horn id, since the function AUDIO::GET_VEHICLE_DEFAULT_HORN(veh) exists?  
--- 
--- @param vehicle Vehicle
--- @param override boolean
--- @param hornHash number
function OverrideVehHorn(vehicle, override, hornHash) end


--- @param pedHandle Ped
--- @param p1 number
--- @param p2 string
function PlayAnimalVocalization(pedHandle, p1, p2) end

--- 
--- Plays ambient speech. See also _0x5C57B85D.  
--- See _PLAY_AMBIENT_SPEECH1 for parameter specifications.  
--- Full list of speeches and voices names: gist.github.com/alexguirre/0af600eb3d4c91ad4f900120a63b8992  
--- 
--- 
--- 
--- NativeDB Added Parameter 4: Any p3
--- 
--- @param ped Ped
--- @param speechName string
--- @param speechParam string
function PlayAmbientSpeech2(ped, speechName, speechParam) end


--- @param play boolean
function PlayEndCreditsMusic(play) end

--- 
--- This is the same as _PLAY_AMBIENT_SPEECH1 and _PLAY_AMBIENT_SPEECH2 but it will allow you to play a speech file from a specific voice file. It works on players and all peds, even animals.  
--- EX (C#):  
--- GTA.Native.Function.Call(Hash._0x3523634255FC3318, Game.Player.Character, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0);  
--- The first param is the ped you want to play it on, the second is the speech name, the third is the voice name, the fourth is the speech param, and the last param is usually always 0.  
--- Full list of speeches and voices names: gist.github.com/alexguirre/0af600eb3d4c91ad4f900120a63b8992  
--- 
--- @param p0 Ped
--- @param speechName string
--- @param voiceName string
--- @param speechParam string
--- @param p4 boolean
function PlayAmbientSpeechWithVoice(p0, speechName, voiceName, speechParam, p4) end

--- 
--- Called 38 times in the scripts. There are 5 different audioNames used.   
--- One unknown removed below.   
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("DEAD");  
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("FRANKLIN_BIG_01");  
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("GENERIC_FAILED");  
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("TREVOR_SMALL_01");  
--- 
--- @param audioName string
function PlayMissionCompleteAudio(audioName) end

--- 
--- Only call found in the b617d scripts:  
--- AUDIO::_CADA5A0D0702381E("BACK", "HUD_FREEMODE_SOUNDSET");  
--- 
--- @param soundName string
--- @param soundsetName string
function PlayDeferredSoundFrontend(soundName, soundsetName) end

--- 
--- Please change to void. (Does not return anything!)  
--- Plays the given police radio message.  
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/GBnsQ5hr  
--- 
--- @param name string
--- @param p1 number
--- @return number
function PlayPoliceReport(name, p1) end

--- 
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/A8Ny8AHZ  
--- 
--- @param soundId number
--- @param audioName string
--- @param audioRef string
--- @param p3 boolean
--- @param p4 any
--- @param p5 boolean
function PlaySound(soundId, audioName, audioRef, p3, p4, p5) end

--- 
--- Needs another parameter [int p2]. The signature is PED::PLAY_PAIN(Ped ped, int painID, int p1, int p2);  
--- Last 2 parameters always seem to be 0.  
--- EX: Function.Call(Hash.PLAY_PAIN, TestPed, 6, 0, 0);  
--- Known Pain IDs  
--- ________________________  
--- 1 - Doesn't seem to do anything. Does NOT crash the game like previously said. (Latest patch)  
--- 6 - Scream (Short)  
--- 7 - Scared Scream (Kinda Long)  
--- 8 - On Fire  
--- 
--- 
--- 
--- NativeDB Added Parameter 4: Any p3
--- 
--- @param ped Ped
--- @param painID number
--- @param p1 number
function PlayPain(ped, painID, p1) end

--- 
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/RFb4GTny  
--- AUDIO::PLAY_PED_RINGTONE("Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
--- AUDIO::PLAY_PED_RINGTONE("Dial_and_Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
--- 
--- @param ringtoneName string
--- @param ped Ped
--- @param p2 boolean
function PlayPedRingtone(ringtoneName, ped, p2) end

--- 
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/f2A7vTj0   
--- No changes made in b678d.  
--- gtaforums.com/topic/795622-audio-for-mods  
--- 
--- @param soundId number
--- @param audioName string
--- @param entity Entity
--- @param audioRef string
--- @param p4 boolean
--- @param p5 any
function PlaySoundFromEntity(soundId, audioName, entity, audioRef, p4, p5) end

--- 
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/eeFc5DiW  
--- gtaforums.com/topic/795622-audio-for-mods  
--- 
--- @param soundId number
--- @param audioName string
--- @param x number
--- @param y number
--- @param z number
--- @param audioRef string
--- @param p6 boolean
--- @param range number
--- @param p8 boolean
function PlaySoundFromCoord(soundId, audioName, x, y, z, audioRef, p6, range, p8) end

--- 
--- Used with AUDIO::LOAD_STREAM  
--- Example from finale_heist2b.c4:  
--- AI::TASK_SYNCHRONIZED_SCENE(l_4C8[2/*14*/], l_4C8[2/*14*/]._f7, l_30A, "push_out_vault_l", 4.0, -1.5, 5, 713, 4.0, 0);  
---                     PED::SET_SYNCHRONIZED_SCENE_PHASE(l_4C8[2/*14*/]._f7, 0.0);  
---                     PED::_2208438012482A1A(l_4C8[2/*14*/], 0, 0);  
---                     PED::SET_PED_COMBAT_ATTRIBUTES(l_4C8[2/*14*/], 38, 1);  
---                     PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(l_4C8[2/*14*/], 1);  
---                     if (AUDIO::LOAD_STREAM("Gold_Cart_Push_Anim_01", "BIG_SCORE_3B_SOUNDS")) {  
---                         AUDIO::PLAY_STREAM_FROM_OBJECT(l_36F[0/*1*/]);  
---                     }  
--- 
--- @param object Object
function PlayStreamFromObject(object) end


--- @param x number
--- @param y number
--- @param z number
function PlayStreamFromPosition(x, y, z) end

--- 
--- list: pastebin.com/DCeRiaLJ  
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/0neZdsZ5  
--- 
--- @param soundId number
--- @param audioName string
--- @param audioRef string
--- @param p3 boolean
function PlaySoundFrontend(soundId, audioName, audioRef, p3) end


--- @param vehicle Vehicle
function PlayStreamFromVehicle(vehicle) end


--- @param ped Ped
function PlayStreamFromPed(ped) end


function PlayStreamFrontend() end


--- @param p0 any
--- @return boolean
function PlaySynchronizedAudioEvent(p0) end

--- 
--- This native only comes up once. And in that one instance, p1 is "1".  
--- 
--- @param vehicle Vehicle
--- @param doorIndex number
function PlayVehicleDoorCloseSound(vehicle, doorIndex) end

--- 
--- p1 appears to only be "0" or "3". I personally use "0" as p1.  
--- 
--- @param vehicle Vehicle
--- @param doorIndex number
function PlayVehicleDoorOpenSound(vehicle, doorIndex) end


--- @param p0 boolean
--- @param p1 boolean
function PreloadScriptPhoneConversation(p0, p1) end


--- @param p0 boolean
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 boolean
function PreloadScriptConversation(p0, p1, p2, p3) end

--- 
--- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
--- 
--- @param eventName string
--- @return boolean
function PrepareMusicEvent(eventName) end

--- 
--- Example:  
--- bool prepareAlarm = AUDIO::PREPARE_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");  
--- 
--- @param alarmName string
--- @return boolean
function PrepareAlarm(alarmName) end


--- @param p0 any
--- @param p1 any
--- @return boolean
function PrepareSynchronizedAudioEventForScene(p0, p1) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
function RecordBrokenGlass(x, y, z, radius) end


--- @param p0 string
--- @param p1 any
--- @return any
function PrepareSynchronizedAudioEvent(p0, p1) end


function ReleaseMissionAudioBank() end

--- **This native does absolutely nothing, just a nullsub**
--- @param p0 number
function RegisterScriptWithAudio(p0) end


function ReleaseAmbientAudioBank() end


--- @param audioBank string
function ReleaseNamedScriptAudioBank(audioBank) end


function ReleaseScriptAudioBank() end

--- 
--- NativeDB Introduced: v323
--- 
function ReleaseWeaponAudio() end


--- @param soundId number
function ReleaseSoundId(soundId) end

--- 
--- Found in the b617d scripts, duplicates removed:   
--- AUDIO::_B4BBFD9CD8B3922B("V_CARSHOWROOM_PS_WINDOW_UNBROKEN");  
--- AUDIO::_B4BBFD9CD8B3922B("V_CIA_PS_WINDOW_UNBROKEN");  
--- AUDIO::_B4BBFD9CD8B3922B("V_DLC_HEIST_APARTMENT_DOOR_CLOSED");  
--- AUDIO::_B4BBFD9CD8B3922B("V_FINALEBANK_PS_VAULT_INTACT");  
--- AUDIO::_B4BBFD9CD8B3922B("V_MICHAEL_PS_BATHROOM_WITH_WINDOW");  
--- 
--- @param p0 string
function RemovePortalSettingsOverride(p0) end


--- @param entity Entity
--- @param p1 number
function RemoveEntityFromAudioMixGroup(entity, p1) end

--- 
--- All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/XZ1tmGEz  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: int p2
--- 
--- @param p0 string
--- @param p1 boolean
--- @return boolean
function RequestAmbientAudioBank(p0, p1) end

--- 
--- All occurrences and usages found in b617d: pastebin.com/NzZZ2Tmm  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: Any p2
--- 
--- @param p0 string
--- @param p1 boolean
--- @return boolean
function RequestMissionAudioBank(p0, p1) end

--- 
--- All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/AkmDAVn6  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: int p2
--- 
--- @param p0 string
--- @param p1 boolean
--- @return boolean
function RequestScriptAudioBank(p0, p1) end


--- @param ped Ped
function ResetPedAudioFlags(ped) end


function ResetTrevorRage() end


function RestartScriptedConversation() end

--- 
--- Makes pedestrians sound their horn longer, faster and more agressive when they use their horn.  
--- 
--- @param toggle boolean
function SetAggressiveHorns(toggle) end

--- 
--- Audio List  
--- gtaforums.com/topic/795622-audio-for-mods/  
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/FTeAj4yZ  
--- Yes  
--- 
--- @param ped Ped
--- @param name string
function SetAmbientVoiceName(ped, name) end

--- 
--- NativeDB Parameter 1: Hash hash
--- 
--- @param ped Ped
--- @param hash any
function SetAmbientVoiceNameHash(ped, hash) end

--- 
--- All occurrences found in b617d, sorted alphabetically and identical lines removed: pastebin.com/WkXDGgQL  
--- New Ambient Zone List (Combind with old): pastebin.com/h8BsKgUD -DasChaos  
--- 
--- @param ambientZone string
--- @param p1 boolean
--- @param p2 boolean
function SetAmbientZoneListStatePersistent(ambientZone, p1, p2) end


--- @param p0 string
--- @param p1 boolean
--- @param p2 boolean
function SetAmbientZoneListState(p0, p1, p2) end

--- 
--- NativeDB Parameter 0: char* zoneName
--- 
--- @param zoneName any
--- @param p1 boolean
--- @param p2 boolean
function SetAmbientZoneState(zoneName, p1, p2) end

--- 
--- All occurrences found in b617d, sorted alphabetically and identical lines removed: pastebin.com/jYvw7N1S  
--- New Ambient Zone List (Combind with old): pastebin.com/h8BsKgUD -DasChaos  
--- 
--- @param ambientZone string
--- @param p1 boolean
--- @param p2 boolean
function SetAmbientZoneStatePersistent(ambientZone, p1, p2) end

--- 
--- mood can be 0 or 1 (it's not a boolean value!). Effects audio of the animal.  
--- 
--- @param animal Ped
--- @param mood number
function SetAnimalMood(animal, mood) end


--- @param scene string
--- @param variable string
--- @param value number
function SetAudioSceneVariable(scene, variable, value) end

--- 
--- Possible flag names:  
--- "ActivateSwitchWheelAudio"  
--- "AllowAmbientSpeechInSlowMo"  
--- "AllowCutsceneOverScreenFade"  
--- "AllowForceRadioAfterRetune"  
--- "AllowPainAndAmbientSpeechToPlayDuringCutscene"  
--- "AllowPlayerAIOnMission"  
--- "AllowPoliceScannerWhenPlayerHasNoControl"  
--- "AllowRadioDuringSwitch"  
--- "AllowRadioOverScreenFade"  
--- "AllowScoreAndRadio"  
--- "AllowScriptedSpeechInSlowMo"  
--- "AvoidMissionCompleteDelay"  
--- "DisableAbortConversationForDeathAndInjury"  
--- "DisableAbortConversationForRagdoll"  
--- "DisableBarks"  
--- "DisableFlightMusic"  
--- "DisableReplayScriptStreamRecording"  
--- "EnableHeadsetBeep"  
--- "ForceConversationInterrupt"  
--- "ForceSeamlessRadioSwitch"  
--- "ForceSniperAudio"  
--- "FrontendRadioDisabled"  
--- "HoldMissionCompleteWhenPrepared"  
--- "IsDirectorModeActive"  
--- "IsPlayerOnMissionForSpeech"  
--- "ListenerReverbDisabled"  
--- "LoadMPData"  
--- "MobileRadioInGame"  
--- "OnlyAllowScriptTriggerPoliceScanner"  
--- "PlayMenuMusic"  
--- "PoliceScannerDisabled"  
--- "ScriptedConvListenerMaySpeak"  
--- "SpeechDucksScore"  
--- "SuppressPlayerScubaBreathing"  
--- "WantedMusicDisabled"  
--- "WantedMusicOnMission"  
--- -------------------------------  
--- No added flag names between b393d and b573d, including b573d.  
--- #######################################################################  
--- "IsDirectorModeActive" is an audio flag which will allow you to play speech infinitely without any pauses like in Director Mode.  
--- -----------------------------------------------------------------------  
--- All flag IDs and hashes:  
--- ID: 01 | Hash: 0x20A7858F  
--- ID: 02 | Hash: 0xA11C2259  
--- ID: 03 | Hash: 0x08DE4700  
--- ID: 04 | Hash: 0x989F652F  
--- ID: 05 | Hash: 0x3C9E76BA  
--- ID: 06 | Hash: 0xA805FEB0  
--- ID: 07 | Hash: 0x4B94EA26  
--- ID: 08 | Hash: 0x803ACD34  
--- ID: 09 | Hash: 0x7C741226  
--- ID: 10 | Hash: 0x31DB9EBD  
--- ID: 11 | Hash: 0xDF386F18  
--- ID: 12 | Hash: 0x669CED42  
--- ID: 13 | Hash: 0x51F22743  
--- ID: 14 | Hash: 0x2052B35C  
--- ID: 15 | Hash: 0x071472DC  
--- ID: 16 | Hash: 0xF9928BCC  
--- ID: 17 | Hash: 0x7ADBDD48  
--- ID: 18 | Hash: 0xA959BA1A  
--- ID: 19 | Hash: 0xBBE89B60  
--- ID: 20 | Hash: 0x87A08871  
--- ID: 21 | Hash: 0xED1057CE  
--- ID: 22 | Hash: 0x1584AD7A  
--- ID: 23 | Hash: 0x8582CFCB  
--- ID: 24 | Hash: 0x7E5E2FB0  
--- ID: 25 | Hash: 0xAE4F72DB  
--- ID: 26 | Hash: 0x5D16D1FA  
--- ID: 27 | Hash: 0x06B2F4B8  
--- ID: 28 | Hash: 0x5D4CDC96  
--- ID: 29 | Hash: 0x8B5A48BA  
--- ID: 30 | Hash: 0x98FBD539  
--- ID: 31 | Hash: 0xD8CB0473  
--- ID: 32 | Hash: 0x5CBB4874  
--- ID: 33 | Hash: 0x2E9F93A9  
--- ID: 34 | Hash: 0xD93BEA86  
--- ID: 35 | Hash: 0x92109B7D  
--- ID: 36 | Hash: 0xB7EC9E4D  
--- ID: 37 | Hash: 0xCABDBB1D  
--- ID: 38 | Hash: 0xB3FD4A52  
--- ID: 39 | Hash: 0x370D94E5  
--- ID: 40 | Hash: 0xA0F7938F  
--- ID: 41 | Hash: 0xCBE1CE81  
--- ID: 42 | Hash: 0xC27F1271  
--- ID: 43 | Hash: 0x9E3258EB  
--- ID: 44 | Hash: 0x551CDA5B  
--- ID: 45 | Hash: 0xCB6D663C  
--- ID: 46 | Hash: 0x7DACE87F  
--- ID: 47 | Hash: 0xF9DE416F  
--- ID: 48 | Hash: 0x882E6E9E  
--- ID: 49 | Hash: 0x16B447E7  
--- ID: 50 | Hash: 0xBD867739  
--- ID: 51 | Hash: 0xA3A58604  
--- ID: 52 | Hash: 0x7E046BBC  
--- ID: 53 | Hash: 0xD95FDB98  
--- ID: 54 | Hash: 0x5842C0ED  
--- ID: 55 | Hash: 0x285FECC6  
--- ID: 56 | Hash: 0x9351AC43  
--- ID: 57 | Hash: 0x50032E75  
--- ID: 58 | Hash: 0xAE6D0D59  
--- ID: 59 | Hash: 0xD6351785  
--- ID: 60 | Hash: 0xD25D71BC  
--- ID: 61 | Hash: 0x1F7F6423  
--- ID: 62 | Hash: 0xE24C3AA6  
--- ID: 63 | Hash: 0xBFFDD2B7  
--- 
--- @param flagName string
--- @param toggle boolean
function SetAudioFlag(flagName, toggle) end

