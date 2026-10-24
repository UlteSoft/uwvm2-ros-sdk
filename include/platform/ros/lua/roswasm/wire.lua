--- @brief Encode complete bounded canonical ROS values in Lua5.4.
--- @details Requires actual signed64-bit lua_Integer and IEEE Lua numbers.
--- All operations are synchronous, local and permission-free; this module
--- imports no native ROS module, opens no resources and installs no finalizer.
--- Strings contain canonical little-endian wire bytes; integers never pass
--- through floating point. Mutating a record concurrently/reentrantly during
--- encode/decode is unsupported; the module starts no thread or callback.
--- @see M.records
local M = {}
assert(_VERSION == "Lua 5.4" and string.packsize("j") == 8, "Lua 5.4 and an actual 64-bit lua_Integer are required")
local scalar = {
    bool = { "<I1", 1 },
    uint8 = { "<I1", 1 },
    int8 = { "<i1", 1 },
    uint16 = { "<I2", 2 },
    int16 = { "<i2", 2 },
    uint32 = { "<I4", 4 },
    int32 = { "<i4", 4 },
    int64 = { "<i8", 8 },
    float32 = { "<f", 4 },
    float64 = { "<d", 8 },
    uint64 = { false, 8 },
}
local function integer(value, minimum, maximum)
    assert(
        math.type(value) == "integer" and value >= minimum and value <= maximum,
        "exact bounded Lua integer required"
    )
    return value
end
local function finite(value)
    assert(
        type(value) == "number" and value == value and value ~= math.huge and value ~= -math.huge,
        "finite float required"
    )
    return value
end
--- @brief Convert sixteen hexadecimal digits into an exact uint64 byte value.
--- @details Accepts upper/lowercase ASCII hex without a prefix; leading zeros
--- are significant. uint64 is represented by eight LE bytes, including values
--- above signed INT64_MAX. Malformed input raises a Lua assertion. No numeric
--- conversion, I/O, resource grant or persistent mutation occurs.
--- @param hex string [in] Exactly16 hexadecimal characters, unsigned and big-endian.
--- @return string bytes New immutable eight-byte little-endian value.
--- @see M.uint64_hex
function M.uint64(hex)
    assert(
        type(hex) == "string" and #hex == 16 and not hex:find("[^0-9a-fA-F]"),
        "exact sixteen-digit unsigned hexadecimal value required"
    )
    local out = {}
    for i = 15, 1, -2 do
        out[#out + 1] = string.char(tonumber(hex:sub(i, i + 1), 16))
    end
    return table.concat(out)
end
--- @brief Format an exact uint64 byte value as sixteen lowercase hex digits.
--- @details Reverses the eight LE bytes without converting through a Lua number.
--- It preserves every bit and leading zero. A nonstring or wrong extent raises
--- a Lua assertion. The result is independent of the borrowed input's lifetime.
--- @param bytes string [in] Exactly eight immutable little-endian bytes.
--- @return string hex New16-character big-endian hex text without a prefix.
--- @see M.uint64
function M.uint64_hex(bytes)
    assert(type(bytes) == "string" and #bytes == 8, "exact uint64 bytes required")
    local out = {}
    for i = 8, 1, -1 do
        out[#out + 1] = string.format("%02x", bytes:byte(i))
    end
    return table.concat(out)
end
local function u64(bytes)
    assert(type(bytes) == "string" and #bytes == 8, "uint64 requires eight LE bytes")
    return bytes
end
local function array_length(value, shape, count)
    assert(type(value) == "table" and getmetatable(value) == nil, "plain complete array required")
    local length = rawlen(value)
    assert(
        (shape == "array" and length == count) or (shape == "sequence" and length <= count),
        "fixed/sequence element bound"
    )
    local keys = 0
    for key in pairs(value) do
        integer(key, 1, length)
        keys = keys + 1
    end
    assert(keys == length, "contiguous array without extra fields required")
    for i = 1, length do
        assert(rawget(value, i) ~= nil, "array hole")
    end
    return length
end
local function semantics(schema, value)
    if schema.semantics == "normalized-time" or schema.semantics == "normalized-duration" then
        integer(value[schema.ros_version == 2 and "nanosec" or "nsec"], 0, 999999999)
    elseif schema.semantics == "joint-state-optional-equal-length-arrays" then
        local length = 0
        for _, name in ipairs({ "name", "position", "velocity", "effort" }) do
            local n = #value[name]
            if n ~= 0 then
                assert(length == 0 or length == n, "nonempty JointState arrays must match")
                length = n
            end
        end
    else
        assert(schema.semantics == "", "unknown complete-value semantic rule")
    end
end
local function text(value, bound, raw)
    assert(type(value) == "string" and #value <= bound, "bounded string bytes required")
    if not raw then
        assert(not value:find("\0", 1, true) and utf8.len(value), "strict bounded UTF-8 without NUL required")
    end
    return value
end
local function writer(maximum)
    return { chunks = {}, count = 0, maximum = maximum }
end
local function append(w, bytes)
    assert(#bytes <= w.maximum - w.count, "canonical output byte bound")
    w.chunks[#w.chunks + 1] = bytes
    w.count = w.count + #bytes
end
local function take(r, count)
    integer(count, 0, #r.bytes - r.position + 1)
    local result = r.bytes:sub(r.position, r.position + count - 1)
    r.position = r.position + count
    return result
end
local function read_count(r, maximum, minimum)
    local count = string.unpack("<I4", take(r, 4))
    assert(
        count <= maximum and (minimum == 0 or count <= (#r.bytes - r.position + 1) // minimum),
        "canonical sequence count/remaining extent"
    )
    return count
end

--- @brief Materialize complete value classes from a generated bounded schema.
--- @details This is the records.py emitter's synchronous local factory, not a
--- general untrusted-schema parser. Supply the complete admitted IR in dependency
--- order, with unique symbols, resolved wire bounds0..32768 bytes, exact field
--- shapes/defaults/constants and supported semantic rules. Each returned class
--- supplies new/encode/decode and readonly-by-contract ROS_VERSION/NATIVE_TYPE/
--- NATIVE_IDENTITY/CODEC_IDENTITY/MIN_WIRE_BYTES/MAX_WIRE_BYTES metadata plus native
--- constants. Missing native identity remains nil; no registry or grant is made.
--- The classes capture schema tables by reference: keep them private and immutable.
--- Invalid schema/value domains raise Lua errors; the factory performs no I/O.
--- @param schemas table[] [in] Trusted generated complete schemas, borrowed for
--- the lifetime of the returned classes; nested records must precede users.
--- @return table classes Symbol-to-class map owned by the caller.
--- @return table by_name Second map keyed by "ROS_VERSION:NATIVE_TYPE", sharing
--- those same class objects. Do not mutate class metadata or dispatch methods.
--- @see class.encode
function M.records(schemas)
    local classes, by_name = {}, {}
    for _, schema in ipairs(schemas) do
        assert(type(schema.symbol) == "string" and not classes[schema.symbol], "unique complete record symbol required")
        assert(
            schema.minimum >= 0 and schema.maximum <= 32768 and schema.minimum <= schema.maximum,
            "resolved complete wire bounds required"
        )
        local class = {
            ROS_VERSION = schema.ros_version,
            NATIVE_TYPE = schema.native_type,
            NATIVE_IDENTITY = schema.native_identity,
            CODEC_IDENTITY = schema.codec_identity,
            MIN_WIRE_BYTES = schema.minimum,
            MAX_WIRE_BYTES = schema.maximum,
        }
        local fields = {}
        for _, field in ipairs(schema.fields) do
            assert(not fields[field.name], "duplicate native field")
            fields[field.name] = true
        end
        for name, value in pairs(schema.constants) do
            assert(class[name] == nil and not fields[name], "constant namespace collision")
            class[name] = value
        end
        local function default(field)
            if field.default ~= nil then
                return field.default
            end
            if field.type == "bool" then
                return false
            end
            if field.type == "string" then
                return ""
            end
            if field.type == "uint64" then
                return string.rep("\0", 8)
            end
            if scalar[field.type] then
                return 0
            end
            assert(classes[field.type], "record dependencies must precede their users")
            return classes[field.type].new()
        end
        --- @brief Construct one complete value using independent native defaults.
        --- @details Fixed-array elements and nested defaults are fresh per instance;
        --- sequences begin empty, uint64 uses zero bytes, and declared scalar defaults
        --- are retained exactly. Optional initializers are shallow: supplied nested
        --- objects/arrays stay shared with the caller. Unknown initializer keys raise;
        --- full scalar/count/record semantics are checked later by encode(). No I/O.
        --- @param values? table [in] Plain optional native-field initializer.
        --- @return table value New value whose exact metatable is this record class.
        --- @see class.encode
        function class.new(values)
            local result = {}
            for _, field in ipairs(schema.fields) do
                if field.array ~= "" then
                    result[field.name] = {}
                    if field.array == "array" then
                        for i = 1, field.count do
                            result[field.name][i] = default(field)
                        end
                    end
                else
                    result[field.name] = default(field)
                end
            end
            if values ~= nil then
                assert(type(values) == "table" and getmetatable(values) == nil, "plain field initializer required")
                for key, value in pairs(values) do
                    assert(fields[key], "unknown native field")
                    result[key] = value
                end
            end
            return setmetatable(result, class)
        end
        class.__index = class
        local function write_one(w, field, value)
            if field.type == "bool" then
                assert(type(value) == "boolean", "exact bool required")
                append(w, string.char(value and 1 or 0))
            elseif field.type == "uint64" then
                append(w, u64(value))
            elseif field.type == "string" then
                local bytes = text(value, field.string_bound, field.raw)
                append(w, string.pack("<I4", #bytes))
                append(w, bytes)
            elseif scalar[field.type] then
                local spec = scalar[field.type]
                if field.type == "float32" or field.type == "float64" then
                    finite(value)
                    local bytes = string.pack(spec[1], value)
                    finite((string.unpack(spec[1], bytes)))
                    append(w, bytes)
                else
                    assert(math.type(value) == "integer", "exact width integer required")
                    if field.type == "uint8" then
                        integer(value, 0, 255)
                    elseif field.type == "uint16" then
                        integer(value, 0, 65535)
                    elseif field.type == "uint32" then
                        integer(value, 0, 4294967295)
                    end
                    append(w, string.pack(spec[1], value))
                end
            else
                assert(classes[field.type], "unknown nested canonical record")
                append(w, classes[field.type].encode(value))
            end
        end
        --- @brief Encode a complete instance into exactly one canonical byte string.
        --- @details Requires this exact class/metatable and all declared fields;
        --- extra keys, sparse/extra-key arrays, wrong fixed/sequence extents, integer
        --- width violations, noncanonical booleans, malformed bounded UTF-8/NUL,
        --- nonfinite floats, float32 overflow and complete record semantic violations
        --- raise Lua errors. Raw-byte strings retain their admitted domain. All nested
        --- fields participate; there is no native projection or hidden resource effect.
        --- @param value table [in] Complete instance borrowed synchronously and not mutated.
        --- @return string bytes New immutable LE encoding within the exact class bounds.
        --- @see class.decode
        function class.encode(value)
            assert(type(value) == "table" and getmetatable(value) == class, "exact complete record class required")
            for key in pairs(value) do
                assert(fields[key], "unknown native field")
            end
            local w = writer(schema.maximum)
            for _, field in ipairs(schema.fields) do
                local part = rawget(value, field.name)
                if field.array ~= "" then
                    local count = array_length(part, field.array, field.count)
                    if field.array == "sequence" then
                        append(w, string.pack("<I4", count))
                    end
                    for i = 1, count do
                        write_one(w, field, part[i])
                    end
                else
                    write_one(w, field, part)
                end
            end
            semantics(schema, value)
            assert(w.count >= schema.minimum, "complete minimum wire extent")
            return table.concat(w.chunks)
        end
        local function read_one(r, field)
            if field.type == "bool" then
                local value = take(r, 1):byte()
                assert(value <= 1, "canonical bool0/1 required")
                return value == 1
            elseif field.type == "uint64" then
                return take(r, 8)
            elseif field.type == "string" then
                return text(take(r, read_count(r, field.string_bound, 1)), field.string_bound, field.raw)
            elseif scalar[field.type] then
                local spec = scalar[field.type]
                local value = string.unpack(spec[1], take(r, spec[2]))
                if field.type == "float32" or field.type == "float64" then
                    finite(value)
                end
                return value
            else
                return classes[field.type]._read(r)
            end
        end
        --- @brief Decode one nested record from the internal shared canonical cursor.
        --- @details Internal implementation detail exposed only for nested class
        --- dispatch. Advances the cursor, allocates a fresh complete value and checks
        --- this record's bounds/semantics. It does not enforce end-of-input because
        --- its caller may have following fields; external consumers must use decode().
        --- @param r table [in,out] Private reader with immutable bytes and a 1-based
        --- position. Mutated synchronously; malformed/truncated data raises Lua errors.
        --- @return table value New complete value with independent nested arrays/records.
        --- @see class.decode
        function class._read(r)
            local start = r.position
            local value = class.new()
            for _, field in ipairs(schema.fields) do
                if field.array ~= "" then
                    local count = field.array == "array" and field.count
                        or read_count(r, field.count, field.element_minimum)
                    local array = {}
                    for i = 1, count do
                        array[i] = read_one(r, field)
                    end
                    value[field.name] = array
                else
                    value[field.name] = read_one(r, field)
                end
            end
            assert(
                r.position - start >= schema.minimum and r.position - start <= schema.maximum,
                "nested complete wire extent"
            )
            semantics(schema, value)
            return value
        end
        --- @brief Decode exactly one complete canonical record without trailing bytes.
        --- @details Enforces the class extent, every field's domain/count and record
        --- semantics; rejects truncated, trailing or malformed input with Lua errors.
        --- All nested values/arrays are fresh; returned strings are immutable values,
        --- with no mutable input view. No permission, Runtime or cleanup is required.
        --- @param bytes string [in] Canonical bytes, MIN_WIRE_BYTES..MAX_WIRE_BYTES inclusive.
        --- @return table value Caller-owned complete instance of this exact class.
        --- @see class.encode
        function class.decode(bytes)
            assert(
                type(bytes) == "string" and #bytes >= schema.minimum and #bytes <= schema.maximum,
                "complete bounded canonical input required"
            )
            local r = { bytes = bytes, position = 1 }
            local result = class._read(r)
            assert(r.position == #bytes + 1, "trailing canonical bytes")
            return result
        end
        classes[schema.symbol] = class
        by_name[tostring(schema.ros_version) .. ":" .. schema.native_type] = class
    end
    return classes, by_name
end

return M
