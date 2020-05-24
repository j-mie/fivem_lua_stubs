--- 
--- Does nothing and always returns false.
--- 
--- @param amount number
--- @return boolean
function DepositVc(amount) end

--- 
--- p1 = 0 (always)  
--- p2 = 1 (always)  
--- 
--- @param cost number
--- @param p1 boolean
--- @param p2 boolean
function NetworkBuyAirstrike(cost, p1, p2) end

--- 
--- NativeDB Introduced: v323
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 boolean
--- @param p3 boolean
function NetworkBuyBackupGang(p0, p1, p2, p3) end


--- @param cost number
--- @param p1 boolean
--- @param p2 boolean
function NetworkBuyHealthcare(cost, p1, p2) end

--- 
--- p1 is just an assumption. p2 was false and p3 was true.  
--- 
--- @param amount number
--- @param victim Player
--- @param p2 boolean
--- @param p3 boolean
function NetworkBuyBounty(amount, victim, p2, p3) end

--- 
--- The first parameter is the amount spent which is store in a global when this native is called. The global returns 10. Which is the price for both rides.  
--- The last 3 parameters are,   
--- 2,0,1 in the am_ferriswheel.c  
--- 1,0,1 in the am_rollercoaster.c  
--- 
--- @param amountSpent number
--- @param p1 any
--- @param p2 boolean
--- @param p3 boolean
function NetworkBuyFairgroundRide(amountSpent, p1, p2, p3) end


--- @param amount number
--- @param item Hash
--- @param p2 any
--- @param p3 any
--- @param p4 boolean
--- @param item_name string
--- @param p6 any
--- @param p7 any
--- @param p8 any
--- @param p9 boolean
function NetworkBuyItem(amount, item, p2, p3, p4, item_name, p6, p7, p8, p9) end

--- 
--- p1 = 0 (always)  
--- p2 = 1 (always)  
--- 
--- @param cost number
--- @param p1 boolean
--- @param p2 boolean
function NetworkBuyHeliStrike(cost, p1, p2) end

--- 
--- NativeDB Introduced: v323
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 boolean
--- @param p3 boolean
function NetworkBuyLotteryTicket(p0, p1, p2, p3) end

--- 
--- NativeDB Parameter 0: int propertyCost
--- 
--- @param propertyCost number
--- @param propertyName Hash
--- @param p2 boolean
--- @param p3 boolean
function NetworkBuyProperty(propertyCost, propertyName, p2, p3) end

--- 
--- NativeDB Introduced: v323
--- 
--- @param p0 number
--- @param p1 boolean
--- @param p2 boolean
function NetworkBuySmokes(p0, p1, p2) end

--- 
--- NativeDB Introduced: v323
--- 
--- @param cost number
--- @return boolean
function NetworkCanBuyLotteryTicket(cost) end


--- @param amount number
--- @return boolean
function NetworkCanBet(amount) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @return boolean
function NetworkCanReceivePlayerCash(p0, p1, p2, p3) end

--- 
--- NETWORK_CAN_R??? or NETWORK_CAN_S???  
--- 
--- @return boolean
function NetworkCanShareJobCash() end

--- 
--- NativeDB Added Parameter 6: Any p5
--- 
--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 boolean
--- @param p4 any
--- @return boolean
function NetworkCanSpendMoney(p0, p1, p2, p3, p4) end

--- 
--- NETWORK_CAN_R??? or NETWORK_CAN_S???  
--- 
--- 
--- 
--- NativeDB Added Parameter 7: Any p6
--- 
--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 boolean
--- @param p4 any
--- @param p5 any
--- @return boolean
function NetworkCanSpendMoney2(p0, p1, p2, p3, p4, p5) end


--- @param characterSlot number
function NetworkClearCharacterWallet(characterSlot) end

--- 
--- NativeDB Introduced: v323
--- 
--- @param amount number
--- @param p1 string
--- @param p2 string
--- @param p3 boolean
--- @param p4 boolean
--- @param p5 boolean
function NetworkDeductCash(amount, p1, p2, p3, p4, p5) end

--- 
--- DSPORT  
--- 
--- @param p0 any
--- @param p1 any
function NetworkEarnFromAiTargetKill(p0, p1) end

--- 
--- Note the 2nd parameters are always 1, 0. I have a feeling it deals with your money, wallet, bank. So when you delete the character it of course wipes the wallet cash at that time. So if that was the case, it would be eg, NETWORK_DELETE_CHARACTER(characterIndex, deleteWalletCash, deleteBankCash);  
--- 
--- @param characterSlot number
--- @param p1 boolean
--- @param p2 boolean
function NetworkDeleteCharacter(characterSlot, p1, p2) end

--- 
--- Example for p1: "AM_DISTRACT_COPS"  
--- 
--- @param p0 number
--- @param p1 string
--- @param p2 any
function NetworkEarnFromAmbientJob(p0, p1, p2) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
--- @param p1 any
function NetworkEarnFromArenaCareerProgression(amount, p1) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkEarnFromArenaWar(amount, p1, p2, p3) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
--- @param p1 any
function NetworkEarnFromArenaSkillLevelProgression(amount, p1) end

--- 
--- For the money bags that drop a max of $40,000. Often called 40k bags.  
--- Most likely NETWORK_EARN_FROM_ROB***  
--- MONEY_EARN_JOBS  
--- 
--- @param amount number
function NetworkEarnFromArmourTruck(amount) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
function NetworkEarnFromAssassinateTargetKilled(amount) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
function NetworkEarnFromAssassinateTargetKilled2(amount) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
function NetworkEarnFromBbEventBonus(amount) end

--- 
--- =============================================================  
--- lackos; 2017.03.12  
--- 
--- @param amount number
--- @param heistHash string
function NetworkEarnFromBendJob(amount, heistHash) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
function NetworkEarnFromBbEventCargo(amount) end


--- @param amount number
--- @param p1 string
function NetworkEarnFromBetting(amount, p1) end


--- @param amount number
--- @param networkHandle number
--- @param p2 any
--- @param p3 any
function NetworkEarnFromBounty(amount, networkHandle, p2, p3) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
function NetworkEarnFromCashingOut(amount) end


--- @param amount number
function NetworkEarnFromCrateDrop(amount) end


--- @param p0 any
--- @param p1 any
--- @param p2 boolean
function NetworkEarnFromChallengeWin(p0, p1, p2) end


--- @param p0 number
--- @param p1 string
--- @param p2 number
function NetworkEarnFromDailyObjectives(p0, p1, p2) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param p1 any
function NetworkEarnFromDarChallenge(amount, p1) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param vehicleHash Hash
function NetworkEarnFromDoomsdayFinaleBonus(amount, vehicleHash) end

--- 
--- MONEY_EARN_PICKED_UP  
--- 
--- @param amount number
function NetworkEarnFromGangPickup(amount) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param unk string
--- @param p2 any
function NetworkEarnFromGangopsAwards(amount, unk, p2) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param unk string
function NetworkEarnFromGangopsJobsFinale(amount, unk) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param unk string
--- @param actIndex number
function NetworkEarnFromGangopsElite(amount, unk, actIndex) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param unk string
function NetworkEarnFromGangopsJobsSetup(amount, unk) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
function NetworkEarnFromGangopsJobsPrepParticipation(amount) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param p1 number
function NetworkEarnFromGangopsWages(amount, p1) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param p1 number
function NetworkEarnFromGangopsWagesBonus(amount, p1) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param p0 any
--- @param amount number
--- @param p2 any
--- @param p3 any
function NetworkEarnFromHackerTruckMission(p0, amount, p2, p3) end


--- @param amount number
function NetworkEarnFromHoldups(amount) end

--- 
--- NativeDB Parameter 1: Hash modelHash
--- 
--- @param amount number
--- @param modelHash any
function NetworkEarnFromImportExport(amount, modelHash) end


--- @param amount number
--- @param p1 string
function NetworkEarnFromJob(amount, p1) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
function NetworkEarnFromJobBonus(p0, p1, p2) end

--- 
--- Enough007: Adds an entry in the Network Transaction Log.  
--- Max value for amount 2000  
--- 
--- @param amount number
function NetworkEarnFromNotBadsport(amount) end

--- 
--- Now has 9 parameters.  
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param p6 any
--- @param p7 any
--- @param p8 any
function NetworkEarnFromPersonalVehicle(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- 
--- NativeDB Return Type: void
--- 
--- @param amount number
--- @return any
function NetworkEarnFromPickup(amount) end


--- @param amount number
--- @param propertyName Hash
function NetworkEarnFromProperty(amount, propertyName) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param p1 any
function NetworkEarnFromRdrBonus(amount, p1) end

--- 
--- This merely adds an entry in the Network Transaction Log;   
--- it does not grant cash to the player (on PC).  
--- Max value for amount is 9999999.  
--- 
--- @param amount number
function NetworkEarnFromRockstar(amount) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param baseNameHash Hash
function NetworkEarnFromSellBase(amount, baseNameHash) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
function NetworkEarnFromSpinTheWheelCash(amount) end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param amount number
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkEarnFromSmuggling(amount, p1, p2, p3) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param p1 number
function NetworkEarnFromTargetRefund(amount, p1) end

--- 
--- Now has 8 params.  
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param p6 any
--- @param p7 any
function NetworkEarnFromVehicle(p0, p1, p2, p3, p4, p5, p6, p7) end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param amount number
function NetworkEarnFromWagePayment(amount) end

--- 
--- NativeDB Introduced: v323
--- 
--- @return number
function NetworkGetEvcBalance() end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param amount number
function NetworkEarnFromWagePaymentBonus(amount) end

--- 
--- NativeDB Introduced: v323
--- 
--- @return number
function NetworkGetPvcBalance() end

--- 
--- NativeDB Introduced: v323
--- 
--- @return boolean
function NetworkGetIsHighEarner() end

--- 
--- Same as 0xEA560AC9EEB1E19B.
--- 
--- 
--- 
--- Same as 0xEA560AC9EEB1E19B.
--- 
--- NativeDB Introduced: v323
--- 
--- @return number
function NetworkGetPvcTransferBalance() end

--- 
--- Same as 0x13A8DE2FD77D04F3.
--- 
--- NativeDB Introduced: v323
--- 
--- @return number
function NetworkGetRemainingVcDailyTransfers2() end


--- @return string
function NetworkGetStringBankBalance() end

--- 
--- NativeDB Introduced: v323
--- 
--- @return string
function NetworkGetStringBankWalletBalance() end

--- 
--- NativeDB Introduced: v323
--- 
--- @param characterSlot number
--- @return string
function NetworkGetStringWalletBalance(characterSlot) end

--- 
--- From what I can see in ida, I believe it retrieves the players online bank balance.  
--- 
--- @return number
function NetworkGetVcBankBalance() end


--- @return number
function NetworkGetVcBalance() end

--- 
--- Returns true if bank balance >= amount.
--- 
--- NativeDB Introduced: v323
--- 
--- @param amount number
--- @return boolean
function NetworkGetVcBankBalanceIsNotLessThan(amount) end

--- 
--- probably 0x3461981 on console  
--- 
--- @param amount number
--- @param characterSlot number
--- @return boolean
function NetworkGetVcBankWalletBalanceIsNotLessThan(amount, characterSlot) end

--- 
--- From what I understand, it retrieves STAT_WALLET_BALANCE for the specified character (-1 means use MPPLY_LAST_MP_CHAR)  
--- 
--- @param characterSlot number
--- @return number
function NetworkGetVcWalletBalance(characterSlot) end

--- 
--- Returns true if wallet balance >= amount.
--- 
--- NativeDB Introduced: v323
--- 
--- @param amount number
--- @param characterSlot number
--- @return boolean
function NetworkGetVcWalletBalanceIsNotLessThan(amount, characterSlot) end


--- @param wallet number
--- @param bank number
function NetworkInitializeCash(wallet, bank) end


--- @param amount number
--- @param networkHandle number
function NetworkGivePlayerJobshareCash(amount, networkHandle) end


--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
--- @return boolean
function NetworkMoneyCanBet(amount, p1, p2) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkPayEmployeeWage(p0, p1, p2) end


--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
function NetworkPayUtilityBill(amount, p1, p2) end

--- 
--- NativeDB Parameter 1: char* matchId
--- 
--- @param amount number
--- @param matchId number
--- @param p2 boolean
--- @param p3 boolean
function NetworkPayMatchEntryFee(amount, matchId, p2, p3) end


--- @param value number
--- @param networkHandle number
function NetworkReceivePlayerJobshareCash(value, networkHandle) end

--- 
--- index  
--- -------  
--- See function sub_1005 in am_boat_taxi.ysc  
--- context  
--- ----------  
--- "BACKUP_VAGOS"  
--- "BACKUP_LOST"  
--- "BACKUP_FAMILIES"  
--- "HIRE_MUGGER"  
--- "HIRE_MERCENARY"  
--- "BUY_CARDROPOFF"  
--- "HELI_PICKUP"  
--- "BOAT_PICKUP"  
--- "CLEAR_WANTED"  
--- "HEAD_2_HEAD"  
--- "CHALLENGE"  
--- "SHARE_LAST_JOB"  
--- "DEFAULT"  
--- reason  
--- ---------  
--- "NOTREACHTARGET"  
--- "TARGET_ESCAPE"  
--- "DELIVERY_FAIL"  
--- "NOT_USED"  
--- "TEAM_QUIT"  
--- "SERVER_ERROR"  
--- "RECEIVE_LJ_L"  
--- "CHALLENGE_PLAYER_LEFT"  
--- "DEFAULT"  
--- unk  
--- -----  
--- Unknown bool value  
--- 
--- @param index number
--- @param context string
--- @param reason string
--- @param unk boolean
function NetworkRefundCash(index, context, reason, unk) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentAmmoDrop(p0, p1, p2) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param earnedMoney number
function NetworkRivalDeliveryCompleted(earnedMoney) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
--- @param p1 any
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentArenaJoinSpectator(amount, p1, p2, p3) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
--- @param p1 any
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentArenaSpectatorBox(amount, p1, p2, p3) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentArenaPremium(amount, p1, p2) end

--- 
--- NativeDB Introduced: v323
--- 
--- @param p0 number
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentBankInterest(p0, p1, p2) end

--- 
--- NativeDB Parameter 2: char* matchId
--- 
--- @param amount number
--- @param p1 number
--- @param matchId any
--- @param p3 boolean
--- @param p4 boolean
function NetworkSpentBetting(amount, p1, matchId, p3, p4) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentArrestBail(p0, p1, p2) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentBoatPickup(p0, p1, p2) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentBountyHunterMission(amount, p1, p2) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentBounty(p0, p1, p2) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
--- @param p3 string
function NetworkSpentBuyArena(amount, p1, p2, p3) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentBullShark(p0, p1, p2) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentBuyPassiveMode(p0, p1, p2) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkSpentBuyBase(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentBuyRevealPlayers(p0, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentBuyWantedlevel(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentBuyOfftheradar(p0, p1, p2) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkSpentBuyTiltrotor(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 boolean
--- @param p4 boolean
function NetworkSpentCarwash(p0, p1, p2, p3, p4) end


--- @param p0 any
--- @param p1 any
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentCinema(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 any
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentCallPlayer(p0, p1, p2, p3) end


--- @param bank number
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentFromRockstar(bank, p1, p2) end


--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentCashDrop(amount, p1, p2) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkSpentGangopsStartMission(p0, p1, p2, p3) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkSpentEmployAssassins(p0, p1, p2, p3) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentGangopsTripSkip(amount, p1, p2) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkSpentGangopsCannon(p0, p1, p2, p3) end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentHangarStaffCharges(amount, p1, p2) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentHeliPickup(p0, p1, p2) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param type number
--- @param amount number
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentGangopsStartStrand(type, amount, p2, p3) end

--- 
--- Only used once in a script (am_contact_requests)  
--- p1 = 0  
--- p2 = 1  
--- 
--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentHireMugger(p0, p1, p2) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 any
--- @param p3 boolean
function NetworkSpentInStripclub(p0, p1, p2, p3) end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentHangarUtilityCharges(amount, p1, p2) end

--- 
--- NativeDB Introduced: v323
--- 
--- @param amount number
--- @param matchId string
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentJobSkip(amount, matchId, p2, p3) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentHireMercenary(p0, p1, p2) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentHoldups(p0, p1, p2) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param player Player
--- @param amount number
--- @param p1 any
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentNightclubEntryFee(player, amount, p1, p2, p3) end


--- @param p0 any
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentNoCops(p0, p1, p2) end


--- @param p0 number
--- @param p1 number
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentPlayerHealthcare(p0, p1, p2, p3) end

--- 
--- NativeDB Introduced: v1604
--- 
--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentMakeItRain(amount, p1, p2) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param amount number
--- @param p1 any
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentNightclubBarDrink(amount, p1, p2, p3) end

--- 
--- NativeDB Introduced: v1180
--- 
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkSpentPurchaseHangar(p0, p1, p2, p3) end

--- 
--- According to how I understood this in the freemode script alone,  
--- The first parameter is determined by a function named, func_5749 within the freemode script which has a list of all the vehicles and a set price to return which some vehicles deals with globals as well. So the first parameter is basically the set in stone insurance cost it's gonna charge you for that specific vehicle model.  
--- The second parameter whoever put it was right, they call GET_ENTITY_MODEL with the vehicle as the paremeter.  
--- The third parameter is the network handle as they call their little struct<13> func or atleast how the script decompiled it to look which in lamens terms just returns the network handle of the previous owner based on DECOR_GET_INT(vehicle, "Previous_Owner").  
--- The fourth parameter is a bool that returns true/false depending on if your bank balance is greater then 0.  
--- The fifth and last parameter is a bool that returns true/false depending on if you have the money for the car based on the cost returned by func_5749. In the freemode script eg,  
--- bool hasTheMoney = NETWORKCASH::_GET_BANK_BALANCE() < carCost.  
--- 
--- @param amount number
--- @param vehicleModel Hash
--- @param networkHandle number
--- @param notBankrupt boolean
--- @param hasTheMoney boolean
function NetworkSpentPayVehicleInsurancePremium(amount, vehicleModel, networkHandle, notBankrupt, hasTheMoney) end

--- 
--- NativeDB Introduced: v1493
--- 
--- @param amount number
--- @param p1 any
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentRehireDj(amount, p1, p2, p3) end

