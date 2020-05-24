
--- @param ped Ped
--- @param weaponHash Hash
--- @param ammo number
function AddAmmoToPed(ped, weaponHash, ammo) end

--- 
--- NativeDB Parameter 1: Hash ammoType
--- 
--- @param ped Ped
--- @param ammoType any
--- @param ammo number
function AddAmmoToPedByType(ped, ammoType, ammo) end

--- 
--- this returns if you can use the weapon while using a parachute  
--- 
--- @param weaponHash Hash
--- @return boolean
function CanUseWeaponOnParachute(weaponHash) end

--- Does NOT seem to work with HasPedBeenDamagedByWeapon.
--- Use ClearEntityLastWeaponDamage and HasEntityBeenDamagedByWeapon instead.
--- @param ped Ped
function ClearPedLastWeaponDamage(ped) end


--- @param entity Entity
function ClearEntityLastWeaponDamage(entity) end

--- 
--- NativeDB Parameter 10: Hash weaponHash
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param weaponHash any
--- @return number
function CreateAirDefenseArea(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, weaponHash) end

--- Both coordinates are from objects in the decompiled scripts.
--- 
--- Native related to [\_0xECDC202B25E5CF48](#_0xECDC202B25E5CF48) p1 value. The only weapon hash used in the decompiled scripts is weapon_air_defence_gun. These two natives are used by the yacht script, decompiled scripts suggest it and the weapon hash used (valkyrie's rockets) are also used by yachts.
--- 
--- 
--- NativeDB Parameter 3: float radius
--- 
--- @param p0 number
--- @param p1 number
--- @param p2 number
--- @param radius number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param weaponHash Hash
--- @return number
function CreateAirDefenseSphere(p0, p1, p2, radius, p4, p5, p6, weaponHash) end


--- @param zoneId number
--- @return boolean
function DoesAirDefenseZoneExist(zoneId) end


--- @param weaponHash Hash
--- @param componentHash Hash
--- @return boolean
function DoesWeaponTakeWeaponComponent(weaponHash, componentHash) end

--- 
--- Now has 8 params.  
--- 
--- 
--- 
--- NativeDB Added Parameter 9: Any p8
--- NativeDB Added Parameter 10: Any p9
--- 
--- @param weaponHash Hash
--- @param ammoCount number
--- @param x number
--- @param y number
--- @param z number
--- @param showWorldModel boolean
--- @param heading number
--- @param p7 any
--- @return Object
function CreateWeaponObject(weaponHash, ammoCount, x, y, z, showWorldModel, heading, p7) end

--- 
--- Enables laser sight on any weapon.  
--- It doesn't work. Neither on tick nor OnKeyDown  
--- 
--- @param toggle boolean
function EnableLaserSightRendering(toggle) end


--- @param zoneId number
--- @param x number
--- @param y number
--- @param z number
function FireAirDefenseWeapon(zoneId, x, y, z) end

--- 
--- WEAPON::GET_AMMO_IN_PED_WEAPON(PLAYER::PLAYER_PED_ID(), a_0)  
--- From decompiled scripts  
--- Returns total ammo in weapon  
--- GTALua Example :  
--- natives.WEAPON.GET_AMMO_IN_PED_WEAPON(plyPed, WeaponHash)  
--- 
--- @param ped Ped
--- @param weaponhash Hash
--- @return number
function GetAmmoInPedWeapon(ped, weaponhash) end

--- 
--- WEAPON::EXPLODE_PROJECTILES(PLAYER::PLAYER_PED_ID(), func_221(0x00000003), 0x00000001);  
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @param p2 boolean
function ExplodeProjectiles(ped, weaponHash, p2) end

--- 
--- p1 is always 0 in the scripts.  
--- 
--- @param ped Ped
--- @param p1 boolean
--- @return Hash
function GetBestPedWeapon(ped, p1) end


--- @param ped Ped
--- @param weaponHash Hash
--- @param ammo number
--- @return boolean
function GetAmmoInClip(ped, weaponHash, ammo) end


--- @param ped Ped
--- @return Entity
function GetCurrentPedWeaponEntityIndex(ped) end

--- 
--- Example in VB  
--- Public Shared Function GetVehicleCurrentWeapon(Ped As Ped) As Integer  
---     Dim arg As New OutputArgument()  
---     Native.Function.Call(Hash.GET_CURRENT_PED_VEHICLE_WEAPON, Ped, arg)  
---     Return arg.GetResult(Of Integer)()  
--- End Function  
--- 		Usage:  
--- 		If GetVehicleCurrentWeapon(Game.Player.Character) = -821520672 Then ...Do something  
--- 		Note: -821520672 = VEHICLE_WEAPON_PLANE_ROCKET  
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @return boolean
function GetCurrentPedVehicleWeapon(ped, weaponHash) end


--- @param ped Ped
--- @return number
function GetLockonDistanceOfCurrentPedWeapon(ped) end

--- 
--- The return value seems to indicate returns true if the hash of the weapon object weapon equals the weapon hash.  
--- p2 seems to be 1 most of the time.  
--- p2 is not implemented  
--- disassembly said that?  
--- ------  
--- yes on disassembly p2 it seems not implemented i just have:  
--- bool __fastcall sub_7FF6C56CE684(__int64 a1, _DWORD *a2)  
--- Found At: 7ff6c56ce684  
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @param p2 boolean
--- @return boolean
function GetCurrentPedWeapon(ped, weaponHash, p2) end


--- @param ped Ped
--- @param weaponHash Hash
--- @param ammo number
--- @return boolean
function GetMaxAmmo(ped, weaponHash, ammo) end

--- 
--- gadgetHash - was always 0xFBAB5776 ("GADGET_PARACHUTE").  
--- 
--- @param ped Ped
--- @param gadgetHash Hash
--- @return boolean
function GetIsPedGadgetEquipped(ped, gadgetHash) end

--- 
--- p2 is mostly 1 in the scripts.  
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @param p2 boolean
--- @return number
function GetMaxAmmoInClip(ped, weaponHash, p2) end

--- 
--- NativeDB Parameter 1: Hash ammoType
--- 
--- @param ped Ped
--- @param ammoType any
--- @param ammo number
--- @return boolean
function GetMaxAmmoByType(ped, ammoType, ammo) end

--- 
--- NativeDB Parameter 1: Hash ammoType
--- 
--- @param ped Ped
--- @param ammoType any
--- @return number
function GetPedAmmoByType(ped, ammoType) end


--- @param ped Ped
--- @return number
function GetMaxRangeOfCurrentPedWeapon(ped) end

--- 
--- Returns the base/default ammo type of the specified ped's specified weapon.
--- 
--- Use GET_PED_AMMO_TYPE_FROM_WEAPON if you want current ammo type (like AMMO_MG_INCENDIARY/AMMO_MG_TRACER while using MkII magazines) and use this if you want base ammo type. (AMMO_MG)
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @return Hash
function GetPedAmmoTypeFromWeapon2(ped, weaponHash) end

--- 
--- Returns the current ammo type of the specified ped's specified weapon.
--- 
--- MkII magazines will change the return value, like Pistol MkII returning AMMO_PISTOL without any components and returning AMMO_PISTOL_TRACER after Tracer Rounds component is attached.
--- 
--- Use 0xF489B44DD5AF4BD9 if you always want AMMO_PISTOL.
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @return Hash
function GetPedAmmoTypeFromWeapon(ped, weaponHash) end

--- 
--- Pass ped. Pass address of Vector3.  
--- The coord will be put into the Vector3.  
--- The return will determine whether there was a coord found or not.  
--- 
--- @param ped Ped
--- @param coords vector3
--- @return boolean
function GetPedLastWeaponImpactCoord(ped, coords) end

--- 
--- NativeDB Parameter 1: Hash weaponHash
--- NativeDB Parameter 2: Hash camoComponentHash
--- 
--- @param ped Ped
--- @param weaponHash any
--- @param camoComponentHash any
--- @return number
function GetPedWeaponLiveryColor(ped, weaponHash, camoComponentHash) end


--- @param ped Ped
--- @param weaponSlot Hash
--- @return Hash
function GetPedWeapontypeInSlot(ped, weaponSlot) end


--- @param ped Ped
--- @param weaponHash Hash
--- @return number
function GetPedWeaponTintIndex(ped, weaponHash) end

--- 
--- Returns the hash of the weapon.   
--- var num7 = WEAPON::GET_SELECTED_PED_WEAPON(num4);  
--- sub_27D3(num7);  
--- switch (num7)  
--- {  
---     case 0x24B17070:  
--- 		Also see WEAPON::GET_CURRENT_PED_WEAPON. Difference?  
--- 		-------------------------------------------------------------------------  
--- 		The difference is that GET_SELECTED_PED_WEAPON simply returns the ped's current weapon hash but GET_CURRENT_PED_WEAPON also checks the weapon object and returns true if the hash of the weapon object equals the weapon hash  
--- 
--- @param ped Ped
--- @return Hash
function GetSelectedPedWeapon(ped) end

--- 
--- // Returns the size of the default weapon component clip.  
--- Use it like this:  
--- char cClipSize[32];  
--- Hash cur;  
--- if (WEAPON::GET_CURRENT_PED_WEAPON(playerPed, &cur, 1))  
--- {  
---     if (WEAPON::IS_WEAPON_VALID(cur))  
---     {  
---         int iClipSize = WEAPON::GET_WEAPON_CLIP_SIZE(cur);  
---         sprintf_s(cClipSize, "ClipSize: %.d", iClipSize);  
---         vDrawString(cClipSize, 0.5f, 0.5f);  
---     }  
--- }  
--- 
--- @param weaponHash Hash
--- @return number
function GetWeaponClipSize(weaponHash) end


--- @param componentHash Hash
--- @param outData number
--- @return boolean
function GetWeaponComponentHudStats(componentHash, outData) end


--- @param componentHash Hash
--- @return Hash
function GetWeaponComponentTypeModel(componentHash) end

--- 
--- NativeDB Parameter 0: Hash componentHash
--- 
--- @param componentHash any
--- @return number
function GetWeaponComponentVariantExtraComponentCount(componentHash) end

--- 
--- NativeDB Parameter 0: Hash componentHash
--- NativeDB Return Type: Hash
--- 
--- @param componentHash any
--- @param extraComponentIndex number
--- @return any
function GetWeaponComponentVariantExtraComponentModel(componentHash, extraComponentIndex) end

--- This native does not return damages of weapons from the melee and explosive group.
--- 
--- 
--- NativeDB Parameter 1: Hash componentHash
--- 
--- @param weaponHash Hash
--- @param componentHash any
--- @return number
function GetWeaponDamage(weaponHash, componentHash) end

--- 
--- 0=unknown (or incorrect weaponHash)  
--- 1= no damage (flare,snowball, petrolcan)  
--- 2=melee  
--- 3=bullet  
--- 4=force ragdoll fall  
--- 5=explosive (RPG, Railgun, grenade)  
--- 6=fire(molotov)  
--- 8=fall(WEAPON_HELI_CRASH)  
--- 10=electric  
--- 11=barbed wire  
--- 12=extinguisher  
--- 13=gas  
--- 14=water cannon(WEAPON_HIT_BY_WATER_CANNON)  
--- 
--- @param weaponHash Hash
--- @return number
function GetWeaponDamageType(weaponHash) end

--- 
--- // members should be aligned to 8 bytes by default but it's best to use alignas here, just to be sure  
--- struct WeaponHudStatsData  
--- {  
--- 	alignas(8) uint8_t hudDamage; // 0x0000  
--- 	alignas(8) uint8_t hudSpeed; // 0x0008  
--- 	alignas(8) uint8_t hudCapacity; // 0x0010  
--- 	alignas(8) uint8_t hudAccuracy; // 0x0018  
--- 	alignas(8) uint8_t hudRange; // 0x0020  
--- };  
--- Usage:  
--- WeaponHudStatsData data;  
--- if (GET_WEAPON_HUD_STATS(weaponHash, (Any*)&data))  
--- {  
---     // uint8_t damagePercentage = data.hudDamage etc...  
--- }  
--- 
--- @param weaponHash Hash
--- @param outData any
--- @return boolean
function GetWeaponHudStats(weaponHash, outData) end

--- 
--- Drops the current weapon and returns the object  
--- Unknown behavior when unarmed.  
--- 
--- @param ped Ped
--- @param p1 boolean
--- @return Object
function GetWeaponObjectFromPed(ped, p1) end

--- 
--- NativeDB Parameter 1: Hash camoComponentHash
--- 
--- @param weaponObject Object
--- @param camoComponentHash any
--- @return number
function GetWeaponObjectLiveryColor(weaponObject, camoComponentHash) end


--- @param weapon Object
--- @return number
function GetWeaponObjectTintIndex(weapon) end

--- NativeDB Introduced: v1290
--- @param weaponHash Hash
--- @return any
function GetWeaponTimeBetweenShots(weaponHash) end


--- @param weaponHash Hash
--- @return number
function GetWeaponTintCount(weaponHash) end


--- @param weaponHash Hash
--- @return Hash
function GetWeapontypeGroup(weaponHash) end

--- 
--- Returns the model of any weapon.  
--- Can also take an ammo hash?  
--- sub_6663a(&l_115B, WEAPON::GET_WEAPONTYPE_MODEL(${ammo_rpg}));  
--- 
--- @param weaponHash Hash
--- @return Hash
function GetWeapontypeModel(weaponHash) end


--- @param weaponHash Hash
--- @return Hash
function GetWeapontypeSlot(weaponHash) end

--- 
--- Gives a weapon to PED with a delay, example:  
--- WEAPON::GIVE_DELAYED_WEAPON_TO_PED(PED::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("WEAPON_PISTOL"), 1000, false)  
--- ----------------------------------------------------------------------------------------------------------------------------------------  
--- Translation table:  
--- pastebin.com/a39K8Nz8  
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @param ammoCount number
--- @param equipNow boolean
function GiveDelayedWeaponToPed(ped, weaponHash, ammoCount, equipNow) end

--- 
--- NativeDB Parameter 1: Hash loadoutHash
--- 
--- @param ped Ped
--- @param loadoutHash any
function GiveLoadoutToPed(ped, loadoutHash) end

--- 
--- addonHash:  
--- (use WEAPON::GET_WEAPON_COMPONENT_TYPE_MODEL() to get hash value)  
--- ^ Wrong.  
--- AddonHash is NOT a model hash, it's the weapon component hash.  
--- ${component_at_ar_flsh}, ${component_at_ar_supp}, ${component_at_pi_flsh}, ${component_at_scope_large}, ${component_at_ar_supp_02}  
--- 
--- @param weaponObject Object
--- @param addonHash Hash
function GiveWeaponComponentToWeaponObject(weaponObject, addonHash) end


--- @param ped Ped
--- @param weaponHash Hash
--- @param componentHash Hash
function GiveWeaponComponentToPed(ped, weaponHash, componentHash) end


--- @param weaponObject Object
--- @param ped Ped
function GiveWeaponObjectToPed(weaponObject, ped) end

--- 
--- isHidden - ????  
--- All weapon names (add to the list if something is missing), use GAMEPLAY::GET_HASH_KEY((char *)weaponNames[i]) to get get the hash:  
--- static LPCSTR weaponNames[] = {  
--- 	"WEAPON_KNIFE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB",  
--- 	"WEAPON_CROWBAR", "WEAPON_PISTOL", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50",  
--- 	"WEAPON_MICROSMG", "WEAPON_SMG", "WEAPON_ASSAULTSMG", "WEAPON_ASSAULTRIFLE",  
--- 	"WEAPON_CARBINERIFLE", "WEAPON_ADVANCEDRIFLE", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_PUMPSHOTGUN",  
--- 	"WEAPON_SAWNOFFSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_STUNGUN", "WEAPON_SNIPERRIFLE",  
--- 	"WEAPON_HEAVYSNIPER", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_MINIGUN",  
--- 	"WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_SMOKEGRENADE", "WEAPON_BZGAS", "WEAPON_MOLOTOV",  
--- 	"WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_FLARE", "WEAPON_SNSPISTOL", "WEAPON_SPECIALCARBINE",  
--- 	"WEAPON_HEAVYPISTOL", "WEAPON_BULLPUPRIFLE", "WEAPON_HOMINGLAUNCHER", "WEAPON_PROXMINE", "WEAPON_SNOWBALL",  
--- 	"WEAPON_VINTAGEPISTOL", "WEAPON_DAGGER", "WEAPON_FIREWORK", "WEAPON_MUSKET", "WEAPON_MARKSMANRIFLE",  
--- 	"WEAPON_HEAVYSHOTGUN", "WEAPON_GUSENBERG", "WEAPON_HATCHET", "WEAPON_RAILGUN", "WEAPON_COMBATPDW",  
--- 	"WEAPON_KNUCKLE", "WEAPON_MARKSMANPISTOL", "WEAPON_FLASHLIGHT", "WEAPON_MACHETE", "WEAPON_MACHINEPISTOL",  
--- 	"WEAPON_SWITCHBLADE", "WEAPON_REVOLVER", "WEAPON_COMPACTRIFLE", "WEAPON_DBSHOTGUN", "WEAPON_FLAREGUN",  
--- 	"WEAPON_AUTOSHOTGUN", "WEAPON_BATTLEAXE", "WEAPON_COMPACTLAUNCHER", "WEAPON_MINISMG", "WEAPON_PIPEBOMB",  
--- 	"WEAPON_POOLCUE", "WEAPON_SWEEPER", "WEAPON_WRENCH"  
--- };  
--- ----------------------------------------------------------------------------------------------------------------------------------------  
--- Translation table:  
--- pastebin.com/a39K8Nz8  
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @param ammoCount number
--- @param isHidden boolean
--- @param equipNow boolean
function GiveWeaponToPed(ped, weaponHash, ammoCount, isHidden, equipNow) end

--- 
--- It determines what weapons caused damage:  
--- If youu want to define only a specific weapon, second parameter=weapon hash code, third parameter=0  
--- If you want to define any melee weapon, second parameter=0, third parameter=1.  
--- If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.  
--- 
--- @param entity Entity
--- @param weaponHash Hash
--- @param weaponType number
--- @return boolean
function HasEntityBeenDamagedByWeapon(entity, weaponHash, weaponType) end

--- 
--- It determines what weapons caused damage:  
--- If you want to define only a specific weapon, second parameter=weapon hash code, third parameter=0  
--- If you want to define any melee weapon, second parameter=0, third parameter=1.  
--- If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.  
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @param weaponType number
--- @return boolean
function HasPedBeenDamagedByWeapon(ped, weaponHash, weaponType) end

--- 
--- p2 should be FALSE, otherwise it seems to always return FALSE  
--- Bool does not check if the weapon is current equipped, unfortunately.  
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @param p2 boolean
--- @return boolean
function HasPedGotWeapon(ped, weaponHash, p2) end


--- @param ped Ped
--- @param weaponHash Hash
--- @param componentHash Hash
--- @return boolean
function HasPedGotWeaponComponent(ped, weaponHash, componentHash) end

--- 
--- Third Parameter = unsure, but pretty sure it is weapon hash  
--- --> get_hash_key("weapon_stickybomb")  
--- Fourth Parameter = unsure, almost always -1  
--- 
--- @param driver Ped
--- @param vehicle Vehicle
--- @param weaponHash Hash
--- @param p3 any
--- @return boolean
function HasVehicleGotProjectileAttached(driver, vehicle, weaponHash, p3) end


--- @param weaponHash Hash
--- @return boolean
function HasWeaponAssetLoaded(weaponHash) end


--- @param weapon Object
--- @param addonHash Hash
--- @return boolean
function HasWeaponGotWeaponComponent(weapon, addonHash) end

--- 
--- Hides the players weapon during a cutscene.  
--- 
--- @param ped Ped
--- @param toggle boolean
function HidePedWeaponForScriptedCutscene(ped, toggle) end


--- @param ped Ped
--- @return boolean
function IsFlashLightOn(ped) end


--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param zoneId number
--- @return boolean
function IsAirDefenseZoneInsideSphere(x, y, z, radius, zoneId) end

--- 
--- p1 is anywhere from 4 to 7 in the scripts. Might be a weapon wheel group?  
--- ^It's kinda like that.   
--- 7 returns true if you are equipped with any weapon except your fists.  
--- 6 returns true if you are equipped with any weapon except melee weapons.  
--- 5 returns true if you are equipped with any weapon except the Explosives weapon group.  
--- 4 returns true if you are equipped with any weapon except Explosives weapon group AND melee weapons.  
--- 3 returns true if you are equipped with either Explosives or Melee weapons (the exact opposite of 4).  
--- 2 returns true only if you are equipped with any weapon from the Explosives weapon group.  
--- 1 returns true only if you are equipped with any Melee weapon.  
--- 0 never returns true.  
--- Note: When I say "Explosives weapon group", it does not include the Jerry can and Fire Extinguisher.  
--- 
--- @param ped Ped
--- @param p1 number
--- @return boolean
function IsPedArmed(ped, p1) end

--- 
--- This native returns a true or false value.  
--- Ped ped = The ped whose weapon you want to check.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedCurrentWeaponSilenced(ped) end

--- 
--- Probably checks whether the ped has finished reloading or not and if the current weapon is not being switched to another.  
--- 
--- @param ped Ped
--- @return boolean
function IsPedWeaponReadyToShoot(ped) end


--- @param ped Ped
--- @param weaponHash Hash
--- @param componentHash Hash
--- @return boolean
function IsPedWeaponComponentActive(ped, weaponHash, componentHash) end


--- @param weaponHash Hash
--- @return boolean
function IsWeaponValid(weaponHash) end

--- Forces a ped to reload **only** if they are able to; if they have a full magazine, they will not reload.
--- @param ped Ped
--- @return boolean
function MakePedReload(ped) end

--- 
--- [23.03.2017 19:08] by ins1de :  
--- "_IS_PED_RELOADING" is totally a wrong name...  
--- This native actually disables the reloading animation and script for the specified ped. Native renamed.  
--- 
--- @param ped Ped
--- @return boolean
function PedSkipNextReloading(ped) end


--- @param zoneId number
--- @return boolean
function RemoveAirDefenseZone(zoneId) end

--- 
--- setting the last params to false it does that same so I would suggest its not a toggle  
--- 
--- @param ped Ped
--- @param p1 boolean
function RemoveAllPedWeapons(ped, p1) end


function RemoveAllAirDefenseZones() end


--- @param weaponHash Hash
function RemoveWeaponAsset(weaponHash) end

--- 
--- p1 seems always to be 0  
--- 
--- @param weaponHash Hash
--- @param p1 boolean
function RemoveAllProjectilesOfType(weaponHash, p1) end


--- @param p0 any
--- @param p1 any
function RemoveWeaponComponentFromWeaponObject(p0, p1) end


--- @param ped Ped
--- @param weaponHash Hash
--- @param componentHash Hash
function RemoveWeaponComponentFromPed(ped, weaponHash, componentHash) end

--- 
--- This native removes a specified weapon from your selected ped.  
--- Weapon Hashes: pastebin.com/0wwDZgkF  
--- Example:  
--- C#:  
--- Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);  
--- C++:  
--- WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);  
--- The code above removes the knife from the player.  
--- 
--- @param ped Ped
--- @param weaponHash Hash
function RemoveWeaponFromPed(ped, weaponHash) end

--- 
--- Nearly every instance of p1 I found was 31. Nearly every instance of p2 I found was 0.  
--- REQUEST_WEAPON_ASSET(iLocal_1888, 31, 26);  
--- 
--- @param weaponHash Hash
--- @param p1 number
--- @param p2 number
function RequestWeaponAsset(weaponHash, p1, p2) end


--- @param ped Ped
--- @param weaponHash Hash
--- @param ammo number
--- @return boolean
function SetAmmoInClip(ped, weaponHash, ammo) end


--- @param weaponObject Entity
function RequestWeaponHighDetailModel(weaponObject) end

--- Does the same as [_SET_CAN_PED_SELECT_WEAPON](https://runtime.fivem.net/doc/natives/#_0xB4771B9AAF4E68E4) except for all weapons.
--- @param ped Ped
--- @param toggle boolean
function SetCanPedEquipAllWeapons(ped, toggle) end

--- For the player ped this will also gray out the weapon in the weapon wheel.
--- @param ped Ped
--- @param weaponHash Hash
--- @param toggle boolean
function SetCanPedSelectWeapon(ped, weaponHash, toggle) end


--- @param ped Ped
--- @param weaponHash Hash
--- @param equipNow boolean
function SetCurrentPedWeapon(ped, weaponHash, equipNow) end


--- @param ped Ped
--- @param weaponHash Hash
--- @return boolean
function SetCurrentPedVehicleWeapon(ped, weaponHash) end


--- @param distance number
--- @return any
function SetFlashLightFadeDistance(distance) end

--- 
--- NativeDB Parameter 1: Hash ammoType
--- 
--- @param ped Ped
--- @param ammoType any
--- @param ammo number
function SetPedAmmoByType(ped, ammoType, ammo) end

--- 
--- NativeDB Added Parameter 4: BOOL p3
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @param ammo number
function SetPedAmmo(ped, weaponHash, ammo) end


--- @param ped Ped
--- @param ammo number
function SetPedAmmoToDrop(ped, ammo) end

--- 
--- Has 5 parameters since latest patches.  
--- 
--- @param ped Ped
--- @param visible boolean
--- @param deselectWeapon boolean
--- @param p3 boolean
--- @param p4 boolean
function SetPedCurrentWeaponVisible(ped, visible, deselectWeapon, p3, p4) end


--- @param ped Ped
--- @param xBias number
--- @param yBias number
function SetPedChanceOfFiringBlanks(ped, xBias, yBias) end

--- 
--- [16/06/2017 by ins1de] :  
--- Drops the weapon object from selected peds and turns it into a pickup.  
--- Offset defines the next position of the weapon, ammo count is the stored ammo in the pickup (if ammoCount == 0, pickup won't be created)  
--- Default offset values (freemode.c):  
--- if (is_ped_walking(player_ped_id()))  
---         {  
---             vVar1 = {0.6f, 4.7f, -0.1f};  
---         }  
---         else if (is_ped_sprinting(player_ped_id()))  
---         {  
---             vVar1 = {0.6f, 5.7f, -0.1f};  
---         }  
---         else if (is_ped_running(player_ped_id()))  
---         {  
---             vVar1 = {0.6f, 4.7f, -0.1f};  
---         }  
---         else  
---         {  
---             vVar1 = {0.4f, 4.7f, -0.1f};  
---         }  
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @param xOffset number
--- @param yOffset number
--- @param zOffset number
--- @param ammoCount number
function SetPedDropsInventoryWeapon(ped, weaponHash, xOffset, yOffset, zOffset, ammoCount) end


--- @param ped Ped
--- @param toggle boolean
function SetPedDropsWeaponsWhenDead(ped, toggle) end


--- @param ped Ped
function SetPedDropsWeapon(ped) end

--- 
--- p1/gadgetHash was always 0xFBAB5776 ("GADGET_PARACHUTE").  
--- p2 is always true.  
--- 
--- @param ped Ped
--- @param gadgetHash Hash
--- @param p2 boolean
function SetPedGadget(ped, gadgetHash, p2) end


--- @param ped Ped
--- @param toggle boolean
--- @param weaponHash Hash
function SetPedInfiniteAmmo(ped, toggle, weaponHash) end


--- @param ped Ped
--- @param toggle boolean
function SetPedInfiniteAmmoClip(ped, toggle) end

--- 
--- Only used once in the scripts  
--- weapon::_0xB4C8D77C80C0421E(Local_888[3 /*33*/], -1082130432);  
--- The code following this relates to manually triggering an RPG rocket (creating the object, the particle fx and sound)  
--- 
--- @param ped Ped
--- @param p1 number
--- @return Object
function SetPedShootOrdnanceWeapon(ped, p1) end

--- 
--- tintIndex can be the following:  
--- 1   
--- 2   
--- 3   
--- 4   
--- 5   
--- 6   
--- 7  
--- 
--- @param ped Ped
--- @param weaponHash Hash
--- @param tintIndex number
function SetPedWeaponTintIndex(ped, weaponHash, tintIndex) end

--- 
--- NativeDB Parameter 1: Hash weaponHash
--- NativeDB Parameter 2: Hash camoComponentHash
--- 
--- @param ped Ped
--- @param weaponHash any
--- @param camoComponentHash any
--- @param colorIndex number
function SetPedWeaponLiveryColor(ped, weaponHash, camoComponentHash, colorIndex) end

--- 
--- Changes the selected ped aiming animation style.   
--- Note : You must use GET_HASH_KEY!  
--- Strings to use with GET_HASH_KEY :  
--- 	"Ballistic",  
--- 	"Default",  
--- 	"Fat",  
--- 	"Female",  
--- 	"FirstPerson",  
--- 	"FirstPersonAiming",  
--- 	"FirstPersonFranklin",  
--- 	"FirstPersonFranklinAiming",  
--- 	"FirstPersonFranklinRNG",  
--- 	"FirstPersonFranklinScope",  
--- 	"FirstPersonMPFemale",  
--- 	"FirstPersonMichael",  
--- 	"FirstPersonMichaelAiming",  
--- 	"FirstPersonMichaelRNG",  
--- 	"FirstPersonMichaelScope",  
--- 	"FirstPersonRNG",  
--- 	"FirstPersonScope",  
--- 	"FirstPersonTrevor",  
--- 	"FirstPersonTrevorAiming",  
--- 	"FirstPersonTrevorRNG",  
--- 	"FirstPersonTrevorScope",  
--- 	"Franklin",  
--- 	"Gang",  
--- 	"Gang1H",  
--- 	"GangFemale",  
--- 	"Hillbilly",  
--- 	"MP_F_Freemode",  
--- 	"Michael",  
--- 	"SuperFat",  
--- 	"Trevor"  
--- 
--- @param ped Ped
--- @param animStyle Hash
function SetWeaponAnimationOverride(ped, animStyle) end


--- @param player Player
--- @param zoneId number
--- @param enable boolean
function SetPlayerAirDefenseZoneFlag(player, zoneId, enable) end


--- @param weaponHash Hash
--- @param damageAmount number
function SetWeaponDamageModifier(weaponHash, damageAmount) end

--- 
--- NativeDB Parameter 1: Hash camoComponentHash
--- 
--- @param weaponObject Object
--- @param camoComponentHash any
--- @param colorIndex number
function SetWeaponObjectLiveryColor(weaponObject, camoComponentHash, colorIndex) end


--- @param weapon Object
--- @param tintIndex number
function SetWeaponObjectTintIndex(weapon, tintIndex) end

