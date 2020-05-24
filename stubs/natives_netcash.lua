--- 
--- NativeDB Added Parameter 1: int p0
--- NativeDB Added Parameter 2: int p1
--- NativeDB Added Parameter 3: int amount
--- NativeDB Added Parameter 4: int* p3
--- 
--- @return boolean
function CanPayGoon() end

--- 
--- NativeDB Parameter 2: Hash p2
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 any
--- @param p3 boolean
--- @param p4 boolean
function NetworkBuyContraband(p0, p1, p2, p3, p4) end


--- @param amount number
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkEarnFromBusinessProduct(amount, p1, p2, p3) end


--- @param amount number
--- @param p1 any
function NetworkEarnFromContraband(amount, p1) end

--- 
--- NativeDB Parameter 1: Hash bunkerHash
--- 
--- @param amount number
--- @param bunkerHash any
function NetworkEarnFromSellBunker(amount, bunkerHash) end


--- @param amount number
--- @param p1 any
--- @param p2 any
function NetworkEarnFromVehicleExport(amount, p1, p2) end


--- @param amount number
--- @param p1 string
function NetworkEarnFromPremiumJob(amount, p1) end


--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentBallisticEquipment(amount, p1, p2) end

--- 
--- NativeDB Added Parameter 1: int amount
--- NativeDB Added Parameter 2: int id
--- 
function NetworkEarnFromWarehouse() end


--- @param characterSlot number
function NetworkManualDeleteCharacter(characterSlot) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkSpentBuyBunker(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkSpentBuyTruck(p0, p1, p2, p3) end

--- 
--- NativeDB Added Parameter 1: int amount
--- NativeDB Added Parameter 2: BOOL p1
--- NativeDB Added Parameter 3: BOOL p2
--- 
--- @return boolean
function NetworkSpentBoss() end


--- @param amount number
--- @param p1 boolean
--- @param p2 boolean
function NetworkSpentMoveYacht(amount, p1, p2) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
function NetworkSpentImportExportRepair(p0, p1, p2) end


--- @param amount number
--- @param data any
--- @param p2 boolean
--- @param p3 boolean
function NetworkSpentPurchaseWarehouse(amount, data, p2, p3) end


--- @param p0 number
--- @param p1 number
--- @param amount number
function NetworkSpentPayGoon(p0, p1, amount) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkSpentUpgradeTruck(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
function NetworkSpentUpgradeBunker(p0, p1, p2, p3) end


--- @param p0 any
--- @param p1 any
--- @param amount number
function NetworkSpentWager(p0, p1, amount) end


--- @param p0 any
--- @param p1 any
--- @param p2 any
function NetworkSpentVipUtilityCharges(p0, p1, p2) end

