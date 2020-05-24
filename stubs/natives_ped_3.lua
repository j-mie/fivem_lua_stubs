
--- @param ped Ped
--- @param toggle boolean
function SetPedGetOutUpsideDownVehicle(ped, toggle) end

--- 
--- Bool probably has something to do with vehicles, maybe if the ped can use vehicle to flee?  
--- Values used as attributes are those in sequence of powers of two, 1, 2, 4, 8, 16, 32, 64.... 65536.  
--- jedijosh920: Setting attribute "2" to true will make the ped steal a vehicle.  
--- 
--- @param ped Ped
--- @param attributeFlags number
--- @param enable boolean
function SetPedFleeAttributes(ped, attributeFlags, enable) end


--- @param ped Ped
--- @param index number
function SetPedGroupMemberPassengerIndex(ped, index) end

--- 
--- From the scripts:  
--- PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),  
--- "ANIM_GROUP_GESTURE_MISS_FRA0");  
--- PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),  
--- "ANIM_GROUP_GESTURE_MISS_DocksSetup1");  
--- 
--- @param ped Ped
--- @param animGroupGesture string
function SetPedGestureGroup(ped, animGroupGesture) end

--- 
--- The "shape" parameters control the shape of the ped's face. The "skin" parameters control the skin tone. ShapeMix and skinMix control how much the first and second IDs contribute,(typically mother and father.) ThirdMix overrides the others in favor of the third IDs. IsParent is set for "children" of the player character's grandparents during old-gen character creation. It has unknown effect otherwise.  
--- The IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.  
--- !!!Can someone add working example for this???  
--- try this:  
--- headBlendData headData;  
--- _GET_PED_HEAD_BLEND_DATA(PLAYER_PED_ID(), &headData);  
--- SET_PED_HEAD_BLEND_DATA(PLAYER_PED_ID(), headData.shapeFirst, headData.shapeSecond, headData.shapeThird, headData.skinFirst, headData.skinSecond  
--- 	, headData.skinThird, headData.shapeMix, headData.skinMix, headData.skinThird, 0);  
--- For more info please refer to this topic.   
--- gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained  
--- 
--- @param ped Ped
--- @param shapeFirstID number
--- @param shapeSecondID number
--- @param shapeThirdID number
--- @param skinFirstID number
--- @param skinSecondID number
--- @param skinThirdID number
--- @param shapeMix number
--- @param skinMix number
--- @param thirdMix number
--- @param isParent boolean
function SetPedHeadBlendData(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent) end

--- 
--- enable or disable the gravity of a ped  
--- Examples:  
--- PED::SET_PED_GRAVITY(PLAYER::PLAYER_PED_ID(), 0x00000001);  
--- PED::SET_PED_GRAVITY(Local_289[iVar0 /*20*/], 0x00000001);  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetPedGravity(ped, toggle) end

--- 
--- Used for freemode (online) characters.  
--- 
--- @param ped Ped
--- @param colorID number
--- @param highlightColorID number
function SetPedHairColor(ped, colorID, highlightColorID) end

--- 
--- OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0.   
--- overlayID       Part                  Index, to disable  
--- 0               Blemishes             0 - 23, 255  
--- 1               Facial Hair           0 - 28, 255  
--- 2               Eyebrows              0 - 33, 255  
--- 3               Ageing                0 - 14, 255  
--- 4               Makeup                0 - 74, 255  
--- 5               Blush                 0 - 6, 255  
--- 6               Complexion            0 - 11, 255  
--- 7               Sun Damage            0 - 10, 255  
--- 8               Lipstick              0 - 9, 255  
--- 9               Moles/Freckles        0 - 17, 255  
--- 10              Chest Hair            0 - 16, 255  
--- 11              Body Blemishes        0 - 11, 255  
--- 12              Add Body Blemishes    0 - 1, 255  
--- 
--- @param ped Ped
--- @param overlayID number
--- @param index number
--- @param opacity number
function SetPedHeadOverlay(ped, overlayID, index, opacity) end


--- @param ped Ped
--- @param value number
function SetPedHearingRange(ped, value) end

--- 
--- Used for freemode (online) characters.  
--- ColorType is 1 for eyebrows, beards, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.  
--- Called after SET_PED_HEAD_OVERLAY().  
--- 
--- @param ped Ped
--- @param overlayID number
--- @param colorType number
--- @param colorID number
--- @param secondColorID number
function SetPedHeadOverlayColor(ped, overlayID, colorType, colorID, secondColorID) end


--- @param p0 any
--- @param p1 any
function SetPedHeatscaleOverride(p0, p1) end


--- @param ped Ped
--- @param canWearHelmet boolean
function SetPedHelmet(ped, canWearHelmet) end


--- @param ped Ped
--- @param helmetFlag number
function SetPedHelmetFlag(ped, helmetFlag) end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- 
--- 
--- NativeDB Added Parameter 3: BOOL p2
--- 
--- @param ped Ped
--- @param propIndex number
function SetPedHelmetPropIndex(ped, propIndex) end


--- @param ped Ped
--- @param p1 boolean
--- @param p2 number
--- @param p3 number
function SetPedHelmetUnk(ped, p1, p2, p3) end


--- @param ped Ped
--- @param textureIndex number
function SetPedHelmetTextureIndex(ped, textureIndex) end


--- @param ped Ped
--- @param value number
function SetPedIdRange(ped, value) end

--- 
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, GAMEPLAY::GET_HASH_KEY("MINI_PROSTITUTE_LOW_PASSENGER"));  
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, GAMEPLAY::GET_HASH_KEY("MINI_PROSTITUTE_LOW_RESTRICTED_PASSENGER"));  
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, GAMEPLAY::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT"));  
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, GAMEPLAY::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT_REAR"));  
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_95, GAMEPLAY::GET_HASH_KEY("MISS_FAMILY2_JIMMY_BICYCLE"));  
--- PED::SET_PED_IN_VEHICLE_CONTEXT(num3, GAMEPLAY::GET_HASH_KEY("MISSFBI2_MICHAEL_DRIVEBY"));  
--- PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("MISS_ARMENIAN3_FRANKLIN_TENSE"));  
--- PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("MISSFBI5_TREVOR_DRIVING"));  
--- 
--- @param ped Ped
--- @param context Hash
function SetPedInVehicleContext(ped, context) end


--- @param ped Ped
--- @param toggle boolean
function SetPedHighlyPerceptive(ped, toggle) end

--- 
--- Ped: The ped to warp.  
--- vehicle: The vehicle to warp the ped into.  
--- Seat_Index: [-1 is driver seat, -2 first free passenger seat]  
--- Moreinfo of Seat Index  
--- DriverSeat = -1  
--- Passenger = 0  
--- Left Rear = 1  
--- RightRear = 2  
--- 
--- @param ped Ped
--- @param vehicle Vehicle
--- @param seatIndex number
function SetPedIntoVehicle(ped, vehicle, seatIndex) end

--- This native sets the glow intensity of illuminated clothing items.
--- 
--- This native does **NOT** need to be executed every tick.
--- This native is **NOT** synced with other connected players, you will have to set the opacity on the ped on all clients individually.
--- 
--- Glow intensity is a value between 0.0 and 1.0.
--- 
--- In some older decompiled scripts this is known as _SET_PED_REFLECTION_INTENSITY.
--- Since there's no joaat hash for this, I find _SET_PED_ILLUMINATED_CLOTHING_GLOW_INTENSITY more descriptive than _SET_PED_REFLECTION_INTENSITY.
--- 
--- Use [GetPedIlluminatedClothingGlowIntensity](#_0x1461B28A06717D68) to get the illuminated clothing glow intensity of a specific ped.
--- 
--- Intensity: 1.0:
--- ![](https://www.vespura.com/hi/i/2018-11-13_17-03_c2e23_229.png)
--- 
--- Intensity: 0.0:
--- ![](https://www.vespura.com/hi/i/2018-11-13_17-03_35c33_230.png)
--- 
--- **Examples code result**:
--- ![](https://www.vespura.com/hi/i/2018-11-13_17-11_10199_232.gif)
--- 
--- (Direct link if embed doesn't work: [here](https://www.vespura.com/hi/i/2018-11-13_17-11_10199_232.gif))
--- @param ped Ped
--- @param intensity number
function SetPedIlluminatedClothingGlowIntensity(ped, intensity) end

--- 
--- "IK" stands for "Inverse kinematics." I assume this has something to do with how the ped uses his legs to balance. In the scripts, the second parameter is always an int with a value of 2, 0, or sometimes 1  
--- 
--- @param ped Ped
--- @param mode number
function SetPedLegIkMode(ped, mode) end

--- 
--- sets the maximum health of a ped  
--- I think it's never been used in any script  
--- 
--- @param ped Ped
--- @param value number
function SetPedMaxHealth(ped, value) end


--- @param ped Ped
function SetPedIncreasedAvoidanceRadius(ped) end


--- @param ped Ped
--- @param value number
function SetPedMaxMoveBlendRatio(ped, value) end


--- @param ped Ped
--- @param toggle boolean
function SetPedKeepTask(ped, toggle) end

--- 
--- Ped will stay on the ground after being stunned for at lest ms time. (in milliseconds)  
--- 
--- @param ped Ped
--- @param ms number
function SetPedMinGroundTimeForStungun(ped, ms) end


--- @param ped Ped
--- @param value number
function SetPedMinMoveBlendRatio(ped, value) end


--- @param ped Ped
--- @param multiplier number
function SetPedLodMultiplier(ped, multiplier) end

--- 
--- Maximum possible amount of money on MP is 2000. ~JX  
--- -----------------------------------------------------------------------------  
--- Maximum amount that a ped can theoretically have is 65535 (0xFFFF) since the amount is stored as an unsigned short (uint16_t) value.  
--- 
--- @param ped Ped
--- @param amount number
function SetPedMoney(ped, amount) end


--- @param ped Ped
function SetPedMoveAnimsBlendOut(ped) end


--- @param ped Ped
--- @param value number
function SetPedMaxTimeInWater(ped, value) end

--- 
--- p2 is usually 1.0f  
--- EDIT 12/24/16:   
--- p2 does absolutely nothing no matter what the value is.   
--- EDIT 08/16/17:  
--- p2 is the time for a smooth changing to the new clipset.  
--- List of movement clipsets:  
--- Thanks to elsewhat for list.  
---  "ANIM_GROUP_MOVE_BALLISTIC"  
---  "ANIM_GROUP_MOVE_LEMAR_ALLEY"  
---  "clipset@move@trash_fast_turn"  
---  "FEMALE_FAST_RUNNER"  
---  "missfbi4prepp1_garbageman"  
---  "move_characters@franklin@fire"  
---  "move_characters@Jimmy@slow@"  
---  "move_characters@michael@fire"  
---  "move_f@flee@a"  
---  "move_f@scared"  
---  "move_f@sexy@a"  
---  "move_heist_lester"  
---  "move_injured_generic"  
---  "move_lester_CaneUp"  
---  "move_m@bag"  
---  "MOVE_M@BAIL_BOND_NOT_TAZERED"  
---  "MOVE_M@BAIL_BOND_TAZERED"  
---  "move_m@brave"  
---  "move_m@casual@d"  
---  "move_m@drunk@moderatedrunk"  
---  "MOVE_M@DRUNK@MODERATEDRUNK"  
---  "MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP"  
---  "MOVE_M@DRUNK@SLIGHTLYDRUNK"  
---  "MOVE_M@DRUNK@VERYDRUNK"  
---  "move_m@fire"  
---  "move_m@gangster@var_e"  
---  "move_m@gangster@var_f"  
---  "move_m@gangster@var_i"  
---  "move_m@JOG@"  
---  "MOVE_M@PRISON_GAURD"  
---  "MOVE_P_M_ONE"  
---  "MOVE_P_M_ONE_BRIEFCASE"  
---  "move_p_m_zero_janitor"  
---  "move_p_m_zero_slow"  
---  "move_ped_bucket"  
---  "move_ped_crouched"  
---  "move_ped_mop"  
---  "MOVE_M@FEMME@"  
---  "MOVE_F@FEMME@"  
---  "MOVE_M@GANGSTER@NG"  
---  "MOVE_F@GANGSTER@NG"  
---  "MOVE_M@POSH@"  
---  "MOVE_F@POSH@"  
---  "MOVE_M@TOUGH_GUY@"  
---  "MOVE_F@TOUGH_GUY@"  
--- ~ NotCrunchyTaco  
--- 
--- @param ped Ped
--- @param clipSet string
--- @param p2 number
function SetPedMovementClipset(ped, clipSet, p2) end


--- @param ped Ped
--- @param value number
function SetPedMaxTimeUnderwater(ped, value) end

--- 
--- NOTE: Debugging functions are not present in the retail version of the game.  
--- *untested but char *name could also be a hash for a localized string  
--- 
--- @param ped Ped
--- @param name string
function SetPedNameDebug(ped, name) end

--- 
--- The distance between these points, is the diagonal of a box (remember it's 3D).  
--- 
--- @param x1 number
--- @param y1 number
--- @param z1 number
--- @param x2 number
--- @param y2 number
--- @param z2 number
function SetPedNonCreationArea(x1, y1, z1, x2, y2, z2) end

--- 
--- NativeDB Parameter 0: Hash modelHash
--- 
--- @param ped Ped
--- @param toggle boolean
function SetPedModelIsSuppressed(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedMotionBlur(ped, toggle) end


--- @param ped Ped
--- @param tintIndex number
function SetPedParachuteTintIndex(ped, tintIndex) end

--- 
--- p2 could be time. Only example in the decompiled scripts uses it as -1.  
--- 
--- @param ped Ped
--- @param pinned boolean
--- @param p2 number
--- @return any
function SetPedPinnedDown(ped, pinned, p2) end

--- 
--- Min: 0.00  
--- Max: 10.00  
--- Can be used in combo with fast run cheat.  
--- When value is set to 10.00:  
--- Sprinting without fast run cheat: 66 m/s  
--- Sprinting with fast run cheat: 77 m/s  
--- Needs to be looped!  
--- Note: According to IDA for the Xbox360 xex, when they check bgt they seem to have the min to 0.0f, but the max set to 1.15f not 10.0f.  
--- 
--- @param ped Ped
--- @param value number
function SetPedMoveRateOverride(ped, value) end


--- @param ped Ped
--- @param itemSet any
function SetPedPreferredCoverSet(ped, itemSet) end

--- 
--- from extreme3.c4
--- PED::_39D55A620FCB6A3A(PLAYER::PLAYER_PED_ID(), 8, PED::GET_PED_DRAWABLE_VARIATION(PLAYER::PLAYER_PED_ID(), 8), PED::GET_PED_TEXTURE_VARIATION(PLAYER::PLAYER_PED_ID(), 8));
--- p1 is probably componentId
--- 
--- @param ped Ped
--- @param slot number
--- @param drawableId number
--- @param textureId number
--- @return any
function SetPedPreloadVariationData(ped, slot, drawableId, textureId) end


--- @param ped Ped
--- @param toggle boolean
function SetPedNeverLeavesGroup(ped, toggle) end

--- 
--- This is only called once in the scripts.  
--- sub_1CD9(&l_49, 0, getElem(3, &l_34, 4), "MICHAEL", 0, 1);  
---                     sub_1CA8("WORLD_HUMAN_SMOKING", 2);  
---                     PED::SET_PED_PRIMARY_LOOKAT(getElem(3, &l_34, 4), PLAYER::PLAYER_PED_ID());  
--- 
--- @param ped Ped
--- @param lookAt Ped
function SetPedPrimaryLookat(ped, lookAt) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @return any
function SetPedPanicExitScenario(ped, x, y, z) end

--- 
--- NativeDB Return Type: void
--- 
--- @param ped Ped
--- @return any
function SetPedRagdollForceFall(ped) end

--- **This native does absolutely nothing, just a nullsub**
--- 
--- 
--- Points to the same function as for example GET_RANDOM_VEHICLE_MODEL_IN_MEMORY and it does absolutely nothing.  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetPedPlaysHeadOnHornAnimWhenDiesInVehicle(ped, toggle) end

--- 
--- Causes Ped to ragdoll on collision with any object (e.g Running into trashcan). If applied to player you will sometimes trip on the sidewalk.  
--- 
--- @param ped Ped
--- @param toggle boolean
function SetPedRagdollOnCollision(ped, toggle) end

--- 
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- @param ped Ped
function SetPedRandomProps(ped) end

--- 
--- List of component/props ID
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--- 
--- @param ped Ped
--- @param componentId number
--- @param drawableId number
--- @param TextureId number
--- @return boolean
function SetPedPreloadPropData(ped, componentId, drawableId, TextureId) end


--- @param ped Ped
--- @param hash Hash
function SetPedRelationshipGroupHash(ped, hash) end

--- This native is used to set prop variation on a ped. Components, drawables and textures IDs are related to the ped model. 
--- 
--- ### MP Freemode list of props
--- 
--- **0**: Hat  
--- **1**: Glass  
--- **2**: Ear  
--- **6**: Watch  
--- **7**: Bracelet  
--- 
--- ### Related and useful natives
--- 
--- [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#_0x5FAF9754E789FB47)  
--- [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#_0xA6E7F1CEB523E171)  
--- 
--- [List of component/props ID](gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html) of player_two with examples
--- @param ped Ped
--- @param componentId number
--- @param drawableId number
--- @param textureId number
--- @param attach boolean
function SetPedPropIndex(ped, componentId, drawableId, textureId, attach) end


--- @param ped Ped
--- @param p1 any
function SetPedReserveParachuteTintIndex(ped, p1) end

--- 
--- p1 is always false in R* scripts.  
--- Quick disassembly seems to indicate that p1 is unused.  
--- List of component/props ID  
--- gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
--- 
--- 
--- 
--- NativeDB Parameter 1: int p1
--- 
--- @param ped Ped
--- @param p1 boolean
function SetPedRandomComponentVariation(ped, p1) end


--- @param ped Ped
--- @param value number
function SetPedSeeingRange(ped, value) end


--- @param ped Ped
--- @param hash Hash
function SetPedRelationshipGroupDefaultHash(ped, hash) end

--- 
--- shootRate 0-1000  
--- 
--- @param ped Ped
--- @param shootRate number
function SetPedShootRate(ped, shootRate) end

--- **Known values**
--- 
--- PRF_PreventGoingIntoStillInVehicleState = 236 _(fanatic2.c)_
--- @param ped Ped
--- @param flagId number
--- @param doReset boolean
function SetPedResetFlag(ped, flagId, doReset) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param p5 boolean
--- @param p6 boolean
function SetPedSphereDefensiveArea(ped, x, y, z, radius, p5, p6) end

--- This native sets a scuba mask for freemode models and an oxygen bottle for player_\* models.
--- It works on freemode and player_\* models.
--- @param ped Ped
function SetPedScubaGearVariation(ped) end


--- @param ped Ped
--- @param x number
--- @param y number
--- @param z number
--- @param toggle boolean
function SetPedShootsAtCoord(ped, x, y, z, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedStayInVehicleWhenJacked(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedSteersAroundObjects(ped, toggle) end


--- @param ped Ped
--- @param toggle boolean
function SetPedSteersAroundVehicles(ped, toggle) end

--- 
--- p1 is usually 0 in the scripts. action is either 0 or a pointer to "DEFAULT_ACTION".  
--- 
--- @param ped Ped
--- @param p1 boolean
--- @param action string
function SetPedStealthMovement(ped, p1, action) end


--- @param ped Ped
--- @param toggle boolean
function SetPedSteersAroundPeds(ped, toggle) end

--- Ped no longer takes critical damage modifiers if set to FALSE.
--- 
--- Example: Headshotting a player no longer one shots them. Instead they will take the same damage as a torso shot.
--- @param ped Ped
--- @param toggle boolean
function SetPedSuffersCriticalHits(ped, toggle) end


--- @param ped Ped
--- @param clipSet string
function SetPedStrafeClipset(ped, clipSet) end

--- 
--- Sweat is set to 100.0 or 0.0 in the decompiled scripts.  
--- 
--- @param ped Ped
--- @param sweat number
function SetPedSweat(ped, sweat) end


--- @param ped Ped
--- @param radius number
--- @param maxFriends number
function SetPedToInformRespectedFriends(ped, radius, maxFriends) end

--- 
--- Only 1 and 2 appear in the scripts. combatbehaviour.meta seems to only have TLR_SearchForTarget for all peds, but we don't know if that's 1 or 2.  
--- 
--- @param ped Ped
--- @param responseType number
function SetPedTargetLossResponse(ped, responseType) end

--- 
--- time1- Time Ped is in ragdoll mode(ms)  
--- time2- Unknown time, in milliseconds  
--- ragdollType-  
--- 0 : Normal ragdoll  
--- 1 : Falls with stiff legs/body  
--- 2 : Narrow leg stumble(may not fall)  
--- 3 : Wide leg stumble(may not fall)  
--- p4, p5, p6- No idea. In R*'s scripts they are usually either "true, true, false" or "false, false, false".  
--- EDIT 3/11/16: unclear what 'mircoseconds' mean-- a microsecond is 1000x a ms, so time2 must be 1000x time1?  more testing needed.  -sob  
--- Edit Mar 21, 2017: removed part about time2 being the microseconds version of time1. this just isn't correct. time2 is in milliseconds, and time1 and time2 don't seem to be connected in any way.  
--- 
--- @param ped Ped
--- @param time1 number
--- @param time2 number
--- @param ragdollType number
--- @param p4 boolean
--- @param p5 boolean
--- @param p6 boolean
--- @return boolean
function SetPedToRagdoll(ped, time1, time2, ragdollType, p4, p5, p6) end


--- @param ped Ped
--- @param toggle boolean
function SetPedToLoadCover(ped, toggle) end

--- 
--- p2 is usually -1 in the scripts. action is either 0 or "DEFAULT_ACTION".  
--- 
--- @param ped Ped
--- @param p1 boolean
--- @param p2 number
--- @param action string
function SetPedUsingActionMode(ped, p1, p2, action) end

--- 
--- Return variable is never used in R*'s scripts.  
--- Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.  
--- x, y, and z are coordinates, most likely to where the ped will fall.  
--- p7 is probably the force of the fall, but untested, so I left the variable name the same.  
--- p8 to p13 are always 0f in R*'s scripts.  
--- (Simplified) Example of the usage of the function from R*'s scripts:  
--- ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);  
--- 
--- @param ped Ped
--- @param time number
--- @param p2 number
--- @param ragdollType number
--- @param x number
--- @param y number
--- @param z number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param p10 number
--- @param p11 number
--- @param p12 number
--- @param p13 number
--- @return boolean
function SetPedToRagdollWithFall(ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13) end


--- @param ped Ped
--- @param angle number
function SetPedVisualFieldCenterAngle(ped, angle) end

--- 
--- This native refers to the field of vision the ped has above them, starting at 0 degrees. 90f would let the ped see enemies directly above of them.  
--- 
--- @param ped Ped
--- @param angle number
function SetPedVisualFieldMaxElevationAngle(ped, angle) end


--- @param ped Ped
--- @param vehicle Vehicle
--- @param seatIndex number
--- @param flags number
function SetPedVehicleForcedSeatUsage(ped, vehicle, seatIndex, flags) end


--- @param ped Ped
--- @param range number
function SetPedVisualFieldPeripheralRange(ped, range) end


--- @param ped Ped
--- @param value number
function SetPedVisualFieldMaxAngle(ped, value) end


--- @param ped Ped
--- @param clipSet string
function SetPedWeaponMovementClipset(ped, clipSet) end

--- 
--- combined with PED::SET_PED_WETNESS_HEIGHT(), this native makes the ped drenched in water up to the height specified in the other function  
--- 
--- @param ped Ped
function SetPedWetnessEnabledThisFrame(ped) end


--- @param ped Ped
--- @param value number
function SetPedVisualFieldMinAngle(ped, value) end

--- 
--- Works for both player and peds, but some flags don't seem to work for the player (1, for example)  
--- 1 - Blocks ragdolling when shot.  
--- 2 - Blocks ragdolling when hit by a vehicle. The ped still might play a falling animation.  
--- 4 - Blocks ragdolling when set on fire.  
--- -----------------------------------------------------------------------  
--- There seem to be 26 flags  
--- 
--- @param ped Ped
--- @param flags number
function SetRagdollBlockingFlags(ped, flags) end

--- 
--- p0 and p1 are always the same  
--- 
--- @param p0 number
--- @param p1 number
function SetScenarioPedDensityMultiplierThisFrame(p0, p1) end

--- 
--- This native refers to the field of vision the ped has below them, starting at 0 degrees. The angle value should be negative.  
--- 
--- @param ped Ped
--- @param angle number
function SetPedVisualFieldMinElevationAngle(ped, angle) end


--- @param x number
--- @param y number
--- @param z number
--- @param range number
--- @param p4 number
function SetScenarioPedsSpawnInSphereArea(x, y, z, range, p4) end

--- 
--- It adds the wetness level to the player clothing/outfit. As if player just got out from water surface.  
--- 
--- @param ped Ped
--- @param height number
function SetPedWetnessHeight(ped, height) end


--- @param ped Ped
--- @param p1 number
function SetScriptedAnimSeatOffset(ped, p1) end


--- @param x number
--- @param y number
--- @param z number
--- @param p3 number
--- @param p4 number
function SetPopControlSphereThisFrame(x, y, z, p3, p4) end


--- @param sceneID number
--- @param toggle boolean
function SetSynchronizedSceneLooped(sceneID, toggle) end

--- 
--- Sets the relationship between two groups. This should be called twice (once for each group).  
--- Relationship types:  
--- 0 = Companion  
--- 1 = Respect  
--- 2 = Like  
--- 3 = Neutral  
--- 4 = Dislike  
--- 5 = Hate  
--- 255 = Pedestrians  
--- Example:  
--- PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);  
--- PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);  
--- 
--- @param relationship number
--- @param group1 Hash
--- @param group2 Hash
function SetRelationshipBetweenGroups(relationship, group1, group2) end


--- @param sceneID number
--- @param phase number
function SetSynchronizedScenePhase(sceneID, phase) end


--- @param sceneID number
--- @param x number
--- @param y number
--- @param z number
--- @param roll number
--- @param pitch number
--- @param yaw number
--- @param p7 boolean
function SetSynchronizedSceneOrigin(sceneID, x, y, z, roll, pitch, yaw, p7) end

--- 
--- Sets a value indicating whether scenario peds should be returned by the next call to a command that returns peds. Eg. GET_CLOSEST_PED.  
--- 
--- @param value boolean
function SetScenarioPedsToBeReturnedByNextCommand(value) end


--- @param x number
--- @param y number
--- @param z number
function SetScriptedConversionCoordThisFrame(x, y, z) end


function StopAnyPedModelBeingSuppressed() end

--- 
--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
--- 
--- @param id number
function UnregisterPedheadshot(id) end


--- @param sceneID any
--- @param p1 boolean
function SetSynchronizedSceneOcclusionPortal(sceneID, p1) end

--- 
--- See SET_PED_HEAD_BLEND_DATA().  
--- 
--- @param ped Ped
--- @param shapeMix number
--- @param skinMix number
--- @param thirdMix number
function UpdatePedHeadBlendData(ped, shapeMix, skinMix, thirdMix) end


--- @param sceneID number
--- @param rate number
function SetSynchronizedSceneRate(sceneID, rate) end


--- @param ped Ped
--- @return boolean
function WasPedKilledByTakedown(ped) end


--- @param ped Ped
--- @return boolean
function WasPedKnockedOut(ped) end


--- @param ped Ped
function StopPedWeaponFiringWhenDropped(ped) end


--- @param ped Ped
--- @return boolean
function WasPedKilledByStealth(ped) end

--- 
--- Despite this function's name, it simply returns whether the specified handle is a Ped.  
--- 
--- @param ped Ped
--- @return boolean
function WasPedSkeletonUpdated(ped) end

