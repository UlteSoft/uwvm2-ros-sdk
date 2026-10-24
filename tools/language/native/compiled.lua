-- @file compiled.lua
-- @brief Invoke pinned D, Haskell, Nim, Odin, Swift and Zig source frontends.
-- @details Module names and paths come from caller-owned action descriptors.
-- LLVM 23 compiles genuine frontend-generated C/assembly and final WASI links.
-- Frontend-owned LLVM versions remain exactly those of their pinned bundles.

-- @brief Validate a compiler module identifier before constructing its operands.
-- @param name Explicit source-language import/module identifier.
-- @return The unchanged identifier after validation.
local function identifier(name)
	assert(
		type(name) == "string" and name:match("^[A-Za-z_][A-Za-z0-9_]*$"),
		"Invalid native module name"
	)
	return name
end

-- @brief Compile a Zig import graph to one actual source-language object.
-- @param context Exact frontend/target build context.
-- @param core Shared path/tool helper.
-- @param compiler Genuine pinned Zig compiler.
-- @param object Private output object filename.
local function zig(context, core, compiler, object)
	local options = context.action.zig or {}
	local target = context.triple:startswith("wasm64-") and "wasm64-freestanding"
		or "wasm32-freestanding"
	local arguments = { "build-obj", "-O", "ReleaseSafe", "-target", target, "-fno-stack-check" }
	for _, dependency in ipairs(options.imports or {}) do
		table.join2(arguments, { "--dep", identifier(dependency) })
	end
	table.insert(arguments, "-Mroot=" .. context.sources[1])
	local names = { root = true }
	for _, module in ipairs(options.modules or {}) do
		local name = identifier(module.name)
		assert(not names[name], "Duplicate Zig module: " .. name)
		names[name] = true
		table.join2(arguments, { "-target", target })
		for _, dependency in ipairs(module.imports or {}) do
			table.join2(arguments, { "--dep", identifier(dependency) })
		end
		table.insert(arguments, "-M" .. name .. "=" .. core.installed(context.root, module.source))
	end
	for _, dependency in ipairs(options.imports or {}) do
		assert(names[dependency], "Missing root Zig dependency: " .. dependency)
	end
	for _, module in ipairs(options.modules or {}) do
		for _, dependency in ipairs(module.imports or {}) do
			assert(names[dependency], "Missing Zig module dependency: " .. dependency)
		end
	end
	table.join2(arguments, {
		"-femit-bin=" .. object,
		"--cache-dir",
		path.join(context.cache, "zig"),
		"--global-cache-dir",
		path.join(context.cache, "zig-global"),
	})
	os.vrunv(compiler, arguments)
end

-- @brief Compile D BetterC source with the exact LDC standard-library closure.
-- @param context Exact frontend/target build context.
-- @param core Shared path/tool helper.
-- @param compiler Genuine pinned LDC frontend.
-- @param bundle Hash-verified extracted frontend closure.
-- @param object Actual source-language output object.
-- @return Ordered independent root/module objects, each emitted by its own invocation.
local function dlang(context, core, compiler, bundle, object)
	-- Each source owns an output path and compiler module context. Keep module
	-- compilation separate; final LLVM linking resolves the genuine D objects.
	local arguments = {
		"-conf=" .. path.join(bundle, "original/etc/ldc2.conf"),
		"-I=" .. path.join(bundle, "original/lib/ldc/include/d"),
		"-mtriple="
			.. (
				context.triple:startswith("wasm64-") and "wasm64-unknown-wasi"
				or "wasm32-unknown-wasi"
			),
		"-betterC",
		"-O2",
		"-release",
		"-boundscheck=on",
		"-checkaction=halt",
		"-I=" .. path.join(context.root, "include/platform"),
	}
	local options = context.action.d or {}
	local roots = { path.join(context.root, "include/platform") }
	for _, relative in ipairs(options.import_dirs or {}) do
		local directory = core.installed(context.root, relative)
		table.insert(roots, directory)
		table.insert(arguments, "-I=" .. directory)
	end
	local sources, seen = { context.sources[1] }, { [context.sources[1]] = true }
	local text = assert(io.readfile(context.sources[1]))
	local root_module = text:match("module%s+([A-Za-z_][A-Za-z0-9_%.]*)%s*;")
	for _, module in ipairs(options.modules or {}) do
		assert(
			type(module) == "string" and module:match("^[A-Za-z_][A-Za-z0-9_%.]*$"),
			"Invalid D module name"
		)
		if module ~= root_module then
			local found
			for _, directory in ipairs(roots) do
				local source = path.join(directory, module:gsub("%.", "/") .. ".d")
				if os.isfile(source) then
					assert(not found or found == source, "Ambiguous declared D module: " .. module)
					found = source
				end
			end
			assert(found, "Missing explicit D module source: " .. module)
			if not seen[found] then
				seen[found] = true
				table.insert(sources, found)
			end
		end
	end
	local objects = {}
	for index, source in ipairs(sources) do
		local output = index == 1 and object
			or path.join(context.cache, "d-module-" .. index .. ".o")
		os.vrunv(compiler, table.join(arguments, { "-c", source, "-of=" .. output }))
		table.insert(objects, output)
	end
	return objects
end

-- @brief Compile genuine Nim-generated C using the selected LLVM 23 libraries.
-- @param context Exact frontend/target build context.
-- @param core Shared path/tool helper.
-- @param compiler Genuine pinned Nim frontend.
-- @param bundle Matching compiler and standard-library closure.
-- @param objects Already compiled infrastructure objects.
-- @return Final ordered genuine Nim/infrastructure object paths.
local function nim(context, core, compiler, bundle, objects)
	local library = path.join(bundle, "original/lib/nim/lib")
	assert(os.isfile(path.join(library, "nimbase.h")), "Missing pinned Nim standard library")
	local generated = path.join(context.cache, "nim-generated")
	os.tryrm(generated)
	os.mkdir(generated)
	local arguments = {
		"c",
		"--os:any",
		"--cpu:wasm32",
		"--compileOnly:on",
		"--noMain:on",
		"--mm:none",
		"--threads:off",
		"--exceptions:goto",
		"--stackTrace:off",
		"--lineTrace:off",
		"--panics:on",
		"-d:release",
		"-d:useMalloc",
		"-d:noSignalHandler",
		"--warning:GcMem:off",
		"--skipCfg:on",
		"--skipUserCfg:on",
		"--skipParentCfg:on",
		"--skipProjCfg:on",
		"--lib:" .. library,
		"--nimcache:" .. generated,
		"--path:" .. path.join(context.root, "include/platform"),
	}
	for _, relative in ipairs((context.action.nim or {}).import_dirs or {}) do
		table.insert(arguments, "--path:" .. core.installed(context.root, relative))
	end
	table.insert(arguments, context.sources[1])
	os.vrunv(compiler, arguments)
	local sources = os.files(path.join(generated, "*.c"))
	table.sort(sources)
	assert(#sources > 0, "The genuine Nim frontend produced no generated C")
	for index, source in ipairs(sources) do
		local object = path.join(context.cache, "nim-" .. index .. ".o")
		os.vrunv(
			context.programs.cc,
			table.join(context.cflags, {
				"-w",
				"-I",
				library,
				"-I",
				context.directory,
				"-c",
				source,
				"-o",
				object,
			})
		)
		table.insert(objects, object)
	end
	return objects
end

-- @brief Compile an explicit Odin source package and its named collections.
-- @param context Exact frontend/target build context.
-- @param core Shared path/tool helper.
-- @param compiler Genuine pinned Odin frontend.
-- @param object Actual source-language object output.
local function odin(context, core, compiler, object)
	local arguments = {
		"build",
		context.directory,
		"-target:wasi_wasm32",
		"-build-mode:obj",
		"-no-entry-point",
		"-out:" .. object,
		"-o:speed",
		"-thread-count:2",
	}
	table.insert(arguments, "-collection:support=" .. context.cache)
	local names = { support = true }
	for _, collection in ipairs((context.action.odin or {}).collections or {}) do
		local name = identifier(collection.name)
		assert(not names[name], "Duplicate Odin collection: " .. name)
		names[name] = true
		table.insert(
			arguments,
			"-collection:" .. name .. "=" .. core.installed(context.root, collection.directory)
		)
	end
	os.vrunv(compiler, arguments)
end

-- @brief Compile all declared Embedded Swift source modules with their real frontend.
-- @param context Exact frontend/target build context.
-- @param core Shared path/tool helper.
-- @param compiler Genuine pinned Swift frontend.
-- @param bundle Matching Swift and Clang resource closure.
-- @param object Actual source-language object output.
local function swift(context, core, compiler, bundle, object)
	local options = context.action.swift or {}
	local arguments = {
		"-target",
		"wasm32-unknown-none-wasm",
		"-Xcc",
		"-fdeclspec",
		"-enable-experimental-feature",
		"Embedded",
		"-wmo",
		"-O",
		"-parse-as-library",
		"-module-name",
		identifier(options.module_name or "WasmCommand"),
		"-c",
		"-resource-dir",
		path.join(bundle, "original/lib/swift"),
		"-Xcc",
		"-resource-dir=" .. path.join(bundle, "original/lib/clang/21"),
	}
	if options.bridging_header then
		table.join2(
			arguments,
			{ "-import-bridging-header", core.installed(context.root, options.bridging_header) }
		)
	end
	for _, relative in ipairs(options.sources or {}) do
		table.insert(arguments, core.installed(context.root, relative))
	end
	table.join2(arguments, context.sources, { "-o", object })
	os.vrunv(compiler, arguments)
end

-- @brief Build genuine Haskell with its original WASI RTS and matching libffi.
-- @param context Exact frontend/target build context.
-- @param core Shared path/tool helper.
-- @param compiler Genuine pinned WASI GHC frontend.
-- @param bundle Matching WASI compiler, RTS, and libffi closure.
-- @param objects Actual precompiled scalar infrastructure objects.
local function haskell(context, core, compiler, bundle, objects)
	local ffi = path.join(bundle, "original/libffi")
	assert(os.isfile(path.join(ffi, "lib/libffi.a")), "Missing matching pinned libffi-wasm")
	local arguments = {
		"--make",
		"-O1",
		"-odir",
		context.cache,
		"-hidir",
		context.cache,
		"-pgmc",
		context.programs.cc,
		"-pgml",
		context.programs.cc,
		"-pgma",
		context.programs.cc,
		"-pgmlm",
		context.programs.ld,
		"-pgmP",
		context.programs.cc,
		"-L" .. path.join(ffi, "lib"),
		"-I" .. path.join(ffi, "include"),
		"-optc--target=" .. context.triple,
		"-optc--sysroot=" .. core.installed(context.root, context.selected.sysroot),
		"-optc-resource-dir=" .. core.installed(context.root, context.selected.resource_dir),
		"-optc-isystem",
		"-optc" .. core.installed(context.root, context.selected.include_dir),
		"-optc-mcpu=generic",
		"-optl--target=" .. context.triple,
		"-optl--sysroot=" .. core.installed(context.root, context.selected.sysroot),
		"-optl-resource-dir=" .. core.installed(context.root, context.selected.resource_dir),
		"-optl-fuse-ld=" .. context.programs.ld,
		"-optl-Wl,--stack-first",
		"-optl-Wl,-z,stack-size=1048576",
		"-optl-Wl,--max-memory=67108864",
		"-opta--target=" .. context.triple,
		"-opta-mcpu=generic",
		"-opta-resource-dir=" .. core.installed(context.root, context.selected.resource_dir),
		"-j2",
	}
	for _, relative in ipairs((context.action.haskell or {}).import_dirs or {}) do
		table.insert(arguments, "-i" .. core.installed(context.root, relative))
	end
	table.join2(arguments, context.sources, objects, { "-o", context.output })
	os.vrunv(compiler, arguments)
end

-- @brief Produce genuine relocatable objects without adding an application entry.
-- @param context Exact source-language action, target width and private cache.
-- @return Ordered source-language and explicitly declared infrastructure objects.
-- @details Library finalization is separate. GHC requires its own RTS/init
-- contract and is deliberately refused here rather than archived as a command.
function build_objects(context)
	assert(
		context.language ~= "haskell",
		"Haskell archive/reactor RTS initialization is not implemented"
	)
	local core = import(
		"core",
		{ rootdir = path.join(context.root, "tools/language/native"), anonymous = true }
	)
	context.selected, context.programs = core.llvm(context.root, context.triple, context.profile)
	context.cflags = context.cflags or core.cflags(context.root, context.selected, context.action)
	local objects = core.infrastructure(context)
	local bundle, programs = core.frontend(context.root, "native-" .. context.language)
	local compiler = assert(programs.compiler, "Pinned native closure omitted its compiler")
	local object = path.join(context.cache, "language.o")
	if context.language == "zig" then
		zig(context, core, compiler, object)
	elseif context.language == "d" then
		return table.join(dlang(context, core, compiler, bundle, object), objects)
	elseif context.language == "nim" then
		return nim(context, core, compiler, bundle, objects)
	elseif context.language == "odin" then
		odin(context, core, compiler, object)
	elseif context.language == "swift" then
		swift(context, core, compiler, bundle, object)
	else
		raise("No relocatable native object action for " .. tostring(context.language))
	end
	table.insert(objects, 1, object)
	return objects
end

-- @brief Build one complete real native-language command from its action.
-- @param context Exact application source/module action and output location.
function build(context)
	local core = import(
		"core",
		{ rootdir = path.join(context.root, "tools/language/native"), anonymous = true }
	)
	context.selected, context.programs = core.llvm(context.root, context.triple, context.profile)
	context.cflags = core.cflags(context.root, context.selected, context.action)
	local objects = core.infrastructure(context)
	local bundle, programs = core.frontend(context.root, "native-" .. context.language)
	local compiler = assert(programs.compiler, "Pinned native closure omitted its compiler")
	local object = path.join(context.cache, "application.o")
	if context.language == "zig" then
		zig(context, core, compiler, object)
	elseif context.language == "d" then
		return core.link(
			context,
			table.join(dlang(context, core, compiler, bundle, object), objects)
		)
	elseif context.language == "nim" then
		return core.link(context, nim(context, core, compiler, bundle, objects))
	elseif context.language == "odin" then
		odin(context, core, compiler, object)
	elseif context.language == "swift" then
		swift(context, core, compiler, bundle, object)
	elseif context.language == "haskell" then
		return haskell(context, core, compiler, bundle, objects)
	else
		raise("No compiled native action for " .. tostring(context.language))
	end
	table.insert(objects, 1, object)
	core.link(context, objects)
end
