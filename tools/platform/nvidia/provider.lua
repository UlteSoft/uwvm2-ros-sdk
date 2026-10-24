-- @file provider.lua
-- @brief Describe NVIDIA applications to the one shared Wasm compiler dispatcher.
-- @details This provider owns platform data, not a language compiler or VM.
-- Native GPU owners are separately built host programs and are never bundled
-- into a guest application or treated as permission to access a GPU.

local components = {
    ["nvidia-groot"] = "dac54b313160c201c450f97df0fd74ebd379c892",
    ["nvidia-isaac-ros"] = "7bec6ae5dbb2faa11617f40226e8932a4a94e6e4",
    ["nvidia-isaac-sim"] = "87c95274f50836068b44eeb030bf62aa2108bdf8",
}

-- @brief Validate component, original source revision, transport and target ABI.
-- @param target Ordinary Xmake application target selected by the shared DSL.
-- @param root Installed SDK containing public schemas and shared compiler tools.
-- @return No value; invalid configuration stops before compilation.
function configure(target, root)
    local selected = target:values("ros.sdk.platform")
    local component = target:values("ros.vendor.component")
    if selected ~= "nvidia" then
        assert(not component or component == selected, "NVIDIA component conflicts with the platform")
        component = selected
    end
    assert(components[component], "Select ros.vendor.component for the NVIDIA umbrella")
    local revision = target:values("ros.vendor.version") or components[component]
    assert(revision == components[component], "Select the source revision declared in provider.json")
    assert(target:values("ros.sdk.backend") == "ros2", "These retained NVIDIA catalogs define ROS 2 interfaces")
    assert(target:values("ros.sdk.distribution") == "jazzy", "This candidate selects the Jazzy ROS interface profile")
    local transport = target:values("ros.vendor.transport") or "dds"
    assert(transport == "dds" or transport == "cpu-value", "Select dds or the pure CPU value profile")
    assert(target:plat() == "wasm-wasip1", "This provider requires an explicit WASI Preview 1 command")
    assert(target:arch() == "wasm32" or target:arch() == "wasm64", "Select the actual Wasm pointer width")
    target:set("values", "ros.nvidia.component", component)
    target:set("values", "ros.nvidia.source_revision", revision)
    target:add("includedirs", path.join(root, "include"), path.join(root, "include/platform"))
end

-- @brief Attach the original NVIDIA source modules to the public version-one request.
-- @param target Genuine source target whose language and kind remain unchanged.
-- @param root Installed SDK containing common bindings and the NVIDIA module map.
-- @param context Public provider-schema context including the complete source graph.
-- @return Version-one shared adapter request; this adds no deployment authority.
-- @details Native compiler routes must declare native_action in their platform
-- module descriptor. Missing graphs are explicit source-integration gaps; no
-- vendor-specific triple protocol or replacement language implementation is used.
function request(target, root, context)
    import("core.base.json")
    assert(context and context.api_version == 1, "Use the public version-one provider context")
    local selected = import("provider", {
        rootdir = path.join(root, "tools/platform/ros"),
        anonymous = true,
    }).request(target, root, context)
    local modules = json.loadfile(path.join(
        root,
        "share/platform",
        target:values("ros.nvidia.component"),
        "language-bindings.json"
    ))
    assert(modules.format == "uwvm-platform-language-modules-v1", "Install the NVIDIA source module map")
    local graph = assert(modules.module_map[selected.language], "Missing original NVIDIA language source graph")
    selected.binding.platform_modules = graph
    selected.module_roots = table.join(selected.module_roots or {}, { graph.source_root })
    if graph.native_action then
        selected.native_action = graph.native_action
    end
    return selected
end

-- @brief Delegate the genuine language through the public common lifecycle.
-- @param target Real source target; ordinary binary/shared/static kind is retained.
-- @param root Installed SDK, with no compiler or interpreter private to NVIDIA.
-- @param context Validated version-one provider request and source/dependency graph.
-- @details C-family compilation uses the common LLVM action. Other routes use
-- language_adapter.build(target, root, request), which validates the actual
-- source graph, exact width and supported producer/consumer combinations.
function build(target, root, context)
    local language = target:values("ros.sdk.language")
    if language == "c" or language == "cpp" or language == "c_ffi_bridge" then
        assert(context and context.api_version == 1, "Use the public provider context")
        if not target:values("ros.sdk.standard") then
            target:set("values", "ros.sdk.standard", language == "cpp" and "c++20" or "c17")
        end
        target:add("ldflags", "-Wl,--strip-all")
        import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
            target,
            root,
            context.triple,
            {}
        )
        return
    end
    local selected = request(target, root, context)
    import("language_adapter", {
        rootdir = path.join(root, "tools/xmake"),
        anonymous = true,
    }).build(target, root, selected)
end
