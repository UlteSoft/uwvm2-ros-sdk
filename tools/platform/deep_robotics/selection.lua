-- @file selection.lua
-- @brief Delegate source-backed quadruped platform targets to common producers.
-- @details Vendor-owned JSON describes schemas and choices. All three platform
-- families share the same compiler/interpreter adapters and version identities.

-- @brief Validate source generation, vendor version, model and exact guest ABI.
-- @param target Ordinary public DSL target. @param root Installed SDK namespace.
-- @return Platform descriptor and genuine source-language identifier.
local function settings(target, root)
    import("core.base.json")
    local vendor = target:values("ros.sdk.platform")
    assert(
        vendor == "deep_robotics" or vendor == "limx" or vendor == "booster",
        "Select an installed platform descriptor"
    )
    local descriptor = assert(json.loadfile(path.join(root, "share/platform", vendor, "provider.json")))
    assert(
        descriptor.format == "uwvm-ros-provider-v1"
            and descriptor.catalog_format == "uwvm-platform-provider-v1"
            and descriptor.platform == vendor,
        "The platform provider descriptor changed identity"
    )
    assert(target:values("ros.sdk.backend") == "ros2", "These exact source catalogs declare ROS2 interfaces")
    local distribution = target:values("ros.sdk.distribution")
    assert(
        distribution == "humble" or distribution == "jazzy",
        "Select an explicit source-compatible ROS2 distribution"
    )
    local version = target:values("ros." .. vendor .. ".version") or descriptor.default_version
    assert(descriptor.versions[version], "Select one pinned installed vendor source version")
    local model = target:values("ros." .. vendor .. ".model")
    assert(
        not model or descriptor.models[model],
        "The explicitly selected model is absent from the pinned source descriptor"
    )
    local architecture = target:arch()
    assert(
        (architecture == "wasm32" or architecture == "wasm64") and target:plat() == "wasm-wasip1",
        "Select the exact wasm32/wasm64 WASI Preview 1 command ABI"
    )
    local language = target:values("ros.sdk.language")
    local extensions =
        { c = ".c", cpp = ".cpp", objectc = ".m", c_ffi_bridge = ".c", js = ".mjs", py = ".py", lua = ".lua" }
    assert(
        extensions[language],
        "Install the common genuine compiler and complete platform binding for " .. tostring(language)
    )
    local sources = target:sourcefiles()
    assert(
        #sources == 1 and path.extension(sources[1]) == extensions[language],
        "Source extension must match the genuine language"
    )
    target:set("values", "ros.sdk.triple", architecture .. "-wasip1")
    target:set("values", "ros.sdk.vendor_version", version)
    target:set(
        "values",
        "ros.sdk.bundle_manifest",
        "share/platform/" .. vendor .. "/language/" .. language .. "/ros2/bundle.json"
    )
    return descriptor, language
end

-- @brief Configure one real source command without probing a compiler or ROS runtime.
-- @param target Current DSL target. @param root Installed SDK namespace.
function configure(target, root, context)
    local _, language = settings(target, root)
    target:set("toolchains", "ros.wasm.command")
    if language == "js" or language == "py" or language == "lua" then
        import("provider", { rootdir = path.join(root, "tools/language/js"), anonymous = true }).configure(
            target,
            root,
            context
        )
    end
end

-- @brief Compile or package through the unique common language owner.
-- @param target Configured real-language source target. @param root Installed SDK.
function build(target, root, context)
    local _, language = settings(target, root)
    if language == "js" or language == "py" or language == "lua" then
        return import("language_adapter", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
            target,
            root,
            context
        )
    end
    local extra = {}
    if language == "cpp" then
        table.join2(extra, { "-fno-exceptions", "-fno-rtti" })
    end
    return import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
        target,
        root,
        target:values("ros.sdk.triple"),
        extra
    )
end

-- @brief Run the existing sole Wasm through the installed runtime and manual policy.
-- @param target Existing application target. @param root Installed SDK namespace.
-- @details A user-authored JSON file supplies runtime options and application
-- arguments. This adapter adds only --run and the exact artifact path; it never
-- manufactures capabilities, gateway configuration or physical robot commands.
function run(target, root, context)
    return import("provider", { rootdir = path.join(root, "tools/platform/ros"), anonymous = true }).run(
        target,
        root,
        context
    )
end
