-- SPDX-License-Identifier: Apache-2.0
-- @file package_bundle.lua
-- @brief Package a reviewed native tool closure using Xmake's embedded codec.
-- @details This shared maintainer entry accepts an explicit source inventory.
-- It packages existing native bytes, executes no payload, and downloads nothing.
-- Ordinary builds use the same tool_bundle.lua installer for every language.

-- @brief Write one generic native bundle and its complete installation manifest.
-- @param inventory_path Reviewed uwvm-host-tool-closure-v1 source inventory.
-- @param closure Directory containing the inventory's exact regular files.
-- @param destination Fresh owned directory for the archive and manifest.
-- @details Invoke xmake l package_bundle.lua INVENTORY CLOSURE DESTINATION on
-- the native build host. Source acquisition and compiler qualification remain
-- separate evidence; successful packaging does not qualify any guest language.
function main(inventory_path, closure, destination)
    import("core.base.json")
    import("core.base.bytes")
    import("core.compress.lz4")
    local confinement = import("tool_bundle", {rootdir = os.scriptdir(), anonymous = true})
    local original = json.loadfile(path.absolute(inventory_path))
    assert(original.format == "uwvm-host-tool-closure-v1", "Expected an explicit reviewed native closure")
    assert(original.host == os.host() and original.arch == os.arch(), "Package on the recorded native host")
    assert(type(original.package) == "string" and original.package:match("^[a-z][a-z0-9%-]*$"), "Invalid native package name")
    assert(type(original.version) == "string" and original.version:match("^[%w%.%+%-]+$"), "Invalid native package version")
    closure, destination = path.absolute(closure), path.absolute(destination)
    local files, declared = {}, {}
    for _, entry in ipairs(original.files) do
        local location = confinement.payload_path(closure, entry.path)
        assert(not declared[entry.path] and os.isfile(location) and not os.islink(location), "Declare each regular native payload once")
        local content = assert(io.readfile(location, {encoding = "binary"}))
        assert(#content == entry.bytes and hash.sha256(location):lower() == entry.sha256:lower(), "Changed native payload: " .. entry.path)
        assert(#entry.path < 65536 and #content < 4294967296, "Native payload exceeds XMZ extents")
        declared[entry.path] = true
        table.insert(files, {path = entry.path, bytes = #content, sha256 = entry.sha256:lower(), executable = entry.executable == true})
    end
    assert(#files > 0 and declared[original.provenance], "Bundle must contain its source/build provenance")
    table.sort(files, function(left, right) return left.path < right.path end)
    local aliases, alias_names = {}, {}
    for _, alias in ipairs(original.aliases or {}) do
        confinement.payload_path(closure, alias.path)
        assert(not declared[alias.path] and not alias_names[alias.path] and declared[alias.target], "Alias must name one declared regular payload")
        alias_names[alias.path] = true
        table.insert(aliases, {path = alias.path, target = alias.target})
    end
    table.sort(aliases, function(left, right) return left.path < right.path end)
    for _, relative in pairs(original.programs) do
        assert(declared[relative] or alias_names[relative], "Program must belong to the recorded closure")
    end
    os.mkdir(destination)
    local archive_name = original.package .. "-" .. original.version .. ".xmz"
    local archive = path.join(destination, archive_name)
    local manifest_path = path.join(destination, original.package .. ".json")
    local temporary = archive .. ".uncompressed"
    assert(not os.exists(archive) and not os.exists(manifest_path) and not os.exists(temporary), "Use a fresh native package destination")
    local stream = assert(io.open(temporary, "wb"))
    try({function()
        for _, item in ipairs(files) do
            local content = assert(io.readfile(confinement.payload_path(closure, item.path), {encoding = "binary"}))
            stream:write(bytes(2):u16be_set(1, #item.path))
            stream:write(item.path)
            stream:write(bytes(4):u32be_set(1, #content))
            stream:write(content)
        end
        stream:close()
        stream = nil
        lz4.compress_file(temporary, archive)
    end, finally({function()
        if stream then stream:close() end
        os.tryrm(temporary)
    end})})
    json.savefile(manifest_path, {format = "uwvm-host-tool-bundle-v1", host = original.host, arch = original.arch,
        package = original.package, version = original.version, archive = archive_name,
        sha256 = hash.sha256(archive):lower(), files = files, aliases = aliases,
        programs = original.programs, provenance = original.provenance})
    print("Packaged reviewed native closure: " .. archive)
end
