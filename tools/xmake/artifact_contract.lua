-- SPDX-License-Identifier: Apache-2.0
-- @file artifact_contract.lua
-- @brief Preserve native Xmake kinds, dependency visibility and artifact identity.
-- @details Libraries share the application's compiler and ABI selection. Shared
-- dependencies are deployment modules, never native shared-link inputs. This
-- module grants no runtime authority and executes no compiler during configure.

-- @brief Keep SDK library semantics separate from Xmake's shared-file kind.
function model(target)
    local kind = target:kind() or "binary"
    return target:values("ros.sdk.artifact_kind") or (kind == "shared" and "core-preload" or kind)
end

-- @brief Describe a requested loader binding without inventing its identity.
function memory_import(target)
    local module, name = target:values("ros.sdk.memory_module"), target:values("ros.sdk.memory_export")
    if module or name then
        assert(type(module) == "string" and type(name) == "string" and #module > 0 and #name > 0,
               "Explicit imported memory needs both module and export names")
        return {module = module, name = name}
    end
end

-- @brief Encode a complete namespaced target identity without path collisions.
-- @param target Loaded Xmake target with a namespace-qualified name.
-- @return Reversible hexadecimal identifier used only for private directories.
function identity(target)
    return (target:fullname():gsub(".", function(value) return string.format("%02x", value:byte()) end))
end

-- @brief Derive isolated compiler state from Xmake's selected object directory.
-- @param target Loaded target, including native namespace/ABI/mode isolation.
-- @param category One fixed compiler-state category; never a source input path.
-- @return Absolute private directory; the caller materializes it during build.
function workspace(target, category)
    import("core.project.config")
    assert(type(category) == "string" and category:match("^[a-z][a-z0-9%-]*$"),
           "Use one fixed private compiler-state category")
    local triple = assert(target:values("ros.sdk.triple"), "Resolve the exact target ABI before selecting compiler state")
    local profile = target:values("ros.sdk.exception_profile") or config.get("ros-exceptions") or "noeh"
    local mode = config.get("mode") or "default"
    assert(type(triple) == "string" and triple:match("^wasm%d+%-[a-z0-9%-]+$")
           and (profile == "noeh" or profile == "eh") and type(mode) == "string"
           and mode ~= "." and mode ~= ".." and mode:match("^[%w_.%-]+$"),
           "Use resolved ABI/profile/mode identities for private compiler state")
    -- Explicitly shared object roots must not collapse namespaced targets,
    -- different pointer widths, exception profiles or concurrent build modes.
    return path.join(path.absolute(target:objectdir()), "ros", category, identity(target), triple, profile, mode)
end

-- @brief Locate a target's deployment record without writing its source tree.
-- @param target Real Xmake target; the full namespaced name prevents collisions.
-- @return Metadata path in its actual object tree, outside deployment artifacts.
function metadatafile(target)
    return path.join(path.absolute(target:objectdir()), "ros-artifacts", identity(target) .. ".json")
end

-- @brief Keep explicitly selected names/directories and choose a kind extension.
-- @param target Source target requesting binary, static or shared output.
-- @details Explicit filenames and target directories retain Xmake semantics;
-- default archives are private link inputs and deployed modules end in .wasm.
function configure(target)
    import("core.project.config")
    local kind = target:kind() or "binary"
    assert(kind == "binary" or kind == "static" or kind == "shared",
           "SDK targets support native binary, static and shared kinds")
    local semantic = model(target)
    local mapping = {binary = "binary", static = "static", ["core-preload"] = "shared",
                     dynamic = "shared", independent = "shared"}
    assert(mapping[semantic] == kind, "set_kind conflicts with the explicit Wasm artifact contract")
    local binding = memory_import(target)
    if semantic == "dynamic" or semantic == "independent" then
        assert(binding, "Dynamic/independent libraries require set_wasm_memory_import(module, export)")
    elseif binding then
        assert(semantic == "binary", "Only an explicit library or binary consumer imports communication memory")
    end
    target:set("kind", kind)
    local extension = kind == "static" and ".a" or ".wasm"
    local basename = target:get("basename") or target:name()
    local filename = target:get("filename") or ((kind == "static" and "lib" or "") .. basename .. extension)
    assert(path.filename(filename) == filename and not filename:find("\\", 1, true)
           and path.extension(filename) == extension, "The selected kind requires a sole " .. extension .. " filename")
    target:set("filename", filename)
    if not target:get("targetdir") then
        local builddir = config.builddir({absolute = true})
        local directory
        if kind == "static" then
            -- Static archives are private link inputs, never Wasm deployments.
            directory = path.join(builddir, ".archives", identity(target))
        else
            -- Deployment-only directories exclude objects, records and caches.
            directory = path.join(builddir, "artifacts")
            if kind == "shared" or #table.wrap(target:get("deps")) > 0 then
                directory = path.join(directory, "targets", identity(target))
            end
        end
        target:set("targetdir", directory)
    end
end

-- @brief Return direct dependencies in native declaration order.
-- @param target Consumer whose declared dependency order must be preserved.
-- @param inherited_only Exclude dependencies explicitly marked inherit=false.
-- @return Ordered real target objects; missing graph entries are errors.
function direct(target, inherited_only)
    local result = {}
    for _, name in ipairs(table.wrap(target:get("deps"))) do
        local dependency = assert(target:dep(name), "Missing native Xmake dependency: " .. name)
        local inherit = target:extraconf("deps", dependency:name(), "inherit")
        if inherit == nil then inherit = target:extraconf("deps", dependency:fullname(), "inherit") end
        if not inherited_only or inherit ~= false then table.insert(result, dependency) end
    end
    return result
end

-- @brief Collect inherited interface/public values through Xmake's own graph.
-- @param target Consumer of ordinary Xmake public/interface declarations.
-- @param name Native metadata key such as includedirs, defines or linkdirs.
-- @return Deduplicated interface values in dependency traversal order.
function inherited(target, name)
    local result = {}
    local dependencies = target:orderdeps({inherit = true})
    for index = #dependencies, 1, -1 do
        table.join2(result, table.wrap(dependencies[index]:get(name, {interface = true})))
    end
    return table.unique(result)
end

-- @brief Collect real static link inputs, stopping at every shared boundary.
-- @details A parent archive precedes its dependencies. Wasm LLD uses archive
-- indices for lazy extraction; unreferenced archive objects remain unselected.
-- @param target Consumer receiving recursively linked static dependencies.
-- @return Ordered archive-producing targets; shared-module boundaries terminate traversal.
function static_closure(target)
    local result, visited = {}, {}
    local function visit(current)
        for _, dependency in ipairs(direct(current, true)) do
            if dependency:kind() == "static" and not visited[dependency:fullname()] then
                visited[dependency:fullname()] = true
                table.insert(result, dependency)
                visit(dependency)
            end
        end
    end
    visit(target)
    return result
end

-- @brief Describe dependencies for genuine language adapters and deployment tools.
-- @param target Consumer whose dependencies have completed Xmake loading.
-- @return Fresh descriptors distinguishing static-link, preload and build-only usage.
function request(target)
    local result, visible, linked = {}, {}, {}
    for _, dependency in ipairs(target:orderdeps({inherit = true})) do visible[dependency:fullname()] = true end
    for _, dependency in ipairs(static_closure(target)) do linked[dependency:fullname()] = true end
    for _, dependency in ipairs(target:orderdeps()) do
        local kind = dependency:kind()
        local artifact_kind = kind == "binary" or kind == "static" or kind == "shared"
        local usage = linked[dependency:fullname()] and "static-link"
            or (visible[dependency:fullname()] and kind == "shared" and "preload" or "build-only")
        table.insert(result, {
            name = dependency:fullname(), kind = kind, artifact_model = model(dependency),
            memory_import = memory_import(dependency), inherit = visible[dependency:fullname()] or false, usage = usage,
            language = dependency:values("ros.sdk.language"),
            triple = dependency:values("ros.sdk.triple"),
            exception_profile = dependency:values("ros.sdk.exception_profile") or "noeh",
            artifact = artifact_kind and path.absolute(dependency:targetfile()) or nil,
            link_basename = dependency:get("basename") or dependency:name(),
            module_name = dependency:fullname(),
            public_include_roots = table.wrap(dependency:get("includedirs", {interface = true})),
            public_defines = table.wrap(dependency:get("defines", {interface = true}))
        })
    end
    return result
end

-- @brief Detect a real library consumer without treating build ordering as linking.
-- @param target Target with its ordinary deps and links declarations.
-- @return True only when linking or deployment requires a library producer.
function uses_libraries(target)
    for _, dependency in ipairs(request(target)) do
        if dependency.usage ~= "build-only" then return true end
    end
    return #table.wrap(target:get("links")) > 0
end

-- @brief Reject compiler state nested inside a deployment-only output tree.
-- @param target Target whose providers have selected their actual object paths.
-- @details Explicit targetdir/objectdir/dependir settings retain their meaning;
-- overlapping deployment and private state is an error, never a path fallback.
function validate_layout(target)
    import("core.project.project")
    for _, candidate in pairs(project.targets()) do
        if candidate:values("ros.sdk.root") then
            local output = path.absolute(candidate:targetdir())
            local function inside(value, directory)
                local relative = path.relative(value, directory):gsub("\\", "/")
                return not path.is_absolute(relative) and relative ~= ".." and relative:sub(1, 3) ~= "../"
            end
            local boundary = os.getenv("UWVM_ROS_XMAKE_OUTPUT_ROOT")
            if boundary then
                assert(path.is_absolute(boundary) and inside(output, path.absolute(boundary)),
                       "SDK targetdir leaves this child's isolated build tree: " .. output)
            end
            for _, private in ipairs({path.absolute(target:objectdir()), path.absolute(target:dependir())}) do
                assert(not inside(private, output) and not inside(output, private),
                       "Compiler state overlaps a deployment directory; select separate targetdir and objectdir/dependir: " .. private)
                if boundary then
                    assert(inside(private, path.absolute(boundary)),
                           "SDK compiler state leaves this child's isolated build tree: " .. private)
                end
            end
        end
    end
end

-- @brief Reject kind/ABI/output conflicts after native dependencies are available.
-- @param target Loaded source target with an exact ABI and exception profile.
-- @param root Installed SDK root; validation never restores or executes tools.
-- @details Store the checked graph on the target and reject ABI/output conflicts.
function validate(target, root)
    import("core.project.project")
    local triple = target:values("ros.sdk.triple")
    local profile = target:values("ros.sdk.exception_profile") or "noeh"
    for _, dependency in ipairs(target:orderdeps({inherit = true})) do
        assert(dependency:values("ros.sdk.root"), "SDK dependencies must declare their real source-language provider")
        assert(dependency:kind() == "static" or dependency:kind() == "shared",
               "An application cannot be used as a library dependency")
        assert(dependency:values("ros.sdk.triple") == triple, "Dependency target width/WASI profile mismatch")
        assert((dependency:values("ros.sdk.exception_profile") or "noeh") == profile,
               "Dependency exception profile mismatch")
    end
    validate_layout(target)
    local outputs = {}
    for _, candidate in pairs(project.targets()) do
        if candidate:values("ros.sdk.root") then
            local output = path.absolute(candidate:targetfile())
            assert(not outputs[output] or outputs[output] == candidate:fullname(),
                   "Two SDK targets select the same artifact path: " .. output)
            outputs[output] = candidate:fullname()
        end
    end
    target:data_set("ros.sdk.dependency_targets", request(target))
    target:data_set("ros.sdk.public_include_roots", inherited(target, "includedirs"))
end

-- @brief Write deployment facts beside compiler metadata, outside output folders.
-- @param target Successfully built source target.
-- @param root Installed SDK root shared with the source-language producer.
-- @details Record actual artifact hashes without synthesizing runtime grants.
function record(target, root)
    import("core.base.json")
    -- A language may configure its object tree again during its build action.
    validate_layout(target)
    local artifacts = {}
    for _, dependency in ipairs(target:orderdeps({inherit = true})) do
        if dependency:kind() == "shared" then
            assert(os.isfile(dependency:targetfile()), "Build each preload dependency first")
            table.insert(artifacts, {module = dependency:fullname(), artifact_model = model(dependency),
                                     artifact = path.absolute(dependency:targetfile()),
                                     sha256 = hash.sha256(dependency:targetfile()):lower()})
        end
    end
    local linked = {}
    if target:kind() ~= "static" then
        for _, dependency in ipairs(static_closure(target)) do
            table.insert(linked, {target = dependency:fullname(), artifact = path.absolute(dependency:targetfile()),
                sha256 = hash.sha256(dependency:targetfile()):lower(), trust_domain = "consumer shared heap"})
        end
    end
    local filename = metadatafile(target)
    os.mkdir(path.directory(filename))
    json.savefile(filename, {format = "uwvm-sdk-target-artifacts-v1", target = target:fullname(),
                            kind = target:kind(), artifact_model = model(target),
                            memory_import = memory_import(target),
                            module_metadata = target:data("ros.sdk.module_metadata"),
                            runtime_memory_binding_verified = false,
                            triple = target:values("ros.sdk.triple"),
                            artifact = path.absolute(target:targetfile()),
                            sha256 = hash.sha256(target:targetfile()):lower(),
                            build_command = target:data("ros.sdk.build_command"),
                            compiler_version = target:data("ros.sdk.compiler_version"),
                            compile_commands = target:data("ros.sdk.compile_commands"), static_link_inputs = linked,
                            preload = artifacts, permissions = "explicit manual runtime configuration only"})
end
