-- @file interpreted.lua
-- @brief Package complete Unitree source modules into genuine pinned guest VMs.
-- @details Xmake only changes the checked empty source slot. Every application
-- operation, complete codec and ordinary cleanup executes in the real guest
-- engine; no host interpreter, compiler, shell, ROS or uwvm is needed to build.

-- @brief Validate one genuine-language entry and the exact selected native backend.
-- @param target Public Unitree target. @param root Installed immutable SDK namespace.
function configure(target, root)
    local language = target:values("ros.sdk.language")
    local extension = ({ py = ".py", js = ".mjs", lua = ".lua", ruby = ".rb", php = ".php" })[language]
    assert(extension, "Select a maintained genuine guest interpreter")
    local backend = target:values("ros.sdk.backend")
    assert(target:values("ros.sdk.platform") == "unitree", "Select the exact Unitree platform")
    assert(backend == "ros1" or backend == "ros2", "Select exactly one native ROS import family")
    assert(
        target:arch() == "wasm32" and target:plat() == "wasm-wasip1",
        "These genuine engines qualify wasm32-wasip1 only"
    )
    local sources = target:sourcefiles()
    assert(#sources == 1 and path.extension(sources[1]) == extension, "Declare exactly one actual-language entry")
    target:set("values", "ros.sdk.triple", "wasm32-wasip1")
    target:set("values", "ros.sdk.producer", "genuine-guest-interpreter")
    target:set("targetdir", path.join(path.absolute(target:scriptdir()), "build"))
    target:set("objectdir", path.join(path.absolute(target:scriptdir()), ".uwvm-ros/objects"))
    target:set("dependir", path.join(path.absolute(target:scriptdir()), ".uwvm-ros/dependencies"))
    target:set("toolchains", "ros.wasm.command")
end

-- @brief Encode an exact finite u32 source-slot length without host evaluation.
-- @param value Inclusive nonnegative integral byte count. @return Four original LE bytes.
function _word(value)
    assert(value >= 0 and value <= 4294967295 and value == math.floor(value))
    return string.char(
        value % 256,
        math.floor(value / 256) % 256,
        math.floor(value / 65536) % 256,
        math.floor(value / 16777216) % 256
    )
end

-- @brief Quote arbitrary original bytes as a Python bytes literal without evaluation.
-- @param source Complete immutable module bytes. @return Safe exact ASCII expression.
function _python_bytes(source)
    local parts = { 'b"' }
    for index = 1, #source do
        local byte = source:byte(index)
        if byte >= 32 and byte < 127 and byte ~= 34 and byte ~= 92 then
            parts[#parts + 1] = string.char(byte)
        else
            parts[#parts + 1] = string.format("\\x%02x", byte)
        end
    end
    parts[#parts + 1] = '"'
    return table.concat(parts)
end

-- @brief Quote complete Lua source without interpreting or changing its bytes.
-- @param source Whole module text. @return Collision-free long string literal.
function _lua_string(source)
    local delimiter = "="
    while source:find("]" .. delimiter .. "]", 1, true) do
        delimiter = delimiter .. "="
    end
    return "[" .. delimiter .. "[\n" .. source .. "]" .. delimiter .. "]"
end

-- @brief Assemble complete public modules parsed only by their genuine guest VM.
-- @param root Installed SDK root. @param language Actual source-language identity.
-- @param entry Exact application source. @param backend Explicit native ROS family.
-- @return Entire original source bundle plus all exact input hashes.
function _source(root, language, entry, backend)
    local inputs = { { path = entry, sha256 = hash.sha256(entry):lower() } }
    local function read(relative)
        local file = path.join(root, relative)
        table.insert(inputs, { path = relative, sha256 = hash.sha256(file):lower() })
        return assert(io.readfile(file, { encoding = "binary" }))
    end
    local relative = "include/platform/unitree/"
    if language == "py" then
        local lines = {
            "import sys",
            "def _uwvm_register(name, source, package=False):",
            "    module = type(sys)(name)",
            "    module.__package__ = name if package else name.rpartition('.')[0]",
            "    module.__file__ = '/__uwvm_source__/' + name + '.py'",
            "    if package: module.__path__ = []",
            "    sys.modules[name] = module",
            "    parent, _, leaf = name.rpartition('.')",
            "    if parent: setattr(sys.modules[parent], leaf, module)",
            "    exec(compile(source, module.__file__, 'exec'), module.__dict__)",
        }
        local modules = {
            { "ros", "include/platform/ros/py/ros/__init__.py", true },
            { "ros.py", "include/platform/ros/py/ros/py/__init__.py", true },
            { "ros.py.wire", "include/platform/ros/py/ros/py/wire.py" },
            { "ros.py.transport", "include/platform/ros/py/ros/py/transport.py" },
            { "unitree", relative .. "py/package.py", true },
            { "unitree.py", relative .. "py/package.py", true },
            { "unitree.py." .. backend, relative .. "py/package.py", true },
            { "unitree.py." .. backend .. ".records", relative .. "py/" .. backend .. "/records.py" },
            { "unitree.py.observation", relative .. "py/observation.py" },
            { "unitree.py." .. backend .. ".observation", relative .. "py/" .. backend .. "/observation.py" },
        }
        for _, module in ipairs(modules) do
            lines[#lines + 1] = "_uwvm_register('"
                .. module[1]
                .. "', "
                .. _python_bytes(read(module[2]))
                .. ", "
                .. (module[3] and "True" or "False")
                .. ")"
        end
        lines[#lines + 1] = "exec(compile("
            .. _python_bytes(assert(io.readfile(entry, { encoding = "binary" })))
            .. ", '/__uwvm_source__/application.py', 'exec'), globals())"
        return table.concat(lines, "\n") .. "\n", inputs
    elseif language == "js" then
        local modules = {
            { "ros/js/wire", "include/platform/ros/js/wire.mjs" },
            { "ros/js/transport", "include/platform/ros/js/transport.mjs" },
            { "unitree/js/" .. backend .. "/records", relative .. "js/" .. backend .. "/records.mjs" },
            { "unitree/js/observation", relative .. "js/observation.mjs" },
            { "unitree/js/" .. backend .. "/observation", relative .. "js/" .. backend .. "/observation.mjs" },
            { "application", entry },
        }
        local parts = {}
        for _, module in ipairs(modules) do
            local source = module[1] == "application" and assert(io.readfile(entry, { encoding = "binary" }))
                or read(module[2])
            parts[#parts + 1] = _word(#module[1]) .. _word(#source) .. module[1] .. source .. "\0"
        end
        return table.concat(parts), inputs
    elseif language == "lua" then
        local modules = {
            { "unitree/lua/" .. backend .. "/records", relative .. "lua/" .. backend .. "/records.lua" },
            { "unitree/lua/observation", relative .. "lua/observation.lua" },
            { "unitree/lua/" .. backend .. "/observation", relative .. "lua/" .. backend .. "/observation.lua" },
        }
        local lines = {}
        for _, module in ipairs(modules) do
            lines[#lines + 1] = 'uwvm.preload("' .. module[1] .. '", ' .. _lua_string(read(module[2])) .. ")"
        end
        lines[#lines + 1] = assert(io.readfile(entry, { encoding = "binary" }))
        return table.concat(lines, "\n") .. "\n", inputs
    end
    local modules
    if language == "ruby" then
        modules = {
            "include/platform/ros/ruby/roswasm/wire.rb",
            "include/platform/ros/ruby/roswasm/transport.rb",
            relative .. "ruby/" .. backend .. "/records.rb",
            relative .. "ruby/observation.rb",
            relative .. "ruby/" .. backend .. "/observation.rb",
        }
    else
        assert(language == "php", "No genuine source packer for the selected language")
        modules = {
            "include/platform/ros/php/RosWasm/Word.php",
            "include/platform/ros/php/RosWasm/Wire.php",
            "include/platform/ros/php/RosWasm/Transport.php",
            relative .. "php/" .. backend .. "/records.php",
            relative .. "php/Observation.php",
            relative .. "php/" .. backend .. "/Observation.php",
        }
    end
    local lines = {}
    for _, module in ipairs(modules) do
        local bytes = read(module)
        if language == "php" then
            bytes = bytes:gsub("^<%?php", "", 1)
            bytes = 'eval(hex2bin("'
                .. (bytes:gsub(".", function(byte)
                    return string.format("%02x", byte:byte())
                end))
                .. '"));'
        end
        lines[#lines + 1] = bytes
    end
    local bytes = assert(io.readfile(entry, { encoding = "binary" }))
    if language == "php" then
        bytes = bytes:gsub("^<%?php", "", 1)
        bytes = 'eval(hex2bin("'
            .. (bytes:gsub(".", function(byte)
                return string.format("%02x", byte:byte())
            end))
            .. '"));'
    end
    lines[#lines + 1] = bytes
    return table.concat(lines, "\n") .. "\n", inputs
end

-- @brief Validate and embed actual source in the exact selected genuine engine.
-- @param target Reviewed source application. @param root Complete installed SDK root.
-- @details Every byte outside the reserved data slot is preserved. ROS1 engine
-- metadata records either complete typed import relocation or a backend-specific
-- real Lua source rebuild; it never inherits another application's qualification.
function build(target, root)
    configure(target, root)
    import("core.base.json")
    local language = target:values("ros.sdk.language")
    local backend = target:values("ros.sdk.backend")
    local names = {
        py = { "python", "cpython.wasm" },
        js = { "js", "quickjs.wasm" },
        lua = { "lua", "lua.wasm" },
        ruby = { "ruby", "cruby.wasm" },
        php = { "php", "php.wasm" },
    }
    local selection = names[language]
    -- Keep the selected Unitree engine separate from other platform engines.
    local folder = path.join(root, "lib/language", selection[1], backend)
    local runtime = path.join(folder, selection[2])
    assert(os.isfile(runtime), "Install the genuine backend-specific runtime: " .. runtime)
    local metadata = assert(json.loadfile(path.join(folder, "runtime.json")))
    assert(metadata.target == "wasm32-wasip1", "Runtime target mismatch")
    if language == "lua" then
        assert(metadata.format == "uwvm-native-ros-lua-runtime-v1", "Expected a genuine backend-specific Lua rebuild")
    else
        assert(
            metadata.format == "uwvm-real-interpreter-v1" and metadata.language == language,
            "Real engine identity mismatch"
        )
    end
    assert(metadata.ros_backend == backend, "Real engine import namespace disagrees with selected native ROS")
    assert(hash.sha256(runtime):lower() == metadata.sha256:lower(), "The selected genuine engine bytes changed")
    local raw = assert(io.readfile(runtime, { encoding = "binary" }))
    assert(raw:sub(1, 8) == "\0asm\1\0\0\0", "Expected a real core Wasm interpreter command")
    local marker = language == "lua" and "UWVM-LUA-APP-v1!" or "UWVM-SRC-APP-v1!"
    local capacity = language == "lua" and 2097152 or 4194304
    local first, last = raw:find(marker, 1, true)
    assert(first and not raw:find(marker, last + 1, true), "Expected exactly one reviewed source slot")
    local guard = last + 5 + capacity
    assert(
        raw:sub(last + 1, guard - 1) == string.rep("\0", 4 + capacity) and raw:byte(guard) == 0xa7,
        "The real engine's entire reserved slot must be empty and guarded"
    )
    local entry = path.absolute(target:sourcefiles()[1])
    local source, inputs = _source(root, language, entry, backend)
    assert(#source <= capacity, "Whole source closure exceeds the genuine engine's finite slot")
    local packed = raw:sub(1, last)
        .. _word(#source)
        .. source
        .. string.rep("\0", capacity - #source)
        .. raw:sub(guard)
    assert(#packed == #raw, "Source embedding changed Wasm section extents")
    local output = path.absolute(target:targetfile())
    os.mkdir(path.directory(output))
    io.writefile(output, packed, { encoding = "binary" })
    local cache = path.join(path.absolute(target:scriptdir()), ".uwvm-ros/interpreter")
    os.mkdir(cache)
    json.savefile(path.join(cache, "build-receipt.json"), {
        format = "uwvm-unitree-real-interpreter-application-v1",
        status = "PASS",
        language = language,
        backend = backend,
        target = "wasm32-wasip1",
        entry_sha256 = hash.sha256(entry):lower(),
        runtime_sha256 = metadata.sha256,
        source_bytes = #source,
        source_capacity = capacity,
        artifact_sha256 = hash.sha256(output):lower(),
        producer = "Xmake embeds actual source into the genuine guest language engine",
        inputs = inputs,
    })
end
