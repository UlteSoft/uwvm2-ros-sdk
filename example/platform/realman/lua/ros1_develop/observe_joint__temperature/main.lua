--- @file main.lua
--- @brief Observe every original rm_msgs/Joint_Temperature field.
--- @details Genuine Lua runs full field validation and preserves separate close status.
local ros = require("roswasm")
local records = require("realman/lua/ros1_develop/records")
if #arg ~= 1 then return 22 end
local session = ros.session(1)
local owner, primary = session:open(arg[1])
local cleanup, present, wire = 0, false, ""
if owner then
    local ok = pcall(function()
        local frame
        frame, primary = owner:invoke("topic_subscribe", "", 0)
        for attempt = 1, 250 do
            if primary ~= 0 then break end
            frame, primary = owner:invoke("event_poll", "", 68)
            if primary == 0 then wire = frame:data() end
            if primary ~= 11 or attempt == 250 then break end
            primary = uwvm.pause_ms(20)
        end
        if primary == 0 then
            local value = records.Ros1Rm_msgsJoint_Temperature.decode(wire)
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
