--- 
--- BOOL isAudible = If explosion makes a sound.  
--- BOOL isInvisible = If the explosion is invisible or not.  
--- this native is missing a new argument: noDamage  
--- nodamage = false: damage || nodamage = true: no damage  
--- enum ExplosionTypes  
--- {  
--- 	EXPLOSION_GRENADE,  
--- 	EXPLOSION_GRENADELAUNCHER,  
--- 	EXPLOSION_STICKYBOMB,  
--- 	EXPLOSION_MOLOTOV,  
--- 	EXPLOSION_ROCKET,  
--- 	EXPLOSION_TANKSHELL,  
--- 	EXPLOSION_HI_OCTANE,  
--- 	EXPLOSION_CAR,  
--- 	EXPLOSION_PLANE,  
--- 	EXPLOSION_PETROL_PUMP,  
--- 	EXPLOSION_BIKE,  
--- 	EXPLOSION_DIR_STEAM,  
--- 	EXPLOSION_DIR_FLAME,  
--- 	EXPLOSION_DIR_WATER_HYDRANT,  
--- 	EXPLOSION_DIR_GAS_CANISTER,  
--- 	EXPLOSION_BOAT,  
--- 	EXPLOSION_SHIP_DESTROY,  
--- 	EXPLOSION_TRUCK,  
--- 	EXPLOSION_BULLET,  
--- 	EXPLOSION_SMOKEGRENADELAUNCHER,  
--- 	EXPLOSION_SMOKEGRENADE,  
--- 	EXPLOSION_BZGAS,  
--- 	EXPLOSION_FLARE,  
--- 	EXPLOSION_GAS_CANISTER,  
--- 	EXPLOSION_EXTINGUISHER,  
--- 	EXPLOSION_PROGRAMMABLEAR,  
--- 	EXPLOSION_TRAIN,  
--- 	EXPLOSION_BARREL,  
--- 	EXPLOSION_PROPANE,  
--- 	EXPLOSION_BLIMP,  
--- 	EXPLOSION_DIR_FLAME_EXPLODE,  
--- 	EXPLOSION_TANKER,  
--- 	EXPLOSION_PLANE_ROCKET,  
--- 	EXPLOSION_VEHICLE_BULLET,  
--- 	EXPLOSION_GAS_TANK,  
--- 	EXPLOSION_BIRD_CRAP  
--- };  
--- 
--- 
--- 
--- NativeDB Added Parameter 9: BOOL noDamage
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param explosionType number
--- @param damageScale number
--- @param isAudible boolean
--- @param isInvisible boolean
--- @param cameraShake number
function AddExplosion(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) end


--- @param x number
--- @param y number
--- @param z number
--- @param explosionType number
--- @param explosionFx Hash
--- @param damageScale number
--- @param isAudible boolean
--- @param isInvisible boolean
--- @param cameraShake number
function AddExplosionWithUserVfx(x, y, z, explosionType, explosionFx, damageScale, isAudible, isInvisible, cameraShake) end

--- 
--- enum ExplosionTypes  
--- {  
--- 	EXPLOSION_GRENADE,  
--- 	EXPLOSION_GRENADELAUNCHER,  
--- 	EXPLOSION_STICKYBOMB,  
--- 	EXPLOSION_MOLOTOV,  
--- 	EXPLOSION_ROCKET,  
--- 	EXPLOSION_TANKSHELL,  
--- 	EXPLOSION_HI_OCTANE,  
--- 	EXPLOSION_CAR,  
--- 	EXPLOSION_PLANE,  
--- 	EXPLOSION_PETROL_PUMP,  
--- 	EXPLOSION_BIKE,  
--- 	EXPLOSION_DIR_STEAM,  
--- 	EXPLOSION_DIR_FLAME,  
--- 	EXPLOSION_DIR_WATER_HYDRANT,  
--- 	EXPLOSION_DIR_GAS_CANISTER,  
--- 	EXPLOSION_BOAT,  
--- 	EXPLOSION_SHIP_DESTROY,  
--- 	EXPLOSION_TRUCK,  
--- 	EXPLOSION_BULLET,  
--- 	EXPLOSION_SMOKEGRENADELAUNCHER,  
--- 	EXPLOSION_SMOKEGRENADE,  
--- 	EXPLOSION_BZGAS,  
--- 	EXPLOSION_FLARE,  
--- 	EXPLOSION_GAS_CANISTER,  
--- 	EXPLOSION_EXTINGUISHER,  
--- 	EXPLOSION_PROGRAMMABLEAR,  
--- 	EXPLOSION_TRAIN,  
--- 	EXPLOSION_BARREL,  
--- 	EXPLOSION_PROPANE,  
--- 	EXPLOSION_BLIMP,  
--- 	EXPLOSION_DIR_FLAME_EXPLODE,  
--- 	EXPLOSION_TANKER,  
--- 	EXPLOSION_PLANE_ROCKET,  
--- 	EXPLOSION_VEHICLE_BULLET,  
--- 	EXPLOSION_GAS_TANK,  
--- 	EXPLOSION_BIRD_CRAP  
--- };  
--- BOOL isAudible = If explosion makes a sound.  
--- BOOL isInvisible = If the explosion is invisible or not.  
--- 
--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param explosionType number
--- @param damageScale number
--- @param isAudible boolean
--- @param isInvisible boolean
--- @param cameraShake number
function AddOwnedExplosion(ped, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) end

--- 
--- NativeDB Introduced: v1290
--- 
--- @param explosionType number
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @return Entity
function GetEntityInsideExplosionSphere(explosionType, x, y, z, radius) end

--- 
--- Returns TRUE if it found something. FALSE if not.  
--- 
--- @param outPosition vector3
--- @param x number
--- @param y number
--- @param z number
--- @return boolean
function GetClosestFirePos(outPosition, x, y, z) end


--- @param entity Entity
--- @return boolean
function IsEntityOnFire(entity) end

--- 
--- Returns a handle to the first entity within the a circle spawned inside the 2 points from a radius. It could return a ped or an entity, but the scripts expect a ped, but still check if it's a ped.  
--- 
--- @param explosionType number
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param radius number
--- @return Entity
function GetEntityInsideExplosionArea(explosionType, x1, y1, z1, x2, y2, z2, radius) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @return number
function GetNumberOfFiresInRange(x, y, z, radius) end


--- @param explosionType number
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @return boolean
function IsExplosionInArea(explosionType, x1, y1, z1, x2, y2, z2) end


--- @param fireHandle FireId
function RemoveScriptFire(fireHandle) end


--- @param explosionType number
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @return boolean
function IsExplosionActiveInArea(explosionType, x1, y1, z1, x2, y2, z2) end


--- @param entity Entity
--- @return FireId
function StartEntityFire(entity) end


--- @param explosionType number
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
--- @param angle number
--- @return boolean
function IsExplosionInAngledArea(explosionType, x1, y1, z1, x2, y2, z2, angle) end


--- @param entity Entity
function StopEntityFire(entity) end


--- @param explosionType number
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @return boolean
function IsExplosionInSphere(explosionType, x, y, z, radius) end

--- 
--- This doesn't stop fire nor the fire propagation in a loop... for some reasons.  
--- 
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
function StopFireInRange(x, y, z, radius) end

--- 
--- Starts a fire:  
--- xyz: Location of fire  
--- maxChildren: The max amount of times a fire can spread to other objects. Must be 25 or less, or the function will do nothing.  
--- isGasFire: Whether or not the fire is powered by gasoline.  
--- 
--- @param X number
--- @param Y number
--- @param Z number
--- @param maxChildren number
--- @param isGasFire boolean
--- @return FireId
function StartScriptFire(X, Y, Z, maxChildren, isGasFire) end

