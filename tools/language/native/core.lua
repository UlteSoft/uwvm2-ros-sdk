-- @file core.lua
-- @brief Resolve pinned genuine frontends and exact Wasm compiler inputs.
-- @details This module has no robot models, ROS distributions, schemas, or
-- deployment policy. A platform supplies source/module descriptors separately.

-- @brief Resolve one existing SDK-relative input without leaving its namespace.
-- @param root Absolute installed SDK root.
-- @param relative Nonempty normalized SDK-relative source or directory path.
-- @return Existing absolute input path, borrowed for this build only.
function installed(root, relative)
	assert(
		type(relative) == "string" and #relative > 0,
		"An SDK input needs a nonempty relative path"
	)
	assert(not path.is_absolute(relative), "Compiler inputs must use SDK-relative paths")
	for component in relative:gmatch("[^/\\]+") do
		assert(
			component ~= "." and component ~= "..",
			"An SDK input must remain inside its namespace"
		)
	end
	local result = path.join(root, relative)
	assert(os.exists(result), "Missing native compiler input: " .. relative)
	return result
end

-- @brief Restore the exact locked host frontend through the common Xmake installer.
-- @param root Installed SDK containing matching host manifests and XMZ payloads.
-- @param name Pinned frontend name, for example native-rs or moonbit.
-- @return Extracted closure directory and its exact public program map.
-- @details Cache installation/revalidation belongs to tools/xmake/tool_bundle.
-- No PATH search, version override, package manager, or alternate download runs.
function frontend(root, name)
	import("core.base.json")
	import("core.project.config")
	local pins = json.loadfile(path.join(root, "tools/language/native/frontends.json"))
	local pin = assert(pins.frontends[name], "No pinned native frontend: " .. tostring(name))
	local host = os.host() .. "-" .. os.arch()
	assert(host == pins.host, "No locked native host closure for " .. host)
	local manifest = path.join(root, "share/toolchains/host", host, name .. ".json")
	assert(os.isfile(manifest), "Install the pinned " .. name .. " host manifest")
	assert(
		hash.sha256(manifest):lower() == pin.manifest_sha256,
		"Changed native frontend manifest: " .. name
	)
	local home = os.getenv("XDG_CACHE_HOME")
		or path.join(
			assert(os.getenv("HOME"), "Set HOME or XDG_CACHE_HOME for native tools"),
			".cache"
		)
	local cache = config.get("ros-tool-cache") or path.join(home, "uwvm-ros/host-tools")
	return import("tool_bundle", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).install(
		manifest,
		cache
	)
end

-- @brief Resolve the shared LLVM 23 target closure without changing its owner.
-- @param root Complete SDK distribution with the public C-family tool adapter.
-- @param triple Exact requested target triple.
-- @param profile Explicit exception profile, normally noeh.
-- @return Selected immutable target descriptor and real compiler program map.
function llvm(root, triple, profile)
	local family = import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true })
	local selected = family.selection(root, triple, profile)
	local programs = family.tools(root)
	local version = os.iorunv(programs.cc, { "--version" })
	assert(
		version:find("clang version 23.", 1, true),
		"Generated C and scalar adapters require LLVM 23"
	)
	return selected, programs
end

-- @brief Construct common LLVM arguments for genuine generated C and final links.
-- @param root Complete SDK installation.
-- @param selected Validated exact target descriptor from the common owner.
-- @param action Provider-owned source and include-path descriptor.
-- @return Independent argument vector; caller may append compile/link operands.
function cflags(root, selected, action)
	local flags = {
		"--target=" .. selected.triple,
		"--sysroot=" .. installed(root, selected.sysroot),
		"-resource-dir=" .. installed(root, selected.resource_dir),
		"-fintegrated-cc1",
		"-no-canonical-prefixes",
		"-isystem",
		installed(root, selected.include_dir),
		"-O2",
		"-Wall",
		"-Wextra",
		"-Werror",
		"-I" .. path.join(root, "include"),
		"-I" .. path.join(root, "include/platform"),
	}
	for _, relative in ipairs(action.include_dirs or {}) do
		table.insert(flags, "-I" .. installed(root, relative))
	end
	return flags
end

-- @brief Compile explicit provider-owned C infrastructure into private objects.
-- @param context Exact build context containing compiler, cache, and source action.
-- @return Ordered private object paths; application logic stays in its language.
-- @details The caller describes each infrastructure source and its macros. This
-- routine supplies neither an application body nor platform record semantics.
function infrastructure(context)
	local objects = {}
	for index, descriptor in ipairs(context.action.c_sources or {}) do
		local source = type(descriptor) == "string" and descriptor or descriptor.source
		local flags = type(descriptor) == "table" and descriptor.defines or {}
		local object_name = type(descriptor) == "table" and descriptor.object or nil
		object_name = object_name or "support-" .. index .. ".o"
		assert(
			object_name:match("^[A-Za-z0-9_-]+%.o$"),
			"Use a local infrastructure object filename"
		)
		local object = path.join(context.cache, object_name)
		local arguments = table.join(context.cflags, { "-std=c11", "-D_POSIX_C_SOURCE=200809L" })
		for _, define in ipairs(flags) do
			assert(
				type(define) == "string" and not define:find("[\r\n]"),
				"Invalid C infrastructure macro"
			)
			table.insert(arguments, "-D" .. define)
		end
		table.join2(arguments, { "-c", installed(context.root, source), "-o", object })
		os.vrunv(context.programs.cc, arguments)
		table.insert(objects, object)
	end
	return objects
end

-- @brief Link genuine language objects with the exact selected WASI closure.
-- @param context Exact build context.
-- @param objects Actual compiled source-language and infrastructure objects.
-- @return None; the final command replaces context.output only after linking.
function link(context, objects)
	local arguments = table.join(context.cflags, {
		"-fuse-ld=" .. context.programs.ld,
		"-rtlib=compiler-rt",
		"-Wl,--stack-first",
		"-Wl,-z,stack-size=1048576",
		"-Wl,--max-memory=67108864",
		"-Wl,--threads=1",
	}, objects)
	for _, relative in ipairs(context.action.libraries or {}) do
		table.insert(arguments, installed(context.root, relative))
	end
	table.join2(arguments, { "-o", context.output })
	os.vrunv(context.programs.cc, arguments)
end
