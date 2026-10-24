-- @file moonbit.lua
-- @brief Compile complete Unitree MoonBit observations with a real offline compiler closure.
-- @details Xmake installs the compiler, matching compiled core, native loader,
-- libraries, licenses, and full file inventory from the SDK's pinned XMZ input.
-- Package resolution and compilation are implemented in Lua. No shell, Python,
-- Node, Moon package manager, ambient compiler, ROS, or uwvm2 is needed to build.

-- @brief Validate the exact reviewed MoonBit linear-memory command profile.
-- @param target Target declaring genuine MoonBit files and its platform.
-- @param root SDK root carrying reviewed source packages.
-- @param triple Explicit requested pointer width and WASI profile.
-- @details The ABI arena and compiler linear backend qualify wasm32-wasip1.
-- A wasm64, GC, threads, or Preview 2 request is refused without substitution.
function configure(target, root, triple)
    triple = triple or target:values("ros.sdk.triple") or "wasm32-wasip1"
    local backend = target:values("ros.sdk.backend")
    assert(backend == "ros1" or backend == "ros2", "Select exactly native ros1 or ros2")
    assert(target:arch() == "wasm32" and target:plat() == "wasm-wasip1", "MoonBit qualifies wasm32 WASI Preview 1 only")
    target:set("values", "ros.sdk.backend", backend)
    target:set("values", "ros.sdk.triple", triple)
    target:set("values", "ros.sdk.producer", "genuine-moonbit-compiler")
    target:set("targetdir", path.join(path.absolute(target:scriptdir()), "build"))
    target:set("objectdir", path.join(path.absolute(target:scriptdir()), ".uwvm-ros/objects"))
    target:set("dependir", path.join(path.absolute(target:scriptdir()), ".uwvm-ros/dependencies"))
    target:set("toolchains", "ros.wasm.command")
    assert(triple == "wasm32-wasip1", "MoonBit qualifies wasm32-wasip1 only")
    assert(target:values("ros.sdk.language") == "moonbit", "Select set_language('moonbit')")
    assert(
        os.isdir(path.join(root, "include/platform/unitree/moonbit")),
        "Install the complete MoonBit Unitree bindings"
    )
    for _, source in ipairs(target:sourcefiles()) do
        assert(path.extension(source) == ".mbt", "MoonBit requires actual .mbt source files")
    end
end

-- @brief Restore the complete matching compiler/runtime closure without PATH probes.
-- @param root SDK distribution containing its pinned native host manifest.
-- @return Installed closure directory and loader/compiler entry paths.
-- @details Every payload hash is checked on initial extraction and reuse. The
-- build has no network fallback or automatic version/target replacement.
function tools(root)
    import("core.project.config")
    local manifest = path.join(root, "share/toolchains/host", os.host() .. "-" .. os.arch(), "moonbit.json")
    assert(os.isfile(manifest), "Install this SDK distribution's MoonBit host-tool bundle")
    local home = os.getenv("XDG_CACHE_HOME")
        or path.join(assert(os.getenv("HOME"), "Set HOME or XDG_CACHE_HOME for the compiler cache"), ".cache")
    return import("tool_bundle", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).install(
        manifest,
        config.get("ros-tool-cache") or path.join(home, "uwvm-ros/host-tools")
    )
end

-- @brief Resolve a trusted SDK package source and its explicit dependencies.
-- @param root Installed SDK root, never an example-relative filesystem path.
-- @param backend Exact ros1 or ros2 selector inherited from the platform.
-- @return Ordered source package descriptors; earlier packages satisfy imports.
function packages(root, backend)
    local base = path.join(root, "include/platform/ros/moonbit")
    local unitree = path.join(root, "include/platform/unitree/moonbit")
    return {
        { name = "uwvm/ros/wire", alias = "wire", directory = path.join(base, "wire"), dependencies = { "utf8" } },
        {
            name = "uwvm/ros/" .. backend,
            alias = "ros",
            sources = { path.join(base, backend, "raw.mbt") },
            dependencies = {},
        },
        {
            name = "uwvm/unitree/command",
            alias = "command",
            directory = path.join(unitree, "command"),
            dependencies = { "ros", "wire", "utf8" },
        },
        {
            name = "uwvm/unitree/" .. backend,
            alias = "unitree",
            directory = path.join(unitree, backend),
            dependencies = { "command", "wire", "utf8" },
        },
    }
end

-- @brief Compile MoonBit source packages and link their actual compiler cores.
-- @param target Target with actual .mbt entry sources and source-language rule.
-- @param root Installed SDK namespace root.
-- @param triple Exact qualified Wasm command target.
-- @details Package .mi/.core files are private build intermediates. The linker
-- reserves bytes below 8519680 for the explicit ABI arena and exports _start.
-- Application build/ contains only the completed .wasm command.
function build(target, root, triple)
    import("core.project.config")
    triple = triple or target:values("ros.sdk.triple") or "wasm32-wasip1"
    configure(target, root, triple)
    local closure, programs = tools(root)
    local backend = target:values("ros.sdk.backend") or "ros2"
    assert(backend == "ros1" or backend == "ros2", "Select exactly ros1 or ros2")
    local standard = path.join(closure, "core")
    local cache = path.join(path.absolute(target:scriptdir()), ".uwvm-ros/moonbit")
    os.mkdir(cache)
    local interfaces = {
        utf8 = path.join(standard, "encoding/utf8/utf8.mi"),
    }
    local cores = { path.join(standard, "abort/abort.core"), path.join(standard, "core.core") }
    import("core.base.json")
    local receipt_file = path.join(cache, "build-receipt.json")
    local receipt = {
        format = "uwvm-unitree-moonbit-frontend-v1",
        status = "BUILDING",
        backend = backend,
        commands = {},
        inputs = {},
    }
    local function invoke(arguments)
        local command = { "--library-path", path.join(closure, "runtime"), programs.moonc }
        table.join2(command, arguments)
        table.insert(receipt.commands, { program = programs.loader, arguments = command })
        json.savefile(receipt_file, receipt)
        os.vrunv(programs.loader, command, { envs = { MOON_HOME = closure } })
    end
    local function compile(package, sources, dependencies, main)
        for _, source in ipairs(sources) do
            table.insert(receipt.inputs, { path = source, sha256 = hash.sha256(source):lower() })
        end
        local output = path.join(cache, package:gsub("/", "_") .. ".core")
        local arguments = { "build-package" }
        table.join2(arguments, sources)
        table.join2(arguments, { "-target", "wasm", "-pkg", package, "-std-path", standard, "-o", output })
        for _, dependency in ipairs(dependencies) do
            local source = type(dependency) == "table" and dependency.source or dependency
            local alias = type(dependency) == "table" and dependency.alias or dependency
            table.join2(
                arguments,
                { "-i", assert(interfaces[source], "Missing MoonBit package dependency") .. ":" .. alias }
            )
        end
        if main then
            table.insert(arguments, "-is-main")
        end
        invoke(arguments)
        table.insert(cores, output)
        return path.join(cache, package:gsub("/", "_") .. ".mi")
    end
    for _, package in ipairs(packages(root, backend)) do
        local sources = package.sources or os.files(path.join(package.directory, "*.mbt"))
        table.sort(sources)
        assert(#sources > 0, "Missing actual MoonBit package sources: " .. package.name)
        interfaces[package.alias] = compile(package.name, sources, package.dependencies, false)
    end
    local sources = {}
    for _, source in ipairs(target:sourcefiles()) do
        table.insert(sources, path.absolute(source))
    end
    assert(#sources > 0, "Declare the actual MoonBit application source")
    local main = "uwvm/command"
    compile(main, sources, { "unitree", "command" }, true)
    local output = path.absolute(target:targetfile())
    os.mkdir(path.directory(output))
    local arguments = { "link-core" }
    table.join2(arguments, cores)
    table.join2(arguments, {
        "-target",
        "wasm",
        "-main",
        main,
        "-o",
        output,
        "-heap-start-address",
        "8519680",
        "-memory-limits-min",
        "256",
        "-memory-limits-max",
        "1024",
        "-export-memory-name",
        "memory",
        "-no-block-params",
        "-wasi",
    })
    invoke(arguments)
    assert(os.isfile(output), "The actual MoonBit linker produced no Wasm command")
    receipt.status = "PASS"
    receipt.artifact_sha256 = hash.sha256(output):lower()
    json.savefile(receipt_file, receipt)
end
