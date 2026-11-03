-- SPDX-License-Identifier: Apache-2.0
-- @file transplate.lua
-- @brief Link a selected legacy Python API to the existing CPython Wasm core.
-- @details This is an opt-in source producer. Runtime grants and native ROS
-- admission remain external. A build receipt never asserts runtime acceptance.

local profiles = {
    ["rclpy-jazzy-async-tasks-v2"] = "include/platform/ros/transplate/ros2/rclpy/v2/profile.json",
    ["rclpy-jazzy-pubsub-v1"] = "include/platform/ros/transplate/ros2/rclpy/v1/profile.json",
    ["rclpy-jazzy-private-instances-v1"] = "include/platform/ros/transplate/ros2/rclpy/private_instances/v1/profile.json",
    ["rospy-noetic-pubsub-v1"] = "include/platform/ros/transplate/ros1/rospy/v1/profile.json",
}

local function installed_file(root, relative)
    local native = import("core", { rootdir = path.join(root, "tools/language/native"), anonymous = true })
    assert(type(relative) == "string" and not relative:find("\\", 1, true)
        and not relative:find(":", 1, true), "Use a portable installed source path")
    local result = native.installed(root, relative)
    assert(os.isfile(result), "Install the complete Python transplate input: " .. relative)
    return result
end

local function selection(target, root, request)
    import("core.base.json")
    assert(request and request.api_version == 1 and request.language == "py"
        and request.wasi_preview == 1 and not request.threads and request.entry == "command"
        and request.triple == "wasm32-wasip1" and request.exception_profile == "noeh"
        and ((request.backend == "ros2" and request.distribution == "jazzy")
            or (request.backend == "ros1" and request.distribution == "noetic"))
        and target:kind() == "binary", "Select ROS2 Jazzy or ROS1 Noetic with wasm32-wasip1, noeh, single-thread command")
    assert(#request.sources == 1 and path.extension(request.sources[1]) == ".py",
        "Declare one actual Python application entry")
    for _, dependency in ipairs(request.dependency_targets or {}) do
        assert(dependency.usage == "build-only", "This command profile has no linked-module ABI")
    end
    local name = target:values("ros.sdk.python.transplate")
    local filename = installed_file(root, assert(profiles[name], "Unknown Python transplate profile"))
    local profile = assert(json.loadfile(filename))
    assert(profile.format == "uwvm-python-transplate-profile-v1" and profile.id == name
        and profile.backend == request.backend and profile.distribution == request.distribution
        and profile.target == request.triple
        and profile.python_version == "3.14.8", "The installed Python migration profile differs")
    return profile, filename
end

-- @brief Validate metadata without invoking a compiler or a native ROS client.
function configure(target, root, request)
    selection(target, root, request)
    import("core.project.config")
    -- Keep this producer's generated files inside Xmake's selected build tree.
    -- The platform provider supplies a source-relative default before this hook.
    local builddir = config.builddir({ absolute = true })
    target:set("objectdir", path.join(builddir, ".objs"))
    target:set("dependir", path.join(builddir, ".deps"))
    target:set("toolchains", "ros.wasm.command")
    target:set("values", "ros.sdk.producer", "genuine-cpython-transplate")
end

local function source_header(raw)
    assert(#raw > 0 and #raw <= 16777216 and not raw:find("\0", 1, true),
        "The complete Python source closure must be NUL-free and at most 16 MiB")
    local rows = { "static unsigned char const transplate_source[] = {" }
    for begin = 1, #raw, 24 do
        local values = {}
        for at = begin, math.min(begin + 23, #raw) do
            values[#values + 1] = tostring(raw:byte(at))
        end
        rows[#rows + 1] = "    " .. table.concat(values, ",") .. ","
    end
    rows[#rows + 1] = "    0\n};\n"
    return table.concat(rows, "\n")
end

-- @brief Compile target marshalling code and link the one existing Python core.
function build(target, root, request)
    import("core.base.json")
    local profile, profile_file = selection(target, root, request)
    for _, row in ipairs(profile.inputs) do
        local filename = installed_file(root, row.path)
        assert(os.filesize(filename) == row.bytes and hash.sha256(filename):lower() == row.sha256,
            "A reviewed Python migration input changed: " .. row.path)
    end
    local core_file = installed_file(root, profile.core_manifest)
    assert(hash.sha256(core_file):lower() == profile.core_manifest_sha256, "The Python core manifest changed")
    local engine = assert(json.loadfile(core_file))
    assert(engine.format == "uwvm-genuine-language-core-v1" and engine.language == "py"
        and engine.version == "3.14.8" and engine.target == request.triple
        and engine.compiler == "LLVM 23.1.4", "Install the matching genuine Python core")
    for _, row in ipairs(engine.inputs) do
        local filename = installed_file(root, row.path)
        assert(os.filesize(filename) == row.bytes and hash.sha256(filename):lower() == row.sha256,
            "A genuine CPython core input changed: " .. row.path)
    end
    local bundle_file = installed_file(root, profile.bundle)
    local manifest = assert(json.loadfile(bundle_file))
    assert(manifest.backend == request.backend and manifest.module_loading == "lazy",
        "Use the selected finite, lazy Python source closure")
    local pack = import("pack", { rootdir = path.join(root, "tools/language/js"), anonymous = true })
    local source, inputs = pack.bundle(root, "py", path.absolute(request.sources[1]), manifest)
    local work = path.join(path.absolute(target:objectdir()), "python-transplate")
    os.mkdir(work)
    io.writefile(path.join(work, "transplate_source.h"), source_header(source))
    local native = import("core", { rootdir = path.join(root, "tools/language/native"), anonymous = true })
    local selected, programs = native.llvm(root, request.triple, request.exception_profile)
    local common = native.cflags(root, selected, { include_dirs = table.join(engine.include_roots, profile.include_dirs) })
    table.join2(common, { "-I" .. work, "-I" .. path.join(root, "include"), "-std=c11",
        "-DROSWASM_BACKEND=" .. (request.backend == "ros1" and "1" or "2"), "-DROSWASM_OWNED_SERVICE=0",
        "-ffunction-sections", "-fdata-sections", "-ffile-prefix-map=" .. root .. "=/__uwvm_sdk__",
        "-ffile-prefix-map=" .. work .. "=/__uwvm_build__/python-transplate" })
    table.join2(common, engine.compile_flags or {})
    assert(profile.guest_memory_probe == nil or type(profile.guest_memory_probe) == "boolean",
        "The guest-memory functional profile switch must be explicit boolean metadata")
    if profile.guest_memory_probe then
        table.insert(common, "-DROSWASM_GUEST_MEMORY_PROBE=1")
    end
    local feature_flags = { ["bulk-memory"] = "-mbulk-memory", ["reference-types"] = "-mreference-types",
        ["sign-extension"] = "-msign-ext" }
    for _, feature in ipairs(request.features) do
        table.insert(common, assert(feature_flags[feature], "Unsupported feature in this Python migration profile: " .. feature))
    end
    for _, relative in ipairs(engine.forced_includes or {}) do
        table.join2(common, { "-include", installed_file(root, relative) })
    end
    local commands, objects = {}, {}
    local function run(arguments)
        commands[#commands + 1] = { program = programs.cc, argv = arguments }
        os.vrunv(programs.cc, arguments)
    end
    for index, relative in ipairs(profile.c_sources) do
        local object = path.join(work, "source-" .. index .. ".o")
        run(table.join(common, { "-c", installed_file(root, relative), "-o", object }))
        objects[#objects + 1] = object
    end
    local output = path.absolute(target:targetfile())
    os.mkdir(path.directory(output))
    local temporary = path.join(work, "application.wasm")
    run(table.join(common, { "-fuse-ld=" .. programs.ld, "-rtlib=compiler-rt", "-Wl,--threads=1",
        "-Wl,--stack-first", "-Wl,-z,stack-size=8388608", "-Wl,--max-memory=268435456",
        "-Wl,--gc-sections" }, objects, { installed_file(root, engine.archive) }, engine.link_libraries,
        { "-o", temporary }))
    local prefix = io.readfile(temporary, { encoding = "binary" }):sub(1, 8)
    assert(prefix == "\0asm\1\0\0\0", "The Python producer did not emit core Wasm")
    os.cp(temporary, output)
    json.savefile(path.join(work, "build-receipt.json"), {
        format = "uwvm-python-transplate-build-v1", status = "BUILT_RUNTIME_NOT_RUN", profile = profile.id,
        language = "py", python_version = engine.version, backend = request.backend, target = request.triple,
        profile_sha256 = hash.sha256(profile_file):lower(), bundle_sha256 = hash.sha256(bundle_file):lower(),
        core_manifest_sha256 = profile.core_manifest_sha256, inputs = inputs, commands = commands,
        application_sha256 = hash.sha256(output):lower(), source_bytes = #source,
        source_evaluated_by_host = false, runtime_executed = false, native_python_business = false,
    })
end
