-- SPDX-License-Identifier: Apache-2.0
-- @file dispatch.lua
-- @brief Dispatch every platform through one provider lifecycle.
-- @details Target-local metadata prevents adjacent targets from sharing choices.
-- Every installed provider supplies its complete public schema before loading.

-- @brief Resolve pointer width, WASI preview and thread ABI independently.
-- @param target Current ordinary Xmake application.
-- @return Exact requested compiler triple; conflicts raise before compilation.
function resolve(target)
    import("core.project.config")
    local arch = target:arch()
    local plat = target:plat()
    assert(arch == "wasm32" or arch == "wasm64", "Select wasm32 or wasm64")
    local profiles = {
        ["wasm-wasip1"] = {preview = 1, threads = false},
        ["wasm-wasip1-threads"] = {preview = 1, threads = true},
        ["wasm-wasip2"] = {preview = 2, threads = false},
        ["wasm-wasip2-threads"] = {preview = 2, threads = true}
    }
    local selected = assert(profiles[plat], "Select an explicit WASI platform profile")
    local triple = arch .. "-" .. plat:sub(6)
    local explicit = config.get("ros-target")
    assert(not explicit or explicit == "detect" or explicit == triple,
           "--ros-target conflicts with set_arch/set_plat: expected " .. triple)
    target:set("values", "ros.sdk.triple", triple)
    target:set("values", "ros.sdk.address_bits", arch == "wasm64" and 64 or 32)
    target:set("values", "ros.sdk.wasi_preview", selected.preview)
    target:set("values", "ros.sdk.threads", selected.threads)
    return triple
end

-- @brief Load one provider after validating its required installed schema.
-- @param target Configured command target.
-- @return Provider module, SDK root and complete validated context.
function provider(target)
    import("core.base.json")
    local root = target:values("ros.sdk.root")
    local platform = target:values("ros.sdk.platform")
    assert(root and platform and platform:match("^[a-z][a-z0-9_%-]*$"), "Declare set_ros_platform inside the target")
    local schemafile = path.join(root, "share/platform", platform, "provider.json")
    assert(os.isfile(schemafile), "Missing required SDK provider schema: " .. platform)
    local schema = json.loadfile(schemafile)
    local contract = import("provider_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    local modulefile = contract.inside(root, schema.module)
    assert(os.isfile(modulefile) and path.extension(modulefile) == ".lua", "Missing declared provider module")
    local context = contract.validate(target, root, schema)
    -- TypeScript is a shared source frontend; the adapter still validates the
    -- selected platform through its existing JavaScript configuration contract.
    if context.language == "typescript" then
        return import("provider", {rootdir = path.join(root, "tools/language/typescript"), anonymous = true}),
               root, context
    end
    return import(path.basename(modulefile), {rootdir = path.directory(modulefile), anonymous = true}),
           root, context
end

-- @brief Configure a single Wasm output without discovering native source compilers.
-- @param target Current application target.
function configure(target)
    for _, key in ipairs({"language", "platform", "scenario", "distribution", "options",
                            "exceptions", "features", "run_config", "version", "variant", "entry"}) do
        local invalid = target:values("ros.sdk.invalid." .. key)
        assert(not invalid, invalid or "Invalid SDK declaration")
    end
    resolve(target)
    for _, name in ipairs({"rust", "rust.build", "go", "go.env", "go.build",
                            "zig", "zig.build", "dlang", "dlang.build",
                            "dlang.build.optimization", "swift", "swift.build",
                            "fortran", "fortran.build", "fortran.env"}) do
        if target:rule(name) then
            local replacement = target:rule("ros.wasm.source"):clone()
            replacement:name_set(name)
            target:rule_add(replacement)
        end
    end
    local root = target:values("ros.sdk.root")
    import("artifact_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).configure(target)
    local selected, root, context = provider(target)
    assert(type(selected.configure) == "function", "Provider must implement configure(target, root, context)")
    selected.configure(target, root, context)
end

-- @brief Validate native dependency metadata after Xmake has loaded its graph.
function dependencies(target)
    local selected, root, context = provider(target)
    local artifacts = import("artifact_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    artifacts.validate(target, root)
    local language = target:values("ros.sdk.language")
    if target:kind() ~= "binary" or artifacts.uses_libraries(target) then
        if language == "c" or language == "cpp" or language == "c_ffi_bridge" then
            assert(context and context.wasi_preview == 1 and not context.threads and context.exception_profile == "noeh",
                   "C-family library kinds currently require the explicit Preview 1, noeh, single-thread closure")
        else
            context.dependency_targets = target:data("ros.sdk.dependency_targets") or {}
            import("language_adapter", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).load(root, context)
        end
    end
end

-- @brief Compile the actual language, then require the complete sole output.
-- @param target Configured application; intermediates belong outside build/.
function build(target)
    import("core.project.project")
    resolve(target)
    local selected, root, context = provider(target)
    selected.build(target, root, context)
    local extension = target:kind() == "static" and ".a" or ".wasm"
    assert(os.isfile(target:targetfile()) and path.extension(target:targetfile()) == extension,
           "The provider did not produce its selected " .. extension .. " artifact")
    local bytes = io.readfile(target:targetfile(), {encoding = "binary"})
    assert(bytes and bytes:sub(1, 8) == (target:kind() == "static" and "!<arch>\n" or "\0asm\1\0\0\0"),
           "Expected a genuine Wasm module or real indexed static archive")
    local declared = {}
    for _, candidate in pairs(project.targets()) do
        if candidate:values("ros.sdk.root") then declared[path.absolute(candidate:targetfile())] = true end
    end
    for _, file in ipairs(os.files(path.join(target:targetdir(), "**"))) do
        assert(declared[path.absolute(file)], "Output directory contains an undeclared deployment sidecar: " .. file)
    end
    import("artifact_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).record(target, root)
end

-- @brief Run already built bytes while preserving the user's explicit policy.
-- @param target Current application; never invokes the build lifecycle.
function run(target)
    assert(target:kind() == "binary", "Run a binary application; libraries are link inputs or explicit preload modules")
    resolve(target)
    local _, root, context = provider(target)
    assert(os.isfile(target:targetfile()), "Build the application before xmake run")
    -- One launcher owns every vendor deployment. Provider-private runners must
    -- not add implicit permissions or restrict the public native type registry.
    if context.backend == "wasi" then
        return import("run", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).run(target, root, context)
    end
    return import("provider", {rootdir = path.join(root, "tools/platform/ros"), anonymous = true}).run(target, root, context)
end
