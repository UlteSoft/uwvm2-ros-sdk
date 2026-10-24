-- @file library.lua
-- @brief Stage genuine native object producers for ordinary Xmake target kinds.
-- @details This adapter delegates artifact/dependency semantics to the common
-- contract and receives explicit source actions from the common provider lifecycle.
-- Configuration preserves the caller's ordinary binary/shared/static target kind.
-- Core Wasm modules own their memories; no ELF/PIC/dylink loader is presumed.

local archives = {
	d = true,
	nim = true,
	objectc = true,
	odin = true,
	rs = true,
	swift = true,
	tinygo = true,
	zig = true,
}
local modules = {
	as = true,
	d = true,
	go = true,
	nim = true,
	objectc = true,
	odin = true,
	rs = true,
	swift = true,
	tinygo = true,
	zig = true,
}
local extensions = {
	as = ".ts",
	d = ".d",
	go = ".go",
	nim = ".nim",
	objectc = ".m",
	odin = ".odin",
	rs = ".rs",
	swift = ".swift",
	tinygo = ".go",
	zig = ".zig",
}

-- @brief Validate a real object producer and preserve the requested target kind.
-- @param target Ordinary Xmake binary/shared/static target with actual sources.
-- @param root Complete installed SDK, borrowed during the build.
-- @param action Shared native source-module action; no runtime grants are added.
-- @return Exact genuine source language and width-specific WASI triple.
function configure(target, root, action)
	import("core.project.config")
	assert(
		type(action) == "table" and action.format == "uwvm-native-action-v1",
		"Supply the shared native source action"
	)
	local language = target:values("ros.sdk.language")
	local kind = target:kind()
	assert(
		kind == "binary" or kind == "shared" or kind == "static",
		"Use ordinary binary/shared/static target kinds"
	)
	assert(
		(kind == "static" and archives[language]) or (kind ~= "static" and modules[language]),
		tostring(language) .. " has no " .. kind .. " source adapter in this library route"
	)
	assert(
		(language ~= "as" and language ~= "go" and language ~= "tinygo") or kind ~= "binary",
		"Use the existing application provider for AssemblyScript/Go/TinyGo binary targets"
	)
	assert(
		not action.language or action.language == language,
		"Native library language conflicts with its source action"
	)
	local architecture = target:arch()
	assert(
		architecture == "wasm32" or architecture == "wasm64",
		"Select an exact Wasm pointer width"
	)
	assert(
		architecture == "wasm32" or language == "d" or language == "objectc" or language == "zig",
		language .. " has no genuine pinned memory64 object/standard-library closure"
	)
	for _, feature in ipairs(target:get("values.ros.sdk.features") or {}) do
		assert(
			architecture == "wasm64" and (feature == "memory64" or feature == "table64"),
			"No accepted explicit native library compiler mapping for feature " .. tostring(feature)
		)
	end
	assert(
		target:plat() == "wasm-wasip1",
		"This native library adapter requires explicit wasm-wasip1"
	)
	assert(
		(config.get("arch") or architecture) == architecture,
		"Configured architecture conflicts with the source target"
	)
	assert(
		(config.get("plat") or target:plat()) == target:plat(),
		"Configured WASI profile conflicts with the source target"
	)
	local triple = architecture .. "-wasip1"
	local requested = config.get("ros-target") or "detect"
	assert(
		requested == "detect" or requested == triple,
		"Explicit target triple conflicts with the source width"
	)
	local profile = target:values("ros.sdk.exception_profile")
		or config.get("ros-exceptions")
		or "noeh"
	assert(profile == "noeh", "This native library adapter has no accepted EH producer")
	local sources = target:sourcefiles()
	assert(#sources > 0, "Declare genuine source-language files")
	for _, source in ipairs(sources) do
		assert(
			path.extension(source) == extensions[language],
			"Native library source extension conflicts with its language"
		)
	end
	if language == "d" or language == "nim" or language == "rs" or language == "zig" then
		assert(#sources == 1, "Declare one root source and its explicit language module graph")
	end
	target:set("values", "ros.sdk.root", root)
	target:set("values", "ros.sdk.triple", triple)
	target:set("toolchains", "ros.wasm.command")
	assert(
		os.isfile(path.join(root, "tools/xmake/artifact_contract.lua")),
		"Install the common version-one Xmake artifact contract"
	)
	import("artifact_contract", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).configure(
		target
	)
	target:set("extension", kind == "static" and ".a" or ".wasm")
	for _, name in ipairs({
		"dlang",
		"dlang.build",
		"dlang.build.optimization",
		"swift",
		"swift.build",
		"rust",
		"rust.build",
		"go",
		"go.env",
		"go.build",
	}) do
		if target:rule(name) then
			local rule = assert(
				target:rule("ros.wasm.source"),
				"Install the common source-only Xmake rule"
			):clone()
			rule:name_set(name)
			target:rule_add(rule)
		end
	end
	if language == "rs" then
		-- Xmake may have already loaded its implicit Rust rule. Its native
		-- Rust driver flags cannot be forwarded to our final LLVM C linker.
		-- Preserve ordinary caller-supplied linker flags and actual exports.
		for _, property in ipairs({ "shflags", "ldflags", "arflags" }) do
			local kept = {}
			for _, flag in ipairs(table.wrap(target:get(property))) do
				if not flag:startswith("--crate-type=") and flag ~= "-C prefer-dynamic" then
					table.insert(kept, flag)
				end
			end
			target:set(property, kept)
		end
	end
	return language, triple, profile
end

-- @brief Read ordinary target values and inherited public/interface values.
-- @param target Loaded Xmake target; dependency inspection runs only at build.
-- @param name Existing Xmake property such as includedirs, links or linkdirs.
-- @return Stable independent list; inherit=false dependencies are excluded.
local function values(target, name)
	local result, seen = {}, {}
	local function append(items)
		for _, item in ipairs(table.wrap(items)) do
			if not seen[item] then
				seen[item] = true
				table.insert(result, item)
			end
		end
	end
	append(target:get(name))
	local root = assert(target:values("ros.sdk.root"), "Configure the source target first")
	append(
		import("artifact_contract", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).inherited(
			target,
			name
		)
	)
	return result
end

-- @brief Compile runtime-free Rust C-ABI exports to a genuine Wasm object.
-- @details Rust metadata crates remain private compiler inputs. Linking a Rust
-- standard-library runtime through this object action is not qualified.
local function rust_object(context, core)
	assert(
		#((context.action.rust or {}).crates or {}) == 0,
		"Rust library dependency-crate lowering is not implemented"
	)
	local bundle, programs = core.frontend(context.root, "native-rs")
	local object = path.join(context.cache, "language.o")
	os.vrunv(programs.compiler, {
		"--edition=2021",
		"--target=" .. context.triple,
		"--crate-type=lib",
		"--emit=obj",
		"--crate-name",
		"uwvm_native_library",
		"-Copt-level=2",
		"-Cpanic=abort",
		"--sysroot",
		path.join(bundle, "original/rust"),
		context.sources[1],
		"-o",
		object,
	})
	local objects = core.infrastructure(context)
	table.insert(objects, 1, object)
	return objects
end

-- @brief Compile actual Objective-C translation units with the shared LLVM 23.
-- @details Runtime-free Objective-C constructs are admitted. Objective-C object
-- allocation, message dispatch and ARC need a separately accepted Wasm runtime.
local function objective_objects(context, core)
	local objects = core.infrastructure(context)
	for index, source in ipairs(context.sources) do
		local object = path.join(context.cache, "objective-" .. index .. ".o")
		os.vrunv(
			context.programs.cc,
			table.join(context.cflags, {
				"-x",
				"objective-c",
				"-std=c11",
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

-- @brief Build a genuine archive, independent Core Wasm module, or consumer.
-- @param target Loaded ordinary Xmake target with add_deps/links/linkdirs.
-- @param root Complete SDK and exact immutable host/target compiler closures.
-- @param action Source-language module graph and explicit infrastructure only.
-- @details Shared dependencies are deployment modules, never static link inputs.
-- They retain their original import-module names, optionally rebound explicitly
-- by the runtime CLI. Static dependencies use Wasm LLD's lazy archive symbols.
function build(target, root, action)
	local language, triple, profile = configure(target, root, action)
	local module_root = path.join(root, "tools/language/native")
	local core = import("core", { rootdir = module_root, anonymous = true })
	local directory = path.absolute(target:scriptdir())
	local context = {
		root = root,
		action = action,
		language = language,
		triple = triple,
		profile = profile,
		kind = target:kind(),
		directory = directory,
		cache = path.join(directory, ".uwvm-ros/native-library", target:name()),
		output = path.absolute(target:targetfile()),
		sources = {},
	}
	os.mkdir(context.cache)
	os.mkdir(path.directory(context.output))
	for _, source in ipairs(target:sourcefiles()) do
		table.insert(context.sources, path.absolute(source))
	end
	if language == "as" or language == "go" then
		assert(
			#(action.c_sources or {}) == 0,
			"AssemblyScript/Go reactors use their actual source frontends"
		)
		assert(
			#(action.libraries or {}) == 0,
			language .. " has no native Wasm archive input action"
		)
		assert(
			#values(target, "links") == 0,
			language .. " cannot consume a native archive through add_links"
		)
		local artifacts = import(
			"artifact_contract",
			{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
		)
		assert(
			#artifacts.static_closure(target) == 0,
			language .. " has no native Wasm archive consumer"
		)
		for _, dependency in ipairs(target:orderdeps({ inherit = true })) do
			if dependency:kind() == "shared" then
				assert(
					dependency:arch() == target:arch() and dependency:plat() == target:plat(),
					"Native reactor dependency width/WASI profile mismatch"
				)
			end
		end
		assert(
			#values(target, "shflags") == 0,
			"Export reactor functions using the source frontend's native export syntax"
		)
		if language == "as" then
			import("provider", { rootdir = path.join(root, "tools/language/as"), anonymous = true }).build(
				target,
				root,
				triple,
				action.as
			)
		else
			import("go_rust", { rootdir = module_root, anonymous = true }).library(context)
		end
		local bytes = io.readfile(context.output, { encoding = "binary" })
		assert(
			bytes and bytes:sub(1, 8) == "\0asm\1\0\0\0",
			"Expected an actual source-compiled Core Wasm reactor"
		)
		return
	end
	context.selected, context.programs = core.llvm(root, triple, profile)
	context.cflags = core.cflags(root, context.selected, action)
	for _, directory in ipairs(values(target, "includedirs")) do
		table.insert(context.cflags, "-I" .. path.absolute(directory))
	end
	for _, define in ipairs(values(target, "defines")) do
		table.insert(context.cflags, "-D" .. define)
	end
	local objects
	if language == "tinygo" then
		objects = import("go_rust", { rootdir = module_root, anonymous = true }).library(context)
	elseif language == "objectc" then
		objects = objective_objects(context, core)
	elseif language == "rs" then
		objects = rust_object(context, core)
	else
		objects =
			import("compiled", { rootdir = module_root, anonymous = true }).build_objects(context)
	end
	if target:kind() == "static" then
		-- A fresh archive prevents stale members from a previous source list.
		os.tryrm(context.output)
		os.vrunv(
			assert(context.programs.ar, "The shared LLVM closure has no real archiver"),
			table.join({ "rcs", context.output }, objects)
		)
		local bytes = io.readfile(context.output, { encoding = "binary" })
		assert(
			bytes and bytes:sub(1, 8) == "!<arch>\n",
			"The compiler did not produce a real archive"
		)
		return
	end
	local arguments = table.join(context.cflags, {
		"-fuse-ld=" .. context.programs.ld,
		"-rtlib=compiler-rt",
		"-Wl,--stack-first",
		"-Wl,-z,stack-size=1048576",
		"-Wl,--max-memory=67108864",
		"-Wl,--threads=1",
		"-Wl,-Map=" .. path.join(context.cache, "link.map"),
	}, objects)
	if target:kind() == "shared" then
		-- This is a Core Wasm reactor with its own linear memory, not -shared
		-- PIC output importing env.memory/__memory_base/__table_base.
		table.join2(arguments, { "-nostartfiles", "-Wl,--no-entry" })
	end
	local archives = {}
	for _, dependency in ipairs(target:orderdeps({ inherit = true })) do
		if dependency:kind() == "static" or dependency:kind() == "shared" then
			assert(
				dependency:arch() == target:arch() and dependency:plat() == target:plat(),
				"Native library dependency width/WASI profile mismatch: " .. dependency:name()
			)
			assert(
				os.isfile(dependency:targetfile()),
				"Build the native dependency before its consumer"
			)
		end
	end
	local artifacts =
		import("artifact_contract", { rootdir = path.join(root, "tools/xmake"), anonymous = true })
	for _, dependency in ipairs(artifacts.static_closure(target)) do
		table.insert(archives, path.absolute(dependency:targetfile()))
	end
	for _, directory in ipairs(values(target, "linkdirs")) do
		table.insert(arguments, "-L" .. path.absolute(directory))
	end
	-- Wasm LLD retains lazy archive symbols and resolves them as references
	-- arrive. Its Wasm driver rejects the ELF-only --start-group/end-group.
	-- Keep actual archives as link inputs; never unpack or whole-archive them.
	table.join2(arguments, archives)
	for _, library in ipairs(values(target, "links")) do
		table.insert(arguments, path.is_absolute(library) and library or "-l" .. library)
	end
	for _, relative in ipairs(action.libraries or {}) do
		table.insert(arguments, core.installed(root, relative))
	end
	table.join2(arguments, values(target, target:kind() == "shared" and "shflags" or "ldflags"))
	table.join2(arguments, { "-o", context.output })
	os.vrunv(context.programs.cc, arguments)
	local bytes = io.readfile(context.output, { encoding = "binary" })
	assert(
		bytes and bytes:sub(1, 8) == "\0asm\1\0\0\0",
		"Expected an actual Core WebAssembly module"
	)
end
