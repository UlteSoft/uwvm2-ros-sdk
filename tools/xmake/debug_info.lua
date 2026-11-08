-- SPDX-License-Identifier: Apache-2.0
-- Source information is an explicit build-mode choice. Release commands keep
-- their existing optimization policy and do not acquire debugger hooks.
function enabled()
    import("core.project.config")
    local mode = config.get("mode")
    return mode == "debug" or mode == "releasedbg"
end
function unoptimized()
    import("core.project.config")
    return config.get("mode") == "debug"
end
function cflags()
    local flags = {unoptimized() and "-O0" or "-O2"}
    if enabled() then table.join2(flags, {"-g", "-gdwarf-4"}) end
    return flags
end

-- Retain the genuine compiler map in the module, preserving every original
-- byte/code address. No source line, variable location or grant is synthesized.
function embed_source_map(root, target)
    import("core.base.json")
    local output = path.absolute(target:targetfile())
    local sidecar = output .. ".map"
    local source = assert(io.readfile(sidecar), "The debug frontend did not emit its source map")
    local map = json.decode(source)
    assert(map.version == 3 and type(map.sources) == "table" and type(map.mappings) == "string",
        "Expected the compiler's Source Map v3")
    local bytes = assert(io.readfile(output, {encoding="binary"}))
    assert(bytes:sub(1, 8) == "\0asm\1\0\0\0", "Expected a genuine Core Wasm module")
    local metadata = import("wasm_module", {rootdir=path.join(root,"tools/xmake"),anonymous=true})
    local reader = metadata.metadata_reader(bytes:sub(9))
    while reader.at <= #reader.data do
        local id = reader:byte()
        local payload = reader:take(reader:uleb())
        if id == 0 then
            local custom = metadata.metadata_reader(payload)
            assert(custom:name() ~= ".debug_source_map", "Compiler output already has an embedded source map")
        end
    end
    local function uleb(value)
        local parts = {}
        repeat
            local byte = value % 128
            value = math.floor(value / 128)
            table.insert(parts, string.char(byte + (value > 0 and 128 or 0)))
        until value == 0
        return table.concat(parts)
    end
    local name = ".debug_source_map"
    local payload = uleb(#name) .. name .. source
    local workspace = import("artifact_contract", {rootdir=path.join(root,"tools/xmake"),anonymous=true})
        .workspace(target, "debug-source")
    os.mkdir(workspace)
    io.writefile(path.join(workspace, "compiler.map"), source)
    io.writefile(output, bytes .. "\0" .. uleb(#payload) .. payload, {encoding="binary"})
    os.rm(sidecar)
    target:data_set("ros.sdk.debug_metadata", {format="source-map-v3", section=name})
end
