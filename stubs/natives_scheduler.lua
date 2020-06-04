Citizen = {}

--- @param threadFunction func
function Citizen.CreateThread(threadFunction) end

--- @param threadFunction func
function CreateThread(threadFunction) end

--- @param msec number
function Citizen.Wait(msec) end

--- @param msec number
function Wait(msec) end

--- @param threadFunction func
--- @param name string
function Citizen.CreateThreadNow(threadFunction, name) end

--- @param threadFunction func
--- @param name string
function CreateThreadNow(threadFunction, name) end

--- @param promise object
function Citizen.Await(promise) end

--- @param promise object
function Await(promise) end

--- @param msec number
--- @param callback func
function Citizen.SetTimeout(msec, callback) end

--- @param msec number
--- @param callback func
function SetTimeout(msec, callback) end

--- @param eventName string
--- @param eventRoutine func
--- @return object
function AddEventHandler(eventName, eventRoutine) end

--- @param eventName string
function RegisterNetEvent(eventName) end

--- @param eventName string
function RegisterServerEvent(eventName) end

--- @param eventName string
function RegisterNetEvent(eventName) end

--- @param eventData object
function RemoveEventHandler(eventData) end

--- @param eventName string
--- @param ... any
function TriggerEvent(eventName, ...) end

--- @param eventName string
--- @param playerId number
--- @param ... any
function TriggerClientEvent(eventName, playerId, ...) end

--- @param eventName string
--- @param playerId number
--- @param bps number
--- @param ... any
function TriggerLatentClientEvent(eventName, playerId, bps, ...) end

--- @param player number
--- @return object
function GetPlayerIdentifiers(player) end

--- @return object
function GetPlayers() end

--- @param url string
--- @param cb func
--- @param method string
--- @param data object
--- @param headers object
function PerformHttpRequest(url, cb, method, data, headers) end

--- @param eventName string
--- @param ... any
function TriggerServerEvent(eventName, ...) end

--- @param eventName string
--- @param bps number
--- @param ... any
function TriggerLatentServerEvent(eventName, bps, ...) end

--- @param type string
--- @param callback func
function RegisterNUICallback(type, callback) end

--- @param message object
function SendNUIMessage(message) end

--- @param x number
--- @param y number
--- @param z number
function vector3(x, y, z) end

--- @param x number
--- @param y number
--- @param z number
function vec3(x, y, z) end

--- @param x number
--- @param y number
function vector2(x, y) end

--- @param x number
--- @param y number
function vec2(x, y) end

--- @param x number
--- @param y number
--- @param z number
--- @param w number
function vector4(x, y, z, w) end

--- @param x number
--- @param y number
--- @param z number
--- @param w number
function vec4(x, y, z, w) end


json = {}

--- @param value any
--- @param state any
function json.encode(value, state) end

--- @param str any
--- @param pos any
--- @param nullval any
--- @param ... any
function json.decode(str, pos, nullval, ...) end

deferred = {}

--- @param value any
function deferred.resolve(value) end

--- @param value any
function deferred.reject(value) end