-- SPDX-License-Identifier: Apache-2.0
-- @file provider.lua
-- @brief Assemble genuine WAT with one pinned shared WABT installation.
-- @details WAT source owns its functions, imports, memory and initialization.
-- Multiple sources and static dependencies use actual relocatable objects and
-- the shared LLVM23 linker. This adapter supplies no application permissions.

-- @brief Describe implemented routes independently of execution qualification.
-- @return Existing version-one source-language lifecycle descriptor.
function describe()
    local kinds = {}
    for _, kind in ipairs({"binary", "static", "shared"}) do
        kinds[kind] = {languages = {"wat"}, targets = {"wasm32-wasip1", "wasm64-wasip1"},
            exception_profiles = {"noeh"}, dependencies = {static = {"wat", "c"}, shared = {"wat", "c", "cpp"}}}
    end
    return {api_version = 1, languages = {"wat"}, targets = {"wasm32-wasip1", "wasm64-wasip1"},
        exception_profiles = {"noeh"}, entry_profiles = {"command", "freestanding"},
        features = {"memory64", "table64", "simd128", "relaxed-simd", "bulk-memory", "reference-types",
                    "multi-value", "sign-extension", "nontrapping-fptoint", "tail-call", "extended-const"},
        artifact_kinds = kinds}
end

-- @brief Check source metadata without discovering or executing host tools.
-- @param target Ordinary native Xmake binary, static or shared target.
-- @param root Installed SDK using the one common language registry.
-- @param request Version-one platform request with exact ABI and source paths.
function configure(target, root, request)
    assert(request.language == "wat" and request.wasi_preview == 1 and not request.threads
           and request.exception_profile == "noeh", "WAT currently implements Preview1/noeh/single-thread")
    assert(request.triple == "wasm" .. request.address_bits .. "-wasip1", "Conflicting WAT target width")
    assert(request.kind == "binary" or request.kind == "static" or request.kind == "shared", "Select an ordinary artifact kind")
    assert(#request.sources > 0, "Declare complete real WAT source modules")
    for _, source in ipairs(request.sources) do
        assert(path.extension(source) == ".wat", "set_language(wat) requires actual .wat source")
    end
    assert(#(request.native_sources or {}) == 0, "A WAT binding must not substitute another source language")
end

-- @brief Restore WABT and reuse the already pinned LLVM native runtime closure.
-- @param root Installed SDK with independent WABT and LLVM23 bundle manifests.
-- @return Actual native loader, its argument prefix, and WABT executable map.
-- @details Both installations use the public Xmake-only bundle installer.
-- The loader prefix runs a build-host tool; it is not a deployment launcher.
function tools(root)
    import("core.project.config")
    local installer = import("tool_bundle", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    local host = os.host() .. "-" .. os.arch()
    local directory = path.join(root, "share/toolchains/host", host)
    local base = os.getenv("XDG_CACHE_HOME")
        or path.join(assert(os.getenv("HOME"), "Set HOME or XDG_CACHE_HOME for the host tool cache"), ".cache")
    local cache = config.get("ros-tool-cache") or path.join(base, "uwvm-ros/host-tools")
    local llvm = installer.install(path.join(directory, "llvm23.json"), cache)
    local _, programs = installer.install(path.join(directory, "wabt.json"), cache)
    local runtime = path.join(llvm, "lib/host-runtime")
    local loader = path.join(runtime, "ld-linux-x86-64.so.2")
    assert(os.host() == "linux" and os.arch() == "x86_64" and os.isfile(loader), "Install a qualified WABT host closure for this machine")
    return loader, {"--library-path", runtime}, programs
end

-- @brief Assemble, archive or link the selected real WAT sources.
-- @param target Ordinary Xmake target whose kind and dependencies retain meaning.
-- @param root SDK installation with public common assembler/linker services.
-- @param request Validated version-one source-language request.
function build(target, root, request)
    configure(target, root, request)
    local loader, prefix, programs = tools(root)
    local version = os.iorunv(loader, table.join(prefix, {programs.wat2wasm, "--version"}))
    assert(version:trim() == "1.0.42", "The shared WAT assembler must be the pinned WABT 1.0.42")
    local artifacts = import("artifact_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    local metadata = import("wasm_module", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    local linker = import("wasm_link", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    local relocatable = target:kind() == "static" or #request.sources > 1
        or #artifacts.static_closure(target) > 0 or #request.links > 0
    local intermediate = path.join(path.absolute(target:scriptdir()), ".uwvm-ros/objects", artifacts.identity(target))
    os.mkdir(intermediate)
    local objects, exports, imports, import_modules = {}, {}, {}, {}
    local output = path.absolute(target:targetfile())
    os.mkdir(path.directory(output))
    for index, source in ipairs(request.sources) do
        local filename = relocatable and path.join(intermediate, string.format("%04d_%s.o", index, path.filename(source))) or output
        local arguments = table.join(prefix, {programs.wat2wasm, "--disable-exceptions", "--disable-multi-memory"})
        if request.address_bits == 32 then table.insert(arguments, "--disable-memory64") end
        if relocatable then table.insert(arguments, "--relocatable") end
        table.join2(arguments, {path.absolute(source), "-o", filename})
        os.vrunv(loader, arguments)
        local facts = metadata.validate_memory(filename, request.address_bits, not relocatable)
        if relocatable then
            assert(facts.start_index == nil, "Relocatable WAT inputs declare initialization through an explicit callable function")
            linker.validate_exports(filename)
            for _, entry in ipairs(facts.exports) do
                if entry.kind == 0 then table.insert(exports, entry.name) end
            end
            for _, entry in ipairs(facts.imports) do
                if entry.kind == 0 then
                    local previous = import_modules[entry.name]
                    assert(not previous or previous == entry.module, "A static symbol cannot name two different import modules")
                    import_modules[entry.name] = entry.module
                    table.insert(imports, entry.name)
                end
            end
            table.insert(objects, filename)
        else
            target:data_set("ros.sdk.build_command", {program = loader, arguments = arguments})
        end
    end
    if relocatable then
        linker.build(target, root, request, objects, {exports = table.unique(exports), allowed_undefined_symbols = table.unique(imports)})
    end
    if target:kind() ~= "static" then
        metadata.validate_memory(output, request.address_bits, true)
        if target:kind() == "shared" then
            metadata.initialize(output, "_initialize")
        else
            local facts = metadata.inspect(assert(io.readfile(output, {encoding = "binary"})))
            local start
            for _, entry in ipairs(facts.exports) do
                if entry.kind == 0 and entry.name == "_start" then start = entry end
            end
            assert(start and #start.signature.parameters == 0 and #start.signature.results == 0,
                   "A WAT command supplies its own actual no-argument/no-result _start export")
        end
    end
end
