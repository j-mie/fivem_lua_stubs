--- 
--- Online version is defined here: update\update.rpf\common\data\version.txt  
--- Example:  
--- [ONLINE_VERSION_NUMBER]  
--- 1.33  
--- _GET_ONLINE_VERSION() will return "1.33"  
--- Belongs in NETWORK  
--- 
--- @returns string
function GetOnlineVersion() end

--- 
--- p0 => unk3::_network_shop_basket_apply_server_data(Global_2590199[iParam0 /*76*/], &uVar6); => script array  
--- 
--- @param p0 any
--- @param p1 any
--- @returns boolean
function NetGameserverBasketApplyServerData(p0, p1) end


--- @returns boolean
function NetGameserverBasketEnd() end

--- 
--- p0 is pointer to a script array  
--- 
--- @param itemData any
--- @param quantity number
--- @returns boolean
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
--- @returns boolean
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
--- @returns boolean
function NetGameserverBeginService(transactionId, categoryHash, itemHash, actionTypeHash, value, flags) end

--- 
--- NativeDB Introduced: v372
--- 
--- @returns boolean
function NetGameserverBasketDelete() end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @returns any
function NetGameserverBasketIsFull() end

--- 
--- NativeDB Parameter 2: Hash reason
--- 
--- @param slot number
--- @param transfer boolean
--- @param reason any
--- @returns boolean
function NetGameserverDeleteCharacterSlot(slot, transfer, reason) end


--- @returns number
function NetGameserverDeleteCharacterSlotGetStatus() end


--- @returns boolean
function NetGameserverCatalogIsReady() end

--- 
--- Will cancel the transaction  
--- 
--- @param transactionId number
--- @returns boolean
function NetGameserverEndService(transactionId) end


--- @param transactionId number
--- @returns boolean
function NetGameserverCheckoutStart(transactionId) end

--- 
--- NativeDB Parameter 0: int* state
--- 
--- @param state any
--- @returns boolean
function NetGameserverGetCatalogState(state) end

--- 
--- NativeDB Return Type: BOOL
--- 
--- @returns any
function NetGameserverDeleteSetTelemetryNonceSeed() end

--- 
--- NativeDB Parameter 0: int* p0
--- 
--- @param p0 any
--- @param p1 boolean
--- @returns boolean
function NetGameserverGetTransactionManagerData(p0, p1) end

--- 
--- Note: only one of the arguments can be set to true at a time
--- 
--- @param inventory boolean
--- @param playerbalance boolean
--- @returns boolean
function NetGameserverGetBalance(inventory, playerbalance) end


--- @returns boolean
function NetGameserverIsSessionRefreshPending() end


--- @param charSlot number
--- @returns boolean
function NetGameserverSessionApplyReceivedData(charSlot) end

--- 
--- bool is always true in game scripts  
--- 
--- @param itemHash Hash
--- @param categoryHash Hash
--- @param p2 boolean
--- @returns number
function NetGameserverGetPrice(itemHash, categoryHash, p2) end


--- @param p0 number
--- @returns boolean
function NetGameserverSetTelemetryNonceSeed(p0) end


--- @returns boolean
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
--- @returns boolean
function NetGameserverTransferBankToWallet(charSlot, amount) end


--- @param charSlot number
--- @returns boolean
function NetGameserverIsSessionValid(charSlot) end

--- 
--- Same as 0x350AA5EBC03D3BD2
--- 
--- @returns number
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
--- @returns boolean
function NetGameserverTransferWalletToBank(charSlot, amount) end


--- @param charSlot number
--- @returns boolean
function NetGameserverStartSession(charSlot) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @returns boolean
function NetGameserverUseServerTransactions() end

--- 
--- Same as 0x23789E777D14CE44
--- 
--- @returns number
function NetGameserverTransferCashGetStatus2() end

--- 
--- Used to be NETWORK_SHOP_CASH_TRANSFER_SET_TELEMETRY_NONCE_SEED
--- 
--- @returns boolean
function NetGameserverTransferCashSetTelemetryNonceSeed() end

