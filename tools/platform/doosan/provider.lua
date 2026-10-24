-- @file provider.lua
-- @brief Validate one complete vendor domain and use centrally owned build actions.
-- @details This module owns source selection only. Compiler/engine versions,
-- target sysroots and the capability-preserving runner remain common SDK inputs.

-- @brief Resolve the exact vendor-owned source domain for this target.
-- @param target Public Xmake application target.
-- @param root Installed SDK root supplied by the shared dispatcher.
-- @return Selected complete domain descriptor; invalid selections raise an error.
function selection(target, root)
    import("core.base.json")
    local vendor = target:values("ros.sdk.platform")
    local data = json.loadfile(path.join(root, "share/platform", vendor, "provider.json"))
    assert(data.platform == vendor, "Vendor descriptor identity differs")
    assert(table.contains(data.languages, target:values("ros.sdk.language")), "Unknown source language")
    local key = target:values("ros.sdk.vendor_version")
    assert(type(key) == "string", "Set ros.sdk.vendor_version to an exact catalog domain")
    local chosen
    for _, domain in ipairs(data.domains) do
        if domain.id == key then
            chosen = domain
        end
    end
    assert(chosen, "Unknown vendor source version: " .. tostring(key))
    assert(chosen.backend == target:values("ros.sdk.backend"), "Native ROS generation differs from the selected source")
    local distro = target:values("ros.sdk.distribution")
    assert(table.contains(chosen.fixture_distributions, distro), "Distribution has no source fixture for this domain")
    assert(target:plat() == "wasm-wasip1", "This source descriptor requires an explicit WASI preview 1 target")
    assert(target:arch() == "wasm32" or target:arch() == "wasm64", "Select the exact guest address width")
    return chosen
end

-- @brief Validate source configuration without invoking a compiler or runtime.
function configure(target, root)
    local chosen = selection(target, root)
    for key, value in pairs(chosen.source_defines) do
        target:add("defines", key .. "=" .. value)
    end
    target:add("includedirs", path.join(root, "src/platform"))
    -- The common artifact contract preserves explicit target directories and
    -- keeps default static archives private to the link graph.
end

-- @brief Delegate C-family compilation to the one public LLVM 23 closure.
-- @details Additional language engines require the shared provider adapter;
-- missing adapters fail with a named dependency instead of changing languages.
function build(target, root, context)
    local chosen = selection(target, root)
    local language = target:values("ros.sdk.language")
    if language == "c" or language == "cpp" or language == "c_ffi_bridge" or language == "objectc" then
        target:set("values", "ros.sdk.standard", language == "cpp" and "c++20" or "c11")
        -- The one common target manifest owns EH/RTTI/runtime selection.
        local flags = {}
        table.insert(flags, "-I" .. path.join(root, "src/platform"))
        for key, value in pairs(chosen.source_defines) do
            table.insert(flags, "-D" .. key .. "=" .. value)
        end
        if language == "c_ffi_bridge" or language == "objectc" then
            local vendor = target:values("ros.sdk.platform")
            local filename = language == "objectc" and "Records.m" or "records.c"
            local implementation =
                path.join(root, "src/platform", vendor, language, chosen.backend, chosen.id, filename)
            assert(os.isfile(implementation), "Missing complete vendor FFI implementation: " .. implementation)
            local already_selected = false
            for _, source in ipairs(target:sourcefiles()) do
                if path.absolute(source) == path.absolute(implementation) then
                    already_selected = true
                end
            end
            if not already_selected then
                table.insert(flags, implementation)
            end
        end
        import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
            target,
            root,
            target:values("ros.sdk.triple"),
            flags
        )
        return
    end
    assert(context and context.api_version == 1, "Use the public validated language-adapter request")
    local vendor = target:values("ros.sdk.platform")
    local relative = path.join("share/platform", vendor, "bindings", language, chosen.id .. ".json")
    local declared = target:values("ros.sdk.vendor_binding")
    assert(not declared or declared == relative, "Binding must match the selected platform/language/domain")
    import("core.base.json")
    local binding = json.loadfile(path.join(root, relative))
    assert(binding.platform == vendor and binding.language == language and binding.domain == chosen.id
           and binding.backend == chosen.backend, "Complete binding graph identity differs")
    local request = table.clone(context)
    request.binding = binding
    import("language_adapter", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).build(
        target, root, request)
end

-- @brief Use the installed runtime through the common permission-preserving runner.
-- @details Compilation never requires uwvm2-ros or ROS. Run requires the native
-- installation and an explicit user deployment; this provider creates no grant.
function run(target, root, context)
    selection(target, root)
    local shared = path.join(root, "tools/platform/ros/provider.lua")
    assert(os.isfile(shared), "Required parent-owned common native ROS provider")
    assert(context and context.triple, "The shared dispatcher must supply the validated run context")
    import("provider", { rootdir = path.directory(shared), anonymous = true }).run(target, root, context)
end
