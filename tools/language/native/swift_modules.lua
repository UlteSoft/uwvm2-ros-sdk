-- SPDX-License-Identifier: Apache-2.0
-- Compile explicit Swift source modules with the pinned Embedded frontend.
-- Module SIL is serialized by the real compiler and specialized into the
-- consuming object; sources, imports and native grants are never synthesized.
local function name(value)
    assert(type(value) == "string" and value:match("^[A-Za-z_][A-Za-z0-9_]*$"),
        "Declare a valid Swift module name")
    return value
end
function compile(context, core, compiler, bundle, object)
    local options = context.action.swift
    assert(type(options.modules) == "table" and #options.modules > 0,
        "Declare an ordered nonempty Swift source module graph")
    local directory = path.join(context.cache, "swift-modules")
    os.tryrm(directory)
    os.mkdir(directory)
    local base = {"-target", "wasm32-unknown-none-wasm",
        "-enable-experimental-feature", "Embedded", "-wmo", core.debug_info(context.root).unoptimized() and "-Onone" or "-O",
        "-resource-dir", path.join(bundle, "original/lib/swift"),
        "-Xcc", "-resource-dir=" .. path.join(bundle, "original/lib/clang/21"),
        "-Xcc", "-fdeclspec", "-I", directory,
        "-Xcc", "-isystem", "-Xcc", core.installed(context.root,
            path.join(context.selected.include_dir, context.triple)),
        "-Xcc", "-I" .. path.join(context.root, "include/platform")}
    if core.debug_info(context.root).enabled() then
        -- Keep Clang-imported type metadata in the final Wasm image.
        table.join2(base, {"-g", "-gdwarf-types", "-no-clang-module-breadcrumbs", "-Xcc", "-gno-modules"})
    end
    for _, relative in ipairs(options.import_dirs or {}) do
        table.join2(base, {"-I", core.installed(context.root, relative)})
    end
    for _, define in ipairs(options.c_defines or {}) do
        assert(type(define) == "string" and not define:find("[\r\n]"), "Invalid Swift C import macro")
        table.join2(base, {"-Xcc", "-D" .. define})
    end
    local modules = {}
    for _, module in ipairs(options.modules) do
        local selected = name(module.name)
        assert(not modules[selected], "Duplicate Swift source module")
        modules[selected] = true
        assert(type(module.sources) == "table" and #module.sources > 0, "Missing Swift module sources")
        local sources = {}
        for _, relative in ipairs(module.sources) do
            local source = core.installed(context.root, relative)
            assert(os.isfile(source), "Swift module source must be a file")
            table.insert(sources, source)
        end
        os.vrunv(compiler, table.join(base, {"-parse-as-library", "-module-name", selected,
            "-emit-module", "-emit-module-path", path.join(directory, selected .. ".swiftmodule")}, sources))
    end
    local command = table.join(base, {"-module-name", name(options.module_name or "WasmCommand"), "-c"})
    if not options.top_level then table.insert(command, "-parse-as-library") end
    for _, relative in ipairs(options.sources or {}) do
        table.insert(command, core.installed(context.root, relative))
    end
    os.vrunv(compiler, table.join(command, context.sources, {"-o", object}))
end
