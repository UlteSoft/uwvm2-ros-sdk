--- @file native_command.lua
--- @brief Own complete native ROS String/Trigger records, codecs and finite lifetimes.
--- @details The genuine Lua VM executes every application choice. Its reviewed
--- static bridge provides original scalar statuses and independent full-width
--- length slots. No C application, host Lua, callback or hidden retry is used.
local ros = require("roswasm")
local raw = require("roswasm_native")
local M = {}
local ZERO = string.rep("\0", 8)

--- @brief Construct the complete original String value without acquiring authority.
--- @param data string Entire original data; encoding validates strict UTF-8/quota.
--- @return table Independently owned ordinary record.
function M.StringValue(data)
    return { data = data or "" }
end

--- @brief Construct both original Trigger response fields; its request is empty.
--- @param success boolean Original success flag, including false.
--- @param message string Complete original diagnostic, validated during encoding.
--- @return table Whole ordinary response without a native capability.
function M.TriggerResponse(success, message)
    return { success = success == nil and false or success, message = message or "" }
end

--- @brief Require one whole strict Unicode field without NUL or quota overflow.
--- @param value string Original immutable bytes. @param maximum integer Explicit byte quota.
--- @return string Same whole bytes; invalid input raises an ordinary Lua error.
local function text(value, maximum)
    assert(
        type(value) == "string" and #value <= maximum and not value:find("\0", 1, true) and utf8.len(value),
        "complete bounded strict UTF-8 text required"
    )
    return value
end

--- @brief Encode the entire original String field with its exact little-endian length.
--- @param value table Whole StringValue. @return string Owned immutable canonical bytes or Lua error.
function M.encode_string(value)
    assert(type(value) == "table", "whole String record required")
    local data = text(value.data, 252)
    return string.pack("<I4", #data) .. data
end

--- @brief Decode exactly one original String transactionally.
--- @param bytes string Whole canonical input. @return table Entire owned record or Lua error.
function M.decode_string(bytes)
    assert(type(bytes) == "string" and #bytes >= 4 and #bytes <= 256, "whole bounded String bytes required")
    local size = string.unpack("<I4", bytes)
    assert(size <= 252 and size == #bytes - 4, "String length/trailing input refusal")
    return M.StringValue(text(bytes:sub(5), 252))
end

--- @brief Encode both original Trigger fields, retaining explicit service refusal.
--- @param value table Whole TriggerResponse. @return string Complete owned bytes or Lua error.
function M.encode_trigger(value)
    assert(type(value) == "table" and type(value.success) == "boolean", "whole Trigger boolean required")
    local message = text(value.message, 251)
    return (value.success and "\1" or "\0") .. string.pack("<I4", #message) .. message
end

--- @brief Decode both original Trigger fields without partial values or truthiness coercion.
--- @param bytes string Whole canonical response. @return table Entire owned response or Lua error.
function M.decode_trigger(bytes)
    assert(
        type(bytes) == "string" and #bytes >= 5 and #bytes <= 256 and bytes:byte(1) <= 1,
        "whole canonical Trigger response required"
    )
    local size = string.unpack("<I4", bytes, 2)
    assert(size <= 251 and size == #bytes - 5, "Trigger length/trailing input refusal")
    return M.TriggerResponse(bytes:byte(1) == 1, text(bytes:sub(6), 251))
end

--- @brief Render every unsigned u64 bit in decimal without passing through Lua floats.
--- @param word string Exactly eight immutable little-endian bytes.
--- @return string Exact decimal representation, including UINT64_MAX.
local function decimal_word(word)
    assert(type(word) == "string" and #word == 8, "complete original u64 slot required")
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
    local value = ""
    for index = #digits, 1, -1 do
        value = value .. tostring(digits[index])
    end
    return value
end

--- @brief Retain every original canonical byte as safe ASCII hex.
--- @param bytes string Complete immutable bytes. @return string Lossless original encoding.
local function hex(bytes)
    return (bytes:gsub(".", function(byte)
        return string.format("%02x", byte:byte())
    end))
end

--- @brief Execute one finite original operation and retire an acquired owner once.
--- @param operation integer Exactly 1 publish, 2 subscribe, or 3 service.call.
--- @param capability_alias string Existing exact policy alias, synchronously borrowed.
--- @return table Whole fields, bytes and independent primary/RPC/length/cleanup facts.
--- @details Publication schedules two samples one discovery second apart. Only
--- idle 11 permits another of at most 250 polls; admitted calls never replay.
--- Ordinary exceptions are caught before one cleanup attempt. Fatal VM traps,
--- unrecoverable allocation failure and process termination require outer cleanup.
function M.run(operation, capability_alias)
    local result = {
        primary = 0,
        cleanup = 0,
        cleanup_present = false,
        rpc_status = 0,
        rpc_present = false,
        response_present = false,
        length = "18446744073709551615",
        wire_hex = "",
        value = nil,
    }
    if
        math.type(operation) ~= "integer"
        or operation < 1
        or operation > 3
        or type(capability_alias) ~= "string"
        or #capability_alias == 0
        or #capability_alias > 255
        or capability_alias:find("\0", 1, true)
        or not utf8.len(capability_alias)
    then
        result.primary = 22
        return result
    end
    local publication = operation == 1 and M.encode_string(M.StringValue("hello native ROS")) or ""
    if operation == 1 then
        result.wire_hex = hex(publication)
    end
    local version = raw.prepare("abi_version", ZERO, "", 0, ZERO, ZERO)
    result.primary = raw.invoke(version)
    if result.primary ~= 0 then
        return result
    end
    if not version:valid() or version:value() ~= string.pack("<I8", 1) then
        result.primary = 95
        return result
    end
    local session = ros.session(1)
    local owner
    owner, result.primary = session:open(capability_alias)
    if not owner then
        return result
    end
    local executed, failure = pcall(function()
        if operation == 1 then
            result.rpc_present = true
            local frame
            frame, result.rpc_status = owner:invoke("topic_publish", publication, 0)
            result.primary = result.rpc_status
            if result.primary == 0 then
                result.primary = uwvm.pause_ms(1000)
            end
            if result.primary == 0 then
                frame, result.rpc_status = owner:invoke("topic_publish", publication, 0)
                result.primary = result.rpc_status
            end
            if result.primary == 0 then
                result.primary = uwvm.pause_ms(200)
            end
        else
            if operation == 2 then
                local frame
                frame, result.primary = owner:invoke("topic_subscribe", "", 0)
            end
            if result.primary == 0 then
                local frame
                for attempt = 1, operation == 2 and 250 or 1 do
                    frame, result.rpc_status = owner:invoke(operation == 2 and "event_poll" or "service_call", "", 256)
                    result.rpc_present, result.primary = true, result.rpc_status
                    result.length = decimal_word(frame:length())
                    if operation ~= 2 or result.rpc_status ~= 11 or attempt == 250 then
                        break
                    end
                    result.primary = uwvm.pause_ms(20)
                    if result.primary ~= 0 then
                        break
                    end
                end
                if result.primary == 0 then
                    if not frame:valid() then
                        result.primary = 22
                    else
                        local bytes = frame:data()
                        local decoded, value = pcall(operation == 2 and M.decode_string or M.decode_trigger, bytes)
                        if not decoded then
                            result.primary = 22
                        else
                            local encoded = (operation == 2 and M.encode_string or M.encode_trigger)(value)
                            result.value, result.response_present, result.wire_hex = value, true, hex(encoded)
                            if operation == 3 and not value.success then
                                result.primary = 5
                            end
                        end
                    end
                end
            end
        end
    end)
    if not executed then
        result.error = failure
        if result.primary == 0 then
            result.primary = 5
        end
    end
    result.cleanup_present = true
    local closed, code = pcall(owner.close, owner)
    result.cleanup = closed and code or 5
    if not closed then
        result.cleanup_error = code
    end
    return result
end

--- @brief Emit complete safe-ASCII diagnostics after explicit owner cleanup.
--- @param result table Whole owned facts. @return integer First primary, cleanup or stdout error, clamped for exit.
--- @details Canonical hex preserves all original Unicode field bytes and quoted
--- decimal length preserves all u64 bits. Output failure never changes primary.
function M.report(result)
    local code = result.primary ~= 0 and result.primary or result.cleanup
    local text = string.format(
        '{"primary":%d,"cleanup":%d,"cleanup_present":%s,"rpc_status":%d,"rpc_present":%s,"response_present":%s,"length":"%s","wire_hex":"%s"}\n',
        result.primary,
        result.cleanup,
        tostring(result.cleanup_present),
        result.rpc_status,
        tostring(result.rpc_present),
        tostring(result.response_present),
        result.length,
        result.wire_hex
    )
    local written = io.write(text)
    if not written and code == 0 then
        code = 5
    end
    local flushed = io.flush()
    if not flushed and code == 0 then
        code = 5
    end
    return math.min(code, 125)
end

return M
