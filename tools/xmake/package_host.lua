-- @file package_host.lua
-- @brief Package a reviewed native compiler closure for Xmake-only installation.
-- @details This maintainer command reads a complete file inventory, checks its
-- pinned bytes, preserves canonical aliases, and uses Xmake's built-in XMZ
-- writer. It never compiles guest source and never downloads a tool. Ordinary
-- application builds consume the resulting archive through tool_bundle.lua.

-- @brief Resolve a local compiler alias to one declared regular payload file.
-- @param files Complete source inventory indexed by normalized relative path.
-- @param relative Alias or regular-file key inside the compiler closure.
-- @return Relative path of the final regular file; cycles and escapes fail.
function _canonical(files, relative)
    local visited = {}
    while true do
        assert(not visited[relative], "Cyclic native compiler alias")
        visited[relative] = true
        local entry = assert(files[relative], "Native compiler alias has no declared destination")
        if not entry.symlink then
            return relative
        end
        relative = path.normalize(path.join(path.directory(relative), entry.symlink))
        assert(not path.is_absolute(relative) and not relative:startswith(".."), "Compiler alias escaped its closure")
    end
end

-- @brief Create an exact local XMZ archive and its independent install manifest.
-- @param closure Complete reviewed LLVM host closure containing its source inventory.
-- @param destination SDK host-tool directory, separate from guest output directories.
-- @details Invoke with xmake l package_host.lua CLOSURE DESTINATION on SSH Linux.
-- All input executables must match the audited closure. Executable permissions
-- are explicit manifest facts; aliases never duplicate large compiler binaries.
function main(closure, destination)
    import("core.base.json")
    import("core.base.bytes")
    import("core.compress.lz4")
    closure = path.absolute(closure)
    destination = path.absolute(destination)
    local relative_manifest = "share/uwvm/llvm23-host-closure.json"
    local input_manifest = path.join(closure, relative_manifest)
    local original = json.loadfile(input_manifest)
    assert(original.llvm_major == 23 and original.host_os == os.host(), "Expected the audited LLVM 23 host closure")
    assert(original.host_arch == os.arch(), "Package the native tool closure on its recorded host architecture")
    local inventory = original.files
    inventory[relative_manifest] = {
        sha256 = hash.sha256(input_manifest):lower(),
        bytes = #io.readfile(input_manifest, { encoding = "binary" }),
        executable = false,
    }
    local names = table.keys(inventory)
    table.sort(names)
    local files, aliases, inputs = {}, {}, {}
    for _, relative in ipairs(names) do
        assert(
            not path.is_absolute(relative) and not relative:startswith(".."),
            "Use a closure-relative file inventory"
        )
        local entry = inventory[relative]
        if entry.symlink then
            table.insert(aliases, { path = relative, target = _canonical(inventory, relative) })
        else
            local location = path.join(closure, relative)
            assert(hash.sha256(location):lower() == entry.sha256:lower(), "Changed compiler input: " .. relative)
            table.insert(inputs, location)
            table.insert(files, {
                path = relative,
                bytes = entry.bytes,
                sha256 = entry.sha256,
                executable = entry.executable == true,
            })
        end
    end
    os.mkdir(destination)
    local archive_name = "llvm23-" .. original.version .. ".xmz"
    local archive = path.join(destination, archive_name)
    -- Keep the intermediate beside this owned output. The embedded XMZ helper
    -- otherwise assumes that the host's default temporary directory is writable,
    -- which need not hold in an Xmake-only container or read-only installation.
    local temporary = archive .. ".uncompressed"
    local stream = assert(io.open(temporary, "wb"))
    try({
        function()
            for _, item in ipairs(files) do
                local content = assert(io.readfile(path.join(closure, item.path), {encoding = "binary"}))
                assert(#item.path < 65536 and #content == item.bytes and #content < 4294967296,
                       "XMZ filename or file extent cannot represent this payload")
                stream:write(bytes(2):u16be_set(1, #item.path))
                stream:write(item.path)
                stream:write(bytes(4):u32be_set(1, #content))
                stream:write(content)
            end
            stream:close()
            stream = nil
            lz4.compress_file(temporary, archive)
        end,
        finally({function()
            if stream then stream:close() end
            os.tryrm(temporary)
        end})
    })
    json.savefile(path.join(destination, "llvm23.json"), {
        format = "uwvm-host-tool-bundle-v1",
        host = os.host(),
        arch = os.arch(),
        package = "llvm23",
        version = original.version,
        archive = archive_name,
        sha256 = hash.sha256(archive):lower(),
        files = files,
        aliases = aliases,
        programs = {
            cc = "bin/clang",
            cxx = "bin/clang++",
            ld = "bin/wasm-ld",
            ar = "bin/llvm-ar",
            ranlib = "bin/llvm-ranlib",
        },
        provenance = relative_manifest,
    })
    print("Packaged the genuine LLVM 23 compiler, linker, loader, and native runtime closure: " .. archive)
end
