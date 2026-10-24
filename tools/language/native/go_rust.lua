-- @file go_rust.lua
-- @brief Compile genuine Go, Rust and TinyGo with offline explicit module maps.
-- @details A caller declares actual packages and dependencies. The common
-- compiler has no schema catalog, robot platform, ROS generation, or run action.

-- @brief Compile Rust dependency crates in explicit topological order.
-- @param context Exact genuine-source build context.
-- @param core Shared frontend/path helper.
-- @param bundle Matching complete Rust compiler/sysroot closure.
-- @param compiler Exact Rust compiler program.
local function rust(context, core, bundle, compiler)
	context.selected, context.programs = core.llvm(context.root, context.triple, context.profile)
	context.cflags = core.cflags(context.root, context.selected, context.action)
	local objects = core.infrastructure(context)
	local options = context.action.rust or {}
	local common = {
		"--edition=2021",
		"--target=" .. context.triple,
		"-Copt-level=2",
		"-Cpanic=abort",
		"--sysroot",
		path.join(bundle, "original/rust"),
		"-Ldependency=" .. context.cache,
	}
	for _, cfg in ipairs(options.cfg or {}) do
		assert(type(cfg) == "string" and not cfg:find("[\r\n]"), "Invalid Rust cfg operand")
		table.join2(common, { "--cfg", cfg })
	end
	local crates = {}
	local function dependencies(arguments, names)
		for _, name in ipairs(names or {}) do
			table.join2(
				arguments,
				{ "--extern", name .. "=" .. assert(crates[name], "Missing Rust crate: " .. name) }
			)
		end
	end
	for _, crate in ipairs(options.crates or {}) do
		assert(
			type(crate.name) == "string" and crate.name:match("^[A-Za-z_][A-Za-z0-9_]*$"),
			"Invalid Rust crate name"
		)
		assert(not crates[crate.name], "Duplicate Rust crate: " .. crate.name)
		local output = path.join(context.cache, "lib" .. crate.name .. ".rlib")
		local arguments = table.join(common, { "--crate-name", crate.name, "--crate-type=rlib" })
		dependencies(arguments, crate.dependencies)
		table.join2(arguments, { core.installed(context.root, crate.source), "-o", output })
		os.vrunv(compiler, arguments)
		crates[crate.name] = output
	end
	local arguments = table.join(common, {
		"-Clinker=" .. context.programs.ld,
		"-Clink-arg=--stack-first",
		"-Clink-arg=-z",
		"-Clink-arg=stack-size=1048576",
		"-Clink-arg=--max-memory=67108864",
		"-Clink-arg=--threads=1",
	})
	dependencies(arguments, options.imports)
	for _, object in ipairs(objects) do
		table.insert(arguments, "-Clink-arg=" .. object)
	end
	for _, relative in ipairs(context.action.libraries or {}) do
		table.insert(arguments, "-Clink-arg=" .. core.installed(context.root, relative))
	end
	table.join2(arguments, context.sources, { "-o", context.output })
	os.vrunv(compiler, arguments)
end

-- @brief Create an offline Go workspace referencing complete declared modules.
-- @param context Exact source/module action.
-- @param core Shared validated SDK path helper.
-- @return Absolute workspace path; no installed SDK file is modified.
local function workspace(context, core)
	assert(
		os.isfile(path.join(context.directory, "go.mod")),
		"The Go application needs its public go.mod"
	)
	local locations = { context.directory }
	for _, relative in ipairs((context.action.go or {}).modules or {}) do
		local location = core.installed(context.root, relative)
		assert(
			os.isfile(path.join(location, "go.mod")),
			"A declared Go module has no go.mod: " .. relative
		)
		table.insert(locations, location)
	end
	local rows = { "go 1.24", "use (" }
	for _, location in ipairs(locations) do
		assert(not location:find("[\r\n]"), "Invalid Go workspace path")
		table.insert(rows, string.format("    %q", location))
	end
	table.insert(rows, ")")
	local filename = path.join(context.cache, "go.work")
	io.writefile(filename, table.concat(rows, "\n") .. "\n")
	return filename
end

-- @brief Prepare TinyGo's genuine WASI object target and LLVM 23 runtime assembly.
-- @param context Exact source/module build context.
-- @param core Shared validated tools and target helper.
-- @param tinyroot Complete pinned TinyGo compiler/runtime source closure.
-- @return Private target JSON and actual compiled stack-support object.
local function tiny_target(context, core, tinyroot)
	import("core.base.json")
	context.selected, context.programs = core.llvm(context.root, context.triple, context.profile)
	local object = path.join(context.cache, "tinygo-stack.o")
	os.vrunv(context.programs.cc, {
		"--target=" .. context.triple,
		"-fintegrated-cc1",
		"-no-canonical-prefixes",
		"-resource-dir=" .. core.installed(context.root, context.selected.resource_dir),
		"-O2",
		"-mbulk-memory",
		"-msign-ext",
		"-mnontrapping-fptoint",
		"-mno-multivalue",
		"-mno-reference-types",
		"-c",
		path.join(tinyroot, "src/runtime/asm_tinygowasm.S"),
		"-o",
		object,
	})
	local filename = path.join(context.cache, "tinygo-llvm23.json")
	json.savefile(filename, {
		["llvm-target"] = "wasm32-unknown-wasi",
		cpu = "generic",
		features = "+bulk-memory,+mutable-globals,+nontrapping-fptoint,+sign-ext,-multivalue,-reference-types",
		["build-tags"] = { "tinygo.wasm" },
		goos = "wasip1",
		goarch = "wasm",
		linker = "wasm-ld",
		gc = "precise",
		scheduler = "none",
		["default-stack-size"] = 1048576,
	})
	return filename, object
end

-- @brief Build real Go/TinyGo application packages without online resolution.
-- @param context Exact application and explicit dependency modules.
-- @param core Shared path/frontend helper.
-- @param bundle Complete selected frontend closure.
-- @param compiler Exact actual Go or TinyGo compiler.
local function golang(context, core, bundle, compiler)
	assert(
		#(context.action.c_sources or {}) == 0,
		"Go application actions use genuine Go source and CGO_ENABLED=0"
	)
	local go_bundle, go_programs = bundle, { compiler = compiler }
	if context.language == "tinygo" then
		go_bundle, go_programs = core.frontend(context.root, "native-go")
	end
	local options = context.action.go or {}
	local environment = {
		GOOS = "wasip1",
		GOARCH = "wasm",
		CGO_ENABLED = "0",
		GOENV = "off",
		GOROOT = path.join(go_bundle, "original/go"),
		GOWORK = workspace(context, core),
		GOPROXY = "off",
		GOSUMDB = "off",
		GOTOOLCHAIN = "local",
		GOMAXPROCS = "2",
		GOCACHE = path.join(context.cache, "go-cache"),
		GOMODCACHE = path.join(context.cache, "go-mod-cache"),
	}
	local tags = table.concat(options.tags or {}, ",")
	if context.language == "go" then
		local arguments = { "build", "-p", "2", "-tags=" .. tags, "-trimpath" }
		if context.kind == "shared" then
			table.insert(arguments, "-buildmode=c-shared")
		end
		table.join2(arguments, { "-o", context.output, "." })
		os.vrunv(compiler, arguments, {
			curdir = context.directory,
			envs = environment,
		})
		return
	end
	local tinyroot = path.join(bundle, "original/tinygo")
	local descriptor, support = tiny_target(context, core, tinyroot)
	environment.TINYGOROOT = tinyroot
	environment.TINYGOCACHE = path.join(context.cache, "tinygo-cache")
	environment.XDG_CACHE_HOME = path.join(context.cache, "native-cache")
	environment.PATH = path.directory(context.programs.ld)
		.. ":"
		.. path.directory(go_programs.compiler)
	local library_mode = context.kind == "static" or context.kind == "shared"
	local object = path.join(context.cache, library_mode and "language.o" or "command.o")
	local arguments = {
		"build",
		"-target=" .. descriptor,
		"-tags=" .. tags,
		"-panic=trap",
		"-opt=2",
		"-p",
		"2",
	}
	if context.kind == "static" or context.kind == "shared" then
		table.insert(arguments, "-buildmode=c-shared")
	end
	table.join2(arguments, { "-o", object, "." })
	os.vrunv(compiler, arguments, { curdir = context.directory, envs = environment })
	if context.kind == "static" or context.kind == "shared" then
		return { object, support }
	end
	os.vrunv(context.programs.ld, {
		"--stack-first",
		"-z",
		"stack-size=1048576",
		"--threads=1",
		"--max-memory=67108864",
		"--gc-sections",
		object,
		support,
		path.join(context.root, context.selected.lib_dir, "libc.a"),
		core.installed(context.root, context.selected.builtins_lib),
		"-o",
		context.output,
	})
end

-- @brief Produce a genuine Go reactor or TinyGo relocatable library objects.
-- @param context Explicit shared/static kind and the existing source module map.
-- @return TinyGo object paths, or nil after the genuine Go reactor is linked.
-- @details Go's WASI reactor exports _initialize; the consumer must call it
-- before other exports. TinyGo uses its real c-shared lowering before object
-- emission. No serialized Go package archive is labeled a native Wasm archive.
function library(context)
	assert(
		context.language == "go" or context.language == "tinygo",
		"Select genuine Go/TinyGo source"
	)
	assert(context.kind == "shared" or context.kind == "static", "Select a real library kind")
	assert(
		context.language ~= "go" or context.kind == "shared",
		"The pinned Go action has no relocatable Wasm archive producer"
	)
	local core = import(
		"core",
		{ rootdir = path.join(context.root, "tools/language/native"), anonymous = true }
	)
	local bundle, programs = core.frontend(context.root, "native-" .. context.language)
	return golang(
		context,
		core,
		bundle,
		assert(programs.compiler, "Missing pinned Go/TinyGo compiler")
	)
end

-- @brief Build a genuine Go, Rust or TinyGo command using its public modules.
-- @param context Exact validated source/target action.
function build(context)
	local core = import(
		"core",
		{ rootdir = path.join(context.root, "tools/language/native"), anonymous = true }
	)
	local bundle, programs = core.frontend(context.root, "native-" .. context.language)
	local compiler =
		assert(programs.compiler, "The pinned frontend closure omitted its actual compiler")
	if context.language == "rs" then
		rust(context, core, bundle, compiler)
	else
		golang(context, core, bundle, compiler)
	end
end
