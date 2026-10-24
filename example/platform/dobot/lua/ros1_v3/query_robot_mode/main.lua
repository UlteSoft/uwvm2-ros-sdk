--- @file main.lua
--- @brief Query every original dobot_bringup/RobotMode field.
--- @details Genuine Lua runs full field validation and preserves separate close status.
local ros = require("roswasm")
local records = require("dobot/lua/ros1_v3/records")
if #arg ~= 1 then return 22 end
local session = ros.session(1)
local owner, primary = session:open(arg[1])
local cleanup, present, wire = 0, false, ""
if owner then
    local ok = pcall(function()
        local payload = records.Ros1Dobot_bringupRobotModeRequest.new():encode()
        local frame
        frame, primary = owner:invoke("service_call", payload, 8)
        if primary == 0 then wire = frame:data() end
        if primary == 0 then
            local value = records.Ros1Dobot_bringupRobotModeResponse.decode(wire)
            wire = value:encode()
            present = true
        end
    end)
    if not ok then primary = 22 end
    cleanup = owner:close()
end
local hex = ""
if present then
    hex = wire:gsub(".", function(byte) return string.format("%02x", string.byte(byte)) end)
end
local ok = pcall(function()
    print(string.format('{"primary":%d,"cleanup":%d,"cleanup_present":%s,"response_present":%s,"wire_hex":"%s"}',
        primary, cleanup, tostring(owner ~= nil), tostring(present), hex))
end)
return math.min(primary ~= 0 and primary or cleanup ~= 0 and cleanup or not ok and 5 or 0, 125)
