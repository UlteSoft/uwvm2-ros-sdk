--- @file observation.lua
--- @brief Own complete original schema-bound platform records and independent native facts.
--- @details Genuine Lua owns every choice. Idle 11 alone permits another finite
--- poll. Ordinary exceptions trigger one explicit close; fatal traps require outer retirement.
local ros = require("roswasm")
local raw = require("roswasm_native")
local M = {}

--- @brief Create local empty facts without native effects. @return table Owned result.
function M.empty()
    return {
        primary = 0,
        cleanup = 0,
        cleanup_present = 0,
        rpc_status = 0,
        rpc_present = 0,
        response_present = 0,
        polls = 0,
        required_present = 0,
        required = "0",
        length = "18446744073709551615",
        wire_hex = "",
        value = nil,
    }
end

--- @brief Format every unsigned u64 bit without Lua floating conversion.
--- @param word string Exactly eight original little-endian bytes. @return string Exact decimal.
local function decimal(word)
    assert(type(word) == "string" and #word == 8)
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
    local text = ""
    for index = #digits, 1, -1 do
        text = text .. tostring(digits[index])
    end
    return text
end

--- @brief Receive a whole exact-type native record with one explicit owner.
--- @param alias string Existing strict UTF-8 policy alias, borrowed synchronously.
--- @param codec table Complete original record constructor/strict codec.
--- @param attempts integer Poll budget 1..250. @param pause function Caller idle wait.
--- @return table Whole owned value and original RPC/length/cleanup facts.
function M.receive(alias, codec, attempts, pause)
    local result = M.empty()
    if
        type(alias) ~= "string"
        or #alias == 0
        or #alias > 255
        or alias:find("\0", 1, true)
        or not utf8.len(alias)
        or math.type(attempts) ~= "integer"
        or attempts < 1
        or attempts > 250
        or (attempts > 1 and type(pause) ~= "function")
    then
        result.primary = 22
        return result
    end
    local zero = string.rep("\0", 8)
    local version = raw.prepare("abi_version", zero, "", 0, zero, zero)
    result.primary = raw.invoke(version)
    if result.primary ~= 0 then
        return result
    end
    if not version:valid() or version:value() ~= string.pack("<I8", 1) then
        result.primary = 38
        return result
    end
    local session = ros.session(1)
    local owner
    owner, result.primary = session:open(alias)
    if not owner then
        return result
    end
    local executed = pcall(function()
        local frame
        frame, result.primary = owner:invoke("topic_subscribe", "", 0)
        if result.primary == 0 then
            for attempt = 1, attempts do
                frame, result.rpc_status = owner:invoke("event_poll", "", codec.MAX_WIRE_BYTES)
                result.polls = result.polls + 1
                result.rpc_present, result.primary = 1, result.rpc_status
                local length_slot = frame:length()
                result.length = decimal(length_slot)
                result.required_present = 0
                result.required = "0"
                -- Legacy capacity errors may leave this original slot unwritten.
                -- Presence follows its bytes, independently of the RPC status.
                if length_slot ~= string.rep("\255", 8) then
                    result.required_present, result.required = 1, result.length
                end
                if result.rpc_status ~= 11 or attempt == attempts then
                    break
                end
                local code = pause()
                result.primary = math.type(code) == "integer" and code >= 0 and code <= 4294967295 and code or 22
                if result.primary ~= 0 then
                    break
                end
            end
            if result.primary == 0 then
                assert(frame:valid(), "invalid successful original frame")
                local bytes = frame:data()
                local decoded, value = pcall(codec.decode, bytes)
                if not decoded then
                    result.primary = 22
                else
                    local encoded = codec.encode(value)
                    assert(encoded == bytes, "noncanonical complete record")
                    result.value, result.response_present = value, 1
                    result.wire_hex = encoded:gsub(".", function(byte)
                        return string.format("%02x", byte:byte())
                    end)
                end
            end
        end
    end)
    if not executed and result.primary == 0 then
        result.primary = 5
    end
    result.cleanup_present = 1
    local closed, code = pcall(owner.close, owner)
    result.cleanup = closed and code or 5
    return result
end

--- @brief Emit whole canonical hex after retirement. @param result table Complete outcome.
--- @return integer Primary, cleanup or stdout failure clamped for process exit.
function M.output(result)
    local fields = {}
    for key, value in pairs(result) do
        if key ~= "value" then
            fields[#fields + 1] = '"'
                .. key
                .. '":'
                .. (type(value) == "string" and ('"' .. value .. '"') or tostring(value))
        end
    end
    local status = result.primary ~= 0 and result.primary or result.cleanup
    local written = io.write("{" .. table.concat(fields, ",") .. "}\n")
    if not written or not io.flush() then
        if status == 0 then
            status = 5
        end
    end
    return math.min(status, 125)
end
return M
