-- @file provider.lua
-- @brief Supply abb bindings through the public version-one provider lifecycle.
-- @details The central dispatcher validates all common metadata. This module
-- owns only its original catalog bindings; compilation and execution use the
-- unchanged shared language/LLVM actions and manual native-run dispatcher.

-- @brief Attach complete abb records to the validated common request.
-- @param target Ordinary public Xmake target.
-- @param root Installed SDK root.
-- @param context Provider-contract-validated version-one request.
-- @return Complete original binding request; no compiler or ROS operation runs.
local function request(target, root, context)
    import("core.base.json")
    assert(context and context.api_version == 1 and context.platform == "abb",
        "The public provider contract must validate this abb target")
    local file = path.join(root, "share/platform/abb/bindings", context.language .. ".json")
    local binding = json.loadfile(file)
    assert(binding.format == "uwvm-ros-binding-v1" and binding.language == context.language,
        "Install the complete original abb language binding")
    local contract = import("provider_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    for _, source in ipairs(context.sources) do
        assert(contract.contains(binding.extensions, path.extension(source)), "Source extension conflicts with language")
    end
    context.binding = binding
    context.module_roots = binding.module_roots
    context.native_sources = binding.native_sources[context.backend] or {}
    context.abi = binding.abi[context.backend]
    context.catalog = binding.catalogs[context.backend]
    return context
end

-- @brief Configure abb source metadata without locating a compiler.
-- @param target Current command target.
-- @param root Installed SDK.
-- @param context Public schema-validated provider context.
-- @details Stable source roots and original schema identity grant no runtime authority.
function configure(target, root, context)
    local selected = request(target, root, context)
    target:set("objectdir", path.join(path.absolute(target:scriptdir()), ".uwvm-ros/objects"))
    target:set("dependir", path.join(path.absolute(target:scriptdir()), ".uwvm-ros/dependencies"))
    target:set("values", "ros.sdk.binding", selected.binding)
end

-- @brief Compile genuine abb sources through the single common producer.
-- @param target Current source-language command.
-- @param root Installed SDK containing the shared pinned dependencies.
-- @param context Validated exact backend, target and binding selection.
-- @details Ordinary main commands use the selected WASI libc/C++ closure. The
-- explicit C bridge compiles the unchanged common shim, with no private engine.
function build(target, root, context)
    local selected = request(target, root, context)
    if ({c = true, cpp = true, objectc = true, c_ffi_bridge = true})[selected.language] then
        local extra = {}
        if selected.language == "c_ffi_bridge" then
            extra = {
                "-DROSWASM_C_FFI_BACKEND=" .. selected.backend:sub(4),
                "-I" .. path.join(root, "include/platform/ros/c_ffi_bridge"),
                path.join(root, "src/platform/ros/c_ffi_bridge/shim.c")
            }
        end
        return import("cfamily", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).build(
            target, root, selected.triple, extra)
    end
    return import("language_adapter", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).build(
        target, root, selected)
end

-- @brief Execute already built bytes through the public manual native-run API.
-- @param target Existing command; run never invokes a compiler.
-- @param root Installed SDK.
-- @param context Public provider context matching the explicit deployment.
-- @details The common runner preserves the user's exact arguments and policy;
-- no grant, native type binding, controller model or gateway is invented here.
function run(target, root, context)
    return import("provider", {rootdir = path.join(root, "tools/platform/ros"), anonymous = true}).run(
        target, root, context)
end
