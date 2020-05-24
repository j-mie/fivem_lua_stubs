
--- @param propHash Hash
--- @return number
function GetShopPedApparelVariantPropCount(propHash) end

--- 
--- NativeDB Parameter 2: Hash* nameHash
--- NativeDB Parameter 3: int* enumValue
--- NativeDB Parameter 4: int* componentType
--- 
--- @param componentHash any
--- @param variantPropIndex any
--- @param nameHash any
--- @param enumValue any
--- @param anchorPoint any
function GetVariantProp(componentHash, variantPropIndex, nameHash, enumValue, anchorPoint) end

--- 
--- From fm_deathmatch_creator and fm_race_creator:
--- 
--- FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
--- FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
--- 
--- NativeDB Introduced: v1604
--- 
--- @param hash Hash
function UnloadContentChangeSetGroup(hash) end

--- 
--- From fm_deathmatch_creator and fm_race_creator:
--- 
--- FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
--- FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
--- 
--- NativeDB Introduced: v1604
--- 
--- @param hash Hash
function LoadContentChangeSetGroup(hash) end

