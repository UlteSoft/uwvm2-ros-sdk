-- @file provider.lua
-- @brief Validate boston_dynamics schema selection and delegate real compilation.
-- @details Source version, ROS family and model are platform configuration.
-- Language compilers and host closures are shared; run uses existing explicit
-- deployment grants and never installs a compiler or grants a capability.

-- @brief Resolve one exact source profile, revision, model and ROS family.
-- @param target Ordinary declaration populated by the public shared Xmake DSL.
-- @param root Installed SDK root.
-- @return Validated immutable profile descriptor and actual language.
local function settings(target, root)
    import("core.base.json")
    local platform = "boston_dynamics"
    assert(target:values("ros.sdk.platform") == platform, "Platform/provider mismatch")
    local metadata = json.loadfile(path.join(root, "share/platform", platform, "profiles.json"))
    local requested = target:values("ros.vendor.profile")
    local selected
    for _, profile in ipairs(metadata.profiles) do
        if profile.profile == requested then
            selected = profile
        end
    end
    assert(selected, "Set the exact ros.vendor.profile from this platform's source catalog")
    local backend = target:values("ros.sdk.backend")
    assert(backend == (selected.ros_major == 1 and "ros1" or "ros2"), "Catalog and ROS import family disagree")
    assert(target:values("ros.sdk.distribution") == selected.distribution, "Catalog and ROS distribution disagree")
    assert(
        target:values("ros.vendor.revision") == selected.source_lock_sha256,
        "Pin the exact vendor source-lock SHA256"
    )
    local model = target:values("ros.vendor.model")
    local found = false
    for _, value in ipairs(metadata.models) do
        if value == model then
            found = true
        end
    end
    assert(found, "Select an explicit catalogued model; no hardware compatibility is inferred")
    return selected, assert(target:values("ros.sdk.language"), "Select a genuine source language"), backend
end

-- @brief Validate source/target inputs without installing a compiler or middleware.
-- @param target Ordinary target populated by the shared public DSL.
-- @param root Borrowed installed SDK namespace.
-- @param context Validated version-one platform, ABI and feature request.
-- @return None; invalid source/profile combinations raise before tool restoration.
function configure(target, root, context)
    local selected, language, backend = settings(target, root)
    if language == "c" or language == "cpp" or language == "c_ffi_bridge" then
        import("artifact_contract", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).configure(target)
        target:set("toolchains", "ros.wasm.command")
        return
    end
    local action =
        import("actions", { rootdir = path.join(root, "tools/platform/boston_dynamics"), anonymous = true }).describe(
            language,
            selected.profile,
            backend,
            target:arch()
        )
    assert(context and context.api_version == 1, "Use the public provider lifecycle")
    local request = table.clone(context)
    request.native_action = action
    local adapter =
        import("language_adapter", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).load(root, request)
    adapter.configure(target, root, request)
end

-- @brief Compile actual selected source-language files into one standalone Wasm.
-- @param target Configured target retaining its declared native artifact kind.
-- @param root Installed SDK containing the one shared language producer.
-- @param context Validated shared request extended with this providers explicit source graph.
-- @return None; original compiler/linker errors propagate without substituting a language.
function build(target, root, context)
    configure(target, root, context)
    local selected, language, backend = settings(target, root)
    if language == "c" or language == "cpp" or language == "c_ffi_bridge" then
        return import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
            target,
            root,
            assert(target:values("ros.sdk.triple")),
            {}
        )
    end
    local action =
        import("actions", { rootdir = path.join(root, "tools/platform/boston_dynamics"), anonymous = true }).describe(
            language,
            selected.profile,
            backend,
            target:arch()
        )
    local request = table.clone(context)
    request.native_action = action
    import("language_adapter", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
        target,
        root,
        request
    )
end
