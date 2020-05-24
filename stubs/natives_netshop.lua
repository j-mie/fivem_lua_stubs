--- 
--- Online version is defined here: update\update.rpf\common\data\version.txt  
--- Example:  
--- [ONLINE_VERSION_NUMBER]  
--- 1.33  
--- _GET_ONLINE_VERSION() will return "1.33"  
--- Belongs in NETWORK  
--- 
--- @return string
function GetOnlineVersion() end

--- 
--- p0 => unk3::_network_shop_basket_apply_server_data(Global_2590199[iParam0 /*76*/], &uVar6); => script array  
--- 
--- @param p0 any
--- @param p1 any
--- @return boolean
function NetGameserverBasketApplyServerData(p0, p1) end


--- @return boolean
function NetGameserverBasketEnd() end

--- 
--- p0 is pointer to a script array  
--- 
--- @param itemData any
--- @param quantity number
--- @return boolean
function NetGameserverBasketAddItem(itemData, quantity) end

--- 
--- NativeDB Parameter 0: int* transactionId
--- NativeDB Parameter 1: Hash categoryHash
--- NativeDB Parameter 2: Hash actionHash
--- 
--- @param transactionId any
--- @param categoryHash number
--- @param actionHash number
--- @param flags number
--- @return boolean
function NetGameserverBasketStart(transactionId, categoryHash, actionHash, flags) end

--- 
--- No longer works if you hook it as a stealth money method  
--- Modes------------------  
--- 1: Wallet  
--- 2: Bank  
--- 4: Bank  
--- 8: Wallet  
--- Only difference I noticed.  
--- 
--- 
--- 
--- NativeDB Parameter 3: Hash actionTypeHash
--- 
--- @param transactionId number
--- @param categoryHash Hash
--- @param itemHash Hash
--- @param actionTypeHash number
--- @param value number
--- @param flags number
--- @return boolean
function NetGameserverBeginService(transactionId, categoryHash, itemHash, actionTypeHash, value, flags) end

--- 
--- NativeDB Introduced: v372
--- 
--- @return boolean
function NetGameserverBasketDelete() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function NetGameserverBasketIsFull() end

--- 
--- NativeDB Parameter 2: Hash reason
--- 
--- @param slot number
--- @param transfer boolean
--- @param reason any
--- @return boolean
function NetGameserverDeleteCharacterSlot(slot, transfer, reason) end


--- @return number
function NetGameserverDeleteCharacterSlotGetStatus() end


--- @return boolean
function NetGameserverCatalogIsReady() end

--- 
--- Will cancel the transaction  
--- 
--- @param transactionId number
--- @return boolean
function NetGameserverEndService(transactionId) end


--- @param transactionId number
--- @return boolean
function NetGameserverCheckoutStart(transactionId) end

--- 
--- NativeDB Parameter 0: int* state
--- 
--- @param state any
--- @return boolean
function NetGameserverGetCatalogState(state) end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @return any
function NetGameserverDeleteSetTelemetryNonceSeed() end

--- 
--- NativeDB Parameter 0: int* p0
--- 
--- @param p0 any
--- @param p1 boolean
--- @return boolean
function NetGameserverGetTransactionManagerData(p0, p1) end

--- 
--- Note: only one of the arguments can be set to true at a time
--- 
--- @param inventory boolean
--- @param playerbalance boolean
--- @return boolean
function NetGameserverGetBalance(inventory, playerbalance) end


--- @return boolean
function NetGameserverIsSessionRefreshPending() end


--- @param charSlot number
--- @return boolean
function NetGameserverSessionApplyReceivedData(charSlot) end

--- 
--- bool is always true in game scripts  
--- 
--- @param itemHash Hash
--- @param categoryHash Hash
--- @param p2 boolean
--- @return number
function NetGameserverGetPrice(itemHash, categoryHash, p2) end


--- @param p0 number
--- @return boolean
function NetGameserverSetTelemetryNonceSeed(p0) end


--- @return boolean
function NetGameserverIsCatalogValid() end

--- 
--- used in atm_trigger script.  
--- usage:  
--- int iVar0;STATS::STAT_GET_INT(GAMEPLAY::GET_HASH_KEY("mpply_last_mp_char"), &iVar0, -1);  
--- UNK3::_NETWORK_TRANSFER_WALLET_TO_BANK(iVar0, amount);  
--- used to deposit money into bank from wallet, shows up in transaction log.  
--- 
--- @param charSlot number
--- @param amount number
--- @return boolean
function NetGameserverTransferBankToWallet(charSlot, amount) end


--- @param charSlot number
--- @return boolean
function NetGameserverIsSessionValid(charSlot) end

--- 
--- Same as 0x350AA5EBC03D3BD2
--- 
--- @return number
function NetGameserverTransferCashGetStatus() end

--- 
--- used in atm_trigger script.  
--- usage:  
--- int iVar0; STATS::STAT_GET_INT(GAMEPLAY::GET_HASH_KEY("mpply_last_mp_char"), &iVar0, -1);  
--- UNK3::_NETWORK_TRANSFER_BANK_TO_WALLET(iVar0, amount);  
--- used to withdraw money from bank into wallet, shows up in transaction log.  
--- 
--- @param charSlot number
--- @param amount number
--- @return boolean
function NetGameserverTransferWalletToBank(charSlot, amount) end


--- @param charSlot number
--- @return boolean
function NetGameserverStartSession(charSlot) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @return boolean
function NetGameserverUseServerTransactions() end

--- 
--- Same as 0x23789E777D14CE44
--- 
--- @return number
function NetGameserverTransferCashGetStatus2() end

--- 
--- Used to be NETWORK_SHOP_CASH_TRANSFER_SET_TELEMETRY_NONCE_SEED
--- 
--- @return boolean
function NetGameserverTransferCashSetTelemetryNonceSeed() end

