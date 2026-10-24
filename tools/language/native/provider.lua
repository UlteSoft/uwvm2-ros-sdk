-- @file provider.lua
-- @brief Compile real native-language sources using platform-owned descriptors.
-- @details Platform providers validate their own schemas/configuration and call
-- configure/build with an action. Compiler actions contain source/module paths,
-- never a robot schema, native identity, permission grant, or deployment runner.

-- @brief Describe implemented compiler actions to the shared version-one loader.
-- @return Fresh capability metadata; execution acceptance remains separate.
-- @details Per-language width, source graph and consumer restrictions are also
-- checked by configure/build. A declaration does not qualify every library pair.
function describe()
	local languages = {
		"as",
		"d",
		"go",
		"haskell",
		"moonbit",
		"nim",
		"objectc",
		"odin",
		"rs",
		"swift",
		"tinygo",
		"zig",
	}
	local objects = { "d", "nim", "objectc", "odin", "rs", "swift", "tinygo", "zig" }
	local modules = { "as", "d", "go", "nim", "objectc", "odin", "rs", "swift", "tinygo", "zig" }
	local static_inputs = table.join(objects, { "c", "cpp", "c_ffi_bridge" })
	local shared_inputs = table.join(modules, { "c", "cpp", "c_ffi_bridge" })
	local function capability(producers)
		return {
			languages = producers,
			targets = { "wasm32-wasip1", "wasm64-wasip1" },
			exception_profiles = { "noeh" },
			dependencies = { static = static_inputs, shared = shared_inputs },
		}
	end
	return {
		api_version = 1,
		languages = languages,
		targets = { "wasm32-wasip1", "wasm64-wasip1" },
		exception_profiles = { "noeh" },
		entry_profiles = { "command" },
		features = { "memory64", "table64" },
		artifact_kinds = {
			binary = capability(languages),
			static = capability(objects),
			shared = capability(modules),
		},
	}
end

-- @brief Lower an explicit public binding request to the existing compiler action.
-- @param target Genuine source target whose language and kind are preserved.
-- @param root Installed shared SDK.
-- @param request Version-one provider request or an explicit native source action.
-- @return Independent source/module action without deployment authority.
local function source_action(target, root, request)
	assert(type(request) == "table", "Supply a native source action or shared adapter request")
	if request.format == "uwvm-native-action-v1" then
		return request
	end
	assert(request.api_version == 1, "Native compiler request version mismatch")
	assert(
		request.language == target:values("ros.sdk.language"),
		"Request language conflicts with the actual target"
	)
	assert(
		(request.kind or "binary") == target:kind(),
		"Request kind conflicts with the actual target"
	)
	assert(
		request.triple == target:arch() .. "-wasip1",
		"Request target width conflicts with the actual source target"
	)
	assert(
		not request.entry or request.entry == "command",
		"This frontend does not implement freestanding startup"
	)
	local declared = request.native_action or (request.binding and request.binding.native_action)
	if declared then
		assert(
			declared.format == "uwvm-native-action-v1",
			"Binding must declare the complete native source/module action"
		)
	else
		assert(
			request.backend == "wasi" or request.language == "as" or request.language == "objectc",
			"This platform binding must supply its complete native_action source/module graph"
		)
		declared = { format = "uwvm-native-action-v1", language = request.language }
		if request.language == "swift" then
			declared.swift = { module_name = "WasiCommand" }
		end
		if
			request.backend == "wasi"
			and target:kind() == "binary"
			and ({ d = true, nim = true, odin = true, swift = true, zig = true })[request.language]
		then
			local definitions = request.language == "nim" and { "UWVM_NATIVE_NIM" } or {}
			declared.c_sources = {
				{
					source = "src/language/native/startup.c",
					object = "startup.o",
					defines = definitions,
				},
			}
		end
	end
	local action = table.clone(declared)
	if target:kind() ~= "binary" then
		action.c_sources = {}
		for _, descriptor in ipairs(declared.c_sources or {}) do
			assert(
				type(descriptor) == "table",
				"A library binding must explicitly describe entry-safe infrastructure"
			)
			local item = table.clone(descriptor)
			item.defines = table.join(descriptor.defines or {}, { "UWVM_NATIVE_NO_ENTRY" })
			table.insert(action.c_sources, item)
		end
	end
	return action
end

-- @brief Identify an implemented actual source-compiler adapter.
-- @param language Public set_language identifier.
-- @return True for an implemented compiler action; this is not qualification.
function supports(language)
	return ({
		as = true,
		d = true,
		go = true,
		haskell = true,
		moonbit = true,
		nim = true,
		objectc = true,
		odin = true,
		rs = true,
		swift = true,
		tinygo = true,
		zig = true,
	})[language] == true
end

-- @brief Validate source and target selection without restoring a compiler.
-- @param target Ordinary Xmake application target.
-- @param root Installed SDK root, borrowed for metadata discovery.
-- @param action Provider-owned uwvm-native-action-v1 source/module descriptor.
-- @return Exact language, target triple, and exception profile.
-- @details Pinned D/Zig/Objective-C actions also admit an explicit memory64
-- trial. Their real frontend, matching LLVM closure, output width and runtime
-- must be measured independently. Other pinned closures have memory32 inputs.
function configure(target, root, action)
	import("core.project.config")
	action = source_action(target, root, action)
	assert(
		type(action) == "table" and action.format == "uwvm-native-action-v1",
		"Supply a native action descriptor"
	)
	local language = target:values("ros.sdk.language")
	assert(supports(language), "No genuine native compiler action for " .. tostring(language))
	assert(
		not action.language or action.language == language,
		"Native action/source language conflict"
	)
	local profile = target:values("ros.sdk.exception_profile")
		or config.get("ros-exceptions")
		or "noeh"
	assert(profile == "noeh", language .. " has no accepted Wasm EH compiler action")
	local architecture = target:arch()
	assert(
		architecture == "wasm32" or architecture == "wasm64",
		"Select an exact Wasm pointer width"
	)
	assert(
		(config.get("arch") or architecture) == architecture,
		"Configured architecture conflicts with the source declaration"
	)
	assert(
		(config.get("plat") or target:plat()) == "wasm-wasip1",
		"The explicit native WASI profile is unavailable"
	)
	local memory64_action = language == "d" or language == "zig" or language == "objectc"
	assert(
		architecture == "wasm32" or memory64_action,
		language .. " requires a real memory64 frontend/standard-library closure"
	)
	if language ~= "objectc" then
		for _, feature in ipairs(target:get("values.ros.sdk.features") or {}) do
			assert(
				architecture == "wasm64" and (feature == "memory64" or feature == "table64"),
				language
					.. " has no accepted explicit compiler mapping for feature "
					.. tostring(feature)
			)
		end
	end
	assert(target:plat() == "wasm-wasip1", "Native actions require explicit wasm-wasip1")
	local triple = architecture .. "-wasip1"
	local requested = config.get("ros-target") or "detect"
	assert(
		requested == "detect" or requested == triple,
		"Native target triple conflicts with arch/plat"
	)
	local extensions = {
		as = ".ts",
		d = ".d",
		go = ".go",
		haskell = ".hs",
		moonbit = ".mbt",
		nim = ".nim",
		objectc = ".m",
		odin = ".odin",
		rs = ".rs",
		swift = ".swift",
		tinygo = ".go",
		zig = ".zig",
	}
	local sources = target:sourcefiles()
	assert(#sources > 0, "Declare actual source-language application files")
	for _, source in ipairs(sources) do
		assert(
			path.extension(source) == extensions[language],
			"Native source extension conflicts with set_language"
		)
	end
	if
		language == "zig"
		or language == "d"
		or language == "nim"
		or language == "rs"
		or language == "haskell"
	then
		assert(
			#sources == 1,
			"This frontend action needs one application entry; declare modules in its action"
		)
	end
	target:set("values", "ros.sdk.root", root)
	target:set("values", "ros.sdk.triple", triple)
	target:set("values", "ros.sdk.producer", "genuine-native-source")
	local artifacts =
		import("artifact_contract", { rootdir = path.join(root, "tools/xmake"), anonymous = true })
	artifacts.configure(target)
	if target:kind() ~= "binary" then
		import("library", { rootdir = path.join(root, "tools/language/native"), anonymous = true }).configure(
			target,
			root,
			action
		)
	end
	target:set("extension", target:kind() == "static" and ".a" or ".wasm")
	target:set("toolchains", "ros.wasm.command")
	for _, name in ipairs({
		"dlang",
		"dlang.build",
		"dlang.build.optimization",
		"swift",
		"swift.build",
		"go",
		"go.env",
		"go.build",
		"rust",
		"rust.build",
	}) do
		if target:rule(name) then
			local rule = assert(
				target:rule("ros.wasm.source"),
				"Install the shared source-only Xmake rule"
			):clone()
			rule:name_set(name)
			target:rule_add(rule)
		end
	end
	return language, triple, profile, action
end

-- @brief Execute one genuine frontend action and produce one deployable Wasm.
-- @param target Configured ordinary Xmake target.
-- @param root Installed SDK distribution.
-- @param action Explicit provider-owned source/module descriptor.
-- @return None; frontend failures propagate with their original diagnostics.
function build(target, root, action)
	local language, triple, profile, lowered = configure(target, root, action)
	action = lowered
	local module_root = path.join(root, "tools/language/native")
	local artifacts =
		import("artifact_contract", { rootdir = path.join(root, "tools/xmake"), anonymous = true })
	local libraries = artifacts.uses_libraries(target)
	if
		target:kind() ~= "binary"
		or (libraries and language ~= "as" and language ~= "go" and language ~= "tinygo")
	then
		return import("library", { rootdir = module_root, anonymous = true }).build(
			target,
			root,
			action
		)
	end
	if libraries then
		assert(
			#artifacts.static_closure(target) == 0 and #table.wrap(target:get("links")) == 0,
			language .. " binary has no native archive consumer action"
		)
	end
	if language == "as" then
		return import(
			"provider",
			{ rootdir = path.join(root, "tools/language/as"), anonymous = true }
		).build(target, root, triple, action.as)
	elseif language == "moonbit" then
		return import("moonbit", { rootdir = module_root, anonymous = true }).build(
			target,
			root,
			action.moonbit
		)
	elseif language == "objectc" then
		local core = import("core", { rootdir = module_root, anonymous = true })
		local extra = {}
		for _, relative in ipairs(action.include_dirs or {}) do
			table.insert(extra, "-I" .. core.installed(root, relative))
		end
		for _, define in ipairs(action.defines or {}) do
			table.insert(extra, "-D" .. define)
		end
		return import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
			target,
			root,
			triple,
			extra
		)
	end
	local directory = path.absolute(target:scriptdir())
	local cache = path.join(directory, ".uwvm-ros/native", target:name(), language)
	local output = path.absolute(target:targetfile())
	os.mkdir(cache)
	os.mkdir(path.directory(output))
	local context = {
		root = root,
		action = action,
		language = language,
		triple = triple,
		profile = profile,
		directory = directory,
		cache = cache,
		output = output,
		sources = {},
	}
	for _, source in ipairs(target:sourcefiles()) do
		table.insert(context.sources, path.absolute(source))
	end
	local module = (language == "go" or language == "tinygo" or language == "rs") and "go_rust"
		or "compiled"
	import(module, { rootdir = module_root, anonymous = true }).build(context)
	assert(os.isfile(output), "The actual native frontend produced no Wasm command")
end
