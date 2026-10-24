-- @file go_rust.lua
-- @brief Build genuine Go, TinyGo and Rust commands for both original ROS ABIs.
-- @details Each compiler consumes the actual application's source and complete
-- public language SDK. Exact backend features/tags select the original imports.
-- Xmake owns all mappings; no shell, Python, package download or C application
-- template is required during ordinary distribution builds.

-- @brief Identify one actual maintained native ROS source producer.
-- @param language Exact public set_language identifier.
-- @return True only for genuine Go, TinyGo or Rust.
function supports(language)
    return language == "go" or language == "tinygo" or language == "rs"
end

-- @brief Select one exact original ROS import family and command target.
-- @param target Ordinary unified SDK target.
-- @return Actual language, selected backend and complete installed SDK root.
local function settings(target)
    local language = target:values("ros.sdk.language")
    local platform = target:values("ros.sdk.platform")
    local backend = (platform == "abb" or platform == "unitree") and target:values("ros.sdk.backend") or platform
    assert(supports(language), "No genuine Go/TinyGo/Rust native ROS producer")
    assert(backend == "ros1" or backend == "ros2", "Select the exact original ROS backend")
    assert(target:arch() == "wasm32" and target:plat() == "wasm-wasip1", "Select exact wasm32-wasip1")
    import("core.project.config")
    local profile = target:values("ros.sdk.exception_profile") or config.get("ros-exceptions") or "noeh"
    assert(profile == "noeh", "This genuine frontend command profile requires noeh; Wasm EH is not qualified")
    local selected = target:values("ros.sdk.backend")
    assert(not selected or selected == backend, "Middleware version declaration conflicts with platform")
    if platform == "abb" then
        assert(backend == "ros2", "ABB observations implement the exact original ROS 2 schema")
    end
    local distribution = target:values("ros.sdk.distribution")
    assert(
        (backend == "ros1" and distribution == "noetic")
            or (backend == "ros2" and distribution == "jazzy")
            or (platform == "abb" and backend == "ros2" and distribution == "humble"),
        "Select the qualified original middleware schema distribution"
    )
    return language, backend, assert(target:values("ros.sdk.root"), "Select the installed SDK root"), platform
end

-- @brief Configure actual language sources without host compiler discovery.
-- @param target Ordinary target already populated by the public declarations.
-- @return None; only the target's exact source/ABI metadata is configured.
-- @details All products remain one final .wasm in this independent example's
-- output directory. A deployment host may configure/run without a compiler.
function configure(target)
    local language, _, root = settings(target)
    local extension = language == "rs" and ".rs" or ".go"
    local sources = target:sourcefiles()
    assert(#sources == 1 and path.extension(sources[1]) == extension, "Declare one actual native source entry")
    target:set("kind", "binary")
    target:set("extension", ".wasm")
    target:set("targetdir", path.join(path.absolute(target:scriptdir()), "build"))
    target:set("toolchains", "ros.wasm.command")
    target:set("values", "ros.sdk.root", root)
    target:set("values", "ros.sdk.triple", "wasm32-wasip1")
    target:set("values", "ros.sdk.producer", "genuine-native-source")
    for _, name in ipairs({ "go", "go.env", "go.build", "rust", "rust.build" }) do
        if target:rule(name) then
            local replacement = target:rule("ros.wasm.source"):clone()
            replacement:name_set(name)
            target:rule_add(replacement)
        end
    end
end

-- @brief Restore an audited native frontend or select an explicit development path.
-- @param root Installed SDK containing host-specific fixed XMZ manifests.
-- @param language Actual compiler identity: go, tinygo or rs.
-- @return Exact real compiler and full installed native closure root, when bundled.
-- @details An absolute override proves no clean-host dependency qualification.
local function frontend(root, language)
    local explicit = os.getenv("UWVM_NATIVE_" .. language:upper())
    if explicit then
        assert(path.is_absolute(explicit) and os.isfile(explicit), "Use an existing absolute frontend path")
        return explicit, nil
    end
    import("core.project.config")
    local manifest =
        path.join(root, "share/toolchains/host", os.host() .. "-" .. os.arch(), "native-" .. language .. ".json")
    assert(os.isfile(manifest), "Install the matching native-" .. language .. " SDK host-tool bundle")
    local home = os.getenv("XDG_CACHE_HOME")
        or path.join(assert(os.getenv("HOME"), "Set HOME for the compiler cache"), ".cache")
    local cache = config.get("ros-tool-cache") or path.join(home, "uwvm-ros/host-tools")
    local directory, programs = import("tool_bundle", {
        rootdir = path.join(root, "tools/xmake"),
        anonymous = true,
    }).install(manifest, cache)
    return assert(programs.compiler, "The pinned bundle omitted its genuine compiler"), directory
end

-- @brief Select the shared real LLVM 23 linker for native Rust/TinyGo output.
-- @param root Complete installed SDK and common C-family tool bundle.
-- @return Exact actual LLVM 23 wasm linker path.
local function linker(root)
    local explicit = os.getenv("UWVM_NATIVE_LINKER23")
    if explicit then
        assert(path.is_absolute(explicit) and os.isfile(explicit), "Use an existing absolute LLVM 23 linker")
        return explicit
    end
    local tools = import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).tools(root)
    return assert(tools.ld)
end

-- @brief Prepare TinyGo's exact WASI target using LLVM 23 native support objects.
-- @param root Installed SDK containing the qualified LLVM 23 target libraries.
-- @param directory Exclusive application cache for generated target metadata.
-- @param tinyroot Exact retained original TinyGo source/resource root.
-- @return Custom target filename, LLVM 23 support object and target descriptor.
-- @details The precise collector retains normal TinyGo ownership. A single
-- blocking scheduler implements finite synchronous commands and time.Sleep.
-- The runtime assembly, libc and Compiler-RT use LLVM 23. No internal TinyGo
-- C compiler or inherited target extra-file recipe compiles those components.
local function tiny_target(root, directory, tinyroot)
    import("core.base.json")
    local family = import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true })
    local selected = family.selection(root, "wasm32-wasip1", "noeh")
    local compiler = os.getenv("UWVM_NATIVE_LLVM23")
    if not compiler then
        compiler = assert(family.tools(root).cc)
    end
    local object = path.join(directory, "tinygo-stack.o")
    os.vrunv(compiler, {
        "--target=wasm32-wasip1",
        "-fintegrated-cc1",
        "-no-canonical-prefixes",
        "-resource-dir=" .. path.join(root, selected.resource_dir),
        "-O2",
        "-mbulk-memory",
        "-msign-ext",
        "-mnontrapping-fptoint",
        "-mno-multivalue",
        "-mno-reference-types",
        "-c",
        path.join(tinyroot, "src/runtime/asm_tinygowasm.S"),
        "-o",
        object,
    })
    local filename = path.join(directory, "tinygo-llvm23.json")
    json.savefile(filename, {
        ["llvm-target"] = "wasm32-unknown-wasi",
        cpu = "generic",
        features = "+bulk-memory,+mutable-globals,+nontrapping-fptoint,+sign-ext,-multivalue,-reference-types",
        ["build-tags"] = { "tinygo.wasm" },
        goos = "wasip1",
        goarch = "wasm",
        linker = "wasm-ld",
        gc = "precise",
        scheduler = "none",
        ["default-stack-size"] = 1048576,
    })
    return filename, object, selected
end

-- @brief Compile one actual source application and complete original language SDK.
-- @param target Configured real-language native ROS application.
-- @return None; the declared target file receives one complete Wasm command.
-- @details Package resolution is offline. Private objects and dependency maps
-- stay in .uwvm-ros; the output directory contains exactly one final .wasm command.
-- Backend selection changes only the explicitly selected original import family.
function build(target)
    configure(target)
    local language, backend, root, platform = settings(target)
    local directory = path.absolute(target:scriptdir())
    local cache = path.join(directory, ".uwvm-ros/native-ros-" .. language)
    local output = path.absolute(target:targetfile())
    local source = path.absolute(target:sourcefiles()[1])
    os.mkdir(cache)
    os.mkdir(path.directory(output))
    local compiler, bundle = frontend(root, language)
    if language == "rs" then
        local library = path.join(root, "include/platform/ros/rs")
        local roslib = path.join(cache, "libroswasm.rlib")
        local name = platform == "abb" and "abb_observation"
            or platform == "unitree" and "unitree"
            or "native_ros_command"
        local commandlib = path.join(cache, "lib" .. name .. ".rlib")
        local common = {
            "--edition=2021",
            "--target=wasm32-wasip1",
            "--cfg",
            'feature="' .. backend .. '"',
            "-Copt-level=2",
            "-Cpanic=abort",
        }
        if bundle then
            table.join2(common, { "--sysroot", path.join(bundle, "original/rust") })
        end
        if platform == "abb" or platform == "unitree" then
            table.join2(common, { "--cfg", 'feature="alloc"' })
        end
        os.vrunv(
            compiler,
            table.join(common, {
                "--crate-name",
                "roswasm",
                "--crate-type=rlib",
                path.join(library, "src/lib.rs"),
                "-o",
                roslib,
            })
        )
        os.vrunv(
            compiler,
            table.join(common, {
                "--crate-name",
                name,
                "--crate-type=rlib",
                "--extern",
                "roswasm=" .. roslib,
                platform == "abb" and path.join(root, "include/platform/abb/rs/observation.rs")
                    or platform == "unitree" and path.join(root, "include/platform/unitree/rs/lib.rs")
                    or path.join(library, "native_command/lib.rs"),
                "-o",
                commandlib,
            })
        )
        os.vrunv(
            compiler,
            table.join(common, {
                "--extern",
                "roswasm=" .. roslib,
                "--extern",
                name .. "=" .. commandlib,
                "-Ldependency=" .. cache,
                "-Clinker=" .. linker(root),
                "-Clink-arg=--stack-first",
                "-Clink-arg=-z",
                "-Clink-arg=stack-size=1048576",
                "-Clink-arg=--max-memory=67108864",
                "-Clink-arg=--threads=1",
                source,
                "-o",
                output,
            })
        )
        return
    end
    local module = path.join(root, "include/platform/ros", language)
    local workspace = path.join(cache, "go.work")
    local modules = { directory, module }
    if platform == "abb" then
        table.insert(modules, path.join(root, "include/platform/abb", language, "observation"))
        table.insert(modules, path.join(root, "include/platform/abb", language, "ros2/abb-ros2-complete"))
    elseif platform == "unitree" then
        table.insert(modules, path.join(root, "include/platform/unitree", language))
        table.insert(modules, path.join(root, "include/platform/unitree", language, "ros1"))
        table.insert(modules, path.join(root, "include/platform/unitree", language, "ros2"))
    end
    local declarations = {}
    for _, location in ipairs(modules) do
        table.insert(declarations, string.format("%q", location))
    end
    io.writefile(workspace, "go 1.24\nuse (\n" .. table.concat(declarations, "\n") .. "\n)\n")
    local go, go_bundle = compiler, bundle
    if language == "tinygo" then
        go, go_bundle = frontend(root, "go")
    end
    local goroot = go_bundle and path.join(go_bundle, "original/go")
        or os.getenv("UWVM_NATIVE_GO_ROOT")
        or path.normalize(path.join(path.directory(go), ".."))
    local environment = {
        GOOS = "wasip1",
        GOARCH = "wasm",
        CGO_ENABLED = "0",
        GOENV = "off",
        GOROOT = goroot,
        GOWORK = workspace,
        GOPROXY = "off",
        GOSUMDB = "off",
        GOTOOLCHAIN = "local",
        GOMAXPROCS = "2",
        GOCACHE = path.join(cache, "go-cache"),
    }
    if language == "go" then
        os.vrunv(compiler, { "build", "-p", "2", "-tags=" .. backend, "-trimpath", "-o", output, "." }, {
            curdir = directory,
            envs = environment,
        })
        return
    end
    local selected_linker = linker(root)
    environment.PATH = path.directory(selected_linker) .. ":" .. path.directory(go) .. ":" .. (os.getenv("PATH") or "")
    environment.TINYGOCACHE = path.join(cache, "tinygo-cache")
    environment.XDG_CACHE_HOME = path.join(cache, "native-cache")
    if bundle then
        environment.TINYGOROOT = path.join(bundle, "original/tinygo")
    end
    local tinyroot = environment.TINYGOROOT or path.normalize(path.join(path.directory(compiler), ".."))
    local selected_target, support, selected = tiny_target(root, cache, tinyroot)
    local command_object = path.join(cache, "command.o")
    os.vrunv(compiler, {
        "build",
        "-target=" .. selected_target,
        "-tags=" .. backend,
        "-panic=trap",
        "-opt=2",
        "-p",
        "2",
        "-x",
        "-o",
        command_object,
        ".",
    }, { curdir = directory, envs = environment })
    os.vrunv(selected_linker, {
        "--stack-first",
        "-z",
        "stack-size=1048576",
        "--threads=1",
        "--max-memory=67108864",
        "--gc-sections",
        command_object,
        support,
        path.join(root, selected.lib_dir, "libc.a"),
        path.join(root, selected.builtins_lib),
        "-o",
        output,
    })
end

-- @brief Run a completed command through the actual original native ROS gateway.
-- @param target Ordinary deployment target selecting an existing Wasm artifact.
-- @return No value after successful process replacement; the runner owns exit status.
-- @details This lifecycle requires the separately installed uwvm2-ros, original
-- ROS/gateway and Python process launcher. It restores no compiler, resolves no
-- package and never rebuilds the source. Only the explicit deployment grants
-- admit native resources; the selected SDK language grants none.
function run(target)
    local _, _, root, platform = settings(target)
    assert(platform == "ros1" or platform == "ros2", "Use the ABB provider's original observation runner")
    import("core.project.config")
    import("lib.detect.find_program")
    local python = assert(
        find_program(target:values("ros.sdk.python") or os.getenv("UWVM_ROS_PYTHON") or "python3"),
        "Install the native deployment's Python 3 process launcher"
    )
    local deployment = target:values("ros.native.run_config")
        or target:values("ros.sdk.run_config")
        or config.get("ros-run-config")
        or os.getenv("UWVM_ROS_RUN_CONFIG")
    assert(deployment and os.isfile(deployment), "Set a trusted original native ROS deployment")
    local directory = path.absolute(target:scriptdir())
    local scenario = target:values("ros.sdk.scenario") or path.filename(directory)
    local artifact = path.absolute(target:targetfile())
    assert(os.isfile(artifact), "Build or deploy the completed genuine-language Wasm before xmake run")
    os.execv(python, {
        path.join(root, "tools/platform/ros/run.py"),
        "--config",
        path.absolute(deployment),
        "--target",
        "wasm32-wasip1",
        "--scenario",
        scenario,
        "--wasm",
        artifact,
        "--report-directory",
        path.join(directory, ".uwvm-ros/native-ros/run"),
    })
end
