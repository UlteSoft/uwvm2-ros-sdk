--- @file main.lua
--- @brief Read the complete original abb_egm_msgs/EGMState value in genuine Lua.
--- @details Exact typed decoding and once-only cleanup occur inside the guest.
local ros = require("roswasm")
local records = require("abb/lua/ros1/records")
local codec = records.Ros1Abb_egm_msgsEGMState
local result = {primary=0, cleanup=0, cleanup_present=0, response_present=0, wire_hex=""}
if #arg ~= 1 then return 22 end
local owner
owner, result.primary = ros.session(1):open(arg[1])
if owner then
    local ok = pcall(function()
        local ignored
        ignored, result.primary = owner:invoke("topic_subscribe", "", 0)
        if result.primary == 0 then
            for attempt=1,250 do
                local frame
                frame, result.primary = owner:invoke("event_poll", "", codec.MAX_WIRE_BYTES)
                if result.primary ~= 11 or attempt == 250 then
                    if result.primary == 0 then
                        local wire = codec.encode(codec.decode(frame:data()))
                        if wire ~= frame:data() then error("noncanonical whole value") end
                        result.response_present = 1
                        result.wire_hex = wire:gsub(".", function(c) return string.format("%02x", c:byte()) end)
                    end
                    break
                end
                result.primary = uwvm.pause_ms(20)
                if result.primary ~= 0 then break end
            end
        end
    end)
    if not ok then result.primary = 22 end
    result.cleanup_present = 1
    result.cleanup = owner:close()
end
print(string.format('{"primary":%d,"cleanup":%d,"cleanup_present":%d,"response_present":%d,"wire_hex":"%s"}', result.primary, result.cleanup, result.cleanup_present, result.response_present, result.wire_hex))
return math.min(result.primary ~= 0 and result.primary or result.cleanup, 125)
