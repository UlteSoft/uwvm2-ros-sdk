-- @file wasm_module.lua
-- @brief Inspect linked Core modules and bind their actual initializer as a start.
-- @details This metadata transform executes no application and changes no code,
-- import, permission or memory. Version one handles ordinary Clang function-type
-- modules; unsupported type forms fail rather than being guessed.

-- @brief Read one checked byte extent from a complete in-memory Core module.
-- @param data Complete byte string whose section extents are checked on access.
-- @return Private cursor with checked byte, extent, unsigned-LEB and name readers.
function _reader(data)
    local value = {data = data, at = 1}
    function value:take(size)
        assert(size >= 0 and self.at + size - 1 <= #self.data, "Truncated Wasm extent")
        local result = self.data:sub(self.at, self.at + size - 1)
        self.at = self.at + size
        return result
    end
    function value:byte() return self:take(1):byte() end
    function value:uleb()
        local result, scale = 0, 1
        for index = 1, 10 do
            local byte = self:byte()
            result = result + (byte % 128) * scale
            assert(result <= 9007199254740991, "Wasm extent exceeds exact metadata integer range")
            if byte < 128 then return result end
            scale = scale * 128
        end
        raise("Invalid Wasm unsigned LEB")
    end
    function value:name() return self:take(self:uleb()) end
    return value
end

-- @brief Expose checked metadata reads to common object-linking services.
-- @param data Complete metadata byte extent owned by the caller.
-- @return Independent bounded cursor; this service interprets no instructions.
function metadata_reader(data)
    return _reader(data)
end

-- @brief Encode an exact nonnegative section/index integer without signed loss.
-- @param value Exact nonnegative integer within Lua's checked metadata range.
-- @return Canonical unsigned-LEB byte string for a section extent or index.
function _uleb(value)
    assert(value >= 0 and value % 1 == 0 and value <= 9007199254740991)
    local result = ""
    repeat
        local byte = value % 128
        value = math.floor(value / 128)
        result = result .. string.char(byte + (value > 0 and 128 or 0))
    until value == 0
    return result
end

-- @brief Read the memory/table limits grammar used by ordinary Clang outputs.
-- @param reader Cursor positioned at an ordinary Core memory/table limits field.
-- @return Minimum, optional maximum, shared flag and address width.
function _limits(reader)
    local flags = reader:uleb()
    local value = {flags = flags, minimum = reader:uleb(), address_bits = math.floor(flags / 4) % 2 == 1 and 64 or 32,
                   shared = math.floor(flags / 2) % 2 == 1}
    if flags % 2 == 1 then value.maximum = reader:uleb() end
    return value
end

-- @brief Return exact function imports/exports, memory ownership and start facts.
-- @param data Complete linked Core Wasm bytes produced by the real toolchain.
-- @return Module metadata used to check the initializer and memory ownership.
-- @details This limited metadata reader is not a substitute for runtime validation.
function inspect(data)
    assert(data:sub(1, 8) == "\0asm\1\0\0\0", "Expected a linked Core Wasm module")
    local stream = _reader(data:sub(9))
    local result = {types = {}, function_types = {}, imports = {}, exports = {}, memories = {}, sections = {},
                    imported_memories = 0, imported_tables = 0, dynamic_linking = false}
    while stream.at <= #stream.data do
        local id = stream:byte()
        local payload = stream:take(stream:uleb())
        table.insert(result.sections, {id = id, data = payload})
        local reader = _reader(payload)
        if id == 0 then
            local name = reader:name()
            if name == "dylink" or name == "dylink.0" then result.dynamic_linking = true end
        elseif id == 1 then
            for index = 1, reader:uleb() do
                assert(reader:byte() == 0x60, "Unsupported shared-module type form; no GC/PIC acceptance is inferred")
                local signature = {parameters = {}, results = {}}
                for position = 1, reader:uleb() do table.insert(signature.parameters, reader:byte()) end
                for position = 1, reader:uleb() do table.insert(signature.results, reader:byte()) end
                table.insert(result.types, signature)
            end
        elseif id == 2 then
            for index = 1, reader:uleb() do
                local entry = {module = reader:name(), name = reader:name(), kind = reader:byte()}
                if entry.kind == 0 then
                    entry.type_index = reader:uleb()
                    table.insert(result.function_types, entry.type_index)
                elseif entry.kind == 1 then
                    reader:byte()
                    _limits(reader)
                    result.imported_tables = result.imported_tables + 1
                elseif entry.kind == 2 then
                    entry.memory = _limits(reader)
                    result.imported_memories = result.imported_memories + 1
                elseif entry.kind == 3 then
                    reader:byte()
                    reader:byte()
                elseif entry.kind == 4 then
                    reader:byte()
                    reader:uleb()
                else
                    raise("Unknown Core import kind")
                end
                table.insert(result.imports, entry)
            end
        elseif id == 3 then
            for index = 1, reader:uleb() do table.insert(result.function_types, reader:uleb()) end
        elseif id == 5 then
            for index = 1, reader:uleb() do table.insert(result.memories, _limits(reader)) end
        elseif id == 7 then
            for index = 1, reader:uleb() do
                local entry = {name = reader:name(), kind = reader:byte(), index = reader:uleb()}
                table.insert(result.exports, entry)
            end
        elseif id == 8 then
            assert(not result.start_index, "Duplicate start section")
            result.start_index = reader:uleb()
        end
    end
    for _, entry in ipairs(result.imports) do
        if entry.kind == 0 then entry.signature = assert(result.types[entry.type_index + 1], "Missing import type") end
    end
    for _, entry in ipairs(result.exports) do
        if entry.kind == 0 then
            local type_index = assert(result.function_types[entry.index + 1], "Missing exported function")
            entry.signature = assert(result.types[type_index + 1], "Missing export type")
        end
    end
    return result
end

-- @brief Enforce the selected width against every actual memory declaration.
-- @param filename Genuine frontend object or linked Core module.
-- @param address_bits Exact public target width, either 32 or 64.
-- @param owned_only Reject imported memories when producing an independent module.
-- @return Inspected metadata; a memory-free scalar object implies no width proof.
-- @details Frontend feature switches do not replace this check. A declared
-- memory must match the selected width even when the program never accesses it.
function validate_memory(filename, address_bits, owned_only)
    assert(address_bits == 32 or address_bits == 64, "Select an exact memory address width")
    local metadata = inspect(assert(io.readfile(filename, {encoding = "binary"})))
    assert(#metadata.memories + metadata.imported_memories <= 1, "This adapter implements one linear memory")
    if owned_only then assert(metadata.imported_memories == 0, "Independent Core module must own its memory") end
    local memories = table.copy(metadata.memories)
    for _, entry in ipairs(metadata.imports) do
        if entry.memory then table.insert(memories, entry.memory) end
    end
    for _, memory in ipairs(memories) do
        assert(memory.address_bits == address_bits, "Actual Wasm memory width conflicts with the selected target")
        assert(not memory.shared, "This adapter implements unshared linear memory")
    end
    return metadata
end

-- @brief Add one real start section for the linked reactor/constructor export.
-- @param filename Actual linked .wasm produced by the genuine frontend/linker.
-- @param initializer Exact initializer export supplied by that startup profile.
-- @return Checked module metadata after the deterministic section-only transform.
function initialize(filename, initializer)
    local data = assert(io.readfile(filename, {encoding = "binary"}))
    local metadata = inspect(data)
    assert(not metadata.dynamic_linking and metadata.imported_memories == 0 and metadata.imported_tables == 0,
           "Core preload kind requires module-owned memory/table; LLVM PIC/dylink is a separate unsupported model")
    local selected
    for _, entry in ipairs(metadata.exports) do
        if entry.name == initializer and entry.kind == 0 then selected = entry end
    end
    assert(selected and #selected.signature.parameters == 0 and #selected.signature.results == 0,
           "A real no-argument/no-result module initializer export is required")
    if metadata.start_index ~= nil then
        assert(metadata.start_index == selected.index, "A conflicting existing module start cannot be replaced")
        return metadata
    end
    local output, added = "\0asm\1\0\0\0", false
    for _, section in ipairs(metadata.sections) do
        output = output .. string.char(section.id) .. _uleb(#section.data) .. section.data
        -- Export precedes start even when tag/data-count section numeric IDs
        -- differ from their canonical order. Custom sections remain untouched.
        if section.id == 7 then
            local start = _uleb(selected.index)
            output = output .. string.char(8) .. _uleb(#start) .. start
            added = true
        end
    end
    assert(added, "An initialized library must contain its export section")
    io.writefile(filename, output, {encoding = "binary"})
    local checked = inspect(output)
    assert(checked.start_index == selected.index, "Initializer start section was not preserved")
    return checked
end
