--- 
--- Needs more research. Gets the stat name of a masked bool?  
--- p4 - Usually "_NGPSTAT_BOOL" or "_NGTATPSTAT_BOOL". There may be more that I missed.  
--- 
--- @param index number
--- @param spStat boolean
--- @param charStat boolean
--- @param character number
--- @param section string
--- @return Hash
function GetNgstatBoolHash(index, spStat, charStat, character, section) end

--- 
--- Needs more research. Gets the stat name of a masked int?  
--- p4 - Usually one of the following (there may be more that I missed):  
--- -----> "_APAPSTAT_INT"  
--- -----> "_LRPSTAT_INT"  
--- -----> "_NGPSTAT_INT"  
--- -----> "_MP_APAPSTAT_INT"  
--- -----> "_MP_LRPSTAT_INT"  
--- 
--- @param index number
--- @param spStat boolean
--- @param charStat boolean
--- @param character number
--- @param section string
--- @return Hash
function GetNgstatIntHash(index, spStat, charStat, character, section) end


--- @param index number
--- @param spStat boolean
--- @param charStat boolean
--- @param character number
--- @return Hash
function GetPackedBoolStatKey(index, spStat, charStat, character) end


--- @param index number
--- @param spStat boolean
--- @param charStat boolean
--- @param character number
--- @return Hash
function GetPackedIntStatKey(index, spStat, charStat, character) end


--- @param index number
--- @param spStat boolean
--- @param charStat boolean
--- @param character number
--- @return Hash
function GetPackedTitleUpdateBoolStatKey(index, spStat, charStat, character) end


--- @param index number
--- @param spStat boolean
--- @param charStat boolean
--- @param character number
--- @return Hash
function GetPackedTitleUpdateIntStatKey(index, spStat, charStat, character) end


--- @param p0 any
--- @param p1 any
function HiredLimo(p0, p1) end


--- @param p0 any
--- @param p1 any
--- @return boolean
function Leaderboards2ReadByHandle(p0, p1) end

--- 
--- LEADERBOARDS2_READ_BY_???  
--- 
--- @param p0 any
--- @param gamerHandleCsv string
--- @param platformName string
--- @return boolean
function Leaderboards2ReadByPlatform(p0, gamerHandleCsv, platformName) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return boolean
function Leaderboards2ReadByRadius(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return boolean
function Leaderboards2ReadByRank(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param p6 any
--- @return boolean
function Leaderboards2ReadByRow(p0, p1, p2, p3, p4, p5, p6) end


--- @param p0 any
--- @param p1 number
--- @param p2 any
--- @return boolean
function Leaderboards2ReadByScoreFloat(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 boolean
--- @param p4 any
--- @param p5 any
--- @return boolean
function Leaderboards2ReadFriendsByRow(p0, p1, p2, p3, p4, p5) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return boolean
function Leaderboards2ReadByScoreInt(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return boolean
function Leaderboards2ReadRankPrediction(p0, p1, p2) end


--- @param p0 any
--- @return boolean
function Leaderboards2WriteData(p0) end


--- @param p0 any
--- @param p1 any
--- @return boolean
function Leaderboards2WriteDataForEventType(p0, p1) end


--- @param p0 any
--- @return boolean
function LeaderboardsCacheDataRow(p0) end


function LeaderboardsClearCacheData() end


--- @param statName Hash
--- @param value number
function LeaderboardsDeaths(statName, value) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return boolean
function LeaderboardsGetCacheDataRow(p0, p1, p2) end


--- @param p0 any
--- @return boolean
function LeaderboardsGetCacheExists(p0) end


--- @param p0 any
--- @return number
function LeaderboardsGetCacheNumberOfRows(p0) end


--- @param p0 any
--- @return any
function LeaderboardsGetCacheTime(p0) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return any
function LeaderboardsGetColumnId(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return any
function LeaderboardsGetColumnType(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @return any
function LeaderboardsGetNumberOfColumns(p0, p1) end


--- @return boolean
function LeaderboardsReadAnyPending() end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return any
function LeaderboardsReadClear(p0, p1, p2) end


--- @return any
function LeaderboardsReadClearAll() end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return boolean
function LeaderboardsReadPending(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @return boolean
function LeaderboardsReadSuccessful(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 number
function LeaderboardsWriteAddColumn(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
function LeaderboardsWriteAddColumnLong(p0, p1, p2) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
function PlaystatsArenaWarSpectator(p0, p1, p2, p3, p4) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param data any
function PlaystatsArenaWarsEnded(data) end


--- @param id number
function PlaystatsAwardBadsport(id) end

--- 
--- NativeDB Parameter 2: Hash vehicleHash
--- 
--- @param p0 any
--- @param p1 any
--- @param vehicleHash any
function OrderedBossVehicle(p0, p1, vehicleHash) end


--- @param action string
--- @param value number
function PlaystatsBackgroundScriptAction(action, value) end


--- @param p0 any
function PlaystatsAcquiredHiddenPackage(p0) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
function PlaystatsChangeMcEmblem(p0, p1, p2, p3, p4) end


--- @param cheat string
function PlaystatsCheatApplied(cheat) end

--- 
--- NativeDB Parameter 1: Hash type
--- NativeDB Parameter 2: Hash category
--- 
--- @param amount number
--- @param type any
--- @param category any
function PlaystatsAwardXp(amount, type, category) end


--- @param p0 number
function PlaystatsBanAlert(p0) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param p6 any
function PlaystatsCopyRankIntoNewSlot(p0, p1, p2, p3, p4, p5, p6) end


--- @param p0 number
--- @param p1 number
--- @param p2 number
function PlaystatsCrateCreated(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
function PlaystatsClothChange(p0, p1, p2, p3, p4) end

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
function PlaystatsCrateDrop(p0, p1, p2, p3, p4, p5) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param data any
function PlaystatsDarMissionEnd(data) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
function PlaystatsDroneUsage(p0, p1, p2) end


--- @param p0 any
function PlaystatsDirectorMode(p0) end


--- @param data any
function PlaystatsDupeDetection(data) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
function PlaystatsEarnedMcPoints(p0, p1, p2, p3, p4, p5) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param data any
function PlaystatsEnterSessionPack(data) end


--- @param p0 any
--- @param p1 any
function PlaystatsFriendActivity(p0, p1) end


--- @param data any
function PlaystatsGunrunMissionEnded(data) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param data any
function PlaystatsH2FmprepEnd(data) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param data any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function PlaystatsH2InstanceEnd(data, p1, p2, p3) end

--- 
--- NativeDB Parameter 0: Hash hash
--- 
--- @param hash any
--- @param p1 number
function PlaystatsHeistSaveCheat(hash, p1) end

--- 
--- longest time being ilde?  
--- 
--- @param time number
function PlaystatsIdleKick(time) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function PlaystatsHoldUp(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function PlaystatsImpExp(p0, p1, p2, p3) end

--- 
--- NativeDB Removed Parameter 3: Any p3
--- NativeDB Removed Parameter 4: Any p4
--- NativeDB Removed Parameter 5: Any p5
--- NativeDB Removed Parameter 6: Any p6
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param p6 any
function PlaystatsMatchStarted(p0, p1, p2, p3, p4, p5, p6) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 boolean
--- @param p4 boolean
--- @param p5 boolean
function PlaystatsMissionOver(p0, p1, p2, p3, p4, p5) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function PlaystatsMissionCheckpoint(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 boolean
function PlaystatsMissionStarted(p0, p1, p2, p3) end


--- @param p0 any
function PlaystatsNpcInvite(p0) end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param modelHash Hash
function PlaystatsPegasaircraft(modelHash) end

--- **This native does absolutely nothing, just a nullsub**
--- @param p0 any
--- @param p1 any
--- @param p2 any
function PlaystatsOddjobDone(p0, p1, p2) end


--- @param data any
function PlaystatsPiMenuHideSettings(data) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function PlaystatsPropChange(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
function PlaystatsRaceCheckpoint(p0, p1, p2, p3, p4) end


--- @param element number
--- @param item string
function PlaystatsQuickfixTool(element, item) end


--- @param name string
--- @param p1 any
--- @param p2 any
--- @param p3 any
function PlaystatsRandomMissionDone(name, p1, p2, p3) end


--- @param rank number
function PlaystatsRankUp(rank) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param p6 any
--- @param p7 any
--- @param p8 any
--- @param p9 any
function PlaystatsRaceToPoint(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param data any
function PlaystatsSmugMissionEnded(data) end


--- @param amount number
--- @param act number
--- @param player Player
--- @param cm number
function PlaystatsRosBet(amount, act, player, cm) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
function PlaystatsSpectatorWheelSpin(p0, p1, p2, p3) end


function PlaystatsStartOfflineMode() end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
function PlaystatsShopItem(p0, p1, p2, p3, p4) end


--- @param amount number
function PlaystatsSpentPiCustomLoadout(amount) end

--- 
--- Allows CEventNetworkStuntPerformed to be triggered.
--- 
function PlaystatsStuntPerformedEventAllowTrigger() end

--- 
--- NativeDB Parameter 0: Hash weaponHash
--- NativeDB Parameter 1: Hash componentHashTo
--- NativeDB Parameter 2: Hash componentHashFrom
--- 
--- @param weaponHash any
--- @param componentHashTo any
--- @param componentHashFrom any
function PlaystatsWeaponModeChange(weaponHash, componentHashTo, componentHashFrom) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param data any
function PlaystatsStoneHatchetEnd(data) end

--- 
--- Disallows CEventNetworkStuntPerformed to be triggered.
--- 
function PlaystatsStuntPerformedEventDisallowTrigger() end

--- 
--- Set profile setting 866  
--- 
--- @param value number
function SetHasContentUnlocksFlags(value) end

--- 
--- Please change to "void"!  
--- ---------------------------------  
--- Example:  
--- for (v_2 = 0; v_2 <= 4; v_2 += 1) {  
---     STATS::STAT_CLEAR_SLOT_FOR_RELOAD(v_2);  
--- }  
--- 
--- @param statSlot number
--- @return any
function StatClearSlotForReload(statSlot) end


--- @param scaleformHash Hash
--- @param p1 number
function PlaystatsWebsiteVisited(scaleformHash, p1) end

--- 
--- Set profile setting 501  
--- 
--- @param transactionId number
function SetSaveMigrationTransactionId(transactionId) end


--- @param statHash Hash
--- @param outValue boolean
--- @param p2 any
--- @return boolean
function StatGetBool(statHash, outValue, p2) end


--- @return number
function StatGetCancelSaveMigrationStatus() end


--- @param p0 any
--- @return any
function StatDeleteSlot(p0) end


--- @param statHash Hash
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return boolean
function StatGetDate(statHash, p1, p2, p3) end

--- 
--- p2 - Default value? Seems to be -1 most of the time.  
--- 
--- @param statName Hash
--- @param mask number
--- @param p2 number
--- @return boolean
function StatGetBoolMasked(statName, mask, p2) end


--- @param statHash Hash
--- @param outValue number
--- @param p2 any
--- @return boolean
function StatGetFloat(statHash, outValue, p2) end

--- 
--- p2 appears to always be -1  
--- 
--- @param statHash Hash
--- @param outValue number
--- @param p2 number
--- @return boolean
function StatGetInt(statHash, outValue, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @return boolean
function StatGetMaskedInt(p0, p1, p2, p3, p4) end


--- @param statName Hash
--- @return string
function StatGetLicensePlate(statName) end


--- @param statName Hash
--- @return number
function StatGetNumberOfDays(statName) end


--- @param statName Hash
--- @return number
function StatGetNumberOfHours(statName) end


--- @param statName Hash
--- @return number
function StatGetNumberOfMinutes(statName) end


--- @param statName Hash
--- @return number
function StatGetNumberOfSeconds(statName) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @return boolean
function StatGetPos(p0, p1, p2, p3, p4) end

--- 
--- NativeDB Parameter 0: int* p0
--- 
--- @param p0 any
--- @return number
function StatGetSaveMigrationConsumeContentUnlockStatus(p0) end


--- @param data any
--- @return number
function StatGetSaveMigrationStatus(data) end

--- 
--- p1 is always -1 in the script files  
--- 
--- @param statHash Hash
--- @param p1 number
--- @return string
function StatGetString(statHash, p1) end

--- 
--- Needs more research. Seems to return "STAT_UNKNOWN" if no such user id exists.  
--- 
--- @param p0 any
--- @return string
function StatGetUserId(p0) end


--- @param statName Hash
--- @param value number
function StatIncrement(statName, value) end


--- @param p0 number
--- @return boolean
function StatLoad(p0) end


--- @param p0 any
--- @return boolean
function StatLoadPending(p0) end

--- 
--- platformName must be one of the following: ps3, xbox360, ps4, xboxone
--- 
--- @param platformName string
--- @return boolean
function StatMigrateSave(platformName) end


--- @param p0 number
--- @param p1 boolean
--- @param p2 number
--- @return boolean
function StatSave(p0, p1, p2) end


--- @return boolean
function StatSaveMigrationCancel() end

--- 
--- NativeDB Parameter 0: Hash contentId
--- 
--- @param contentId any
--- @param srcPlatform string
--- @param srcGamerHandle string
--- @return boolean
function StatSaveMigrationConsumeContentUnlock(contentId, srcPlatform, srcGamerHandle) end


--- @return boolean
function StatSaveMigrationStatusStart() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function StatSavePending() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function StatSavePendingOrRequested() end


--- @param statName Hash
--- @param value boolean
--- @param save boolean
--- @return boolean
function StatSetBool(statName, value, save) end


--- @param statName Hash
--- @param value boolean
--- @param mask number
--- @param save boolean
--- @return boolean
function StatSetBoolMasked(statName, value, mask, save) end

--- 
--- p1 always true.  
--- 
--- @param statName Hash
--- @param p1 boolean
--- @return boolean
function StatSetCurrentPosixTime(statName, p1) end


--- @param statName Hash
--- @param value number
--- @param save boolean
--- @return boolean
function StatSetFloat(statName, value, save) end

--- 
--- 'value' is a structure to a structure, 'numFields' is how many fields there are in said structure (usually 7).  
--- The structure looks like this:  
--- int year  
--- int month  
--- int day  
--- int hour  
--- int minute  
--- int second  
--- int millisecond  
--- The decompiled scripts use TIME::GET_POSIX_TIME to fill this structure.  
--- 
--- @param statName Hash
--- @param value any
--- @param numFields number
--- @param save boolean
--- @return boolean
function StatSetDate(statName, value, numFields, save) end

--- 
--- The following values have been found in the decompiled scripts:  
--- "RC_ABI1"  
--- "RC_ABI2"  
--- "RC_BA1"  
--- "RC_BA2"  
--- "RC_BA3"  
--- "RC_BA3A"  
--- "RC_BA3C"  
--- "RC_BA4"  
--- "RC_DRE1"  
--- "RC_EPS1"  
--- "RC_EPS2"  
--- "RC_EPS3"  
--- "RC_EPS4"  
--- "RC_EPS5"  
--- "RC_EPS6"  
--- "RC_EPS7"  
--- "RC_EPS8"  
--- "RC_EXT1"  
--- "RC_EXT2"  
--- "RC_EXT3"  
--- "RC_EXT4"  
--- "RC_FAN1"  
--- "RC_FAN2"  
--- "RC_FAN3"  
--- "RC_HAO1"  
--- "RC_HUN1"  
--- "RC_HUN2"  
--- "RC_JOS1"  
--- "RC_JOS2"  
--- "RC_JOS3"  
--- "RC_JOS4"  
--- "RC_MAU1"  
--- "RC_MIN1"  
--- "RC_MIN2"  
--- "RC_MIN3"  
--- "RC_MRS1"  
--- "RC_MRS2"  
--- "RC_NI1"  
--- "RC_NI1A"  
--- "RC_NI1B"  
--- "RC_NI1C"  
--- "RC_NI1D"  
--- "RC_NI2"  
--- "RC_NI3"  
--- "RC_OME1"  
--- "RC_OME2"  
--- "RC_PA1"  
--- "RC_PA2"  
--- "RC_PA3"  
--- "RC_PA3A"  
--- "RC_PA3B"  
--- "RC_PA4"  
--- "RC_RAM1"  
--- "RC_RAM2"  
--- "RC_RAM3"  
--- "RC_RAM4"  
--- "RC_RAM5"  
--- "RC_SAS1"  
--- "RC_TON1"  
--- "RC_TON2"  
--- "RC_TON3"  
--- "RC_TON4"  
--- "RC_TON5"  
--- 
--- @param statName Hash
--- @param value string
--- @param save boolean
--- @return boolean
function StatSetGxtLabel(statName, value, save) end

--- 
--- Add Cash example:  
--- for (int i = 0; i < 3; i++)  
--- {  
--- char statNameFull[32];  
--- sprintf_s(statNameFull, "SP%d_TOTAL_CASH", i);  
--- Hash hash = GAMEPLAY::GET_HASH_KEY(statNameFull);  
--- int val;  
--- STATS::STAT_GET_INT(hash, &val, -1);  
--- val += 1000000;  
--- STATS::STAT_SET_INT(hash, val, 1);  
--- }  
--- 
--- @param statName Hash
--- @param value number
--- @param save boolean
--- @return boolean
function StatSetInt(statName, value, save) end


--- @param statName Hash
--- @param p1 any
--- @param p2 any
--- @param p3 number
--- @param save boolean
--- @return boolean
function StatSetMaskedInt(statName, p1, p2, p3, save) end


--- @param statName Hash
--- @param str string
--- @return boolean
function StatSetLicensePlate(statName, str) end


--- @param statName Hash
--- @param x number
--- @param y number
--- @param z number
--- @param save boolean
--- @return boolean
function StatSetPos(statName, x, y, z, save) end

--- 
--- Does not take effect immediately, unfortunately.  
--- profileSetting seems to only be 936, 937 and 938 in scripts  
--- gtaforums.com/topic/799843-stats-profile-settings/  
--- 
--- @param profileSetting number
--- @param value number
function StatSetProfileSettingValue(profileSetting, value) end


--- @param statName Hash
--- @param value string
--- @param save boolean
--- @return boolean
function StatSetUserId(statName, value, save) end


--- @param statName Hash
--- @param value string
--- @param save boolean
--- @return boolean
function StatSetString(statName, value, save) end


--- @param p0 any
--- @return boolean
function StatSlotIsLoaded(p0) end

--- 
--- NativeDB Parameter 0: Hash statHash
--- 
--- @param statHash string
--- @param value number
--- @param p2 number
function UpdateStatInt(statHash, value, p2) end

--- 
--- NativeDB Parameter 0: Hash statHash
--- 
--- @param statHash any
--- @param value number
--- @param p2 number
function UpdateStatFloat(statHash, value, p2) end

