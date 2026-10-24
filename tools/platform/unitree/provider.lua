-- @file provider.lua
-- @brief Compile genuine Unitree source programs and launch the production ROS host.
-- @details The unified SDK dispatcher calls configure(target), build(target),
-- and run(target). Xmake restores fixed SDK compiler inputs without ambient
-- tool probes or ROS grants. Genuine source builds produce one final Wasm.

local provider = {}
local supported = {
	java = true,
	kotlin = true,
	c = true,
	cpp = true,
	as = true,
	objectc = true,
	c_ffi_bridge = true,
	go = true,
	tinygo = true,
	rs = true,
	zig = true,
	d = true,
	nim = true,
	odin = true,
	swift = true,
	haskell = true,
	py = true,
	js = true,
	lua = true,
	moonbit = true,
	ruby = true,
	php = true,
}

-- @brief Read the required installed SDK root without assuming directory depth.
local function sdk(target)
	local root = target:values("ros.sdk.root") or os.getenv("UWVM_ROS_SDK_ROOT")
	assert(root and os.isdir(root), "The dispatcher must supply ros.sdk.root or UWVM_ROS_SDK_ROOT")
	return path.absolute(root)
end

-- @brief Validate the actual guest architecture and retain its exact triple.
-- @param target Fully loaded Xmake application target.
-- @return Exact WASI P1 triple; memory64 is limited to the qualified C/C++ noeh profile.
local function triple(target)
	local architecture = target:arch()
	local selected = target:values("ros.sdk.triple") or (architecture .. "-wasip1")
	assert(target:plat() == "wasm-wasip1", "Unitree commands require platform wasm-wasip1")
	assert(
		(architecture == "wasm32" or architecture == "wasm64")
			and selected == architecture .. "-wasip1",
		"Unitree requires an exact wasm32-wasip1 or wasm64-wasip1 selection"
	)
	if
		architecture == "wasm64"
		and target:values("ros.sdk.language") ~= "js"
		and target:values("ros.sdk.language") ~= "py"
		and target:values("ros.sdk.language") ~= "lua"
	then
		local language = target:values("ros.sdk.language")
		assert(
			language == "c" or language == "cpp",
			"Unitree memory64 is limited to genuine C and C++"
		)
		import("core.project.config")
		local profile = target:values("ros.sdk.exception_profile")
			or config.get("ros-exceptions")
			or "noeh"
		assert(profile == "noeh", "Unitree C/C++ memory64 qualification requires the noeh profile")
	end
	return selected
end

-- @brief Resolve a language-owned producer without discovering a native compiler.
-- @param root Installed SDK root selected by the common dispatcher.
-- @param language Exact genuine application language.
-- @return The source producer, or nil for an existing core route.
local function source_producer(root, language)
	if language == "js" or language == "py" or language == "lua" then
		return import("pack", { rootdir = path.join(root, "tools/language/js"), anonymous = true })
	end
	if language == "java" or language == "kotlin" then
		return import(
			"provider",
			{ rootdir = path.join(root, "tools/language/jvm"), anonymous = true }
		)
	end
	local modules = {
		zig = "native_languages",
		d = "native_languages",
		nim = "native_languages",
		odin = "native_languages",
		swift = "native_languages",
		haskell = "native_languages",
		moonbit = "moonbit",
	}
	local module = modules[language]
	if module then
		return import(
			module,
			{ rootdir = path.join(root, "tools/platform/unitree"), anonymous = true }
		)
	end
end

-- @brief Configure one genuine-language Wasm target without probing compilers.
-- @param target Target whose platform, root, triple, and language were selected.
-- @details Unsupported pairs fail before build. Deploying an existing artifact
-- does not require a compiler. Source files must use their genuine extensions.
function provider.configure(target, root, context)
	local selected = triple(target)
	local language = target:values("ros.sdk.language")
	assert(supported[language], "Unitree has no complete command route for " .. tostring(language))
	local extensions = {
		java = ".java",
		kotlin = ".kt",
		c = ".c",
		cpp = ".cpp",
		as = ".ts",
		objectc = ".m",
		c_ffi_bridge = ".c",
		go = ".go",
		tinygo = ".go",
		rs = ".rs",
		zig = ".zig",
		d = ".d",
		nim = ".nim",
		odin = ".odin",
		swift = ".swift",
		haskell = ".hs",
		py = ".py",
		js = ".mjs",
		lua = ".lua",
		moonbit = ".mbt",
		ruby = ".rb",
		php = ".php",
	}
	local sources = target:sourcefiles()
	assert(#sources == 1, "Unitree examples require exactly one own-language entry source")
	assert(
		path.extension(sources[1]) == extensions[language],
		"Unitree source extension disagrees with set_language"
	)
	local backend = target:values("ros.sdk.backend")
		or target:values("ros.unitree.backend")
		or "ros2"
	assert(
		backend == "ros1" or backend == "ros2",
		"Unitree selects exactly one native ROS import family"
	)
	target:set("values", "ros.unitree.backend", backend)
	target:set("values", "ros.sdk.backend", backend)
	if language == "js" or language == "py" or language == "lua" then
		target:set(
			"values",
			"ros.sdk.bundle_manifest",
			"share/platform/unitree/language/" .. language .. "/" .. backend .. "/bundle.json"
		)
	end
	local distribution = target:values("ros.sdk.distribution")
		or target:values("ros.unitree.distro")
		or (backend == "ros1" and "noetic" or "jazzy")
	target:set("values", "ros.sdk.distribution", distribution)
	local distributions = backend == "ros1" and { melodic = true, noetic = true }
		or { foxy = true, humble = true, jazzy = true }
	assert(
		not distribution or distributions[distribution],
		"This Unitree source revision has no selected distribution contract for "
			.. tostring(distribution)
	)
	target:add(
		"includedirs",
		path.join(sdk(target), "include"),
		path.join(sdk(target), "include/platform")
	)
	if language == "js" or language == "py" or language == "lua" then
		return import(
			"provider",
			{ rootdir = path.join(sdk(target), "tools/language/js"), anonymous = true }
		).configure(target, sdk(target), context)
	end
	if language == "ruby" or language == "php" then
		assert(
			type(context) == "table" and context.api_version == 1,
			"Use the public version-one provider context"
		)
		import("core.base.json")
		local graph =
			assert(json.loadfile(path.join(root, "share/platform/unitree/ruby-php-source.json")))
		target:set("values", "ros.sdk.modules", assert(graph.modules[language][backend]))
		local adapter = import(
			"language_adapter",
			{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
		).load(root, context)
		return adapter.configure(target, root, context)
	end
	assert(
		target:kind() == "binary"
			or language == "c"
			or language == "cpp"
			or language == "c_ffi_bridge",
		"This retained language has no qualified native library kind"
	)
	local producer = source_producer(sdk(target), language)
	if producer then
		producer.configure(target, sdk(target), selected)
	end
end

-- @brief Resolve the native process launcher only when execution is requested.
local function program(environment, fallback)
	import("lib.detect.find_program")
	return assert(
		find_program(os.getenv(environment) or fallback),
		"Install the native launcher or set " .. environment
	)
end

-- @brief Build one real-language Unitree command serially.
-- @param target Configured Xmake target; output is target:targetfile().
-- @details WASI libc belongs to the selected toolchain. C++ uses no native C++
-- runtime and disables exceptions. Package maps use absolute installed paths,
-- while examples contain only public module names. No source is renamed.
function provider.build(target, _root, context)
	local root = sdk(target)
	local language = target:values("ros.sdk.language")
	local output = path.absolute(target:targetfile())
	local selected = triple(target)
	os.mkdir(path.directory(output))
	local backend = target:values("ros.sdk.backend")
		or target:values("ros.unitree.backend")
		or "ros2"
	assert(backend == "ros1" or backend == "ros2", "Select one genuine ROS backend")
	if language == "js" or language == "py" or language == "lua" then
		return import(
			"language_adapter",
			{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
		).build(target, root, context)
	end
	if language == "ruby" or language == "php" then
		return import(
			"language_adapter",
			{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
		).build(target, root, context)
	end
	local producer = source_producer(root, language)
	if producer then
		producer.build(target, root, selected)
	elseif language == "as" then
		import("provider", { rootdir = path.join(root, "tools/language/as"), anonymous = true }).build(
			target,
			root,
			selected
		)
	elseif language == "go" or language == "tinygo" or language == "rs" then
		import("go_rust", { rootdir = path.join(root, "tools/platform/ros"), anonymous = true }).build(
			target
		)
	else
		-- The shared LLVM 23 provider restores its own native compiler closure
		-- through Xmake. Native ROS and uwvm2 are required only by run().
		local flags = {
			"-Wl,--strip-all",
			"-DUWVM_UNITREE_ROS_VERSION=" .. (backend == "ros1" and "1" or "2"),
		}
		target:set("values", "ros.sdk.standard", language == "cpp" and "c++23" or "c17")
		if language == "cpp" then
			table.join2(flags, { "-fno-exceptions", "-fno-rtti", "-nostdlib++" })
		end
		if language == "c_ffi_bridge" then
			table.join2(flags, {
				"-DROSWASM_C_FFI_BACKEND=" .. (backend == "ros1" and "1" or "2"),
				"-I" .. path.join(root, "include/platform/ros/c_ffi_bridge"),
				path.join(root, "src/platform/ros/c_ffi_bridge/shim.c"),
			})
		end
		import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
			target,
			root,
			selected,
			flags
		)
	end
end

-- @brief Launch an already compiled command through uwvm2-ros and its native gateway.
-- @param target Existing Wasm target; trusted deployment supplies all permissions.
function provider.run(target, root, context)
	return import("provider", { rootdir = path.join(root, "tools/platform/ros"), anonymous = true }).run(
		target,
		root,
		context
	)
end

-- @brief Expose the exact dispatcher interface and include-compatible aliases.
configure = provider.configure
build = provider.build
run = provider.run
unitree_provider_configure = provider.configure
unitree_provider_build = provider.build
unitree_provider_run = provider.run
return provider
