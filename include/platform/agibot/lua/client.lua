--- @file client.lua
--- @brief Provide the complete agibot client.lua source contract.
--- @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
--- encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
-- SPDX-License-Identifier: Apache-2.0
--- @brief Complete AimDK observations inside the genuine Lua Wasm interpreter.
--- @details Each synchronous call owns a separate explicitly granted capability,
--- retires it once, then decodes the complete original response. Service calls
--- are never replayed. Returned tables own all fields; uint64 uses decimal text.
--- Lua errors and process termination still require outer Instance cleanup.
local ros = require("roswasm")
local records = require("agibot/lua/records")
local M = {}

local function observe(alias, typename, capacity, topic, timeout_ms)
    if type(alias) ~= "string" or #alias < 1 or #alias > 255 or
       alias:find("\0", 1, true) or not utf8.len(alias) or
       math.type(timeout_ms) ~= "integer" or timeout_ms < 1 or timeout_ms > 30000 then
        return nil, 22, 0
    end
    local session = ros.session(1)
    local owner, code = session:open(alias)
    if not owner then session:close(code); return nil, code, 0 end
    local frame
    if topic then
        local started, clock_error = uwvm.monotonic_ns()
        code = started and 0 or clock_error
        if code == 0 then frame, code = owner:invoke("topic_subscribe") end
        while code == 0 do
            frame, code = owner:invoke("event_poll", "", capacity)
            if code ~= 11 then break end
            local now, clock_error = uwvm.monotonic_ns()
            if not now or now < started then code = clock_error ~= 0 and clock_error or 5; break end
            if now - started >= timeout_ms * 1000000 then code = 110; break end
            code = uwvm.pause_ms(1)
        end
    else
        frame, code = owner:invoke("service_call", string.rep("\0", 8), capacity)
    end
    -- Retire before allocating the decoded response. No decoder can leave an
    -- opened ROS owner live when malformed payload data is rejected.
    local cleanup = owner:close()
    session:close(code)
    if code ~= 0 then return nil, code, cleanup end
    if cleanup ~= 0 then return nil, cleanup, cleanup end
    if not frame or not frame:valid() then return nil, 5, cleanup end
    local value, decode_error = records.decode(typename, frame:data())
    return value, decode_error, cleanup
end

--- @brief Query GetMcAction once under the host's service deadline.
--- @param alias string Exact runtime-granted service capability alias.
--- @return table|nil response Full original GetMcAction_Response.
--- @return integer code ABI/codec status; inspect response.header.code separately.
--- @return integer cleanup Independent capability-close result.
function M.query_mode(alias)
    return observe(alias, "aimdk_msgs/srv/GetMcAction_Response", 156, false, 3000)
end

--- @brief Receive McCommonState before a granted monotonic deadline.
--- @param alias string Exact granted state subscription alias.
--- @param timeout_ms? integer Deadline in milliseconds, 1..30000; default 3000.
--- @return table|nil state Full original state, preserving timestamps and units.
--- @return integer code ABI/codec status; 110 means deadline expiry.
--- @return integer cleanup Independent capability retirement status.
function M.next_motion_state(alias, timeout_ms)
    return observe(alias, "aimdk_msgs/msg/McCommonState", 698, true, timeout_ms or 3000)
end

--- @brief Enumerate X2 Ultra resources without requesting action playback.
--- @param alias string Exact granted GetRobotResources service alias.
--- @return table|nil response Complete original bounded resource response.
--- @return integer code Transport/codec status; vendor code is header.header.code.
--- @return integer cleanup Independent close status; original uint64 stays exact.
function M.list_resources(alias)
    return observe(alias, "aimdk_msgs/srv/GetRobotResources_Response", 10236, false, 3000)
end

return M
