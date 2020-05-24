--- Works in Singleplayer too.
--- 
--- Actually has a 4th param (BOOL) that sets byte_14273C46C (in b944) to whatever was passed to p3.
--- 
--- Passing wrong data (e.g. hours above 23) will cause the game to crash.
--- @param Hours number
--- @param Minutes number
--- @param Seconds number
function NetworkOverrideClockTime(Hours, Minutes, Seconds) end

--- 
--- R* uses this to hear all player when spectating.   
--- It allows you to hear other online players when their chat is on none, crew and or friends  
--- 
--- @param player Player
--- @param toggle boolean
function NetworkOverrideReceiveRestrictions(player, toggle) end

--- 
--- "NETWORK_OVERRIDE_SEND_RESTRICTIONS" is right, but dev-c put a _ by default.  
--- This is used alongside the native,  
--- 'NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS'. Read it's description for more info.  
--- 
--- @param player Player
--- @param toggle boolean
function NetworkOverrideSendRestrictions(player, toggle) end


--- @param entity Entity
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
function NetworkOverrideCoordsAndHeading(entity, x, y, z, heading) end


--- @param team number
--- @param toggle boolean
function NetworkOverrideTeamRestrictions(team, toggle) end

--- 
--- p0 is always false in scripts.
--- 
--- @param toggle boolean
function NetworkOverrideReceiveRestrictionsAll(toggle) end


--- @return boolean
function NetworkPlayerGetCheaterReason() end


--- @param toggle boolean
function NetworkOverrideSendRestrictionsAll(toggle) end

--- 
--- Sets [userID] to the user id of the given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.  
--- 
--- 
--- 
--- NativeDB Parameter 1: int* userID
--- 
--- @param player Player
--- @param userID string
--- @return string
function NetworkPlayerGetUserid(player, userID) end


--- @param p0 boolean
function NetworkOverrideTransitionChat(p0) end

--- 
--- Returns the name of a given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.  
--- Does exactly the same as GET_PLAYER_NAME.  
--- 
--- @param player Player
--- @return string
function NetworkPlayerGetName(player) end


--- @param player Player
--- @return boolean
function NetworkPlayerHasHeadset(player) end


--- @param player Player
--- @return boolean
function NetworkPlayerIndexIsCheater(player) end

--- 
--- Returns whether the player has been reported too often or not.  
--- Example : griefing.  
--- 
--- @return boolean
function NetworkPlayerIsBadsport() end

--- 
--- Checks if a specific value (BYTE) in CPlayerInfo is nonzero.  
--- Returns always false in Singleplayer.  
--- No longer used for dev checks since first mods were released on PS3 & 360.  
--- R* now checks with the is_dlc_present native for the dlc hash 2532323046,  
--- if that is present it will unlock dev stuff.  
--- 
--- @param player Player
--- @return boolean
function NetworkPlayerIsRockstarDev(player) end


--- @return boolean
function NetworkPlayerIsCheater() end


--- @param entity Entity
function NetworkRegisterEntityAsNetworked(entity) end


--- @param p0 any
--- @return any
function NetworkQueryRespawnResults(p0) end

--- 
--- sizeofVars is in bytes  
--- 
--- @param vars number
--- @param numVars number
function NetworkRegisterHostBroadcastVariables(vars, numVars) end

--- 
--- NativeDB Parameter 0: Hash contextHash
--- NativeDB Parameter 1: Hash nameHash
--- 
--- @param contextHash any
--- @param nameHash any
--- @param value boolean
--- @return boolean
function NetworkRegisterTunableBoolHash(contextHash, nameHash, value) end

--- 
--- NativeDB Parameter 0: Hash contextHash
--- NativeDB Parameter 1: Hash nameHash
--- 
--- @param contextHash any
--- @param nameHash any
--- @param value number
--- @return boolean
function NetworkRegisterTunableFloatHash(contextHash, nameHash, value) end


--- @param vars number
--- @param numVars number
function NetworkRegisterPlayerBroadcastVariables(vars, numVars) end

--- 
--- NativeDB Parameter 0: Hash contextHash
--- NativeDB Parameter 1: Hash nameHash
--- 
--- @param contextHash any
--- @param nameHash any
--- @param value number
--- @return boolean
function NetworkRegisterTunableIntHash(contextHash, nameHash, value) end


function NetworkRemoveAllTransitionInvite() end


--- @param p0 any
--- @return boolean
function NetworkRemoveEntityArea(p0) end


--- @param p0 any
function NetworkRemoveTransitionInvite(p0) end


--- @param p0 any
--- @return boolean
function NetworkRemovePresenceInvite(p0) end

--- 
--- Start the downloading of BG_NG.RPF from R* Cloud which contains hotfix.  
--- As you can see here you will see the 155465EE first then the correct hash for this native. Then the current 29532731 one which could be the native below or the native below's hash could be the has below the 29532731   
--- puu.sh/nhdQI/e0ca5567b4.png  
--- The code:  
--- seg001:00000000003EFF4C uunk_0x29532731:                        # CODE XREF: sub_158C8AC+14p  
--- seg001:00000000003EFF4C                 lis       r3, dword_1CFB100@ha  
--- seg001:00000000003EFF50                 lwz       r3, dword_1CFB100@l(r3)  
--- seg001:00000000003EFF54                 ld        r3, 0x1020(r3)  
--- seg001:00000000003EFF58                 extsw     r3, r3  
--- seg001:00000000003EFF5C                 blr  
--- seg001:00000000003EFF5C # End of function uunk_0x29532731  
--- 
--- @return boolean
function NetworkRequestCloudBackgroundScripts() end


--- @param entity Entity
--- @return boolean
function NetworkRequestControlOfEntity(entity) end


function NetworkReportMyself() end

--- 
--- This native start the download of tunables from R* cloud  
--- 
function NetworkRequestCloudTunables() end


function NetworkResetBodyTracker() end

--- 
--- p4 and p5 are always 0 in scripts  
--- 
--- @param player Player
--- @param x number
--- @param y number
--- @param z number
--- @param p4 boolean
--- @param p5 boolean
function NetworkRespawnCoords(player, x, y, z, p4, p5) end


--- @param doorID number
--- @return boolean
function NetworkRequestControlOfDoor(doorID) end


--- @param networkHandle number
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return boolean
function NetworkSendPresenceInvite(networkHandle, p1, p2, p3) end


--- @param netId number
--- @return boolean
function NetworkRequestControlOfNetworkId(netId) end

--- 
--- NativeDB Added Parameter 7: Any p6
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param heading number
--- @param unk boolean
--- @param changetime boolean
function NetworkResurrectLocalPlayer(x, y, z, heading, unk, changetime) end

--- 
--- the first arg seems to be the network player handle (&handle) and the second var is pretty much always "" and the third seems to be a number between 0 and ~10 and the 4th is is something like 0 to 5 and I guess the 5th is a bool cuz it is always 0 or 1  
--- does this send an invite to a player?  
--- 
--- @param networkHandle number
--- @param p1 string
--- @param p2 number
--- @param p3 number
--- @param p4 boolean
--- @return boolean
function NetworkSendTransitionGamerInstruction(networkHandle, p1, p2, p3, p4) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return boolean
function NetworkSessionActivityQuickmatch(p0, p1, p2, p3) end

--- 
--- String "NETWORK_SEND_PRESENCE_TRANSITION_INVITE" is contained in the function in ida so this one is correct.  
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return boolean
function NetworkSendPresenceTransitionInvite(p0, p1, p2, p3) end


function NetworkSessionCancelInvite() end

--- 
--- how can I increase the character limit on this native?  
--- --------------------------------  
--- return - it's possible for it to have an error and return a value. One error is if it cannot find space to create the event it doesn't send the text and returns zero. It also returns 0 is the strlen is 0 or the strlen > 0x100 (I thought it was 64 so idk why it's checking 265. I may just be dumb :P ) There are other ways it could return 0 also but who the hell cares cuz it's very unlikely, but it returns a bool.  
--- to the top guy, idk if it is possible. It is probably read a max of 64 characters on the recieving end so even if we did modify it to send more it probably wouldn't work. One of the other problems is that in part of the function it copies the string to the local stack which means we would have to change that to make it work.  
--- 
--- @param message string
--- @param networkHandle number
--- @return boolean
function NetworkSendTextMessage(message, networkHandle) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param maxPlayers number
--- @param p4 boolean
--- @return boolean
function NetworkSessionCrewMatchmaking(p0, p1, p2, maxPlayers, p4) end


--- @param toggle boolean
function NetworkSessionBlockJoinRequests(toggle) end


--- @param p0 number
--- @param p1 boolean
function NetworkSessionChangeSlots(p0, p1) end

--- 
--- p0 is always false and p1 varies.  
--- NETWORK_SESSION_END(0, 1)  
--- NETWORK_SESSION_END(0, 0)  
--- Results in: "Connection to session lost due to an unknown network error. Please return to Grand Theft Auto V and try again later."  
--- 
--- @param p0 boolean
--- @param p1 boolean
--- @return boolean
function NetworkSessionEnd(p0, p1) end

--- 
--- unknown params  
--- p0 = 0, 2, or 999 (The global is 999 by default.)  
--- p1 = 0 (Always in every script it's found in atleast.)  
--- p2 = 0, 3, or 4 (Based on a var that is determined by a function.)  
--- p3 = maxPlayers (It's obvious in x360 scripts it's always 18)  
--- p4 = 0 (Always in every script it's found in atleast.)  
--- p5 = 0 or 1. (1 if network_can_enter_multiplayer, but set to 0 if other checks after that are passed.)  
--- p5 is reset to 0 if,  
--- Global_1315318 = 0 or Global_1315323 = 9 or 12 or (Global_1312629 = 0 && Global_1312631 = true/1) those are passed.  
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param maxPlayers number
--- @param p4 any
--- @param p5 any
--- @return any
function NetworkSessionEnter(p0, p1, p2, maxPlayers, p4, p5) end


function NetworkSessionForceCancelInvite() end


--- @param networkHandle number
function NetworkSessionGetInviter(networkHandle) end


--- @param p0 number
--- @param p1 number
--- @param maxPlayers number
--- @param p3 boolean
--- @return boolean
function NetworkSessionFriendMatchmaking(p0, p1, maxPlayers, p3) end


--- @param player Player
--- @return boolean
function NetworkSessionGetKickVote(player) end

--- 
--- Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
--- 
--- @param p0 number
--- @param maxPlayers number
--- @param p2 boolean
--- @return boolean
function NetworkSessionHost(p0, maxPlayers, p2) end


--- @param p0 number
--- @return number
function NetworkSessionGetMatchmakingGroupFree(p0) end


--- @return number
function NetworkSessionGetPrivateSlots() end

--- 
--- Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
--- 
--- @param p0 number
--- @param maxPlayers number
--- @return boolean
function NetworkSessionHostFriendsOnly(p0, maxPlayers) end


--- @param p0 number
--- @param maxPlayers number
--- @return boolean
function NetworkSessionHostClosed(p0, maxPlayers) end

--- 
--- Loads up the map that is loaded when beeing in mission creator  
--- Player gets placed in a mix between online/offline mode  
--- p0 is always 2 in R* scripts.  
--- Appears to be patched in gtav b757 (game gets terminated) alonside with most other network natives to prevent online modding ~ghost30812  
--- 
--- @param p0 number
function NetworkSessionHostSinglePlayer(p0) end


--- @return boolean
function NetworkSessionIsClosedFriends() end


--- @param p0 boolean
function NetworkSessionHosted(p0) end


--- @return boolean
function NetworkSessionIsPrivate() end


--- @return boolean
function NetworkSessionIsClosedCrew() end


--- @return boolean
function NetworkSessionIsVisible() end


--- @return boolean
function NetworkSessionIsInVoiceSession() end


--- @return boolean
function NetworkSessionIsVoiceSessionBusy() end

--- 
--- Only works when you are host.  
--- 
--- @param player Player
function NetworkSessionKickPlayer(player) end


--- @return boolean
function NetworkSessionIsSolo() end


function NetworkSessionJoinInvite() end


--- @param toggle boolean
function NetworkSessionMarkVisible(toggle) end

--- 
--- playerTypes:
--- 0 = regular joiner
--- 4 = spectator
--- 8 = unknown
--- 
--- @param playerType number
--- @param playerCount number
function NetworkSessionSetMatchmakingGroupMax(playerType, playerCount) end


function NetworkSessionLeaveSinglePlayer() end


--- @param p0 any
function NetworkSessionSetMatchmakingMentalState(p0) end

--- 
--- p0 = 0 or 4  
--- 
--- @param matchmakingGroup number
function NetworkSessionSetMatchmakingGroup(matchmakingGroup) end


function NetworkSessionVoiceHost() end


--- @param p0 boolean
function NetworkSessionSetMatchmakingPropertyId(p0) end


--- @return boolean
function NetworkSessionWasInvited() end


--- @param toggle boolean
function NetworkSetActivitySpectator(toggle) end

--- 
--- Only one occurence in the scripts:  
--- auto sub_cb43(auto a_0, auto a_1) {  
---     if (g_2594CB._f1) {  
---         if (NETWORK::_855BC38818F6F684()) {  
---             NETWORK::_ABD5E88B8A2D3DB2(&a_0._fB93);  
---             g_2594CB._f14/*{13}*/ = a_0._fB93;  
---             g_2594CB._f4/*"64"*/ = a_1;  
---             return 1;  
---         }  
---     }  
---     return 0;  
--- }  
--- other:  
--- looks like it passes a player in the paramater  
--- Contains string "NETWORK_VOICE_CONNECT_TO_PLAYER" in ida  
--- 
--- @param globalPtr any
function NetworkSessionVoiceConnectToPlayer(globalPtr) end

--- 
--- NETWORK_SET_*
--- 
--- @param toggle boolean
--- @param player Player
function NetworkSetChoiceMigrateOptions(toggle, player) end


function NetworkSessionVoiceLeave() end


--- @param p0 any
--- @return boolean
function NetworkSetCurrentlySelectedGamerHandleFromInviteMenu(p0) end


--- @param maxSpectators number
function NetworkSetActivitySpectatorMax(maxSpectators) end

--- 
--- if set to true other network players can't see it  
--- if set to false other network player can see it  
--- =========================================  
--- ^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.  
--- pc or last gen?  
--- ^^ last-gen  
--- 
--- @param entity Entity
--- @param toggle boolean
function NetworkSetEntityInvisibleToNetwork(entity, toggle) end


--- @param p0 any
--- @return boolean
function NetworkSetCurrentDataManagerHandle(p0) end

--- 
--- //friendly fire toggle  
--- 
--- @param toggle boolean
function NetworkSetFriendlyFireOption(toggle) end


--- @param entity Entity
--- @param toggle boolean
function NetworkSetEntityCanBlend(entity, toggle) end


--- @param networkHandle number
function NetworkSetGamerInvitedToTransition(networkHandle) end


--- @param p0 boolean
--- @param p1 boolean
function NetworkSetInMpCutscene(p0, p1) end


--- @param toggle boolean
function NetworkSetInFreeCamMode(toggle) end


--- @param toggle boolean
--- @param playerPed Ped
--- @param p2 boolean
function NetworkSetInSpectatorModeExtended(toggle, playerPed, p2) end


--- @param toggle boolean
--- @param playerPed Ped
function NetworkSetInSpectatorMode(toggle, playerPed) end


--- @param p0 boolean
--- @param p1 any
function NetworkSetKeepFocuspoint(p0, p1) end


--- @param toggle boolean
function NetworkSetLocalPlayerSyncLookAt(toggle) end


--- @param p0 any
function NetworkSetInviteOnCallForInviteMenu(p0) end


--- @param toggle boolean
function NetworkSetNoSpectatorChat(toggle) end


--- @param toggle boolean
function NetworkSetPlayerIsPassive(toggle) end


--- @param time number
function NetworkSetLocalPlayerInvincibleTime(time) end


function NetworkSetMissionFinished() end

--- 
--- On PC it's a nullsub which means it does absolutely nothing.  
--- Now that Discord supports Rich Presence, R* might finally implement this for PC. Or maybe in future games like RDR2, GTA VI...  
--- 
--- @param p0 number
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkSetRichPresence(p0, p1, p2, p3) end


--- @param value number
function NetworkSetTalkerProximity(value) end

--- 
--- This is called shortly after setting Network ID Migration off it seems. Does anyone know the point of this?   
--- Example scenario,   
--- If I were to request and gain control of an online players vehicle then their vehicle's Network ID and turn migration off. I wouldn't need to ever request control again as they wouldn't gain control back.   
--- - scenario over -  
--- So what would be the point hereafter of setting it 'dynamic'?  
--- 
--- @param netID number
--- @param toggle boolean
function NetworkSetNetworkIdDynamic(netID, toggle) end

--- 
--- p1 is always 0  
--- 
--- @param lobbySize number
--- @param p1 boolean
--- @param playerId number
function NetworkSetThisScriptIsNetworkScript(lobbySize, p1, playerId) end


--- @param toggle boolean
function NetworkSetOverrideSpectatorMode(toggle) end


--- @param p0 any
function NetworkSetTransitionActivityId(p0) end

--- 
--- x360 Hash: 0x4AF0ADF5  
--- 
--- @param p0 boolean
--- @param p1 boolean
function NetworkSetTransitionVisibilityLock(p0, p1) end

--- 
--- value must be < 255
--- 
--- @param id number
function NetworkSetPropertyId(id) end

--- 
--- Allow vehicle wheels to be destructible even when the Vehicle entity is invincible.
--- 
--- 
--- 
--- NativeDB Introduced: v1365
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function NetworkSetVehicleWheelsDestructible(vehicle, toggle) end


--- @param channel number
function NetworkSetVoiceChannel(channel) end

--- **This native does absolutely nothing, just a nullsub**
--- 
--- 
--- NETWORK_SET_RICH_PRESENCE but for PlayStation? (On PC it's a nullsub)  
--- 
--- @param p0 number
--- @param gxtLabel string
function NetworkSetRichPresence2(p0, gxtLabel) end


--- @param toggle boolean
function NetworkSetTeamOnlyChat(toggle) end

--- 
--- Returns true if the NAT type is Strict (3) and a certain number of connections have failed.
--- 
--- @return boolean
function NetworkShouldShowConnectivityTroubleshooting() end

--- 
--- One of the first things it does is get the players ped.  
--- Then it calls a function that is used in some tasks and ped based functions.  
--- 
--- @param player Player
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param flags number
--- @return boolean
function NetworkStartRespawnSearchForPlayer(player, p1, p2, p3, p4, p5, p6, p7, flags) end


--- @param p0 any
function NetworkSetTransitionCreatorHandle(p0) end

--- 
--- Seems to call GET_PAUSED_MAP_STREAMING_REQUEST lol wtf  
--- seg001:000000000158C324 sub_158C324:                            # DATA XREF: OPD:stru_1C29978o  
--- seg001:000000000158C324  
--- seg001:000000000158C324 .set arg_10,  0x10  
--- seg001:000000000158C324  
--- seg001:000000000158C324                 mflr      r0  
--- seg001:000000000158C328                 bl        sub_1803774  
--- seg001:000000000158C32C                 stdu      r1, -0x80(r1)  
--- seg001:000000000158C330                 std       r0, 0x80+arg_10(r1)  
--- seg001:000000000158C334                 mr        r31, r3  
--- seg001:000000000158C338                 lwz       r3, 8(r31)  
--- seg001:000000000158C33C                 addic     r4, r3, 4  
--- seg001:000000000158C340                 addic     r5, r3, 0x10  
--- seg001:000000000158C344                 addic     r7, r3, 0x20  
--- seg001:000000000158C348                 lwz       r6, 0(r3)  
--- seg001:000000000158C34C                 lfs       f1, 0x1C(r3)  
--- seg001:000000000158C350                 lwz       r8, 0x2C(r3)  
--- seg001:000000000158C354                 extsw     r3, r6  
--- seg001:000000000158C358                 extsw     r8, r8  
--- seg001:000000000158C35C                 bl        GET_PAUSED_MAP_STREAMING_REQUEST  
--- seg001:000000000158C360                 lwz       r4, 0(r31)  
--- seg001:000000000158C364                 stw       r3, 0(r4)  
--- seg001:000000000158C368                 addi      r1, r1, 0x80  
--- seg001:000000000158C36C                 b         loc_18037D8  
--- sorta makes sense though since the one above this native and GET_PAUSED_MAP_STREAMING_REQUEST are used together often in scripts  
--- 
--- @param player Player
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param p10 number
--- @param flags number
--- @return boolean
function NetworkStartRespawnSearchInAngledAreaForPlayer(player, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, flags) end


--- @param toggle boolean
function NetworkSetVoiceActive(toggle) end


--- @param netScene number
function NetworkStopSynchronisedScene(netScene) end


--- @param toggle boolean
function NetworkSuppressInvite(toggle) end

--- 
--- Example:  
--- int playerHandle;	  
--- NETWORK_HANDLE_FROM_PLAYER(selectedPlayer, &playerHandle, 13);  
--- NETWORK_SHOW_PROFILE_UI(&playerHandle);  
--- 
--- @param networkHandle number
function NetworkShowProfileUi(networkHandle) end

--- 
--- Returns a default value if the tunable don't exist.  
--- 
--- @param tunableContext Hash
--- @param tunableName Hash
--- @param defaultValue boolean
--- @return boolean
function NetworkTryAccessTunableBoolHash(tunableContext, tunableName, defaultValue) end


function NetworkUpdatePlayerScars() end

--- 
--- NETWORK_START_R/S*
--- 
function NetworkStartSoloTutorialSession() end


--- @param p0 any
--- @return boolean
function NetworkXAffectsGamers(p0) end


--- @param netScene number
function NetworkStartSynchronisedScene(netScene) end

--- 
--- Return the local Participant ID  
--- 
--- @return Player
function ParticipantId() end

--- 
--- Return the local Participant ID.  
--- This native is exactly the same as 'PARTICIPANT_ID' native.  
--- 
--- @return number
function ParticipantIdToInt() end


function ReleaseAllCommerceItemImages() end

--- 
--- NativeDB Parameter 0: Hash hash
--- 
--- @param hash any
--- @param p1 number
--- @param p2 number
--- @param state number
--- @param p4 number
function NetworkTransitionTrack(hash, p1, p2, state, p4) end

--- 
--- NativeDB Added Parameter 1: Player player
--- NativeDB Added Parameter 2: int a
--- NativeDB Added Parameter 3: int b
--- 
--- @return boolean
function RemoteCheatDetected() end


--- @param entity Entity
function NetworkUnregisterNetworkedEntity(entity) end


--- @param index number
--- @return boolean
function RequestCommerceItemImage(index) end

--- 
--- Lets objects spawn online simply do it like this:  
--- int createdObject = OBJ_TO_NET(CREATE_OBJECT_NO_OFFSET(oball, pCoords.x, pCoords.y, pCoords.z, 1, 0, 0));  
--- 
--- @param object Object
--- @return number
function ObjToNet(object) end

--- 
--- Internal logging string: SCRIPT_RESERVING_LOCAL_PEDS
--- 
--- 
--- 
--- NativeDB Introduced: v1493
--- 
--- @param amount number
function ReserveNetworkLocalPeds(amount) end

--- 
--- Internal logging string: SCRIPT_RESERVING_LOCAL_VEHICLES
--- 
--- @param amount number
function ReserveNetworkLocalVehicles(amount) end

--- 
--- gets the network id of a ped  
--- 
--- @param ped Ped
--- @return number
function PedToNet(ped) end


--- @param amount number
function ReserveNetworkMissionPeds(amount) end


--- @param p0 number
--- @return boolean
function RefreshPlayerListStats(p0) end


--- @param amount number
function ReserveNetworkMissionVehicles(amount) end

--- 
--- NativeDB Parameter 2: char* contentTypeName
--- 
--- @param data any
--- @param dataCount number
--- @param contentTypeName any
--- @return boolean
function SetBalanceAddMachines(data, dataCount, contentTypeName) end

--- 
--- Used in am_mp_property_ext and am_mp_property_int  
--- 
--- 
--- 
--- NativeDB Added Parameter 2: Ped ped
--- 
--- @param entity Entity
function RemoveAllStickyBombsFromEntity(entity) end

--- 
--- I tried using this and I see nothing happening, what is this suppose to do?  
--- 
--- @param entity Entity
function SetEntityLocallyVisible(entity) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function SetEntityVisibleInCutscene(p0, p1, p2) end

--- 
--- Internal logging string: SCRIPT_RESERVING_LOCAL_OBJECTS
--- 
--- 
--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
function ReserveNetworkLocalObjects(amount) end


--- @param p0 boolean
function SetLocalPlayerInvisibleLocally(p0) end


--- @param amount number
function ReserveNetworkMissionObjects(amount) end


--- @param p0 boolean
function SetLocalPlayerVisibleLocally(p0) end

--- 
--- Whether or not another player is allowed to take control of the entity  
--- 
--- @param netId number
--- @param toggle boolean
function SetNetworkIdCanMigrate(netId, toggle) end

--- 
--- NativeDB Parameter 0: char* contentId
--- NativeDB Parameter 1: char* contentTypeName
--- 
--- @param contentId any
--- @param contentTypeName any
--- @return boolean
function SetBalanceAddMachine(contentId, contentTypeName) end

--- Makes the provided entity visible for yourself for the current frame.
--- @param entity Entity
function SetEntityLocallyInvisible(entity) end

--- 
--- not tested....  
--- 
--- @param netId number
--- @param player Player
--- @param toggle boolean
function SetNetworkIdSyncToPlayer(netId, player, toggle) end


--- @param netId number
--- @param p1 boolean
--- @param p2 boolean
function SetNetworkIdVisibleInCutscene(netId, p1, p2) end

--- 
--- NativeDB Added Parameter 3: Any p2
--- NativeDB Added Parameter 4: Any p3
--- 
--- @param netId number
--- @param time number
function SetNetworkVehicleRespotTimer(netId, time) end


--- @param p0 boolean
--- @param p1 boolean
function SetLocalPlayerVisibleInCutscene(p0, p1) end


--- @param player Player
--- @param toggle boolean
function SetPlayerVisibleLocally(player, toggle) end


--- @param toggle boolean
function SetNetworkCutsceneEntities(toggle) end

--- 
--- Access to the store for shark cards etc...  
--- 
--- @param toggle boolean
function SetStoreEnabled(toggle) end


--- @param netId number
--- @param toggle boolean
function SetNetworkIdExistsOnAllMachines(netId, toggle) end

--- 
--- Original put name,  
--- _SET_NETWORK_VEHICLE_NON_CONTACT  
--- However changed to 'object' as the instances where this is called in scripts both freemode and golf it's only used on objects after the objects are called OBJ_TO_NET p_parachute_s (freemode) prop_golf_ball (golf). Tho the script search was done via TU27 Xbox360 ones.  
--- Got my hopes up whoever put this as vehicle. I was hoping it was what R* used in non-contact races.  
--- 
--- @param vehicle Vehicle
--- @param toggle boolean
function SetNetworkVehicleAsGhost(vehicle, toggle) end


--- @param player Player
--- @param toggle boolean
function SetPlayerInvisibleLocally(player, toggle) end

--- Disconnects you from the session, and starts loading single player, however you still remain connected to the server (only if you're the host, if you're not then you also (most likely) get disconnected from the server) and other players will not be able to join until you exit the game.
--- 
--- If you're already in SP then it'll re-load singleplayer.
--- 
--- You might need to DoScreenFadeIn and ShutdownLoadingScreen otherwise you probably won't end up loading into SP at all.
--- 
--- Somewhat related note: opening the pause menu after loading into this 'singleplayer' mode crashes the game.
--- @return boolean
function ShutdownAndLoadMostRecentSave() end


--- @param p0 number
--- @return string
function TextureDownloadGetName(p0) end


--- @param p0 number
function TextureDownloadRelease(p0) end

--- 
--- Starts a new singleplayer game (at the prologue).  
--- 
function ShutdownAndLaunchSinglePlayerGame() end

--- 
--- p1 = 6  
--- NETWORK_CRC_HASH_CHECK?  
--- 
--- @param player Player
--- @param p1 number
--- @param scriptHash Hash
--- @return boolean
function TriggerScriptCrcCheckOnPlayer(player, p1, scriptHash) end


--- @param p0 number
--- @return boolean
function TextureDownloadHasFailed(p0) end

