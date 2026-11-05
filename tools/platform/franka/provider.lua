-- @brief Bind one exact release source graph to the public language request.
-- @details No compiler, runtime authority or version fallback is supplied here.
local function source_request(target, root, context, selected)
    assert(context and context.api_version == 1, "Use the public provider lifecycle")
    local request = table.clone(context)
    local language = context.language
    local native_flows = {call_native_grasp=true, call_native_joint_impedance=true,
                          cancel_own_grasps=true, lifecycle_grasp_cancel=true}
    if language == "zig" and native_flows[context.scenario] and "franka" ~= "kinova" then
        request.native_action = import("actions", {rootdir=path.join(root, "tools/platform/franka"), anonymous=true}).zig(selected)
        return request
    end
    import("core.base.json")
    local binding = json.loadfile(path.join(root, "share/platform/franka/bindings", language, selected.id .. ".json"))
    assert(binding.format == "uwvm-vendor-release-binding-v1"
           and binding.platform == "franka" and binding.language == language
           and binding.profile == selected.id and binding.backend == context.backend,
           "Release binding differs from the selected source language or catalog")
    request.binding = binding
    return request
end
-- @file provider.lua
-- @brief Consume this vendor's exact release descriptor and central producers.
-- @details No compiler, language engine, ROS runtime, policy grant, or DSL is
-- implemented here. The provider never substitutes a backend or address width.
function selection(target, root)
    import("core.base.json")
    local manifest = json.loadfile(path.join(root, "share/platform/franka/provider.json"))
    local id = target:values("ros.vendor.profile")
    assert(type(id) == "string", "Set ros.vendor.profile to one exact installed release")
    local selected
    for _, profile in ipairs(manifest.profiles) do
        if profile.id == id then
            selected = profile
        end
    end
    assert(selected, "Unknown franka source release: " .. id)
    assert(target:values("ros.sdk.backend") == selected.backend, "Selected native ROS generation differs")
    assert(target:values("ros.sdk.distribution") == selected.distribution, "Selected native ROS distribution differs")
    target:set("values", "ros.sdk.catalog", path.join(root, selected.catalog))
    target:set("values", "ros.sdk.vendor_descriptor", manifest)
    target:set("values", "ros.sdk.vendor_profile", selected)
    for _, define in ipairs(selected.defines or {}) do
        target:add("defines", define)
    end
    target:add("includedirs", path.join(root, "include/platform/franka/c", selected.backend, selected.bundle))
    target:add("includedirs", path.join(root, "include/platform/franka/cpp", selected.backend, selected.bundle))
    return selected
end
function configure(target, root, context)
    local selected = selection(target, root)
    if target:values("ros.sdk.language") == "zig" then
        local request = source_request(target, root, context, selected)
        import("language_adapter", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
            .load(root, request).configure(target, root, request)
    end
end
function build(target, root, context)
    local selected = selection(target, root)
    if target:values("ros.sdk.language") == "zig" then
        return import("language_adapter", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
            .build(target, root, source_request(target, root, context, selected))
    end
    local language = target:values("ros.sdk.language")
    if language == "c" or language == "cpp" or language == "objectc" or language == "c_ffi_bridge" then
        target:set("values", "ros.sdk.standard", language == "cpp" and "c++20" or "c17")
        local arguments = { "-Wno-unused-parameter", "-Wno-type-limits", "-Wno-error=fuse-ld-path" }
        -- Translate only the selected vendor descriptor. The shared producer
        -- currently does not consume ordinary target defines/includedirs.
        for _, define in ipairs(selected.defines or {}) do
            table.insert(arguments, "-D" .. define)
        end
        for _, family in ipairs({ "c", "cpp" }) do
            table.insert(
                arguments,
                "-I" .. path.join(root, "include/platform/franka", family, selected.backend, selected.bundle)
            )
        end
        import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
            target,
            root,
            target:values("ros.sdk.triple"),
            arguments
        )
        return
    end
    return import("language_adapter", {rootdir=path.join(root, "tools/xmake"), anonymous=true}).build(
        target, root, source_request(target, root, context, selected))
end
