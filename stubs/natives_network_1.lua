
--- @param entity Entity
--- @return boolean
function NetworkDoesEntityExistWithNetworkId(entity) end


--- @param areaHandle number
--- @return boolean
function NetworkEntityAreaIsOccupied(areaHandle) end


--- @param tunableContext Hash
--- @param tunableName Hash
--- @return boolean
function NetworkDoesTunableExistHash(tunableContext, tunableName) end

--- 
--- state - 0 does 5 fades  
--- state - 1 does 6 fades  
--- native is missing third argument, also boolean, setting to 1 made vehicle fade in slower, probably "slow" as per NETWORK_FADE_OUT_ENTITY  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: BOOL slow
--- 
--- @param entity Entity
--- @param state boolean
function NetworkFadeInEntity(entity, state) end


--- @param areaHandle number
--- @return boolean
function NetworkEntityAreaDoesExist(areaHandle) end

--- 
--- normal - transition like when your coming out of LSC  
--- slow - transition like when you walk into a mission  
--- 
--- @param entity Entity
--- @param normal boolean
--- @param slow boolean
function NetworkFadeOutEntity(entity, normal, slow) end

--- 
--- In the console script dumps, this is only referenced once.   
--- NETWORK::NETWORK_EXPLODE_VEHICLE(vehicle, 1, 0, 0);  
--- ^^^^^ That must be PC script dumps? In X360 Script Dumps it is reference a few times with 2 differences in the parameters.  
--- Which as you see below is 1, 0, 0 + 1, 1, 0 + 1, 0, and a *param?  
--- am_plane_takedown.c   
--- network_explode_vehicle(net_to_veh(Local_40.imm_2), 1, 1, 0);  
--- armenian2.c   
--- network_explode_vehicle(Local_80[6 <2>], 1, 0, 0);  
--- fm_horde_controler.c  
--- network_explode_vehicle(net_to_veh(*uParam0), 1, 0, *uParam0);  
--- fm_mission_controller.c, has 6 hits so not going to list them.  
--- Side note, setting the first parameter to 0 seems to mute sound or so?  
--- Seems it's like ADD_EXPLOSION, etc. the first 2 params. The 3rd atm no need to worry since it always seems to be 0.  
--- 
--- 
--- 
--- NativeDB Return Type: void
--- 
--- @param vehicle Vehicle
--- @param isAudible boolean
--- @param isInvisible boolean
--- @param p3 boolean
--- @return any
function NetworkExplodeVehicle(vehicle, isAudible, isInvisible, p3) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return boolean
function NetworkFindMatchedGamers(p0, p1, p2, p3) end

--- 
--- this is lightly associated with the 2 above meaning it accesses a variable that them 2 access also  
--- 
function NetworkFinishBroadcastingData() end


--- @param netScene number
--- @param animDict string
--- @param animName string
function NetworkForceLocalUseOfSyncedSceneCamera(netScene, animDict, animName) end


--- @return boolean
function NetworkGamertagFromHandlePending() end


--- @param networkHandle any
--- @return boolean
function NetworkGamerHasHeadset(networkHandle) end


--- @param p0 boolean
--- @return number
function NetworkGetActivityPlayerNum(p0) end


--- @param networkHandle number
--- @return boolean
function NetworkGamertagFromHandleStart(networkHandle) end

--- 
--- Return the content modifier id (the tunables context if you want) of a specific content.  
--- It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.  
--- The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'  
--- 'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.  
--- 
--- @param contentHash Hash
--- @return number
function NetworkGetContentModifierListId(contentHash) end


--- @return boolean
function NetworkGamertagFromHandleSucceeded() end


--- @param p0 any
--- @param p1 any
--- @param weaponHash Hash
--- @return boolean
function NetworkGetDestroyerOfEntity(p0, p1, weaponHash) end


--- @return number
function NetworkGetAgeGroup() end


--- @param netId number
--- @param weaponHash Hash
--- @return number
function NetworkGetDestroyerOfNetworkId(netId, weaponHash) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return boolean
function NetworkGetBackgroundLoadingRecipients(p0, p1, p2, p3) end


--- @param p0 any
--- @return boolean
function NetworkGetCurrentlySelectedGamerHandleFromInviteMenu(p0) end


--- @param entity Entity
--- @return boolean
function NetworkGetEntityIsLocal(entity) end


--- @param netId number
--- @return Entity
function NetworkGetEntityFromNetworkId(netId) end


--- @param player Player
--- @param weaponHash Hash
--- @return Entity
function NetworkGetEntityKillerOfPlayer(player, weaponHash) end


--- @param p0 any
--- @param p1 any
--- @return boolean
function NetworkGetFoundGamer(p0, p1) end


--- @param entity Entity
--- @return boolean
function NetworkGetEntityIsNetworked(entity) end


--- @param entity Entity
--- @return number
function NetworkGetEntityNetScriptId(entity) end


--- @param friendIndex number
--- @return string
function NetworkGetFriendName(friendIndex) end


--- @param friendIndex number
--- @return string
function NetworkGetFriendNameFromIndex(friendIndex) end


--- @return number
function NetworkGetFriendCount() end


--- @param p0 any
--- @return boolean
function NetworkGetGamerStatus(p0) end


--- @param networkHandle number
--- @return string
function NetworkGetGamertagFromHandle(networkHandle) end


--- @param p0 any
--- @param p1 any
--- @return boolean
function NetworkGetGamerStatusResult(p0, p1) end

--- 
--- scriptName examples:  
--- "freemode", "AM_CR_SecurityVan", ...  
--- Most of the time, these values are used:  
--- p1 = -1  
--- p2 = 0  
--- 
--- @param scriptName string
--- @param p1 number
--- @param p2 number
--- @return Player
function NetworkGetHostOfScript(scriptName, p1, p2) end

--- 
--- NETWORK_GET_*
--- 
--- @param hours number
--- @param minutes number
--- @param seconds number
function NetworkGetGlobalMultiplayerClock(hours, minutes, seconds) end

--- 
--- Retrieves the local player's NetworkHandle* and stores it in the given buffer.  
--- * Currently unknown struct  
--- 
--- @param networkHandle number
--- @param bufferSize number
function NetworkGetLocalHandle(networkHandle, bufferSize) end

--- 
--- Seems to always return 0, but it's used in quite a few loops.
--- for (num3 = 0; num3 < NETWORK::0xCCD8C02D(); num3++)
---     {
---         if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::0x98F3B274(num3)) != 0)
---         {
---             var num5 = NETWORK::NETWORK_GET_PLAYER_INDEX(PLAYER::0x98F3B274(num3));
--- 
--- @return number
function NetworkGetMaxNumParticipants() end


--- @return Player
function NetworkGetHostOfThisScript() end

--- 
--- Returns the amount of players connected in the current session. Only works when connected to a session/server.  
--- 
--- @return number
function NetworkGetNumConnectedPlayers() end

--- 
--- On PC this is hardcoded to 250.  
--- 
--- @return number
function NetworkGetMaxFriends() end


--- @return number
function NetworkGetNumParticipants() end


--- @param entity Entity
--- @return number
function NetworkGetNetworkIdFromEntity(entity) end


--- @return number
function NetworkGetNumPresenceInvites() end


--- @return number
function NetworkGetNumBodyTrackers() end


--- @return number
function NetworkGetNumFoundGamers() end

--- 
--- NETWORK_GET_*
--- 
--- NativeDB Introduced: v323
--- 
--- @param player Player
--- @return number
function NetworkGetOldestResendCountForPlayer(player) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return number
function NetworkGetNumScriptParticipants(p0, p1, p2) end

--- 
--- NativeDB Introduced: v323
--- 
--- @param player Player
--- @return number
function NetworkGetNumUnackedForPlayer(player) end


--- @param index number
--- @return number
function NetworkGetParticipantIndex(index) end


--- @param data any
--- @param dataSize number
--- @return number
function NetworkGetPlatformPartyMembers(data, dataSize) end


--- @return number
function NetworkGetPlatformPartyUnk() end


--- @param networkHandle number
--- @return Player
function NetworkGetPlayerFromGamerHandle(networkHandle) end

--- Returns the coordinates of another player.
--- 
--- Does not work if you enter your own player id as p0 (will return (0.0, 0.0, 0.0) in that case).
--- @param player Player
--- @return vector3
function NetworkGetPlayerCoords(player) end


--- @param player Player
--- @return number
function NetworkGetPlayerIndex(player) end

--- 
--- Returns the Player associated to a given Ped when in an online session.  
--- 
--- @param ped Ped
--- @return Player
function NetworkGetPlayerIndexFromPed(ped) end


--- @param player Player
--- @return number
function NetworkGetPlayerLoudness(player) end


--- @param player Player
--- @return number
function NetworkGetPlayerTutorialSessionInstance(player) end


--- @param player Player
--- @return boolean
function NetworkGetPlayerOwnsWaypoint(player) end


--- @param p0 any
--- @param p1 any
--- @return boolean
function NetworkGetPresenceInviteHandle(p0, p1) end


--- @param p0 any
--- @return any
function NetworkGetPresenceInviteInviter(p0) end


--- @param p0 any
--- @return any
function NetworkGetPresenceInviteContentId(p0) end


--- @param p0 any
--- @return any
function NetworkGetPresenceInviteId(p0) end


function NetworkGetPrimaryClanDataCancel() end


--- @param p0 any
--- @return any
function NetworkGetPresenceInviteSessionId(p0) end


--- @return any
function NetworkGetPrimaryClanDataClear() end


--- @return any
function NetworkGetPrimaryClanDataPending() end


--- @param p0 any
--- @param p1 any
--- @return boolean
function NetworkGetPrimaryClanDataNew(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @return boolean
function NetworkGetPrimaryClanDataStart(p0, p1) end


--- @return any
function NetworkGetPrimaryClanDataSuccess() end


--- @return number
function NetworkGetRandomInt() end

--- 
--- Same as GAMEPLAY::GET_RANDOM_INT_IN_RANGE  
--- 
--- @param rangeStart number
--- @param rangeEnd number
--- @return number
function NetworkGetRandomIntRanged(rangeStart, rangeEnd) end

--- 
--- Based on scripts such as in freemode.c how they call their vars vVar and fVar the 2nd and 3rd param it a Vector3 and Float, but the first is based on get_random_int_in_range..  
--- 
--- @param randomInt number
--- @param coordinates vector3
--- @param heading number
function NetworkGetRespawnResult(randomInt, coordinates, heading) end


--- @param p0 any
--- @return any
function NetworkGetRespawnResultFlags(p0) end


--- @return boolean
function NetworkGetRosPrivilege24() end


--- @return boolean
function NetworkGetRosPrivilege10() end

--- 
--- if(_CAN_PLAY_ONLINE() == 0) means the player is banned(Social Club or Rockstar)  
--- 
--- @return boolean
function NetworkGetRosPrivilege3() end

--- 
--- bool?  
--- am_crate_drop.c  
--- <...>  
--- if (network::_network_are_ros_available())  
--- {  
--- 	if (network::_0x91B87C55093DE351())  
--- <..>  
--- 
--- @return boolean
function NetworkGetRosPrivilege25() end


--- @return boolean
function NetworkGetRosPrivilege9() end

--- 
--- NETWORK_HAVE_*
--- 
--- @return boolean
function NetworkGetRosPrivilege4() end


--- @return number
function NetworkGetScriptStatus() end


--- @return number
function NetworkGetTalkerProximity() end


--- @return boolean
function NetworkGetThisScriptIsNetworkScript() end


--- @return number
function NetworkGetTargetingMode() end


--- @return number
function NetworkGetTotalNumPlayers() end


--- @param networkHandle number
--- @return boolean
function NetworkGetTransitionHost(networkHandle) end

--- 
--- Returns the value of the tunable 0x9A82F2B. Usually 8000 iirc.  
--- 
--- @return number
function NetworkGetTimeoutTime() end


--- @return number
function NetworkGetTunableCloudCrc() end

--- 
--- Returns a NetworkHandle* from the specified member ID and stores it in a given buffer.  
--- * Currently unknown struct  
--- 
--- @param memberId string
--- @param networkHandle number
--- @param bufferSize number
function NetworkHandleFromMemberId(memberId, networkHandle, bufferSize) end

--- 
--- Returns count.
--- 
--- @param data any
--- @param dataCount number
--- @return number
function NetworkGetTransitionMembers(data, dataCount) end

--- 
--- Returns a NetworkHandle* from the specified user ID and stores it in a given buffer.  
--- * Currently unknown struct  
--- 
--- @param userId string
--- @param networkHandle number
--- @param bufferSize number
function NetworkHandleFromUserId(userId, networkHandle, bufferSize) end


--- @param friendIndex number
--- @param networkHandle number
--- @param bufferSize number
function NetworkHandleFromFriend(friendIndex, networkHandle, bufferSize) end


--- @param player Player
--- @return boolean
function NetworkHasCachedPlayerHeadBlendData(player) end

--- 
--- Returns a handle to networkHandle* from the specified player handle and stores it in a given buffer.  
--- * Currently unknown struct  
--- Example:  
--- std::vector<UINT64> GetPlayerNetworkHandle(Player player) {  
---     const int size = 13;  
---     uint64_t *buffer = std::make_unique<uint64_t[]>(size).get();  
---     NETWORK::NETWORK_HANDLE_FROM_PLAYER(player, reinterpret_cast<int *>(buffer), 13);  
---     for (int i = 0; i < size; i++) {  
---         Log::Msg("networkhandle[%i]: %llx", i, buffer[i]);  
---     }  
---     std::vector<UINT64> result(buffer, buffer + sizeof(buffer));  
---     return result;  
--- }  
--- 
--- @param player Player
--- @param networkHandle number
--- @param bufferSize number
function NetworkHandleFromPlayer(player, networkHandle, bufferSize) end


--- @param entity Entity
--- @return boolean
function NetworkHasControlOfEntity(entity) end


--- @param pickup Pickup
--- @return boolean
function NetworkHasControlOfPickup(pickup) end

--- 
--- Returns some kind of banned state  
--- 
--- @return boolean
function NetworkHasAgeRestrictedProfile() end

--- 
--- Returns true if dinput8.dll is present in the game directory.
--- You will get following error message if that is true: "You are attempting to access GTA Online servers with an altered version of the game."
--- 
--- @return boolean
function NetworkHasGameBeenAltered() end


--- @param doorHash Hash
--- @return boolean
function NetworkHasControlOfDoor(doorHash) end


--- @param p0 any
--- @return boolean
function NetworkHasInvitedGamer(p0) end


--- @return boolean
function NetworkHasPendingInvite() end


--- @param netId number
--- @return boolean
function NetworkHasControlOfNetworkId(netId) end

--- 
--- if(NETWORK::_IS_ROCKSTAR_BANNED() == 0) means the player is rockstar banned  
--- 
--- @return boolean
function NetworkHasPlayerBeenBanned() end


--- @return boolean
function NetworkHasFollowInvite() end

--- 
--- index is always 18 in scripts
--- 
--- @param index number
--- @return boolean
function NetworkHasRosPrivilege(index) end


--- @param p0 number
--- @param banType number
--- @param timeData vector3
--- @return boolean
function NetworkHasRosPrivilegeEndDate(p0, banType, timeData) end


--- @return boolean
function NetworkHasHeadset() end


--- @param p0 any
--- @return boolean
function NetworkHasInvitedGamerToTransition(p0) end


--- @param networkHandle any
--- @return boolean
function NetworkHasViewGamerUserContentResult(networkHandle) end


--- @param player Player
--- @return boolean
function NetworkHasPlayerStartedTransition(player) end


--- @param player Player
--- @return Hash
function NetworkHashFromPlayerHandle(player) end


--- @return boolean
function NetworkHaveOnlinePrivilege2() end


--- @return boolean
function NetworkHaveOnlinePrivileges() end


--- @return boolean
function NetworkHasSocialClubAccount() end


--- @param p0 number
--- @return boolean
function NetworkHaveUserContentPrivileges(p0) end


--- @param networkHandle number
--- @return Hash
function NetworkHashFromGamerHandle(networkHandle) end

--- 
--- //nothing doin  
--- int Global_1837683 = GlobalVariable::Get(1837683);  
--- int Global_1837683_f_404 = GlobalVariable::Get(1837683 + 404);  
--- NETWORK_INVITE_GAMERS(&Global_1837683, Global_1837683_f_404, 0, 0);  
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return boolean
function NetworkInviteGamers(p0, p1, p2, p3) end

--- 
--- Returns whether the Rockstar game services are available or not
--- 
--- @return boolean
function NetworkHaveJustUploadLater() end


--- @param p0 any
--- @param p1 any
--- @return boolean
function NetworkInviteGamersToTransition(p0, p1) end

--- 
--- if(_IS_SOCIALCLUB_BANNED() == 0) means the player is social club banned  
--- 
--- @return boolean
function NetworkHaveSocialClubPrivilege() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function NetworkIsActivitySpectator() end

--- From what I can tell it looks like it does the following:
--- 
--- Creates/hosts a new transition to another online session, using this in FiveM will result in other players being disconencted from the server/preventing them from joining. This is most likely because I entered the wrong session parameters since they're pretty much all unknown right now.
--- 
--- You also need to use NetworkJoinTransition(Player player) and NetworkLaunchTransition().
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 any
--- @param p5 boolean
--- @param p6 boolean
--- @param p7 number
--- @param p8 any
--- @param p9 number
--- @return boolean
function NetworkHostTransition(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end


--- @return boolean
function NetworkIsAddingFriend() end


--- @return boolean
function NetworkIsCableConnected() end


--- @return boolean
function NetworkIsActivitySession() end


--- @param networkHandle number
--- @return boolean
function NetworkIsActivitySpectatorFromHandle(networkHandle) end


--- @return boolean
function NetworkIsClockTimeOverridden() end

--- 
--- This would be nice to see if someone is in party chat, but 2 sad notes.  
--- 1) It only becomes true if said person is speaking in that party at the time.  
--- 2) It will never, become true unless you are in that party with said person.  
--- 
--- @param networkHandle number
--- @return boolean
function NetworkIsChattingInPlatformParty(networkHandle) end


--- @return boolean
function NetworkIsCloudBackgroundScriptRequestPending() end


--- @return boolean
function NetworkIsClanMembershipFinishedDownloading() end


--- @param doorHash Hash
--- @return boolean
function NetworkIsDoorNetworked(doorHash) end


--- @return boolean
function NetworkIsCloudAvailable() end

--- This only works with vehicles.
--- @param entity Entity
--- @return boolean
function NetworkIsEntityConcealed(entity) end


--- @param entity Entity
--- @return boolean
function NetworkIsEntityFading(entity) end


--- @return boolean
function NetworkIsFindingGamers() end


--- @param networkHandle number
--- @return boolean
function NetworkIsFriend(networkHandle) end


--- @param networkHandle number
--- @return boolean
function NetworkIsFriendHandleOnline(networkHandle) end


--- @param friendName string
--- @return boolean
function NetworkIsFriendInMultiplayer(friendName) end

--- 
--- In scripts R* calls 'NETWORK_GET_FRIEND_NAME' in this param.  
--- 
--- @param friendName string
--- @return boolean
function NetworkIsFriendInSameTitle(friendName) end


--- @param friendIndex number
--- @return boolean
function NetworkIsFriendIndexOnline(friendIndex) end


--- @param name string
--- @return boolean
function NetworkIsFriendOnline(name) end


--- @return boolean
function NetworkIsGameInProgress() end


--- @param networkHandle any
--- @return boolean
function NetworkIsGamerBlockedByMe(networkHandle) end


--- @param networkHandle number
--- @return boolean
function NetworkIsGamerMutedByMe(networkHandle) end


--- @param networkHandle number
--- @return boolean
function NetworkIsGamerInMySession(networkHandle) end


--- @param networkHandle number
--- @return boolean
function NetworkIsGamerTalking(networkHandle) end

--- 
--- If you are host, returns true else returns false.  
--- anyone know how to use this to find correct host? is possible?  
--- go to a mission and it will set a host then search the host name using a program then find the pointer to the host name  
--- 
--- @return boolean
function NetworkIsHost() end


--- @param networkHandle number
--- @param bufferSize number
--- @return boolean
function NetworkIsHandleValid(networkHandle, bufferSize) end


--- @return boolean
function NetworkIsInMpCutscene() end


--- @return boolean
function NetworkIsHostOfThisScript() end

--- 
--- Hardcoded to return false.
--- 
--- @return boolean
function NetworkIsInPlatformParty() end

--- 
--- Note according to IDA TU27 X360(Console),  
--- This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
--- Side note: This location just stops where it's at once jumped to.  
--- Screenshot for side note,   
--- h t t p ://i.imgur.com/m2ci1mF.png  
--- h t t p://i.imgur.com/Z0Wx2B6.png  
--- 
--- @return boolean
function NetworkIsInParty() end


--- @return boolean
function NetworkIsInSession() end


--- @return boolean
function NetworkIsInPlatformPartyChat() end


--- @return boolean
function NetworkIsInTransition() end


--- @return boolean
function NetworkIsInSpectatorMode() end


--- @param p0 any
--- @return boolean
function NetworkIsInactiveProfile(p0) end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function NetworkIsInTutorialSession() end


--- @return boolean
function NetworkIsLocalTalking() end


--- @return any
function NetworkIsOfflineInvitePending() end


--- @return boolean
function NetworkIsLocalPlayerInvincible() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return ScrHandle
function NetworkIsMultiplayerDisabled() end

--- 
--- Note according to IDA TU27 X360(Console),  
--- This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
--- Side note: This location just stops where it's at once jumped to.  
--- Screenshot for side note,   
--- h t t p ://i.imgur.com/m2ci1mF.png  
--- h t t p://i.imgur.com/Z0Wx2B6.png  
--- 
--- @param networkHandle number
--- @return boolean
function NetworkIsPartyMember(networkHandle) end


--- @param p0 number
--- @return boolean
function NetworkIsParticipantActive(p0) end


--- @param player Player
--- @return boolean
function NetworkIsPlayerAParticipant(player) end

--- 
--- This function is hard-coded to always return 0.  
--- 
--- @param p0 any
--- @return boolean
function NetworkIsPendingFriend(p0) end


--- @param p0 Player
--- @param script string
--- @param p2 Player
--- @return boolean
function NetworkIsPlayerAParticipantOnScript(p0, script, p2) end


--- @param player Player
--- @return boolean
function NetworkIsPlayerBlockedByMe(player) end


--- @param player Player
--- @return boolean
function NetworkIsPlayerActive(player) end


--- @param player Player
--- @return boolean
function NetworkIsPlayerConnected(player) end


--- @param player Player
--- @return boolean
function NetworkIsPlayerConcealed(player) end

--- 
--- NETWORK_ARE_*  
--- 
--- @param player Player
--- @param index number
--- @return boolean
function NetworkIsPlayerEqualToIndex(player, index) end


--- @param player Player
--- @return boolean
function NetworkIsPlayerFading(player) end


--- @param player Player
--- @return boolean
function NetworkIsPlayerInMpCutscene(player) end


--- @param player Player
--- @return boolean
function NetworkIsPlayerMutedByMe(player) end

--- 
--- returns true if someone is screaming or talking in a microphone  
--- 
--- @param player Player
--- @return boolean
function NetworkIsPlayerTalking(player) end


--- @return boolean
function NetworkIsPsnAvailable() end


--- @param scriptName string
--- @param player Player
--- @param p2 boolean
--- @param p3 any
--- @return boolean
function NetworkIsScriptActive(scriptName, player, p2, p3) end


--- @return boolean
function NetworkIsSessionActive() end

--- 
--- This checks if player is playing on gta online or not.  
--- Please add an if and block your mod if this is "true".  
--- 
--- @return boolean
function NetworkIsSessionStarted() end


--- @return boolean
function NetworkIsSessionBusy() end

--- 
--- Returns whether the player is signed into Social Club.  
--- 
--- @return boolean
function NetworkIsSignedIn() end

--- 
--- Returns whether the game is not in offline mode.  
--- seemed not to work for some ppl  
--- 
--- @return boolean
function NetworkIsSignedOnline() end

--- 
--- Same as _IS_TEXT_CHAT_ACTIVE, except it does not check if the text chat HUD component is initialized, and therefore may crash.  
--- 
--- @return boolean
function NetworkIsTextChatActive() end


--- @param p0 any
--- @param p1 boolean
--- @param p2 any
--- @return boolean
function NetworkIsThisScriptMarked(p0, p1, p2) end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function NetworkIsTransitionBusy() end


--- @return boolean
function NetworkIsTransitionClosedCrew() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function NetworkIsTransitionHost() end


--- @return boolean
function NetworkIsTransitionClosedFriends() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function NetworkIsTransitionMatchmaking() end


--- @param networkHandle number
--- @return boolean
function NetworkIsTransitionHostFromHandle(networkHandle) end


--- @return boolean
function NetworkIsTransitionOpenToMatchmaking() end


--- @return boolean
function NetworkIsTransitionPrivate() end


--- @return boolean
function NetworkIsTransitionSolo() end


--- @return boolean
function NetworkIsTransitionStarted() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function NetworkIsTransitionToGame() end

--- 
--- x360 Hash: 0xF637166E  
--- 
--- @return boolean
function NetworkIsTransitionVisibilityLocked() end


--- @return boolean
function NetworkIsTunableCloudRequestPending() end


--- @return any
function NetworkJoinGroupActivity() end


--- @return boolean
function NetworkIsTutorialSessionChangePending() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function NetworkLaunchTransition() end

--- 
--- int handle[76];  
--- NETWORK_HANDLE_FROM_FRIEND(iSelectedPlayer, &handle[0], 13);  
--- Player uVar2 = NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(&handle[0]);  
--- NETWORK_JOIN_TRANSITION(uVar2);  
--- 		nothing doin.  
--- 
--- @param player Player
--- @return boolean
function NetworkJoinTransition(player) end


--- @param p0 any
--- @return boolean
function NetworkMarkTransitionGamerAsFullyJoined(p0) end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function NetworkLeaveTransition() end


function NetworkOpenTransitionMatchmaking() end


--- @param networkHandle number
--- @return string
function NetworkMemberIdFromGamerHandle(networkHandle) end

--- 
--- Could possibly bypass being muted or automatically muted  
--- 
--- @param player Player
--- @param toggle boolean
function NetworkOverrideChatRestrictions(player, toggle) end

