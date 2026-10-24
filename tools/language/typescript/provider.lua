-- SPDX-License-Identifier: Apache-2.0
-- @file provider.lua
-- @brief Compile real TypeScript before reusing the single genuine JS engine.
-- @details The source language remains TypeScript in Xmake and in receipts.
-- The existing JavaScript platform provider validates vendor configuration.
-- Its target view receives emitted ECMAScript, never renamed TypeScript bytes.

-- @brief Declare the inherited JS ABI with a distinct source-language identity.
-- @return Explicit producer/consumer capabilities, not execution qualification.
function describe()
    local languages = {"typescript", "js", "py", "lua"}
    local kinds = {}
    for _, kind in ipairs({"binary", "static", "shared"}) do
        kinds[kind] = {
            languages = {"typescript"},
            targets = {"wasm32-wasip1", "wasm64-wasip1"},
            exception_profiles = {"noeh", "eh"},
            dependencies = {static = languages, shared = languages}
        }
    end
    return {
        api_version = 1,
        languages = {"typescript"},
        targets = {"wasm32-wasip1", "wasm64-wasip1"},
        exception_profiles = {"noeh", "eh"},
        artifact_kinds = kinds,
        features = {"memory64", "table64", "exceptions", "bulk-memory",
                    "reference-types", "sign-extension"},
        entry_profiles = {"command"}
    }
end

-- @brief Derive private compilation paths without materializing files on load.
local function workspace(target, root)
    local artifacts = import("artifact_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    return path.join(path.absolute(target:scriptdir()), ".uwvm-ros/typescript", artifacts.identity(target))
end

-- @brief Present emitted JS to an existing provider while preserving TS metadata.
-- @param target Real ordinary Xmake target; writes retain its shared build state.
-- @param entry Private ECMAScript output expected from the actual compiler.
-- @return Restricted view forwarding all unrelated target operations unchanged.
function javascript_target(target, entry)
    local view = {}
    function view:values(key)
        if key == "ros.sdk.language" then return "js" end
        return target:values(key)
    end
    function view:sourcefiles()
        return {entry}
    end
    function view:get(key, ...)
        if key == "values.ros.sdk.language" then return "js" end
        if key == "files" then return {entry} end
        return target:get(key, ...)
    end
    function view:set(key, ...)
        local values = {...}
        assert(not (key == "values" and values[1] == "ros.sdk.language"),
               "An engine adapter cannot replace the public source-language identity")
        if key == "kind" or key == "extension" or key == "filename" or key == "targetdir" then
            return
        end
        return target:set(key, ...)
    end
    -- Xmake's provider sandbox intentionally omits metatable mutation. Forward
    -- the ordinary target API explicitly, as the shared command packer does.
    for _, name in ipairs({"arch", "plat", "scriptdir", "targetfile", "name",
                            "fullname", "kind", "data", "data_set", "add",
                            "extraconf", "orderdeps", "deps", "dep", "rule",
                            "rule_add", "sourcebatches", "is_plat", "is_arch",
                            "autogendir", "dependfile", "objectdir", "targetdir",
                            "tool", "toolchain", "compiler", "linker"}) do
        local method = name
        view[method] = function(_, ...) return target[method](target, ...) end
    end
    return view
end

-- @brief Keep the shared JavaScript request separate from the caller's TS request.
local function javascript_request(request, entry)
    local selected = table.clone(request)
    selected.language = "js"
    selected.sources = {entry}
    selected.dependency_targets = {}
    for _, dependency in ipairs(request.dependency_targets or {}) do
        local row = table.clone(dependency)
        if row.language == "typescript" then row.language = "js" end
        table.insert(selected.dependency_targets, row)
    end
    return selected
end

-- @brief Obtain the provider already validated by the common schema dispatcher.
local function platform(root, request)
    import("core.base.json")
    local schema = json.loadfile(path.join(root, "share/platform", request.platform, "provider.json"))
    local contract = import("provider_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    local filename = contract.inside(root, schema.module)
    return import(path.basename(filename), {rootdir = path.directory(filename), anonymous = true})
end

-- @brief Validate TypeScript sources and the unchanged selected vendor profile.
-- @details Configuration executes no compiler, guest or permission-changing call.
function configure(target, root, request)
    assert(request and request.api_version == 1 and request.language == "typescript",
           "Use the common TypeScript provider request")
    assert(request.wasi_preview == 1 and not request.threads and request.entry == "command",
           "The existing QuickJS ABI requires single-thread WASI Preview 1 command startup")
    assert(#request.sources == 1 and
           (path.extension(request.sources[1]) == ".ts" or path.extension(request.sources[1]) == ".mts"),
           "Declare one TypeScript entry; import further source modules from that entry")
    local entry = path.join(workspace(target, root), "application.mjs")
    local view = javascript_target(target, entry)
    local selected = javascript_request(request, entry)
    platform(root, request).configure(view, root, selected)
    local linked = target:kind() ~= "binary" or request.backend == "wasi"
    for _, dependency in ipairs(request.dependency_targets or {}) do
        if dependency.usage ~= "build-only" then linked = true end
    end
    if linked then
        import("provider", {rootdir = path.join(root, "tools/language/js"), anonymous = true}).configure(view, root, selected)
    else
        assert(request.exception_profile == "noeh", "The shared ROS QuickJS command engine requires noeh")
    end
    target:data_set("ros.sdk.typescript_library", linked)
end

-- @brief Restore one pinned compiler package and reuse the existing Node closure.
-- @return Compiler directory and the existing shared Node loader/program map.
local function compiler(root)
    import("core.base.json")
    import("core.project.config")
    local pin = json.loadfile(path.join(root, "share/language/typescript/compiler.json"))
    assert(pin.version == "5.9.3" and pin.engine == "js", "Unexpected TypeScript compiler or engine identity")
    local manifest = path.join(root, pin.manifest)
    assert(hash.sha256(manifest):lower() == pin.manifest_sha256, "The pinned TypeScript frontend manifest changed")
    local home = os.getenv("XDG_CACHE_HOME") or path.join(assert(os.getenv("HOME")), ".cache")
    local cache = config.get("ros-tool-cache") or path.join(home, "uwvm-ros/host-tools")
    local folder = import("tool_bundle", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).install(manifest, cache)
    local node_root, programs = import("core", {rootdir = path.join(root, "tools/language/native"), anonymous = true}).frontend(root, "assemblyscript")
    return folder, node_root, programs
end

-- @brief Type-check and emit a full dependency closure, then build the actual kind.
-- @details Native ROS commands reuse the exact JS engine and source-slot packer.
-- Scalar archive/shared commands reuse the real JS core and LLVM 23 linker.
-- The returned .wasm contains application source, not a deployment JS sidecar.
function build(target, root, request)
    configure(target, root, request)
    import("core.base.json")
    local work = workspace(target, root)
    os.mkdir(work)
    local frontend, node_root, programs = compiler(root)
    local linked = target:data("ros.sdk.typescript_library")
    local configuration = path.join(work, "compile.json")
    local bundle = target:values("ros.sdk.bundle_manifest")
    json.savefile(configuration, {
        compiler = path.join(frontend, "package/lib/typescript.js"),
        sdk = path.absolute(root), project = path.absolute(target:scriptdir()),
        entry = path.absolute(request.sources[1]), output = work,
        backend = request.backend, kind = linked and "script" or "module",
        bundle_manifest = bundle and path.join(root, bundle)
    })
    os.vrunv(programs.loader, {"--library-path", path.join(node_root, "runtime"),
        programs.node, path.join(root, "tools/language/typescript/compile.cjs"), configuration},
        {envs = {NODE_PATH = "", NODE_OPTIONS = "", NODE_ICU_DATA = ""}})
    local entry = path.join(work, "application.mjs")
    local view = javascript_target(target, entry)
    local selected = javascript_request(request, entry)
    if linked then
        import("provider", {rootdir = path.join(root, "tools/language/js"), anonymous = true}).build(view, root, selected)
    else
        import("pack", {rootdir = path.join(root, "tools/language/js"), anonymous = true}).build(
            view, root, {root = work, manifest = path.join(work, "bundle.json")})
    end
    local receipt = json.loadfile(path.join(work, "compiler-receipt.json"))
    receipt.artifact_sha256 = hash.sha256(path.absolute(target:targetfile())):lower()
    receipt.triple = request.triple
    receipt.backend = request.backend
    receipt.kind = target:kind()
    receipt.compiler_manifest_sha256 = hash.sha256(path.join(root,
        "share/toolchains/host/linux-x86_64/typescript.json")):lower()
    json.savefile(path.join(work, "compiler-receipt.json"), receipt)
end
