-- SPDX-License-Identifier: Apache-2.0
-- @file artifact_contract.lua
-- @brief Preserve native Xmake kinds, dependency visibility and artifact identity.
-- @details Libraries share the application's compiler and ABI selection. Shared
-- dependencies are deployment modules, never native shared-link inputs. This
-- module grants no runtime authority and executes no compiler during configure.

-- @brief Encode a complete namespaced target identity without path collisions.
-- @param target Loaded Xmake target with a namespace-qualified name.
-- @return Reversible hexadecimal identifier used only for private directories.
function identity(target)
    return (target:fullname():gsub(".", function(value) return string.format("%02x", value:byte()) end))
end

-- @brief Keep explicitly selected names/directories and choose a kind extension.
-- @param target Source target requesting binary, static or shared output.
-- @details Explicit filenames and target directories retain Xmake semantics;
-- default archives are private link inputs and deployed modules end in .wasm.
function configure(target)
    local kind = target:kind() or "binary"
    assert(kind == "binary" or kind == "static" or kind == "shared",
           "SDK targets support native binary, static and shared kinds")
    target:set("kind", kind)
    local extension = kind == "static" and ".a" or ".wasm"
    local basename = target:get("basename") or target:name()
    local filename = target:get("filename") or ((kind == "static" and "lib" or "") .. basename .. extension)
    assert(path.filename(filename) == filename and not filename:find("\\", 1, true)
           and path.extension(filename) == extension, "The selected kind requires a sole " .. extension .. " filename")
    target:set("filename", filename)
    if not target:get("targetdir") then
        local directory
        if kind == "static" then
            -- Static archives are private link inputs, never Wasm deployments.
            directory = path.join(path.absolute(target:scriptdir()), ".uwvm-ros/archives", identity(target))
        else
            directory = path.join(path.absolute(target:scriptdir()), "build")
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
            name = dependency:fullname(), kind = kind, inherit = visible[dependency:fullname()] or false, usage = usage,
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
    local artifacts = {}
    for _, dependency in ipairs(target:orderdeps({inherit = true})) do
        if dependency:kind() == "shared" then
            assert(os.isfile(dependency:targetfile()), "Build each preload dependency first")
            table.insert(artifacts, {module = dependency:fullname(),
                                     artifact = path.absolute(dependency:targetfile()),
                                     sha256 = hash.sha256(dependency:targetfile()):lower()})
        end
    end
    local filename = path.join(path.absolute(target:scriptdir()), ".uwvm-ros/artifacts", identity(target) .. ".json")
    os.mkdir(path.directory(filename))
    json.savefile(filename, {format = "uwvm-sdk-target-artifacts-v1", target = target:fullname(),
                            kind = target:kind(), triple = target:values("ros.sdk.triple"),
                            artifact = path.absolute(target:targetfile()),
                            sha256 = hash.sha256(target:targetfile()):lower(),
                            build_command = target:data("ros.sdk.build_command"),
                            preload = artifacts, permissions = "explicit manual runtime configuration only"})
end
