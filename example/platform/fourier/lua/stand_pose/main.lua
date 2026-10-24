--- @file main.lua
--- @brief Receive the complete original uwvm_fourier_bridge/srv/GetStandPose_Response in genuine Lua 5.4.
--- @details Keep the original full value and canonical bytes. Ordinary codec
--- exceptions still trigger exactly one explicit capability-close attempt.
local ros = require("roswasm")
local wire = require("roswasm/wire")
local records = require("fourier/lua/ros2/aurora_bridge_v1/records")
if #arg ~= 2 then return 22 end
local request = records.Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request.encode(records.Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request.new({sequence = wire.uint64(arg[2])}))
local session = ros.session(1)
local owner, primary = session:open(arg[1])
local cleanup, present, hex = 0, false, ""
local cleanup_present, required_hex, rpc_status = false, nil, nil
if owner then
    local ok = pcall(function()
        if primary == 0 then
            local frame
            for attempt = 1, 1 do
                frame, primary = owner:invoke("service_call", request, 652)
                if frame then required_hex = frame:required() end
                if primary ~= 11 or attempt == 1 then break end
                primary = uwvm.pause_ms(20)
                if primary ~= 0 then break end
            end
            if primary == 0 then
                assert(frame:valid(), "complete successful frame required")
                local bytes = frame:data()
                local value = records.Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.decode(bytes)
                present = true
                rpc_status = string.format("%d", value.status)
                hex = bytes:gsub(".", function(byte) return string.format("%02x", byte:byte()) end)
            end
        end
    end)
    if not ok then primary = 22 end
    cleanup_present = true
    cleanup = owner:close()
end
local required = required_hex and ('"' .. wire.uint64_hex(required_hex) .. '"') or "null"
local rpc = rpc_status and ('"' .. rpc_status .. '"') or "null"
local written = io.write('{"primary":', primary, ',"cleanup":', cleanup,
    ',"cleanup_present":', tostring(cleanup_present), ',"response_present":', tostring(present),
    ',"required_hex":', required, ',"rpc_status_present":', tostring(rpc_status ~= nil),
    ',"rpc_status":', rpc, ',"wire_hex":"', hex, '"}\n')
if not written or not io.flush() then return 5 end
local status = primary ~= 0 and primary or cleanup
if status == 0 and rpc_status ~= nil and rpc_status ~= "0" then status = 5 end
return math.min(125, status)
