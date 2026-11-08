-- @file cfamily.lua
-- @brief Compile real C-family applications with one qualified LLVM 23 closure.
-- @details Target libraries come from the SDK's explicit architecture/profile
-- manifest. The native compiler, linker, ELF loader, and runtime are installed
-- by Xmake itself from a pinned XMZ bundle. No shell, Python, installed Clang,
-- ROS distribution, or uwvm2 executable is needed to build the application.

-- @brief Resolve one required SDK-relative manifest path.
-- @param root Absolute installed SDK root.
-- @param relative Normalized target-manifest path.
-- @return Existing absolute file/directory inside the selected SDK.
function _installed(root, relative)
    assert(type(relative) == "string" and not path.is_absolute(relative), "Use SDK-relative toolchain paths")
    for part in relative:gmatch("[^/]+") do
        assert(part ~= "." and part ~= "..", "Toolchain paths must remain inside this SDK")
    end
    local result = path.join(root, relative)
    assert(os.exists(result), "Missing qualified LLVM 23 SDK input: " .. result)
    return result
end

-- @brief Select the exact tested pointer-width and exception profile.
-- @param root Installed SDK containing share/wasm/toolchains.json.
-- @param triple Exact requested command target, including its pointer width.
-- @param profile noeh or eh; no implicit replacement is permitted.
-- @return Target descriptor with its qualified library and resource locations.
function selection(root, triple, profile)
    import("core.base.json")
    import("core.project.config")
    local filename = config.get("ros-toolchain-manifest") or path.join(root, "share/wasm/toolchains.json")
    local manifest = json.loadfile(filename)
    assert(manifest.llvm_major == 23, "The SDK target manifest must describe LLVM 23")
    local chosen
    for _, entry in ipairs(manifest.targets) do
        if entry.triple == triple and entry.profile == profile and entry.llvm_major == 23 then
            assert(not chosen, "Duplicate LLVM target/profile in the SDK manifest")
            chosen = entry
        end
    end
    assert(chosen, "No declared LLVM 23 closure for " .. triple .. "/" .. profile)
    for _, key in ipairs({ "sysroot", "include_dir", "lib_dir", "resource_dir", "builtins_lib" }) do
        _installed(root, chosen[key])
    end
    for relative, file in pairs(chosen.artifacts) do
        assert(
            hash.sha256(_installed(root, relative)):lower() == file.sha256,
            "Changed SDK target library: " .. relative
        )
    end
    assert(
        hash.sha256(_installed(root, chosen.builtins_lib)):lower() == chosen.builtins_sha256,
        "The target's Compiler-RT archive no longer matches its qualification"
    )
    return chosen
end

-- @brief Restore the complete native LLVM tool closure using only Xmake.
-- @param root SDK installation containing the host's pinned bundle manifest.
-- @return Program map containing actual cc, cxx, ld, ar, and ranlib executables.
-- @details The cache is shared by examples to avoid duplicate toolchain copies.
-- Compiler restoration is a build action and is never called by xmake run.
function tools(root)
    import("core.project.config")
    local host = os.host() .. "-" .. os.arch()
    local manifest = path.join(root, "share/toolchains/host", host, "llvm23.json")
    assert(os.isfile(manifest), "Install this SDK distribution's LLVM 23 host-tool bundle for " .. host)
    local home = os.getenv("XDG_CACHE_HOME")
    if not home then
        home = path.join(assert(os.getenv("HOME"), "Set HOME or XDG_CACHE_HOME for the compiler cache"), ".cache")
    end
    local cache = config.get("ros-tool-cache") or path.join(home, "uwvm-ros/host-tools")
    local _, programs =
        import("tool_bundle", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).install(manifest, cache)
    return programs
end

-- @brief Build one complete application with the actual C/Objective-C/C++ frontend.
-- @param target Xmake target declaring real source files and its language.
-- @param root Installed SDK root shared by public headers and target libraries.
-- @param triple Exact target resolved by the platform adapter.
-- @param extra Optional compiler arguments and additional real source inputs.
-- @details The target has a single .wasm output. Compiler temporaries remain
-- outside that directory. The real linker child uses the bundled native loader.
function _command(target, root, triple, extra)
    import("core.project.config")
    local language = target:values("ros.sdk.language")
    assert(
        language == "c" or language == "cpp" or language == "objectc" or language == "c_ffi_bridge",
        "Select real C, C++, Objective-C, or a C FFI bridge application"
    )
    local profile = target:values("ros.sdk.exception_profile") or config.get("ros-exceptions") or "noeh"
    local selected = selection(root, triple, profile)
    local programs = tools(root)
    target:set("values", "ros.sdk.tools", programs)
    local cpp = language == "cpp"
    extra = table.clone(extra or {})
    local entry = target:values("ros.sdk.entry") or "command"
    assert(entry == "command" or entry == "freestanding", "Select command or freestanding startup")
    if entry == "freestanding" then
        -- Objective-C still needs its genuine class/selector runtime even when
        -- the application supplies _start. Omit only the C startup object;
        -- runtime/library code remains inside this Wasm instance.
        local startup = language == "objectc" and "-nostartfiles" or "-nostdlib"
        table.join2(extra, {"-ffreestanding", "-fno-builtin", startup, "-Wl,--entry=_start", "-Wl,--export=_start"})
        if cpp then table.join2(extra, {"-fno-rtti", "-fno-threadsafe-statics"}) end
    end
    -- A freestanding command supplies its own entry and deliberately omits
    -- runtime libraries. Clang rejects an unused -rtlib under strict warnings.
    local freestanding = table.contains(extra, "-nostdlib")
    local standard = target:values("ros.sdk.standard")
        or target:values("ros.native.standard")
        or (cpp and "c++20" or "c11")
    local accepted = cpp
            and {
                ["c++98"] = true,
                ["c++03"] = true,
                ["c++11"] = true,
                ["c++14"] = true,
                ["c++17"] = true,
                ["c++20"] = true,
                ["c++23"] = true,
                ["c++26"] = true,
            }
        or { c89 = true, c90 = true, c99 = true, c11 = true, c17 = true, c23 = true, c2y = true }
    assert(accepted[standard], "Unsupported explicit C-family source standard: " .. tostring(standard))
    local compiler = programs[cpp and "cxx" or "cc"]
    local objective
    if language == "objectc" then
        objective = import("objectc", {rootdir = path.join(root, "tools/language/native"), anonymous = true})
        compiler = objective.compiler(root)
    end
    local version = os.iorunv(compiler, { "--version" })
    assert(version:find("clang version 23.", 1, true), "The actual application compiler must be LLVM 23")
    target:data_set("ros.sdk.compiler_version", version:trim())
    local arguments = {
        "--target=" .. triple,
        "--sysroot=" .. _installed(root, selected.sysroot),
        "-resource-dir=" .. _installed(root, selected.resource_dir),
        "-no-canonical-prefixes",
        "-fintegrated-cc1",
        "-fuse-ld=" .. programs.ld,
        "-std=" .. standard,
        "-Wall",
        "-Wextra",
        "-Werror",
        "-I" .. path.join(root, "include"),
        "-I" .. path.join(root, "include/platform"),
        "-I" .. path.join(root, "include/platform/ros/c"),
        "-Wl,--stack-first",
        "-Wl,-z,stack-size=1048576",
        "-Wl,--max-memory=67108864",
        "-Wl,--threads=1",
    }
    table.join2(arguments, import("debug_info", {rootdir=path.join(root,"tools/xmake"), anonymous=true}).cflags())
    if cpp then table.insert(arguments, "-I" .. path.join(root, "include/language/c++/include")) end
    local feature_flags = {
        ["simd128"] = "-msimd128", ["relaxed-simd"] = "-mrelaxed-simd",
        ["bulk-memory"] = "-mbulk-memory", ["reference-types"] = "-mreference-types",
        ["multi-value"] = "-mmultivalue", ["sign-extension"] = "-msign-ext",
        ["nontrapping-fptoint"] = "-mnontrapping-fptoint", ["tail-call"] = "-mtail-call",
        ["extended-const"] = "-mextended-const", ["multi-memory"] = "-mmultimemory",
        ["gc"] = "-mgc"
    }
    for _, feature in ipairs(target:get("values.ros.sdk.features") or {}) do
        if feature == "memory64" then
            assert(selected.memory64 == true, "memory64 requires the exact wasm64 target")
        elseif feature == "table64" then
            assert(selected.table64 == true, "table64 requires a declared table64 target closure")
        elseif feature == "exceptions" then
            assert(profile == "eh", "exceptions must use the explicit eh target-library profile")
        else
            table.insert(arguments, assert(feature_flags[feature], "No LLVM23 mapping for requested feature: " .. feature))
        end
    end
    -- Reproducible diagnostic/source identities do not expose installation roots.
    table.join2(arguments, {
        "-ffile-prefix-map=" .. root .. "=/sdk",
        "-fmacro-prefix-map=" .. root .. "=/sdk",
        "-ffile-prefix-map=" .. path.absolute(target:scriptdir()) .. "=/application",
        "-fmacro-prefix-map=" .. path.absolute(target:scriptdir()) .. "=/application",
    })
    if cpp then
        table.join2(arguments, selected.cxxflags)
        for _, argument in ipairs(selected.ldflags) do
            if not freestanding or not argument:startswith("-rtlib=") then
                table.insert(arguments, argument)
            end
        end
    elseif not freestanding then
        table.insert(arguments, "-rtlib=compiler-rt")
    end
    if profile == "eh" then
        table.join2(arguments, { "-Wl,-mllvm,-wasm-use-legacy-eh=false" })
    end
    if language == "objectc" then
        table.join2(arguments, { "-x", "objective-c" })
        table.join2(arguments, objective.flags(root, triple, profile))
    end
    for _, directory in ipairs(table.wrap(target:get("includedirs"))) do
        table.insert(arguments, "-I" .. path.absolute(directory))
    end
    for _, definition in ipairs(table.wrap(target:get("defines"))) do
        table.insert(arguments, "-D" .. definition)
    end
    table.join2(arguments, table.wrap(target:get("cxflags")))
    table.join2(arguments, table.wrap(target:get(cpp and "cxxflags" or "cflags")))
    table.join2(arguments, table.wrap(target:get("ldflags")))
    table.join2(arguments, extra or {})
    for _, source in ipairs(target:sourcefiles()) do
        table.insert(arguments, path.absolute(source))
    end
    if objective and not freestanding then
        table.join2(arguments, {"-x", "none"})
        table.join2(arguments, objective.libraries(root, triple, profile))
    end
    local output = path.absolute(target:targetfile())
    os.mkdir(path.directory(output))
    table.join2(arguments, { "-o", output })
    local temporary = import("artifact_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
        .workspace(target, "compiler-tmp")
    os.mkdir(temporary)
    os.vrunv(compiler, arguments, {envs = {TMPDIR = temporary}})
    target:data_set("ros.sdk.build_command", {program = compiler, arguments = arguments})
end

-- @brief Compile indexed Wasm archives and independently initialized Core modules.
-- @details Each input is compiled by its genuine C/C++ frontend. A C consumer
-- uses the C++ link driver only when a statically included dependency needs it;
-- a C++ shared dependency retains its own runtime and never changes that choice.
function _linked(target, root, triple, extra)
    import("core.project.config")
    local contract = import("artifact_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    local kind = target:kind()
    local profile = target:values("ros.sdk.exception_profile") or config.get("ros-exceptions") or "noeh"
    local selected = selection(root, triple, profile)
    assert(not target:values("ros.sdk.threads") and target:values("ros.sdk.wasi_preview") == 1,
           "The implemented library graph uses Preview 1, single-thread ABI")
    assert(kind ~= "shared" or profile == "noeh", "Core preload libraries require the noeh profile")
    local programs = tools(root)
    local version = os.iorunv(programs.cc, {"--version"})
    assert(version:find("clang version 23.", 1, true), "Real LLVM 23 is required for every object")
    target:data_set("ros.sdk.compiler_version", version:trim())
    local sources, compile_extra = table.copy(target:sourcefiles()), {}
    for _, argument in ipairs(extra or {}) do
        if argument:endswith(".c") or argument:endswith(".cpp") then
            table.insert(sources, argument)
        else
            table.insert(compile_extra, argument)
        end
    end
    local common = {"--target=" .. triple, "--sysroot=" .. _installed(root, selected.sysroot),
                    "-resource-dir=" .. _installed(root, selected.resource_dir),
                    "-no-canonical-prefixes", "-fintegrated-cc1"}
    local flags = {"-Wall", "-Wextra", "-Werror", "-I" .. path.join(root, "include"),
                   "-I" .. path.join(root, "include/platform"),
                   "-I" .. path.join(root, "include/platform/ros/c"),
                   "-ffile-prefix-map=" .. root .. "=/sdk", "-fmacro-prefix-map=" .. root .. "=/sdk",
                   "-ffile-prefix-map=" .. path.absolute(target:scriptdir()) .. "=/application",
                   "-fmacro-prefix-map=" .. path.absolute(target:scriptdir()) .. "=/application"}
    table.join2(flags, import("debug_info", {rootdir=path.join(root,"tools/xmake"), anonymous=true}).cflags())
    table.insert(flags, "-I" .. path.join(root, "include/language/c++/include"))
    local feature_flags = {simd128 = "-msimd128", ["relaxed-simd"] = "-mrelaxed-simd",
        ["bulk-memory"] = "-mbulk-memory", ["reference-types"] = "-mreference-types",
        ["multi-value"] = "-mmultivalue", ["sign-extension"] = "-msign-ext",
        ["nontrapping-fptoint"] = "-mnontrapping-fptoint", ["tail-call"] = "-mtail-call",
        ["extended-const"] = "-mextended-const", ["multi-memory"] = "-mmultimemory", gc = "-mgc"}
    for _, feature in ipairs(target:get("values.ros.sdk.features") or {}) do
        if feature == "memory64" or feature == "table64" then
            assert(selected[feature] == true, "Selected library closure lacks " .. feature)
        elseif feature == "exceptions" then
            assert(profile == "eh", "exceptions requires the actual eh target-library profile")
        else
            table.insert(flags, assert(feature_flags[feature], "Unsupported library Core feature: " .. feature))
        end
    end
    local includes = table.join(table.wrap(target:get("includedirs")), contract.inherited(target, "includedirs"))
    local defines = table.join(table.wrap(target:get("defines")), contract.inherited(target, "defines"))
    for _, directory in ipairs(table.unique(includes)) do table.insert(flags, "-I" .. path.absolute(directory)) end
    for _, definition in ipairs(table.unique(defines)) do table.insert(flags, "-D" .. definition) end
    local entry = target:values("ros.sdk.entry") or "command"
    if entry == "freestanding" then table.join2(flags, {"-ffreestanding", "-fno-builtin"}) end
    table.join2(flags, compile_extra)
    local intermediate = contract.workspace(target, "objects")
    local temporary = contract.workspace(target, "compiler-tmp")
    os.mkdir(intermediate)
    os.mkdir(temporary)
    local objects, cpp_used, compiled = {}, false, {}
    for index, source in ipairs(sources) do
        local extension = path.extension(source)
        local cpp = extension == ".cpp" or extension == ".cc" or extension == ".cxx"
        assert(cpp or extension == ".c", "Library input must be real C or C++ source")
        cpp_used = cpp_used or cpp
        local standard = target:values("ros.sdk.standard") or target:values("ros.native.standard")
            or (cpp and "c++20" or "c11")
        if cpp then
            assert(standard:match("^c%+%+"), "C++ source requires an actual C++ standard")
        else
            assert(not standard:find("++", 1, true), "C source cannot be compiled as C++")
        end
        local arguments = table.join(common, flags, {"-std=" .. standard})
        if cpp then
            table.join2(arguments, selected.cxxflags)
            if entry == "freestanding" then table.join2(arguments, {"-fno-rtti", "-fno-threadsafe-statics"}) end
        end
        table.join2(arguments, table.wrap(target:get("cxflags")))
        table.join2(arguments, table.wrap(target:get(cpp and "cxxflags" or "cflags")))
        local object = path.join(intermediate, string.format("%04d_%s.o", index, path.filename(source)))
        table.join2(arguments, {"-c", path.absolute(source), "-o", object})
        os.vrunv(programs[cpp and "cxx" or "cc"], arguments, {envs = {TMPDIR = temporary}})
        table.insert(objects, object)
        table.insert(compiled, {program = programs[cpp and "cxx" or "cc"], arguments = arguments,
            source = path.absolute(source), source_sha256 = hash.sha256(source):lower(),
            object = object, object_sha256 = hash.sha256(object):lower()})
    end
    target:data_set("ros.sdk.compile_commands", compiled)
    local output = path.absolute(target:targetfile())
    os.mkdir(path.directory(output))
    if kind == "static" then
        -- Recreate rather than update so removed source members cannot survive.
        if os.isfile(output) then os.rm(output) end
        os.vrunv(programs.ar, table.join({"rcsD", output}, objects), {envs = {TMPDIR = temporary}})
        target:data_set("ros.sdk.build_command", {program = programs.ar, arguments = table.join({"rcsD", output}, objects)})
        return
    end
    local archives = contract.static_closure(target)
    for _, dependency in ipairs(archives) do
        assert(os.isfile(dependency:targetfile()), "Build the actual static dependency first")
        cpp_used = cpp_used or dependency:values("ros.sdk.language") == "cpp"
    end
    local arguments = table.join(common, {"-fuse-ld=" .. programs.ld,
        "-Wl,--stack-first", "-Wl,-z,stack-size=1048576", "-Wl,--max-memory=67108864", "-Wl,--threads=1"}, objects)
    for _, dependency in ipairs(archives) do table.insert(arguments, path.absolute(dependency:targetfile())) end
    if entry == "freestanding" then
        table.insert(arguments, "-nostdlib")
        if kind == "binary" then
            table.join2(arguments, {"-Wl,--entry=_start", "-Wl,--export=_start"})
        else
            table.join2(arguments, {"-Wl,--no-entry", "-Wl,--export=__wasm_call_ctors"})
        end
    else
        if cpp_used then
            -- Keep the C++ driver ABI selection at link time. Backend-only
            -- options already applied to each object do not belong to the
            -- source-free driver invocation; the linker EH option is below.
            local backend_argument = false
            for _, flag in ipairs(selected.cxxflags) do
                if backend_argument then
                    backend_argument = false
                elseif flag == "-mllvm" then
                    backend_argument = true
                else
                    table.insert(arguments, flag)
                end
            end
            assert(not backend_argument, "Incomplete target-library backend option")
            table.join2(arguments, selected.ldflags)
        else
            table.insert(arguments, "-rtlib=compiler-rt")
        end
        if kind == "shared" then table.insert(arguments, "-mexec-model=reactor") end
    end
    if profile == "eh" then table.insert(arguments, "-Wl,-mllvm,-wasm-use-legacy-eh=false") end
    if kind == "shared" then table.insert(arguments, "-Wl,--export-dynamic") end
    local linkdirs = table.join(table.wrap(target:get("linkdirs")), contract.inherited(target, "linkdirs"))
    local links = table.join(table.wrap(target:get("links")), contract.inherited(target, "links"))
    for _, directory in ipairs(table.unique(linkdirs)) do table.insert(arguments, "-L" .. path.absolute(directory)) end
    for _, library in ipairs(links) do
        table.insert(arguments, path.extension(library) == ".a" and path.absolute(library) or "-l" .. library)
    end
    table.join2(arguments, table.wrap(target:get("ldflags")))
    table.join2(arguments, {"-o", output})
    os.vrunv(programs[cpp_used and "cxx" or "cc"], arguments, {envs = {TMPDIR = temporary}})
    target:data_set("ros.sdk.build_command", {program = programs[cpp_used and "cxx" or "cc"], arguments = arguments})
    if kind == "shared" then
        import("wasm_module", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
            .initialize(output, entry == "freestanding" and "__wasm_call_ctors" or "_initialize")
    end
end

-- @brief Compile mixed C and C++ sources with their respective frontends.
-- @details Reuse the explicit object/link graph; C adapters retain C ABI and
-- language semantics even when the command entry is C++.
function build_mixed(target, root, triple, extra)
    return _linked(target, root, triple, extra)
end

-- @brief Validate the narrow Guest-owned stack entry ABI without probing tools.
-- @details No threaded libc, pthread or std::thread closure is substituted.
function configure_threaded(target, root, context)
    assert(context.platform == "wasi" and context.triple == "wasm32-wasip1-threads"
        and (context.language == "c" or context.language == "cpp")
        and context.kind == "binary" and context.artifact_model == "binary",
        "SDK C/C++ threads implement only complete wasm32 WASI freestanding binaries")
    assert(context.entry == "freestanding" and context.exception_profile == "noeh",
        "Threaded libc/pthread/std::thread closures are not installed; select freestanding/noeh with the Guest stack bootstrap")
    assert(context.memory_import and context.memory_import.module == "env" and context.memory_import.name == "memory",
        "The freestanding thread ABI requires the explicit env.memory WAT owner binding")
    for _, feature in ipairs(context.features) do
        assert(feature == "threads" or feature == "bulk-memory",
            "The freestanding C/C++ thread route implements threads and bulk-memory only")
    end
    local initial, maximum
    for _, argument in ipairs(table.wrap(target:get("ldflags"))) do
        initial = tonumber(argument:match("^%-Wl,%-%-initial%-memory=(%d+)$")) or initial
        maximum = tonumber(argument:match("^%-Wl,%-%-max%-memory=(%d+)$")) or maximum
    end
    assert(initial and maximum and initial % 65536 == 0 and maximum % 65536 == 0
        and initial >= 2097152 and initial <= maximum and maximum <= 2147483648,
        "Freestanding threads require explicit page-aligned -Wl,--initial-memory= and --max-memory= bounds (initial >= 2 MiB)")
    return {initial = initial, maximum = maximum}
end

-- @brief Link genuine C/C++ and the SDK's Wasm-only stack bootstrap.
-- @details Ordinary target-library selection remains single-threaded. Only its
-- compiler resource is reused here; -nostdlib omits that libc/libc++ entirely.
function _threaded_freestanding(target, root, triple, extra)
    local artifacts = import("artifact_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    local language = target:values("ros.sdk.language")
    local context = {platform = target:values("ros.sdk.platform"), triple = triple, language = language,
        kind = target:kind(), artifact_model = artifacts.model(target), memory_import = artifacts.memory_import(target),
        entry = target:values("ros.sdk.entry") or "command", exception_profile = target:values("ros.sdk.exception_profile") or "noeh",
        features = target:get("values.ros.sdk.features") or {}}
    configure_threaded(target, root, context)
    assert(not artifacts.uses_libraries(target) and #(extra or {}) == 0,
        "Threaded C/C++ linking has no libc/library graph; declare the WAT owner as a build-only dependency")
    local selected = selection(root, "wasm32-wasip1", "noeh")
    local programs = tools(root)
    local compiler = programs[language == "cpp" and "cxx" or "cc"]
    local version = os.iorunv(compiler, {"--version"})
    assert(version:find("clang version 23.", 1, true), "The freestanding thread compiler must be the existing LLVM23")
    target:data_set("ros.sdk.compiler_version", version:trim())
    local temporary = artifacts.workspace(target, "thread-bootstrap")
    os.mkdir(temporary)
    local object = path.join(temporary, "wasip1_thread_entry.o")
    local assembly = path.join(root, "tools/shared/wasm/wasip1_thread_entry.s")
    local compile = {"--target=" .. triple, "-resource-dir=" .. _installed(root, selected.resource_dir),
        "-fintegrated-cc1", "-matomics", "-mbulk-memory", "-c", assembly, "-o", object}
    os.vrunv(programs.cc, compile, {envs = {TMPDIR = temporary}})
    local arguments = {"--target=" .. triple, "--sysroot=" .. _installed(root, selected.sysroot),
        "-resource-dir=" .. _installed(root, selected.resource_dir), "-fintegrated-cc1",
        "-ffreestanding", "-fno-builtin", "-matomics", "-mbulk-memory", "-Wall", "-Wextra", "-Werror",
        language == "cpp" and "-std=c++20" or "-std=c11", "-I" .. path.join(root, "include")}
    if language == "cpp" then table.join2(arguments, {"-fno-exceptions", "-fno-rtti", "-nostdinc++"}) end
    for _, directory in ipairs(table.wrap(target:get("includedirs"))) do table.insert(arguments, "-I" .. path.absolute(directory)) end
    for _, definition in ipairs(table.wrap(target:get("defines"))) do table.insert(arguments, "-D" .. definition) end
    table.join2(arguments, table.wrap(target:get("cxflags")))
    table.join2(arguments, table.wrap(target:get(language == "cpp" and "cxxflags" or "cflags")))
    local objects, source_commands = {object}, {}
    for index, source in ipairs(target:sourcefiles()) do
        local compiled = path.join(temporary, string.format("source-%04d.o", index))
        local command = table.join(arguments, {"-c", path.absolute(source), "-o", compiled})
        os.vrunv(compiler, command, {envs = {TMPDIR = temporary}})
        table.insert(source_commands, {program = compiler, arguments = command})
        table.insert(objects, compiled)
    end
    local output = path.absolute(target:targetfile())
    os.mkdir(path.directory(output))
    local link = {"--target=" .. triple, "--sysroot=" .. _installed(root, selected.sysroot),
        "-fuse-ld=" .. programs.ld, "-nostdlib", "-Wl,--stack-first", "-Wl,-z,stack-size=1048576",
        "-Wl,--shared-memory", "-Wl,--import-memory", "-Wl,--no-entry", "-Wl,--export=_start",
        "-Wl,--export=wasi_thread_start", "-Wl,--export=__stack_pointer", "-Wl,--export=__tls_base",
        "-Wl,--export=__tls_size", "-Wl,--export=__tls_align"}
    table.join2(link, table.wrap(target:get("ldflags")))
    table.join2(link, objects)
    table.join2(link, {"-o", output})
    os.vrunv(compiler, link, {envs = {TMPDIR = temporary}})
    target:data_set("ros.sdk.build_command", {program = compiler, arguments = link, sources = source_commands,
        bootstrap = {program = programs.cc, arguments = compile, source = assembly, sha256 = hash.sha256(assembly):lower()}})
end

-- @brief Build the selected native Xmake kind with the one pinned real toolchain.
function build(target, root, triple, extra)
    if target:values("ros.sdk.threads") then return _threaded_freestanding(target, root, triple, extra) end
    local artifacts = import("artifact_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    if target:kind() ~= "binary" or artifacts.uses_libraries(target) then
        return _linked(target, root, triple, extra)
    end
    return _command(target, root, triple, extra)
end
