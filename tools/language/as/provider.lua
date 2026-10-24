-- @file provider.lua
-- @brief Compile genuine AssemblyScript applications from an offline closure.
-- @details The SDK carries Node, asc, Binaryen, Long, their native runtime, and
-- their complete hash inventory. Xmake alone installs that closure. This module
-- starts the bundled ELF loader directly and never requires a shell, npm, an
-- ambient Node installation, ROS, or uwvm2 during application compilation.

-- @brief Describe the genuine AssemblyScript lifecycle and Core module kinds.
-- @return Fresh version-one capabilities, with no memory64/archive claim.
function describe()
	local function capability()
		return {
			languages = { "as" },
			targets = { "wasm32-wasip1" },
			exception_profiles = { "noeh" },
			dependencies = {
				shared = {
					"as",
					"c",
					"cpp",
					"c_ffi_bridge",
					"d",
					"go",
					"nim",
					"objectc",
					"odin",
					"rs",
					"swift",
					"tinygo",
					"zig",
				},
			},
		}
	end
	return {
		api_version = 1,
		languages = { "as" },
		targets = { "wasm32-wasip1" },
		exception_profiles = { "noeh" },
		entry_profiles = { "command" },
		features = {},
		artifact_kinds = { binary = capability(), shared = capability() },
	}
end

-- @brief Validate the exact qualified AssemblyScript command profile.
-- @param target Target declaring genuine AssemblyScript source files.
-- @param root Installed SDK namespace root, borrowed through validation.
-- @param triple Requested guest architecture and WASI profile.
-- @details The managed runtime and WASI adapters currently qualify wasm32 only.
-- Unsupported widths fail before restoring or starting any compiler process.
function configure(target, root, triple)
	if type(triple) == "table" then
		return import(
			"provider",
			{ rootdir = path.join(root, "tools/language/native"), anonymous = true }
		).configure(target, root, triple)
	end
	assert(triple == "wasm32-wasip1", "AssemblyScript qualifies wasm32-wasip1 only")
	assert(target:values("ros.sdk.language") == "as", "Select set_language('as')")
	assert(
		target:arch() == "wasm32" and target:plat() == "wasm-wasip1",
		"Select exact AssemblyScript memory32 Preview1"
	)
	for _, source in ipairs(target:sourcefiles()) do
		assert(path.extension(source) == ".ts", "AssemblyScript requires actual .ts source files")
	end
end

-- @brief Install the complete reviewed compiler closure through Xmake itself.
-- @param root Absolute SDK root containing the host-specific bundle manifest.
-- @return Installed closure directory and exact loader/Node program paths.
-- @details Cache hits revalidate every declared payload. No program search or
-- network/package-manager fallback can silently select another compiler.
function tools(root)
	return import("core", {
		rootdir = path.join(root, "tools/language/native"),
		anonymous = true,
	}).frontend(root, "assemblyscript")
end

-- @brief Compile declared AssemblyScript directly into one final Wasm command.
-- @param target Target carrying its real source list and language declaration.
-- @param root Installed SDK root shared by all platform-qualified imports.
-- @param triple Exact guest target; no width or WASI-profile substitution occurs.
-- @details asc receives the SDK namespace root explicitly. Application sources
-- import ros/as, abb/as, or unitree/as without filesystem-relative paths. Source
-- compilation and runtime linking are performed by the genuine asc producer.
function build(target, root, triple, action)
	if type(triple) == "table" then
		return import(
			"provider",
			{ rootdir = path.join(root, "tools/language/native"), anonymous = true }
		).build(target, root, triple)
	end
	configure(target, root, triple)
	action = action or {}
	local closure, programs = tools(root)
	local compiler = path.join(closure, "node_modules/assemblyscript/bin/asc.js")
	local arguments = {
		"--library-path",
		path.join(closure, "runtime"),
		programs.node,
		"--enable-source-maps",
		compiler,
	}
	local sources = target:sourcefiles()
	assert(#sources > 0, "Declare at least one genuine AssemblyScript source")
	for _, source in ipairs(sources) do
		table.insert(arguments, path.absolute(source))
	end
	local output = path.absolute(target:targetfile())
	os.mkdir(path.directory(output))
	table.join2(arguments, {
		"--outFile",
		output,
		"--path",
		path.join(root, "include/platform"),
		"--runtime",
		"incremental",
		"--optimize",
		"--initialMemory",
		"32",
		"--maximumMemory",
		"1024",
		"--use",
		"abort=" .. (action.abort or "~lib/ros/as/api/abortGuest"),
	})
	os.vrunv(programs.loader, arguments, {
		curdir = root,
		envs = {
			NODE_PATH = path.join(closure, "node_modules"),
			NODE_OPTIONS = "",
			NODE_ICU_DATA = "",
		},
	})
	assert(os.isfile(output), "The actual AssemblyScript compiler produced no Wasm command")
end
