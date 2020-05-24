
--- @param componentHash Hash
--- @param restrictionTagHash Hash
--- @param componentId number
--- @return boolean
function DoesShopPedApparelHaveRestrictionTag(componentHash, restrictionTagHash, componentId) end

--- 
--- dlcVehicleIndex takes a number from 0 - GET_NUM_DLC_VEHICLES() - 1.  
--- outData is a struct of 3 8-byte items.  
--- The Second item in the struct *(Hash *)(outData + 1) is the vehicle hash.  
--- 
--- @param dlcVehicleIndex number
--- @param outData number
--- @return boolean
function GetDlcVehicleData(dlcVehicleIndex, outData) end


--- @param dlcVehicleIndex number
--- @return number
function GetDlcVehicleFlags(dlcVehicleIndex) end

--- 
--- p0 seems to be the weapon index  
--- p1 seems to be the weapon component index  
--- struct DlcComponentData{  
--- int attachBone;  
--- int padding1;  
--- int bActiveByDefault;  
--- int padding2;  
--- int unk;  
--- int padding3;  
--- int componentHash;  
--- int padding4;  
--- int unk2;  
--- int padding5;  
--- int componentCost;  
--- int padding6;  
--- char nameLabel[64];  
--- char descLabel[64];  
--- };  
--- 
--- 
--- 
--- NativeDB Parameter 2: int* ComponentDataPtr
--- 
--- @param dlcWeaponIndex number
--- @param dlcWeapCompIndex number
--- @param ComponentDataPtr any
--- @return boolean
function GetDlcWeaponComponentData(dlcWeaponIndex, dlcWeapCompIndex, ComponentDataPtr) end

--- 
--- Use _GET_VEHICLE_MOD_DATA for modData  
--- Appears to be a GET_DLC_VEHICLE_MOD_* native.  
--- 
--- 
--- 
--- NativeDB Parameter 0: Hash hash
--- NativeDB Return Type: Hash
--- 
--- @param hash number
--- @return number
function GetDlcVehicleModLockHash(hash) end

--- 
--- dlcWeaponIndex takes a number from 0 - GET_NUM_DLC_WEAPONS() - 1.  
--- struct DlcWeaponData  
--- {  
--- int emptyCheck; //use DLC1::_IS_DLC_DATA_EMPTY on this  
--- int padding1;  
--- int weaponHash;  
--- int padding2;  
--- int unk;  
--- int padding3;  
--- int weaponCost;  
--- int padding4;  
--- int ammoCost;  
--- int padding5;  
--- int ammoType;  
--- int padding6;  
--- int defaultClipSize;  
--- int padding7;  
--- char nameLabel[64];  
--- char descLabel[64];  
--- char desc2Label[64]; // usually "the" + name  
--- char upperCaseNameLabel[64];  
--- };  
--- 
--- @param dlcWeaponIndex number
--- @param outData number
--- @return boolean
function GetDlcWeaponData(dlcWeaponIndex, outData) end

--- 
--- dlcVehicleIndex is 0 to GET_NUM_DLC_VEHICLS()  
--- 
--- @param dlcVehicleIndex number
--- @return Hash
function GetDlcVehicleModel(dlcVehicleIndex) end

--- 
--- NativeDB Parameter 0: Hash componentHash
--- NativeDB Parameter 1: int forcedPropIndex
--- NativeDB Parameter 2: Hash* nameHash
--- NativeDB Parameter 3: int* enumValue
--- NativeDB Parameter 4: int* anchorPoint
--- 
--- @param componentHash any
--- @param forcedPropIndex any
--- @param nameHash any
--- @param enumValue any
--- @param anchorPoint any
function GetForcedProp(componentHash, forcedPropIndex, nameHash, enumValue, anchorPoint) end


--- @param entity Entity
--- @param componentId number
--- @param propIndex number
--- @param propTextureIndex number
--- @return Hash
function GetHashNameForProp(entity, componentId, propIndex, propTextureIndex) end

--- 
--- NativeDB Parameter 2: Hash* nameHash
--- NativeDB Parameter 3: int* enumValue
--- NativeDB Parameter 4: int* componentType
--- 
--- @param componentHash Hash
--- @param componentId number
--- @param nameHash any
--- @param enumValue any
--- @param componentType any
function GetForcedComponent(componentHash, componentId, nameHash, enumValue, componentType) end


--- @param entity Entity
--- @param componentId number
--- @param drawableVariant number
--- @param textureVariant number
--- @return Hash
function GetHashNameForComponent(entity, componentId, drawableVariant, textureVariant) end

--- 
--- only documented to be continued...  
--- 
--- @param character number
--- @return number
function GetNumDecorations(character) end


--- @return number
function GetNumDlcVehicles() end

--- 
--- Allowed Values from 0 - DLC1::GET_NUM_DLC_WEAPONS()  
--- 
--- @param dlcWeaponIndex number
--- @return number
function GetNumDlcWeaponComponents(dlcWeaponIndex) end

--- 
--- Gets the total number of DLC weapons.  
--- 
--- @return number
function GetNumDlcWeapons() end

--- 
--- character is 0 for Michael, 1 for Franklin, 2 for Trevor, 3 for freemode male, and 4 for freemode female.  
--- componentId is between 0 and 11 and corresponds to the usual component slots.  
--- p1 could be the outfit number; unsure.  
--- p2 is usually -1; unknown function.  
--- p3 appears to be a boolean flag; unknown function.  
--- p4 is usually -1; unknown function.  
--- 
--- @param character number
--- @param p1 number
--- @param p2 number
--- @param p3 boolean
--- @param p4 number
--- @param componentId number
--- @return number
function GetNumPropsFromOutfit(character, p1, p2, p3, p4, componentId) end

--- 
--- Returns number of possible values of the forcedComponentIndex argument of GET_FORCED_COMPONENT.
--- 
--- @param componentHash Hash
--- @return number
function GetShopPedApparelForcedComponentCount(componentHash) end

--- 
--- Returns number of possible values of the forcedPropIndex argument of GET_FORCED_PROP.
--- 
--- NativeDB Parameter 1: Hash componentHash
--- 
--- @param componentHash any
--- @return number
function GetShopPedApparelForcedPropCount(componentHash) end

--- 
--- More info here: https://gist.github.com/root-cause/3b80234367b0c856d60bf5cb4b826f86
--- 
--- @param componentHash Hash
--- @param outComponent any
function GetShopPedComponent(componentHash, outComponent) end


--- @param componentHash Hash
--- @return number
function GetShopPedApparelVariantComponentCount(componentHash) end


--- @param p0 any
--- @param p1 any
function GetShopPedOutfit(p0, p1) end

--- 
--- outfit = a structure passing though it - see GET_SHOP_PED_QUERY_OUTFIT  
--- slot - outfit slot  
--- item - hold 3 ints in a struct, you can use Vector3 structure  
--- 
--- @param outfit any
--- @param slot number
--- @param item any
--- @return boolean
function GetShopPedOutfitComponentVariant(outfit, slot, item) end


--- @param p0 any
--- @return number
function GetShopPedOutfitLocate(p0) end


--- @param outfit any
--- @param slot number
--- @param item any
--- @return boolean
function GetShopPedOutfitPropVariant(outfit, slot, item) end


--- @param componentId number
--- @param outComponent number
function GetShopPedQueryComponent(componentId, outComponent) end

--- 
--- NativeDB Parameter 0: Hash componentHash
--- 
--- @param componentHash any
--- @param outProp any
function GetShopPedProp(componentHash, outProp) end


--- @param p0 any
--- @param p1 any
function GetShopPedQueryProp(p0, p1) end

--- 
--- struct Outfit_s  
--- {  
--- 	int mask, torso, pants, parachute, shoes, misc1, tops1, armour, crew, tops2, hat, glasses, earpiece;  
--- 	int maskTexture, torsoTexture, pantsTexture, parachuteTexture, shoesTexture, misc1Texture, tops1Texture,   
--- 		armourTexture, crewTexture, tops2Texture, hatTexture, glassesTexture, earpieceTexture;  
--- };  
--- 
--- @param p0 any
--- @param outfit any
function GetShopPedQueryOutfit(p0, outfit) end

--- Character types:
--- 
--- 
--- 0 = Michael, 
--- 1 = Franklin, 
--- 2 = Trevor, 
--- 3 = MPMale, 
--- 4 = MPFemale
--- 
--- 
--- csharp
--- enum TattooZoneData  
--- {  
---     ZONE_TORSO = 0,  
---     ZONE_HEAD = 1,  
---     ZONE_LEFT_ARM = 2,  
---     ZONE_RIGHT_ARM = 3,  
---     ZONE_LEFT_LEG = 4,  
---     ZONE_RIGHT_LEG = 5,  
---     ZONE_UNKNOWN = 6,
---     ZONE_NONE = 7,  
--- };
--- 
--- struct outComponent
--- {
---     // these vars are suffixed with 4 bytes of padding each.
---     uint unk;
---     int unk2;
---     uint tattooCollectionHash;
---     uint tattooNameHash;
---     int unk3;
---     TattooZoneData zoneId;
---     uint unk4;
---     uint unk5;
---     // maybe more, not sure exactly, decompiled scripts are very vague around this part.
--- }
--- 
--- @param characterType number
--- @param decorationIndex number
--- @param outComponent any
--- @return boolean
function GetTattooCollectionData(characterType, decorationIndex, outComponent) end


--- @param outProp number
function InitShopPedProp(outProp) end

--- 
--- NativeDB Parameter 2: Hash* nameHash
--- NativeDB Parameter 3: int* enumValue
--- NativeDB Parameter 4: int* componentType
--- 
--- @param componentHash Hash
--- @param componentId number
--- @param nameHash any
--- @param enumValue any
--- @param componentType any
function GetVariantComponent(componentHash, componentId, nameHash, enumValue, componentType) end

--- 
--- Use _GET_VEHICLE_MOD_DATA for modData  
--- 
--- 
--- 
--- NativeDB Parameter 0: Hash hash
--- 
--- @param hash any
--- @return boolean
function IsDlcVehicleMod(hash) end


--- @param outComponent number
function InitShopPedComponent(outComponent) end

--- 
--- NativeDB Parameter 0: Hash itemHash
--- 
--- @param itemHash any
--- @return boolean
function IsContentItemLocked(itemHash) end

