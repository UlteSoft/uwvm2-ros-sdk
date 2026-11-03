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
        assert(size >= 0 and size % 1 == 0 and self.at + size - 1 <= #self.data, "Truncated Wasm extent")
        local result = self.data:sub(self.at, self.at + size - 1)
        self.at = self.at + size
        return result
    end
    function value:byte() return self:take(1):byte() end
    function value:uleb(bits)
        bits = bits or 32
        assert(bits == 32 or bits == 64, "Unsupported metadata integer width")
        local maximum = bits == 32 and 4294967295 or 9007199254740991
        local result, scale = 0, 1
        for index = 1, math.ceil(bits / 7) do
            local byte = self:byte()
            local digit = byte % 128
            assert(digit <= math.floor((maximum - result) / scale),
                   "Wasm integer exceeds its declared width or exact metadata range")
            result = result + digit * scale
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
function _limits(reader, kind)
    local flags = reader:uleb()
    assert(flags <= 7, "Unsupported memory/table limits flags")
    local address_bits = math.floor(flags / 4) % 2 == 1 and 64 or 32
    local value = {flags = flags, minimum = reader:uleb(address_bits), address_bits = address_bits,
                   shared = math.floor(flags / 2) % 2 == 1}
    if flags % 2 == 1 then value.maximum = reader:uleb(address_bits) end
    assert(not value.shared or (kind ~= "table" and value.maximum), "Shared memories require a maximum; shared tables are unsupported")
    assert(not value.maximum or value.minimum <= value.maximum, "Minimum exceeds maximum memory/table limits")
    if kind ~= "table" then
        local pages = address_bits == 32 and 65536 or 281474976710656
        assert(value.minimum <= pages and (not value.maximum or value.maximum <= pages),
               "Memory page limit exceeds the selected address width")
    end
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
    -- Core tag and data-count sections have nonnumeric ordering positions.
    local order = {[1]=1, [2]=2, [3]=3, [4]=4, [5]=5, [13]=6,
                   [6]=7, [7]=8, [8]=9, [9]=10, [12]=11, [10]=12, [11]=13}
    local last, seen, export_names = 0, {}, {}
    while stream.at <= #stream.data do
        local id = stream:byte()
        if id ~= 0 then
            assert(order[id] and not seen[id] and order[id] > last,
                   "Unknown, duplicate or out-of-order Core section")
            seen[id], last = true, order[id]
        end
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
                    _limits(reader, "table")
                    result.imported_tables = result.imported_tables + 1
                elseif entry.kind == 2 then
                    entry.memory = _limits(reader)
                    entry.memory_index = result.imported_memories
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
                assert(entry.kind <= 4 and not export_names[entry.name], "Invalid or duplicate Core export")
                export_names[entry.name] = true
                table.insert(result.exports, entry)
            end
        elseif id == 8 then
            assert(not result.start_index, "Duplicate start section")
            result.start_index = reader:uleb()
        end
        if id == 1 or id == 2 or id == 3 or id == 5 or id == 7 or id == 8 then
            assert(reader.at == #reader.data + 1, "Unexpected metadata section tail")
        end
    end
    for _, entry in ipairs(result.imports) do
        if entry.kind == 0 then entry.signature = assert(result.types[entry.type_index + 1], "Missing import type") end
    end
    for _, entry in ipairs(result.exports) do
        if entry.kind == 0 then
            local type_index = assert(result.function_types[entry.index + 1], "Missing exported function")
            entry.signature = assert(result.types[type_index + 1], "Missing export type")
        elseif entry.kind == 2 then
            assert(entry.index < result.imported_memories + #result.memories, "Missing exported memory")
        end
    end
    if result.start_index ~= nil then
        local type_index = assert(result.function_types[result.start_index + 1], "Missing start function")
        local signature = assert(result.types[type_index + 1], "Missing start function type")
        assert(#signature.parameters == 0 and #signature.results == 0, "Start function must have no parameters or results")
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
function validate_memory(filename, address_bits, owned_only, policy)
    assert(address_bits == 32 or address_bits == 64, "Select an exact memory address width")
    local metadata = inspect(assert(io.readfile(filename, {encoding = "binary"})))
    local binding = policy and policy.memory_import
    local semantic = policy and policy.artifact_model
    if binding then
        assert(semantic == "dynamic" or semantic == "independent" or semantic == "binary",
               "Explicit memory imports require an implemented artifact memory model")
        assert(metadata.imported_memories == 1, "Exactly one explicit communication/shared memory import is required")
        assert(#metadata.memories == (semantic == "independent" and 1 or 0),
               "Independent libraries own one private heap; dynamic libraries and shared-memory consumers own none")
        assert(not metadata.dynamic_linking and metadata.imported_tables == 0,
               "This explicit Core memory ABI does not implement PIC relocation or imported tables")
        for _, entry in ipairs(metadata.imports) do
            if entry.memory then
                assert(entry.module == binding.module and entry.name == binding.name,
                       "Actual memory import differs from the explicitly declared loader binding")
            end
        end
        if semantic == "independent" then
            for _, entry in ipairs(metadata.exports) do
                assert(entry.kind ~= 2 or entry.index == 0,
                       "Private heap must never be exported to another module")
                assert(entry.kind ~= 1, "Independent library tables cannot be exported through this ABI")
            end
        end
        if semantic ~= "binary" then
            local functions = 0
            for _, entry in ipairs(metadata.exports) do
                if entry.kind == 0 then
                    assert(entry.name ~= "_start" and entry.name ~= "main",
                           "An explicit Wasm library exports callable functions, not a program entry")
                    functions = functions + 1
                end
            end
            assert(functions > 0, "A Wasm library must export an actual callable function")
        end
    else
        assert(#metadata.memories + metadata.imported_memories <= 1, "This adapter implements one linear memory unless an explicit memory model is selected")
        if owned_only then assert(metadata.imported_memories == 0, "Legacy Core preload/command must own its memory") end
    end
    local memories = table.copy(metadata.memories)
    for _, entry in ipairs(metadata.imports) do
        if entry.memory then table.insert(memories, entry.memory) end
    end
    for _, memory in ipairs(memories) do
        assert(memory.address_bits == address_bits, "Actual Wasm memory width conflicts with the selected target")
        assert(not memory.shared, "This adapter implements unshared linear memory")
        if binding then
            assert(memory.maximum and memory.minimum <= memory.maximum,
                   "Explicit communication/private memories require finite declared bounds")
        end
    end
    return metadata
end

-- @brief Record actual Core metadata without retaining executable section bytes.
-- @details Module indices identify declarations only. They do not prove loaded
-- instance/backing identity, grants, generation, isolation or stable snapshots.
function describe(metadata)
    local memories = {}
    for _, entry in ipairs(metadata.imports) do
        if entry.memory then
            table.insert(memories, {index = entry.memory_index, imported = true,
                module = entry.module, name = entry.name, limits = entry.memory})
        end
    end
    for index, memory in ipairs(metadata.memories) do
        table.insert(memories, {index = metadata.imported_memories + index - 1,
            imported = false, limits = memory})
    end
    return {format = "uwvm-core-module-metadata-v1", imports = metadata.imports,
            exports = metadata.exports, memories = memories, start_index = metadata.start_index,
            has_dylink_section = metadata.dynamic_linking,
            runtime_instance_identity_verified = false}
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
