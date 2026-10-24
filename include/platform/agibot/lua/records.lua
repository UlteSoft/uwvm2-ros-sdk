--- @file records.lua
--- @brief Provide the complete agibot records.lua source contract.
--- @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
--- encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
-- SPDX-License-Identifier: Apache-2.0
--- @brief Decode and render complete original AimDK observation records.
--- @details This pure Lua codec allocates owned tables/strings and performs no
--- I/O. Original fields are retained in declaration order. Signed integers are
--- exact Lua integers; uint64 is an exact decimal string, including bit 63.
--- Explicit bounds reject oversized data; truncated/trailing/non-finite/invalid
--- UTF-8 input never becomes a successful value. No native identity is inferred.
local schema = require("agibot/shared/schema/aimdk_v1_1_0_main")
local M = {}
local formats = {bool = "<I1", byte = "<I1", char = "<I1", int8 = "<i1", uint8 = "<I1",
    int16 = "<i2", uint16 = "<I2", int32 = "<i4", uint32 = "<I4", int64 = "<i8",
    float32 = "<f", float64 = "<d"}

--- @brief Convert two uint32 words to unsigned decimal without rounding.
local function unsigned64(low, high)
    local digits = {}
    repeat
        local remainder = high % 10
        high = high // 10
        local next_word = remainder * 4294967296 + low
        digits[#digits + 1] = string.char(48 + next_word % 10)
        low = next_word // 10
    until high == 0 and low == 0
    local result = {}
    for index = #digits, 1, -1 do result[#result + 1] = digits[index] end
    return table.concat(result)
end

--- @brief Decode one complete bounded value; no partial value escapes on error.
--- @param typename string Original complete message or service-response name.
--- @param bytes string Owned/borrowed immutable canonical input, at most 32768 bytes.
--- @return table|nil value Owned original-field table only on success.
--- @return integer code Zero, 22 invalid/truncated/trailing, or 90 capacity.
function M.decode(typename, bytes)
    if type(bytes) ~= "string" or #bytes > 32768 or not schema[typename] then return nil, 22 end
    local offset = 1
    local function take(count)
        if count < 0 or count > #bytes - offset + 1 then error(22, 0) end
        local start = offset
        offset = offset + count
        return start
    end
    local read
    local function scalar(typ, bound)
        if typ == "string" then
            local size = string.unpack("<I4", bytes, take(4))
            if size > bound then error(90, 0) end
            local start = take(size)
            local value = bytes:sub(start, start + size - 1)
            if value:find("\0", 1, true) or not utf8.len(value) then error(22, 0) end
            return value
        elseif typ == "uint64" then
            local start = take(8)
            return unsigned64(string.unpack("<I4", bytes, start), string.unpack("<I4", bytes, start + 4))
        elseif formats[typ] then
            local format = formats[typ]
            local value = string.unpack(format, bytes, take(string.packsize(format)))
            if typ == "bool" then
                if value > 1 then error(22, 0) end
                return value == 1
            end
            if value ~= value or value == math.huge or value == -math.huge then error(22, 0) end
            return value
        end
        return read(typ)
    end
    read = function(typ)
        local definition = schema[typ]
        if not definition then error(22, 0) end
        local value = {}
        for _, field in ipairs(definition.fields) do
            if field.sequence or field.array then
                local count = field.array or string.unpack("<I4", bytes, take(4))
                if field.sequence and count > field.sequence then error(90, 0) end
                local elements = {}
                for index = 1, count do elements[index] = scalar(field.type, field.string) end
                value[field.name] = elements
            else
                value[field.name] = scalar(field.type, field.string)
            end
        end
        return value
    end
    local accepted, value = pcall(read, typename)
    if not accepted then return nil, type(value) == "number" and value or 22 end
    if offset ~= #bytes + 1 then return nil, 22 end
    return value, 0
end

local function quote(value)
    return '"' .. value:gsub('[%z\1-\31\\"]', function(character)
        return string.format("\\u%04x", character:byte())
    end) .. '"'
end

--- @brief Render a decoded original record with unambiguous array/object shapes.
--- @param typename string Matching original type supplied to decode().
--- @param value table Complete, unmodified successful decoded value.
--- @return string json Full original-field JSON; uint64 remains a decimal string.
function M.json(typename, value)
    local render
    local function scalar(typ, field)
        if typ == "string" or typ == "uint64" then return quote(field) end
        if typ == "bool" then return field and "true" or "false" end
        if typ == "float32" or typ == "float64" then return string.format("%.17g", field) end
        if formats[typ] then return tostring(field) end
        return render(typ, field)
    end
    render = function(typ, object)
        local fields = {}
        for _, field in ipairs(schema[typ].fields) do
            local encoded
            if field.sequence or field.array then
                local elements = {}
                for _, element in ipairs(object[field.name]) do elements[#elements + 1] = scalar(field.type, element) end
                encoded = "[" .. table.concat(elements, ",") .. "]"
            else
                encoded = scalar(field.type, object[field.name])
            end
            fields[#fields + 1] = quote(field.name) .. ":" .. encoded
        end
        return "{" .. table.concat(fields, ",") .. "}"
    end
    return render(typename, value)
end

return M
