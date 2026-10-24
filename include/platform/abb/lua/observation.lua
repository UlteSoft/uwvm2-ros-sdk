--- @file observation.lua
--- @brief Read complete ABB responses inside the actual Lua WebAssembly interpreter.
--- @details Every acquired capability is explicitly closed once. The original
--- transport status remains separate from decoding, controller and cleanup
--- results. Only idle topic polls may be repeated, on the same subscription.
local ros = require("roswasm")
local records = require("abb/lua/records")
local M = {}

--- @brief Initialize an owned observation without opening a ROS resource.
--- @return table Independent numeric facts and an initially absent response.
local function outcome()
    return {
        primary = 0,
        cleanup = 0,
        cleanup_present = 0,
        response_present = 0,
        rpc_present = 0,
        rpc_status = 0,
        required_present = 0,
        required = "0",
        encoding = 0,
        wire_hex = "",
        value = nil,
    }
end

--- @brief Convert an original unsigned 64-bit little-endian word to decimal.
--- @param word string Exactly eight bytes; never converted through a Lua float.
--- @return string Exact decimal representation, including values above INT64_MAX.
local function decimal_word(word)
    local digits = { 0 }
    for index = 8, 1, -1 do
        local carry = word:byte(index)
        for place = 1, #digits do
            local value = digits[place] * 256 + carry
            digits[place], carry = value % 10, value // 10
        end
        while carry > 0 do
            digits[#digits + 1], carry = carry % 10, carry // 10
        end
    end
    local result = ""
    for index = #digits, 1, -1 do
        result = result .. tostring(digits[index])
    end
    return result
end

--- @brief Perform one service call or a finite sequence of topic polls.
--- @param alias string Existing type-specific host capability alias.
--- @param request string Complete validated request; empty for subscriptions.
--- @param codec table Complete original ABB response codec and finite bounds.
--- @param topic boolean True subscribes and waits; false calls the service once.
--- @param accepted function Pure predicate over the complete decoded response.
--- @return table Owned response and independent transport/primary/cleanup facts.
--- @details Ordinary decoder exceptions are retained as status 22 after close.
--- The twenty-millisecond pause uses WASI monotonic clock events. There are at
--- most 250 polls, and no service retry after refusal, timeout or capacity error.
local function receive(alias, request, codec, topic, accepted)
    local result = outcome()
    if type(alias) ~= "string" or #alias == 0 or #alias > 255 or alias:find("\0", 1, true) or not utf8.len(alias) then
        result.primary = 22
        return result
    end
    local session = ros.session(1)
    local owner, code = session:open(alias)
    result.primary = code
    if not owner then
        return result
    end
    local frame
    if topic then
        frame, result.primary = owner:invoke("topic_subscribe", "", 0)
    end
    if result.primary == 0 then
        for attempt = 1, topic and 250 or 1 do
            frame, result.rpc_status =
                owner:invoke(topic and "event_poll" or "service_call", request, codec.MAX_WIRE_BYTES)
            result.rpc_present = 1
            if result.rpc_status ~= 11 or not topic or attempt == 250 then
                break
            end
            result.primary = uwvm.pause_ms(20)
            if result.primary ~= 0 then
                break
            end
        end
        if result.primary == 0 then
            result.primary = result.rpc_status
        end
        if frame then
            local required = frame:required()
            if required then
                result.required_present, result.required = 1, decimal_word(required)
            end
        end
        if result.rpc_status == 0 then
            local bytes = frame:data()
            result.required_present, result.required = 1, tostring(#bytes)
            local ok, value = pcall(codec.decode, bytes)
            if not ok then
                result.primary = 22
            else
                result.value, result.response_present = value, 1
                result.wire_hex = bytes:gsub(".", function(byte)
                    return string.format("%02x", byte:byte())
                end)
                if not accepted(value) then
                    result.primary = 5
                end
            end
        end
    end
    result.cleanup_present, result.cleanup = 1, owner:close()
    return result
end

--- @brief Read the complete speed ratio without changing the controller override.
--- @param alias string Externally granted GetSpeedRatio service alias.
--- @return table Whole value, including result_code and diagnostic message.
--- @details Success requires RC_SUCCESS=1 and a percentage no greater than 100.
function M.read_speed(alias)
    return receive(alias, "", records.Ros2Abb_robot_msgsSrvGetSpeedRatio_Response, false, function(value)
        return value.result_code == 1 and value.speed_ratio <= 100
    end)
end

--- @brief Read one configured IO signal without setting its value.
--- @param alias string Externally granted GetIOSignal service alias.
--- @param signal string Nonempty strict UTF-8 signal name within 512 bytes.
--- @return table Complete value and independent operation facts.
--- @details Input encoding and validation finish before capability acquisition.
function M.read_io(alias, signal)
    local codec = records.Ros2Abb_robot_msgsSrvGetIOSignal_Request
    if type(signal) ~= "string" or #signal == 0 then
        local result = outcome()
        result.primary = 22
        return result
    end
    local ok, request = pcall(function()
        return codec.encode(codec.new({ signal = signal }))
    end)
    if not ok then
        local result = outcome()
        result.primary = 22
        return result
    end
    return receive(alias, request, records.Ros2Abb_robot_msgsSrvGetIOSignal_Response, false, function(value)
        return value.result_code == 1
    end)
end

--- @brief Retain one subscription until a complete SystemState or finite expiry.
--- @param alias string Existing SystemState subscription capability alias.
--- @return table Whole header, flags, task states and mechanical-unit states.
--- @details Exhaustion retains idle 11. No synthetic default state is returned.
function M.system_state(alias)
    return receive(alias, "", records.Ros2Abb_robot_msgsMsgSystemState, true, function()
        return true
    end)
end

--- @brief Emit complete observation JSON after the capability has been closed.
--- @param result table Owned outcome produced by one observation function.
--- @return integer Original primary/cleanup status, clamped to 125.
--- @details Hex output preserves every canonical response byte. A stdout error
--- becomes status 5 only when no earlier operation or cleanup error exists.
function M.output(result)
    local status = result.primary ~= 0 and result.primary or result.cleanup
    local line = "{"
    for _, name in ipairs({
        "primary",
        "cleanup",
        "cleanup_present",
        "response_present",
        "rpc_present",
        "rpc_status",
        "required_present",
        "required",
        "encoding",
    }) do
        line = line .. '"' .. name .. '":' .. tostring(result[name]) .. ","
    end
    local ok = io.write(line .. '"wire_hex":"' .. result.wire_hex .. '"}\n')
    if not ok and status == 0 then
        status = 5
    end
    return math.min(status, 125)
end

return M
