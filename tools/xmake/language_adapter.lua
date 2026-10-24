-- SPDX-License-Identifier: Apache-2.0
-- @file language_adapter.lua
-- @brief Resolve the single compiler or VM adapter shared by every platform.
-- @details Version-one adapters accept a request table rather than a robot
-- name. Platform bindings supply sources and descriptors; adapters preserve the
-- source language, target width and feature selection without substitution.

-- @brief Resolve the exclusively owned common language adapter location.
-- @param language Stable public route identifier.
-- @return SDK-relative module filename or nil for an unknown identifier.
function module_path(language)
    local modules = {
        typescript = "tools/language/typescript/provider.lua",
        wat = "tools/language/wat/provider.lua",
        fortran = "tools/language/fortran/provider.lua",
        as = "tools/language/as/provider.lua",
        js = "tools/language/js/provider.lua", py = "tools/language/python/provider.lua",
        lua = "tools/language/lua/provider.lua", ruby = "tools/language/ruby/provider.lua",
        php = "tools/language/php/provider.lua", r = "tools/language/r/provider.lua",
        java = "tools/language/jvm/provider.lua", kotlin = "tools/language/jvm/provider.lua",
        csharp = "tools/language/dotnet/provider.lua", fsharp = "tools/language/dotnet/provider.lua",
        vbnet = "tools/language/dotnet/provider.lua"
    }
    if modules[language] then
        return modules[language]
    end
    if ({d = true, go = true, haskell = true, moonbit = true, nim = true,
         objectc = true, odin = true, rs = true, swift = true, tinygo = true,
         zig = true})[language] then
        return "tools/language/native/provider.lua"
    end
end

-- @brief Read an installed common adapter and validate its declared capabilities.
-- @param root Installed SDK root.
-- @param request Validated provider context plus binding descriptors.
-- @return Adapter implementing describe(), configure() and build().
-- @details Adapter capability declarations are not runtime acceptance receipts.
function load(root, request)
    local relative = assert(module_path(request.language), "No registered common language adapter")
    local filename = path.join(root, relative)
    assert(os.isfile(filename), "Missing shared language dependency: " .. relative)
    local adapter = import("provider", {rootdir = path.directory(filename), anonymous = true})
    assert(type(adapter.describe) == "function" and type(adapter.configure) == "function"
           and type(adapter.build) == "function", "Shared adapter must implement the version-one lifecycle")
    local descriptor = adapter.describe()
    assert(descriptor.api_version == 1, "Shared language adapter contract version mismatch")
    local contract = import("provider_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    local kind = request.kind or "binary"
    local capability = descriptor.artifact_kinds and descriptor.artifact_kinds[kind]
    assert(kind == "binary" or capability, "Shared language adapter does not implement native Xmake kind: " .. kind)
    if capability then
        assert(contract.contains(capability.languages, request.language), "Adapter kind has no requested producer language")
        assert(contract.contains(capability.targets, request.triple), "Adapter kind has no exact target triple")
        assert(contract.contains(capability.exception_profiles, request.exception_profile), "Adapter kind exception profile mismatch")
    end
    for _, dependency in ipairs(request.dependency_targets or {}) do
        if dependency.usage ~= "build-only" then
            local producers = capability and capability.dependencies and capability.dependencies[dependency.kind]
            assert(producers and contract.contains(producers, dependency.language),
                   "Adapter has no declared " .. dependency.kind .. " consumer combination for " .. dependency.language)
        end
    end
    if request.entry and request.entry ~= "command" then
        assert(contract.contains(descriptor.entry_profiles or {}, request.entry), "Adapter does not implement the requested startup profile")
    end
    assert(contract.contains(descriptor.languages, request.language), "Adapter does not implement the requested language")
    assert(contract.contains(descriptor.targets, request.triple), "Adapter has no exact target: " .. request.triple)
    assert(contract.contains(descriptor.exception_profiles, request.exception_profile), "Adapter exception profile mismatch")
    for _, feature in ipairs(request.features) do
        assert(contract.contains(descriptor.features, feature), "Adapter has no requested Wasm Core feature: " .. feature)
    end
    return adapter
end

-- @brief Compile one complete artifact through the common real-language engine.
-- @param target Current ordinary Xmake command target.
-- @param root Installed SDK.
-- @param request Validated ABI, source, module and platform binding data.
function build(target, root, request)
    local adapter = load(root, request)
    adapter.configure(target, root, request)
    adapter.build(target, root, request)
end
