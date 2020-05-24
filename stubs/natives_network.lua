
--- @param player Player
--- @param toggle boolean
function ActivateDamageTrackerOnPlayer(player, toggle) end

--- 
--- if (CAN_REGISTER_MISSION_ENTITIES(20, 20, 20, 10))  
--- {  
--- }  
--- 
--- @param ped_amt number
--- @param vehicle_amt number
--- @param object_amt number
--- @param pickup_amt number
--- @returns boolean
function CanRegisterMissionEntities(ped_amt, vehicle_amt, object_amt, pickup_amt) end


--- @param netID number
--- @param toggle boolean
function ActivateDamageTrackerOnNetworkId(netID, toggle) end


--- @param amount number
--- @returns boolean
function CanRegisterMissionPeds(amount) end


--- @param networkHandle number
--- @param event number
--- @param amountReceived number
--- @returns boolean
function BadSportPlayerLeftDetected(networkHandle, event, amountReceived) end


--- @param amount number
--- @returns boolean
function CanRegisterMissionVehicles(amount) end

--- 
--- Downloads prod.cloud.rockstargames.com/titles/gta5/<platform>/check.json  
--- 
function CloudCheckAvailability() end


--- @param amount number
--- @returns boolean
function CanRegisterMissionObjects(amount) end


--- @returns number
function CloudGetAvailabilityCheckResult() end


--- @param amount number
--- @returns boolean
function CanRegisterMissionPickups(amount) end


--- @returns boolean
function FacebookDoUnkCheck() end


--- @returns boolean
function FacebookIsSendingData() end


--- @param p0 string
--- @returns number
function CloudDeleteMemberFile(p0) end


--- @param handle number
--- @returns boolean
function CloudHasRequestCompleted(handle) end

--- 
--- GTA Online character creation  
--- 
--- @returns boolean
function FacebookSetCreateCharacterComplete() end


--- @returns boolean
function FacebookIsAvailable() end

--- 
--- milestoneId:  
--- 0 = "percentcomplete"  
--- 1 = "storycomplete"  
--- 2 = "vehicles"  
--- 3 = "properties"  
--- 4 = "psych"  
--- 5 = "mapreveal"  
--- 6 = "prologue"  
--- 
--- @param milestoneId number
--- @returns boolean
function FacebookSetMilestoneComplete(milestoneId) end


--- @param networkHandle number
--- @param p1 any
--- @param p2 any
--- @returns boolean
function FilloutPmPlayerList(networkHandle, p1, p2) end


--- @param heistName string
--- @param cashEarned number
--- @param xpEarned number
--- @returns boolean
function FacebookSetHeistComplete(heistName, cashEarned, xpEarned) end

--- Returns POSIX timestamp.
--- 
--- Renamed from _GET_POSIX_TIME to GET_CLOUD_TIME_AS_INT because of conflicting native names ([0xDA488F299A5B164E](#_0xDA488F299A5B164E))
--- @returns number
function GetCloudTimeAsInt() end

--- 
--- Hardcoded to not work in SP.  
--- 
--- @param p0 boolean
function FadeOutLocalPlayer(p0) end


--- @param index number
--- @returns string
function GetCommerceItemId(index) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @returns boolean
function FilloutPmPlayerListWithNames(p0, p1, p2, p3) end


--- @param index number
--- @returns number
function GetCommerceItemNumCats(index) end


--- @param index number
--- @returns any
function GetCommerceProductPrice(index) end

--- 
--- index2 is unused
--- 
--- @param index number
--- @param index2 number
--- @returns string
function GetCommerceItemCat(index, index2) end


--- @returns any
function GetMaxNumNetworkObjects() end


--- @param index number
--- @returns string
function GetCommerceItemName(index) end


--- @returns any
function GetMaxNumNetworkPickups() end

--- 
--- Takes the specified time and writes it to the structure specified in the second argument.  
--- struct date_time  
--- {  
---     alignas(8) int year;  
---     alignas(8) int month;  
---     alignas(8) int day;  
---     alignas(8) int hour;  
---     alignas(8) int minute;  
---     alignas(8) int second;  
--- };  
--- 
--- @param unixEpoch number
--- @param timeStructure any
function GetDateAndTimeFromUnixEpoch(unixEpoch, timeStructure) end


--- @returns any
function GetMaxNumNetworkVehicles() end


--- @returns number
function GetNumCommerceItems() end


--- @returns any
function GetMaxNumNetworkPeds() end


--- @param p0 boolean
--- @returns number
function GetNumCreatedMissionPeds(p0) end


--- @returns number
function GetNetworkTime() end


--- @param p0 boolean
--- @returns number
function GetNumCreatedMissionVehicles(p0) end

--- Returns the same value as [GetNetworkTime](#_0x7A5487FE9FAA6B48) in freemode, but as opposed to GetNetworkTime it always gets the most recent time, instead of once per tick.
--- 
--- Could be used for benchmarking since it can return times in ticks.
--- @returns number
function GetNetworkTimeAccurate() end

--- 
--- p0 appears to be for MP  
--- 
--- 
--- 
--- NativeDB Added Parameter 2: Any p1
--- 
--- @param p0 boolean
--- @returns number
function GetNumReservedMissionPeds(p0) end


--- @param p0 boolean
--- @returns number
function GetNumCreatedMissionObjects(p0) end


--- @param p0 number
--- @returns string
function GetPlayerAdvancedModifierPrivileges(p0) end

--- 
--- Previously named, '_FORMAT_TIME' for people who can't find it's uses in decompiled scripts.  
--- 
--- @param time number
--- @returns string
function GetTimeAsString(time) end

--- 
--- p0 appears to be for MP  
--- 
--- 
--- 
--- NativeDB Added Parameter 2: Any p1
--- 
--- @param p0 boolean
--- @returns number
function GetNumReservedMissionObjects(p0) end

--- 
--- Subtracts the second argument from the first.  
--- 
--- @param timeA number
--- @param timeB number
--- @returns number
function GetTimeDifference(timeA, timeB) end

--- 
--- p0 appears to be for MP  
--- 
--- 
--- 
--- NativeDB Added Parameter 2: Any p1
--- 
--- @param p0 boolean
--- @returns number
function GetNumReservedMissionVehicles(p0) end


--- @returns boolean
function HasNetworkTimeStarted() end

--- 
--- 0 = succeeded
--- 1 = pending
--- 2 = failed
--- 
--- GET_ST*
--- 
--- @param p0 number
--- @returns number
function GetStatusOfTextureDownload(p0) end


--- @returns boolean
function IsCommerceStoreOpen() end

--- 
--- Adds the first argument to the second.  
--- 
--- @param timeA number
--- @param timeB number
--- @returns number
function GetTimeOffset(timeA, timeB) end


--- @param player Player
--- @returns boolean
function IsDamageTrackerActiveOnPlayer(player) end


--- @returns boolean
function IsCommerceDataValid() end


--- @param netId number
--- @returns boolean
function IsNetworkIdOwnedByParticipant(netId) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @returns boolean
function IsSphereVisibleToAnotherMachine(p0, p1, p2, p3) end


--- @param netID number
--- @returns boolean
function IsDamageTrackerActiveOnNetworkId(netID) end


--- @returns boolean
function IsStoreAvailableToUser() end


--- @param player Player
--- @returns boolean
function IsPlayerInCutscene(player) end

--- 
--- Subtracts the second argument from the first, then returns whether the result is negative.  
--- 
--- @param timeA number
--- @param timeB number
--- @returns boolean
function IsTimeLessThan(timeA, timeB) end


--- @param p0 any
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @returns boolean
function IsSphereVisibleToPlayer(p0, p1, p2, p3, p4) end

--- 
--- Returns true if the two times are equal; otherwise returns false.  
--- 
--- @param timeA number
--- @param timeB number
--- @returns boolean
function IsTimeEqualTo(timeA, timeB) end

--- 
--- Subtracts the first argument from the second, then returns whether the result is negative.  
--- 
--- @param timeA number
--- @param timeB number
--- @returns boolean
function IsTimeMoreThan(timeA, timeB) end


--- @param toggle boolean
function NetworkBlockInvites2(toggle) end

--- 
--- gets the entity id of a network id  
--- 
--- @param netHandle number
--- @returns Entity
function NetToEnt(netHandle) end

--- 
--- gets the object id of a network id  
--- 
--- @param netHandle number
--- @returns Object
function NetToObj(netHandle) end


--- @param p0 any
--- @returns boolean
function NetworkAcceptPresenceInvite(p0) end

--- 
--- Some of the tunable contexts used in the PC scripts:  
--- - "BASE_GLOBALS"  
--- - "MP_GLOBAL"  
--- and some of the tunable names used in the PC scripts:  
--- - "XP_MULTIPLIER"  
--- - "CASH_MULTIPLIER"  
--- - "ARMOUR_REWARD_GIFT"  
--- - "TOGGLE_CREATORS_OFF"  
--- - "MULTIPLAYER_DISABLED"  
--- 
--- @param tunableContext string
--- @param tunableName string
--- @returns boolean
function NetworkAccessTunableBool(tunableContext, tunableName) end


--- @param tunableContext Hash
--- @param tunableName Hash
--- @returns boolean
function NetworkAccessTunableBoolHash(tunableContext, tunableName) end

--- 
--- gets the ped id of a network id  
--- 
--- @param netHandle number
--- @returns Ped
function NetToPed(netHandle) end


--- @param netHandle number
--- @returns Vehicle
function NetToVeh(netHandle) end


--- @param tunableContext Hash
--- @param tunableName Hash
--- @param value number
--- @returns boolean
function NetworkAccessTunableFloatHash(tunableContext, tunableName, value) end

--- 
--- Some of the tunable contexts used in the PC scripts:  
--- - "MP_FM_RACES"  
--- - "MP_FM_RACES_CAR"  
--- - "MP_FM_RACES_SEA"  
--- - "MP_FM_RACES_CAR"  
--- - "MP_FM_RACES_AIR"  
--- - "MP_FM_BASEJUMP"  
--- - "MP_FM_RACES_CYCLE"  
--- - "MP_FM_RACES_BIKE"  
--- - "MP_FM_MISSIONS"  
--- - "MP_FM_CONTACT"  
--- - "MP_FM_RANDOM"  
--- - "MP_FM_VERSUS"  
--- - "MP_FM_LTS"  
--- - "MP_FM_CAPTURE"  
--- - "MP_FM_DM"  
--- - "MP_FM_SURVIVAL"  
--- - "MP_FM_GANG_ATTACK"  
--- - "MP_FM_BASEJUMP"  
--- - "BASE_GLOBALS"  
--- - "MP_GLOBAL"  
--- and some of the tunable names used in the PC scripts:  
--- - "XP_MULTIPLIER"  
--- - "CASH_MULTIPLIER"  
--- - "ARMOUR_REWARD_GIFT"  
--- - "TOGGLE_CREATORS_OFF"  
--- 
--- @param tunableContext string
--- @param tunableName string
--- @param value number
--- @returns boolean
function NetworkAccessTunableInt(tunableContext, tunableName, value) end

--- 
--- NETWORK_RE*
--- 
--- Triggers a CEventNetworkInviteConfirmed event
--- 
--- @returns boolean
function NetworkAcceptInvite() end


--- @returns any
function NetworkActionFollowInvite() end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @returns any
function NetworkAddEntityArea(p0, p1, p2, p3, p4, p5) end

--- 
--- Some of the tunable contexts used in the PC scripts:  
--- - "BASE_GLOBALS"  
--- - "MP_GLOBAL"  
--- - "MP_FM_RACES"  
--- - "MP_FM_RACES_CAR"  
--- - "MP_FM_RACES_SEA"  
--- - "MP_FM_RACES_CAR"  
--- - "MP_FM_RACES_AIR"  
--- - "MP_FM_BASEJUMP"  
--- - "MP_FM_RACES_CYCLE"  
--- - "MP_FM_RACES_BIKE"  
--- - "MP_FM_MISSIONS"  
--- - "MP_FM_CONTACT"  
--- - "MP_FM_RANDOM"  
--- - "MP_FM_VERSUS"  
--- - "MP_FM_LTS"  
--- - "MP_FM_CAPTURE"  
--- - "MP_FM_DM"  
--- - "MP_FM_SURVIVAL"  
--- - "MP_FM_GANG_ATTACK"  
--- - "MP_FM_BASEJUMP"  
--- - "MP_CNC_TEAM_COP"  
--- - "MP_CNC_TEAM_VAGOS"  
--- - "MP_CNC_TEAM_LOST"  
--- and some of the tunable names used in the PC scripts:  
--- - "XP_MULTIPLIER"  
--- - "CASH_MULTIPLIER"  
--- - "ARMOUR_REWARD_GIFT"  
--- - "TOGGLE_CREATORS_OFF"  
--- 
--- @param tunableContext string
--- @param tunableName string
--- @param value number
--- @returns boolean
function NetworkAccessTunableFloat(tunableContext, tunableName, value) end


--- @param tunableContext Hash
--- @param tunableName Hash
--- @param value number
--- @returns boolean
function NetworkAccessTunableIntHash(tunableContext, tunableName, value) end


--- @param entity Entity
--- @param netScene number
--- @param animDict string
--- @param animName string
--- @param speed number
--- @param speedMulitiplier number
--- @param flag number
function NetworkAddEntityToSynchronisedScene(entity, netScene, animDict, animName, speed, speedMulitiplier, flag) end

--- 
--- ..  
--- 
--- @param p0 number
--- @param p1 number
function NetworkAddFollowers(p0, p1) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @returns any
function NetworkAddEntityAngledArea(p0, p1, p2, p3, p4, p5, p6) end


--- @param ped Ped
--- @param netScene number
--- @param animDict string
--- @param animnName string
--- @param blendInSpeed number
--- @param blendOutSpeed number
--- @param duration number
--- @param flag number
--- @param playbackRate number
--- @param p9 any
function NetworkAddPedToSynchronisedScene(ped, netScene, animDict, animnName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, p9) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @returns any
function NetworkAddEntityDisplayedBoundaries(p0, p1, p2, p3, p4, p5) end


--- @param networkHandle any
--- @returns boolean
function NetworkAmIBlockedByGamer(networkHandle) end


--- @param networkHandle number
--- @param message string
--- @returns boolean
function NetworkAddFriend(networkHandle, message) end


--- @param networkHandle any
--- @returns boolean
function NetworkAmIMutedByGamer(networkHandle) end


--- @param player Player
--- @returns boolean
function NetworkAmIMutedByPlayer(player) end


--- @returns boolean
function NetworkAllocateTunablesRegistrationDataMap() end


--- @param p0 number
--- @param p1 number
function NetworkApplyTransitionParameter(p0, p1) end

--- 
--- example from scripts:  
--- unk_0xE0C28DB5(0,Global_2398291.imm_726,1);  
--- that global is for ps3/xbox not pc  
--- no idea what this does does  
--- 
--- @param p0 number
--- @param string string
--- @param p2 boolean
function NetworkApplyTransitionParameterString(p0, string, p2) end


--- @param player Player
--- @returns boolean
function NetworkAmIBlockedByPlayer(player) end


--- @param netHandle1 number
--- @param netHandle2 number
--- @returns boolean
function NetworkAreHandlesTheSame(netHandle1, netHandle2) end


--- @param p0 any
--- @returns boolean
function NetworkAreTransitionDetailsValid(p0) end

--- 
--- Sadly I thought this copied their tattoos, but it just seems to copy their 'blend data'. E.G. skin tone/color, fat/skinny face, etc.  
--- 
--- @param ped Ped
--- @param player Player
--- @returns boolean
function NetworkApplyCachedPlayerHeadBlendData(ped, player) end

--- 
--- NativeDB Parameter 0: int p0
--- NativeDB Parameter 1: int p1
--- NativeDB Parameter 2: int p2
--- 
function NetworkBailTransition() end


--- @param ped Ped
--- @param p1 number
function NetworkApplyPedScarData(ped, p1) end


--- @param toggle boolean
function NetworkBlockInvites(toggle) end


--- @param p0 boolean
function NetworkBlockKickedPlayers(p0) end

--- 
--- NativeDB Return Type: void
--- 
--- @param x number
--- @param y number
--- @param z number
--- @returns boolean
function NetworkApplyVoiceProximityOverride(x, y, z) end

--- 
--- 11 - Need to download tunables.  
--- 12 - Need to download background script.  
--- Returns 1 if the multiplayer is loaded, otherwhise 0.  
--- 
--- @param loadingState number
--- @returns boolean
function NetworkCanAccessMultiplayer(loadingState) end


--- @param networkHandle number
--- @returns boolean
function NetworkCanCommunicateWithGamer(networkHandle) end


--- @param netScene number
--- @param entity Entity
--- @param bone number
function NetworkAttachSynchronisedSceneToEntity(netScene, entity, bone) end

--- 
--- Same as NETWORK_CAN_COMMUNICATE_WITH_GAMER
--- 
--- NETWORK_CAN_*
--- 
--- @param networkHandle any
--- @returns boolean
function NetworkCanCommunicateWithGamer2(networkHandle) end

--- 
--- This has arguments.. in PC scripts.  
--- 
--- 
--- 
--- NativeDB Added Parameter 1: int p0
--- NativeDB Added Parameter 2: int p1
--- NativeDB Added Parameter 3: int p2
--- 
function NetworkBail() end


--- @param networkHandle any
--- @returns boolean
function NetworkCanGamerPlayMultiplayerWithMe(networkHandle) end


--- @param networkHandle any
--- @returns boolean
function NetworkCanPlayMultiplayerWithGamer(networkHandle) end


--- @returns boolean
function NetworkCanSetWaypoint() end


--- @param networkHandle any
--- @returns boolean
function NetworkCanViewGamerUserContent(networkHandle) end


function NetworkCacheLocalPlayerHeadBlendData() end


--- @param p0 any
--- @param p1 any
function NetworkChangeTransitionSlots(p0, p1) end


--- @returns boolean
function NetworkCanBail() end

--- 
--- Only documented...  
--- 
--- @param animDict string
--- @param animName string
--- @returns boolean
function NetworkClanAnimation(animDict, animName) end


--- @param networkHandle number
--- @returns boolean
function NetworkClanDownloadMembership(networkHandle) end


--- @returns boolean
function NetworkCanEnterMultiplayer() end

--- 
--- NativeDB Parameter 1: char* txdName
--- 
--- @param netHandle Player
--- @param txdName any
--- @returns boolean
function NetworkClanGetEmblemTxdName(netHandle, txdName) end


--- @returns boolean
function NetworkCanSessionEnd() end

--- 
--- NETWORK_CLAN_*
--- 
--- @returns number
function NetworkClanGetLocalMembershipsCount() end


function NetworkCancelRespawnSearch() end


--- @param p0 number
--- @returns number
function NetworkClanGetMembershipCount(p0) end


--- @param p0 any
--- @param p1 any
--- @returns boolean
function NetworkCheckDataManagerSucceededForHandle(p0, p1) end


--- @param p0 any
--- @returns boolean
function NetworkClanDownloadMembershipPending(p0) end


--- @param p0 number
--- @param p1 any
--- @returns boolean
function NetworkClanGetMembershipValid(p0, p1) end

--- 
--- bufferSize is 35 in the scripts.  
--- 
--- 
--- 
--- NativeDB Parameter 2: char* formattedTag
--- 
--- @param clanDesc number
--- @param bufferSize number
--- @param formattedTag number
function NetworkClanGetUiFormattedTag(clanDesc, bufferSize, formattedTag) end

--- 
--- BOOL DEBUG_MEMBRESHIP(int Param)  
--- {  
--- 	int membership;  
--- 	networkHandleMgr handle;  
--- 	NETWORK_HANDLE_FROM_PLAYER(iSelectedPlayer, &handle.netHandle, 13);  
--- 	if (!_NETWORK_IS_CLAN_MEMBERSHIP_FINISHED_DOWNLOADING())  
--- 	{  
--- 		if (NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE(&Param))  
--- 		{  
--- if (NETWORK_CLAN_GET_MEMBERSHIP_COUNT(&Param) > 0)  
--- {  
--- 	if (NETWORK_CLAN_GET_MEMBERSHIP_VALID(&Param, 0))  
--- 	{  
--- 		if (NETWORK_CLAN_GET_MEMBERSHIP(&Param, &membership, -1))  
--- 		{  
--- _0xF633805A(&membership, 35, &handle.netHandle);  
--- 		}  
--- 	}  
--- }  
--- 		}  
--- 	}  
--- 	else  
--- 	{  
--- 		NETWORK_CLAN_DOWNLOAD_MEMBERSHIP(&handle.netHandle);  
--- 	}  
--- }  
--- 
--- @param p0 number
--- @param clanMembership number
--- @param p2 number
--- @returns boolean
function NetworkClanGetMembership(p0, clanMembership, p2) end

--- 
--- bufferSize is 35 in the scripts.  
--- 
--- @param clanDesc number
--- @param bufferSize number
--- @returns boolean
function NetworkClanIsRockstarClan(clanDesc, bufferSize) end

--- 
--- networkMembershipMgr memShip;  
--- int maxMemship = _GET_NUM_MEMBERSHIP_DESC();  
--- for (int i = 0; i < maxMemship; i++)  
--- {  
--- 	NETWORK_CLAN_GET_MEMBERSHIP_DESC(&memShip.memHandle, i);  
--- }  
--- 
--- @param memberDesc number
--- @param p1 number
--- @returns boolean
function NetworkClanGetMembershipDesc(memberDesc, p1) end


--- @param clanDesc number
--- @returns boolean
function NetworkClanJoin(clanDesc) end


--- @param p0 any
--- @param p1 any
--- @returns boolean
function NetworkClanIsEmblemReady(p0, p1) end


--- @param networkHandle number
--- @returns boolean
function NetworkClanPlayerIsActive(networkHandle) end


--- @param p0 number
--- @returns boolean
function NetworkClanRemoteMembershipsAreInCache(p0) end

--- 
--- bufferSize is 35 in the scripts.  
--- bufferSize is the elementCount of p0(desc), sizeof(p0) == 280 == p1*8 == 35 * 8, p2(netHandle) is obtained from NETWORK::NETWORK_HANDLE_FROM_PLAYER.  And no, I can't explain why 35 * sizeof(int) == 280 and not 140, but I'll get back to you on that.  
--- the answer is: because p0 an int64_t* / int64_t[35].  and FYI p2 is an int64_t[13]  
--- pastebin.com/cSZniHak  
--- 
--- @param clanDesc number
--- @param bufferSize number
--- @param networkHandle number
--- @returns boolean
function NetworkClanPlayerGetDesc(clanDesc, bufferSize, networkHandle) end


--- @param p0 any
--- @returns boolean
function NetworkClanRequestEmblem(p0) end


--- @param p0 any
function NetworkClanReleaseEmblem(p0) end


function NetworkClearClockTimeOverride() end


--- @returns boolean
function NetworkClanServiceIsValid() end


function NetworkClearFollowers() end


function NetworkClearGetGamerStatus() end


--- @returns any
function NetworkClearFollowInvite() end


function NetworkClearVoiceChannel() end


function NetworkClearVoiceProximityOverride() end


function NetworkClearFoundGamers() end


--- @param entity Entity
--- @param toggle boolean
function NetworkConcealEntity(entity, toggle) end


function NetworkClearPropertyId() end

--- 
--- netScene to scene  
--- 
--- @param netScene number
--- @returns number
function NetworkConvertSynchronisedSceneToSynchronizedScene(netScene) end


function NetworkClearTransitionCreatorHandle() end

--- 
--- I did this and I didn't see anything happening  
--- int pindex;  
--- for (int i = 0; i < 32; i++)  
--- {  
--- 	if (NETWORK_IS_PARTICIPANT_ACTIVE(INT_TO_PARTICIPANTINDEX(i)))  
--- 	{  
--- pindex = NETWORK_GET_PLAYER_INDEX(INT_TO_PARTICIPANTINDEX(i));  
--- NETWORK_DISABLE_INVINCIBLE_FLASHING(pindex, 1);  
--- 	}  
--- }  
--- 
--- @param player Player
--- @param toggle boolean
function NetworkDisableInvincibleFlashing(player, toggle) end


--- @param netID number
function NetworkDisableProximityMigration(netID) end

--- 
--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @returns boolean
function NetworkDoTransitionQuickmatchAsync(p0, p1, p2, p3) end


function NetworkCloseTransitionMatchmaking() end

--- This is what R\* uses to hide players in MP interiors.
--- @param player Player
--- @param toggle boolean
--- @param p2 boolean
function NetworkConcealPlayer(player, toggle, p2) end

--- 
--- p2 is true 3/4 of the occurrences I found.  
--- 'players' is the number of players for a session. On PS3/360 it's always 18. On PC it's 32.  
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 boolean
--- @param players number
--- @param p4 boolean
--- @returns boolean
function NetworkDoTransitionToFreemode(p0, p1, p2, players, p4) end


--- @param x number
--- @param y number
--- @param z number
--- @param xRot number
--- @param yRot number
--- @param zRot number
--- @param rotationOrder number
--- @param useOcclusionPortal boolean
--- @param looped boolean
--- @param p9 number
--- @param animTime number
--- @param p11 number
--- @returns number
function NetworkCreateSynchronisedScene(x, y, z, xRot, yRot, zRot, rotationOrder, useOcclusionPortal, looped, p9, animTime, p11) end


--- @param p0 any
--- @param p1 any
--- @param players number
--- @param p3 boolean
--- @param p4 boolean
--- @param p5 boolean
--- @returns boolean
function NetworkDoTransitionToNewFreemode(p0, p1, players, p3, p4, p5) end


--- @param p0 boolean
--- @param maxPlayers number
--- @param p2 boolean
--- @returns boolean
function NetworkDoTransitionToNewGame(p0, maxPlayers, p2) end

--- 
--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @returns boolean
function NetworkDoTransitionQuickmatch(p0, p1, p2, p3) end


--- @param netID number
--- @returns boolean
function NetworkDoesNetworkIdExist(netID) end

--- 
--- Some of the tunable contexts used in the PC scripts:  
--- - "MP_FM_RACES"  
--- - "MP_FM_RACES_CAR"  
--- - "MP_FM_RACES_SEA"  
--- - "MP_FM_RACES_CAR"  
--- - "MP_FM_RACES_AIR"  
--- - "MP_FM_BASEJUMP"  
--- - "MP_FM_RACES_CYCLE"  
--- - "MP_FM_RACES_BIKE"  
--- - "MP_FM_MISSIONS"  
--- - "MP_FM_CONTACT"  
--- - "MP_FM_RANDOM"  
--- - "MP_FM_VERSUS"  
--- - "MP_FM_LTS"  
--- - "MP_FM_CAPTURE"  
--- - "MP_FM_DM"  
--- - "MP_FM_SURVIVAL"  
--- - "MP_FM_GANG_ATTACK"  
--- - "MP_FM_BASEJUMP"  
--- - "BASE_GLOBALS"  
--- - "MP_GLOBAL"  
--- and some of the tunable names used in the PC scripts:  
--- - "XP_MULTIPLIER"  
--- - "CASH_MULTIPLIER"  
--- - "ARMOUR_REWARD_GIFT"  
--- - "TOGGLE_CREATORS_OFF"  
--- 
--- @param tunableContext string
--- @param tunableName string
--- @returns boolean
function NetworkDoesTunableExist(tunableContext, tunableName) end

--- 
--- NativeDB Added Parameter 7: Any p6
--- NativeDB Added Parameter 8: Any p7
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @returns boolean
function NetworkDoTransitionQuickmatchWithGroup(p0, p1, p2, p3, p4, p5) end


function NetworkEndTutorialSession() end


--- @param p0 boolean
--- @param maxPlayers number
--- @returns boolean
function NetworkDoTransitionToGame(p0, maxPlayers) end

