-- SPDX-License-Identifier: Apache-2.0
-- @file wasm_link.lua
-- @brief Share actual relocatable Wasm linking between source-language adapters.
-- @details Frontends supply real objects; this module never translates source
-- languages, packs linked modules as objects, or grants deployment permissions.

-- @brief Identify a Wasm object carrying an actual version-two linking section.
-- @param filename Existing frontend-produced object, owned by the caller.
-- @return True when the binary contains linking metadata; malformed bytes fail.
function relocatable(filename)
    local data = assert(io.readfile(filename, {encoding = "binary"}))
    assert(data:sub(1, 8) == "\0asm\1\0\0\0", "Expected a Core Wasm object")
    local position = 9
    local function integer()
        local value, factor = 0, 1
        for _ = 1, 10 do
            local byte = assert(data:byte(position), "Truncated Wasm integer")
            position = position + 1
            value = value + (byte % 128) * factor
            if byte < 128 then return value end
            factor = factor * 128
        end
        raise("Oversized Wasm integer")
    end
    while position <= #data do
        local section = data:byte(position)
        position = position + 1
        local length = integer()
        local finish = position + length
        assert(finish <= #data + 1, "Truncated Wasm section")
        if section == 0 then
            local size = integer()
            assert(position + size <= finish, "Truncated custom section name")
            local name = data:sub(position, position + size - 1)
            position = position + size
            if name == "linking" then
                assert(integer() == 2, "Unsupported Wasm linking metadata version")
                return true
            end
        end
        position = finish
    end
    return false
end

-- @brief Check that WAT archive exports have real globally named linker symbols.
-- @param filename Actual WABT relocatable object with version-two metadata.
-- @details A WAT definition used across objects is named $symbol and exports
-- the same symbol. Numeric-only definitions are local in WABT's object ABI;
-- exported aliases need a separately implemented object-level alias contract.
function validate_exports(filename)
    local module = import("wasm_module", {rootdir = os.scriptdir(), anonymous = true})
    local data = assert(io.readfile(filename, {encoding = "binary"}))
    local metadata = module.inspect(data)
    local stream, functions, found = module.metadata_reader(data:sub(9)), {}, false
    while stream.at <= #stream.data do
        local id = stream:byte()
        local reader = module.metadata_reader(stream:take(stream:uleb()))
        if id == 0 and reader:name() == "linking" then
            assert(reader:uleb() == 2, "Expected version-two object metadata")
            found = true
            while reader.at <= #reader.data do
                local subsection = reader:byte()
                local symbols = module.metadata_reader(reader:take(reader:uleb()))
                if subsection == 8 then
                    for _ = 1, symbols:uleb() do
                        local kind, flags = symbols:byte(), symbols:uleb()
                        local undefined = math.floor(flags / 16) % 2 == 1
                        local explicit = math.floor(flags / 64) % 2 == 1
                        if kind == 0 or kind == 2 or kind == 4 or kind == 5 then
                            local index = symbols:uleb()
                            local name = (not undefined or explicit) and symbols:name() or nil
                            if kind == 0 and not undefined then functions[index] = {name = name, flags = flags} end
                        elseif kind == 1 then
                            symbols:name()
                            if not undefined then symbols:uleb(); symbols:uleb(); symbols:uleb() end
                        elseif kind == 3 then
                            symbols:uleb()
                        else
                            raise("Unsupported WAT object symbol kind")
                        end
                    end
                    assert(symbols.at == #symbols.data + 1, "Unexpected object symbol-table tail")
                end
            end
        end
    end
    assert(found, "A linked module cannot substitute for an actual WAT object")
    for _, entry in ipairs(metadata.exports) do
        if entry.kind == 0 then
            local symbol = assert(functions[entry.index], "A WAT archive exports a defined function")
            assert(symbol.flags % 4 ~= 2 and symbol.name == entry.name,
                   "A WAT archive export requires a matching global $name, without an exported alias")
        end
    end
end

-- @brief Archive or link genuine objects through the one pinned LLVM toolchain.
-- @param target Ordinary Xmake binary, static or shared target.
-- @param root Installed SDK root containing the shared LLVM23 manifest.
-- @param request Validated common provider request, including the exact triple.
-- @param objects Frontend-produced relocatable Wasm object paths in source order.
-- @param options Optional exports, runtime archives and explicit linker flags.
-- @details Fortran owns its real runtime archives and passes them explicitly;
-- WAT normally links without a source-language runtime. Shared libraries remain
-- independent Core modules. Ordinary dependency and link declarations retain
-- their meaning. Final width, initialization and deployment checks stay visible.
function build(target, root, request, objects, options)
    options = options or {}
    assert(request.wasi_preview == 1 and not request.threads and request.exception_profile == "noeh",
           "This shared object linker currently implements Preview1/noeh/single-thread only")
    assert(request.triple == target:arch() .. "-wasip1", "Object-link target width conflicts with Xmake")
    local programs = import("cfamily", {rootdir = path.join(root, "tools/xmake"), anonymous = true}).tools(root)
    local contract = import("artifact_contract", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
    assert(#objects > 0, "Supply real frontend-produced objects")
    for _, filename in ipairs(objects) do
        assert(relocatable(filename), "A linked module cannot substitute for a relocatable archive member")
    end
    local output = path.absolute(target:targetfile())
    os.mkdir(path.directory(output))
    if target:kind() == "static" then
        os.tryrm(output)
        local args = table.join({"rcsD", output}, objects)
        os.vrunv(programs.ar, args)
        target:data_set("ros.sdk.build_command", {program = programs.ar, arguments = args})
        return
    end
    local arguments = {"--target=" .. request.triple, "-fuse-ld=" .. programs.ld, "-nostdlib",
                       "-Wl,--no-entry", "-Wl,--threads=1"}
    table.join2(arguments, objects)
    for _, dependency in ipairs(contract.static_closure(target)) do
        assert(os.isfile(dependency:targetfile()), "Build the actual static dependency first")
        table.insert(arguments, path.absolute(dependency:targetfile()))
    end
    for _, library in ipairs(options.runtime_archives or {}) do
        assert(os.isfile(library), "Missing genuine source-language target runtime archive")
        table.insert(arguments, path.absolute(library))
    end
    for _, directory in ipairs(table.unique(table.join(table.wrap(target:get("linkdirs")), contract.inherited(target, "linkdirs")))) do
        table.insert(arguments, "-L" .. path.absolute(directory))
    end
    for _, library in ipairs(table.join(table.wrap(target:get("links")), contract.inherited(target, "links"))) do
        table.insert(arguments, path.extension(library) == ".a" and path.absolute(library) or "-l" .. library)
    end
    for _, symbol in ipairs(options.exports or {}) do
        assert(type(symbol) == "string" and not symbol:find("%z") and not symbol:find(",", 1, true), "Invalid exact export symbol")
        table.insert(arguments, "-Wl,--export=" .. symbol)
    end
    if #(options.allowed_undefined_symbols or {}) > 0 then
        local directory = path.join(path.absolute(target:scriptdir()), ".uwvm-ros/links", contract.identity(target))
        os.mkdir(directory)
        local names = {}
        for _, symbol in ipairs(options.allowed_undefined_symbols) do
            assert(type(symbol) == "string" and #symbol > 0 and not symbol:find("[%z\r\n]"), "Invalid exact imported linker symbol")
            table.insert(names, symbol)
        end
        local filename = path.join(directory, "declared-function-imports.txt")
        io.writefile(filename, table.concat(table.unique(names), "\n") .. "\n")
        table.insert(arguments, "-Wl,--allow-undefined-file=" .. filename)
    end
    if options.allow_undefined then table.insert(arguments, "-Wl,--allow-undefined") end
    table.join2(arguments, options.link_flags or {})
    table.join2(arguments, table.wrap(target:get("ldflags")))
    table.join2(arguments, {"-o", output})
    os.vrunv(programs.cc, arguments)
    target:data_set("ros.sdk.build_command", {program = programs.cc, arguments = arguments})
end
