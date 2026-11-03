-- @file tool_bundle.lua
-- @brief Install an audited host tool bundle with Xmake alone.
-- @details SDK distributions may ship host tools as XMZ input archives, or place
-- the same pinned archives in a separate cache. Xmake's embedded LZ4 decoder
-- handles extraction without tar, a shell, Python, or an installed compiler.
-- Bundles are build infrastructure; application output directories contain only
-- their .wasm command. This installer never starts uwvm2 or a ROS environment.

-- @brief Resolve a manifest-relative path confined to its declared directory.
-- @param root Absolute bundle/cache root.
-- @param relative Nonempty, normalized forward-slash relative path.
-- @return Complete path below root; malformed manifest paths raise an error.
function _inside(root, relative)
    assert(
        type(relative) == "string" and #relative > 0 and not path.is_absolute(relative),
        "Tool manifest paths must be relative"
    )
    assert(not relative:find("\\", 1, true) and not relative:find("[:%z\1-\31\127]")
           and relative:sub(1, 1) ~= "/" and relative:sub(-1) ~= "/"
           and not relative:find("//", 1, true), "Use normalized tool manifest paths")
    for part in relative:gmatch("[^/]+") do
        assert(part ~= "." and part ~= "..", "Tool manifest path contains a parent or current-directory segment")
    end
    return path.join(root, relative)
end

-- @brief Resolve one normalized bundle path through the public shared API.
-- @param root Absolute native closure or installed bundle root.
-- @param relative Manifest-relative path confined to that root.
-- @return Validated complete payload path; no file is executed or created.
function payload_path(root, relative)
    return _inside(root, relative)
end

-- @brief Validate the complete bundle schema before inspecting or mutating cache.
-- @param manifest Decoded bundle metadata; no caller-supplied field is executed.
-- @details Programs and aliases must resolve to declared payloads. Program
-- entries may name source files consumed by another pinned tool (TypeScript),
-- while data-only runtime bundles legitimately have an empty program map.
-- Dense inventories and path-prefix checks prevent silently omitted entries or
-- a file/alias from serving as another payload's directory during extraction.
function validate_manifest(manifest)
    assert(type(manifest) == "table" and manifest.format == "uwvm-host-tool-bundle-v1",
           "Unknown host tool bundle manifest format")
    if manifest.package ~= nil then
        assert(type(manifest.package) == "string" and manifest.package:match("^[a-z][a-z0-9%-]*$"), "Invalid tool package name")
    end
    if manifest.version ~= nil then
        assert(type(manifest.version) == "string" and manifest.version:match("^[%w%.%+%-]+$"), "Invalid tool package version")
    end
    local function digest(value)
        return type(value) == "string" and #value == 64 and value:match("^%x+$")
    end
    local function array(value, label)
        assert(type(value) == "table", label .. " must be an array")
        local count = 0
        for key in pairs(value) do
            count = count + 1
            assert(type(key) == "number" and key >= 1 and key <= #value and key % 1 == 0,
                   label .. " must form a dense array")
        end
        assert(count == #value, label .. " must form a dense array")
    end
    assert(digest(manifest.sha256), "Malformed archive SHA256")
    _inside(".", manifest.archive)
    array(manifest.files, "Host files")
    assert(#manifest.files > 0, "Host tool bundle must enumerate every file")
    local files, paths = {}, {}
    for _, file in ipairs(manifest.files) do
        assert(type(file) == "table", "Invalid file descriptor")
        _inside(".", file.path)
        assert(not paths[file.path], "Duplicate host file path")
        assert(digest(file.sha256) and type(file.bytes) == "number" and file.bytes >= 0
               and file.bytes < 4294967296 and file.bytes % 1 == 0 and #file.path < 65536,
               "Invalid host file hash or extent")
        assert(type(file.executable) == "boolean", "Executable mode must be explicit")
        files[file.path], paths[file.path] = file, true
    end
    local aliases = {}
    array(manifest.aliases or {}, "Host aliases")
    for _, alias in ipairs(manifest.aliases or {}) do
        assert(type(alias) == "table", "Invalid alias descriptor")
        _inside(".", alias.path)
        _inside(".", alias.target)
        assert(not paths[alias.path] and files[alias.target], "Aliases must uniquely name declared regular files")
        aliases[alias.path], paths[alias.path] = alias.target, true
    end
    for relative in pairs(paths) do
        local parent = path.directory(relative):gsub("\\", "/")
        while parent ~= "." and parent ~= "" do
            assert(not paths[parent], "A host payload/alias cannot also be a directory")
            parent = path.directory(parent):gsub("\\", "/")
        end
    end
    assert(type(manifest.programs) == "table", "Declare the host program map, including an empty map for data-only bundles")
    for name, relative in pairs(manifest.programs) do
        assert(type(name) == "string" and name:match("^[%w_%-]+$"), "Invalid program identifier")
        _inside(".", relative)
        local file = files[aliases[relative] or relative]
        assert(file, "A host program must name a declared payload")
    end
    _inside(".", manifest.provenance)
    -- Older JVM bundles name their SDK-level provenance document here rather
    -- than a payload member. It remains a confined metadata reference; exact
    -- archive and every payload hash are mandatory for both manifest forms.
end

-- @brief Validate the bytes of every file in the extracted payload.
-- @param root Directory containing exactly the declared bundle payload.
-- @param files Array of {path, sha256, executable} entries from the manifest.
-- @return True only when every declared file retains its expected bytes.
function _complete(root, files, aliases)
    if os.islink(root) then return false end
    for _, file in ipairs(files) do
        local location = _inside(root, file.path)
        if os.islink(location) or not os.isfile(location) or hash.sha256(location):lower() ~= file.sha256:lower() then
            return false
        end
    end
    for _, alias in ipairs(aliases or {}) do
        local location = _inside(root, alias.path)
        local destination = path.relative(_inside(root, alias.target), path.directory(location))
        if not os.islink(location) or os.readlink(location) ~= destination then
            return false
        end
    end
    return true
end

-- @brief Extract the complete reviewed XMZ file table with Xmake's LZ4 codec.
-- @param archive Pinned compressed XMZ payload.
-- @param output Private empty cache directory.
-- @param files Complete file manifest including exact byte counts.
-- @details Empty files are created below output like every other payload. Each
-- encoded extent must match its manifest entry before any file is materialized.
function _extract(archive, output, files)
    import("core.compress.lz4")
    local expected = {}
    local expected_extent = 0
    for _, file in ipairs(files) do
        assert(not expected[file.path], "Duplicate host tool manifest path")
        expected[file.path] = file
        expected_extent = expected_extent + 6 + #file.path + file.bytes
    end
    local unpacked = output .. ".uncompressed"
    import("core.base.json")
    local diagnostic = output .. ".decode.json"
    local state = {format = "uwvm-host-tool-decode-v1", status = "DECODING",
        archive = archive, output = unpacked, expected_bytes = expected_extent}
    json.savefile(diagnostic, state)
    try({function()
        lz4.decompress_file(archive, unpacked)
    end, catch({function(error)
        -- Capture errno before diagnostic I/O. Keep the original decoder error
        -- and partial file; never retry with different file/resource limits.
        local system_error = os.strerror()
        state.status, state.codec_error, state.os_error = "FAILED", tostring(error), system_error
        state.observed_bytes = os.isfile(unpacked) and os.filesize(unpacked) or 0
        json.savefile(diagnostic, state)
        raise(string.format("Host tool decompression failed: codec=%s; os=%s; expected=%s; observed=%s; archive=%s; diagnostic=%s",
            tostring(error), tostring(system_error), expected_extent, state.observed_bytes, archive, diagnostic))
    end})})
    state.status = "DECODED"
    state.observed_bytes = os.isfile(unpacked) and os.filesize(unpacked) or 0
    json.savefile(diagnostic, state)
    local stream = assert(io.open(unpacked, "rb"), "Cannot open decoded host tool payload; original decode diagnostic: " .. diagnostic)
    try({
        function()
            local total = stream:size()
            assert(total == expected_extent, "Host tool decompression extent does not match its pinned manifest")
            local offset = 0
            while offset < total do
                local header = assert(stream:read(2))
                assert(#header == 2, "Truncated host tool filename extent")
                local length = header:byte(1) * 256 + header:byte(2)
                assert(length > 0 and length <= total - offset - 6, "Invalid host tool filename extent")
                local relative = assert(stream:read(length))
                local file = assert(expected[relative], "Undeclared or duplicate host tool payload")
                header = assert(stream:read(4))
                assert(#header == 4, "Truncated host tool byte extent")
                local size = ((header:byte(1) * 256 + header:byte(2)) * 256 + header:byte(3)) * 256 + header:byte(4)
                offset = offset + 6 + length
                assert(size == file.bytes and size <= total - offset, "Host tool byte extent disagrees with manifest")
                local content = size == 0 and "" or assert(stream:read(size))
                assert(#content == size, "Truncated host tool file")
                local location = _inside(output, relative)
                os.mkdir(path.directory(location))
                io.writefile(location, content, { encoding = "binary" })
                expected[relative] = nil
                offset = offset + size
            end
            assert(next(expected) == nil, "Host tool archive omitted a declared file")
        end,
        finally({
            function()
                stream:close()
                os.tryrm(unpacked)
            end,
        }),
    })
end

-- @brief Restore executable permissions without depending on a chmod command.
-- @param location Extracted and hash-verified executable payload.
-- @details Xmake's file copy preserves the executable mode of its own running
-- binary. Writing the desired verified bytes into a temporary inode retains
-- its mode; atomic rename also permits repair while an old inode is executing.
-- No source is interpreted, and no helper executable is downloaded or run.
function _make_executable(location)
    local bytes = assert(io.readfile(location, { encoding = "binary" }))
    local temporary = location .. ".executable"
    os.tryrm(temporary)
    os.cp(os.programfile(), temporary)
    io.writefile(temporary, bytes, { encoding = "binary" })
    os.mv(temporary, location)
end

-- @brief Materialize a pinned host tool closure into the selected build cache.
-- @param manifest_path Reviewed JSON manifest with format uwvm-host-tool-bundle-v1.
-- @param cache Absolute build cache; never an application output directory.
-- @return Installed bundle directory and its validated executable entry table.
-- @details Archive and per-file hashes are checked before any payload executes.
-- Cache reuse checks the whole manifest again. The required archive is an SDK
-- distribution input, so this path also works in an offline Xmake-only system.
function install(manifest_path, cache)
    import("core.base.json")
    local manifest = json.loadfile(manifest_path)
    validate_manifest(manifest)
    assert(manifest.host == os.host() and manifest.arch == os.arch(), "The host tool bundle targets another machine")
    local archive = _inside(path.directory(manifest_path), manifest.archive)
    assert(os.isfile(archive), "Install the matching SDK host-tool archive: " .. archive)
    assert(hash.sha256(archive):lower() == manifest.sha256:lower(), "Host tool archive checksum mismatch")
    local directory = path.join(cache, manifest.sha256:lower())
    os.mkdir(cache)
    local lock = assert(io.openlock(directory .. ".lock"))
    lock:lock()
    try({
        function()
            if not _complete(directory, manifest.files, manifest.aliases) then
                local temporary = directory .. ".partial"
                os.tryrm(temporary)
                os.mkdir(temporary)
                _extract(archive, temporary, manifest.files)
                for _, file in ipairs(manifest.files) do
                    local location = _inside(temporary, file.path)
                    assert(
                        os.isfile(location) and hash.sha256(location):lower() == file.sha256:lower(),
                        "Extracted host tool payload checksum mismatch: " .. file.path
                    )
                end
                -- Xmake currently treats any regular file as isexec on Unix.
                -- Establish modes while creating a new verified installation;
                -- a valid warm cache is read-only during ordinary builds.
                for _, file in ipairs(manifest.files) do
                    if file.executable then
                        _make_executable(_inside(temporary, file.path))
                    end
                end
                -- Canonical aliases retain one copy of every native ELF file.
                for _, alias in ipairs(manifest.aliases or {}) do
                    local location = _inside(temporary, alias.path)
                    local destination = _inside(temporary, alias.target)
                    assert(os.isfile(destination), "Host tool alias requires a declared file")
                    os.mkdir(path.directory(location))
                    os.ln(path.relative(destination, path.directory(location)), location)
                end
                assert(_complete(temporary, manifest.files, manifest.aliases), "Incomplete installed tool closure")
                os.tryrm(directory)
                os.mv(temporary, directory)
            end
        end,
        finally({
            function()
                lock:unlock()
                lock:close()
            end,
        }),
    })
    local programs = {}
    for name, relative in pairs(manifest.programs) do
        local program = _inside(directory, relative)
        assert(os.isexec(program), "Declared host tool program is not executable: " .. name)
        programs[name] = program
    end
    return directory, programs
end
