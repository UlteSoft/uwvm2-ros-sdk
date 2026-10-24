-- @file provider.lua
-- @brief Declare the exact implemented shared adapter request contract.
-- @return One source-language family, real guest target and explicit EH profile.
-- @details These are accepted source requests, never native ROS qualification.
function describe()
	return {
		api_version = 1,
		languages = { "csharp", "fsharp", "vbnet" },
		targets = { "wasm32-wasip1" },
		exception_profiles = { "eh" },
		features = { "exceptions" },
		artifact_kinds = {
			binary = {
				languages = { "csharp", "fsharp", "vbnet" },
				targets = { "wasm32-wasip1" },
				exception_profiles = { "eh" },
				dependencies = { shared = { "csharp", "fsharp", "vbnet" } },
			},
			shared = {
				languages = { "csharp", "fsharp", "vbnet" },
				targets = { "wasm32-wasip1" },
				exception_profiles = { "eh" },
				dependencies = {},
			},
		},
	}
end

-- @brief Require agreement between the validated common request and target.
-- @param target Current caller-owned application target.
-- @param request Required version-one context from the public shared DSL.
-- @param language Exact real source frontend chosen from the target.
-- @param backend Exact native ROS import family chosen from the target.
-- @details The shared schema-validated context preserves width, backend and EH.
function _request(target, request, language, backend)
	assert(
		type(request) == "table" and request.api_version == 1,
		"Use the common schema-validated version-one adapter request"
	)
	assert(
		request.language == language and request.backend == backend,
		"Managed request/source selection mismatch"
	)
	assert(
		request.triple == "wasm32-wasip1" and request.address_bits == 32,
		"Managed guest ABI mismatch"
	)
	assert(
		request.exception_profile == "eh",
		"The selected managed engine requires the explicit eh profile"
	)
	assert(
		request.kind == (target:kind() or "binary"),
		"The shared request must preserve the actual Xmake target kind"
	)
	for _, feature in ipairs(request.features or {}) do
		assert(
			feature == "exceptions",
			"The managed engine has no requested Wasm Core feature: " .. tostring(feature)
		)
	end
end

-- @brief Compile genuine C#, F#, and VB.NET through the fixed Mono full-AOT backend.
-- @details This language-owned provider validates source and target settings,
-- then delegates to the maintained shell-free AOT pipeline. Mono's managed heap
-- remains inside wasm32 linear memory. An explicit provisioned tool directory
-- is a warm-tool development input; an installed XMZ is the cold-install route.
-- Neither selection runs a host CLR application in place of a Wasm guest.

-- @brief Validate one complete source-language and guest ABI request.
-- @param target Current ordinary Xmake application target.
-- @return Genuine CLR language identifier and exact native ROS backend.
-- @details Configuration never probes a compiler, starts ROS, or changes an
-- explicit unsupported architecture/platform request into a default value.
function _settings(target)
	local language = target:values("ros.sdk.language")
	assert(
		({ csharp = true, fsharp = true, vbnet = true })[language],
		"Select a genuine csharp, fsharp, or vbnet source language"
	)
	assert(
		target:arch() == "wasm32" and target:plat() == "wasm-wasip1",
		"The fixed Mono full-AOT route requires wasm32 / wasm-wasip1"
	)
	local backend = target:values("ros.sdk.backend")
	assert(backend == "ros1" or backend == "ros2", "Select one exact ROS import family")
	return language, backend
end

-- @brief Preserve actual source files and the application's sole Wasm output.
-- @param target Target populated by the common public SDK declaration module.
-- @param root Borrowed absolute installed SDK root.
-- @return No value; missing inputs or conflicting source extensions raise.
-- @details Caller-owned source is neither translated to C nor renamed. All
-- intermediary assemblies and native objects stay under .uwvm-ros.
function configure(target, root, request)
	local language, backend = _settings(target)
	_request(target, request, language, backend)
	local kind = target:kind() or "binary"
	assert(
		kind == "binary" or kind == "shared",
		"CLR relocatable static archive production remains unimplemented; target kind is preserved"
	)
	local extension = ({ csharp = ".cs", fsharp = ".fs", vbnet = ".vb" })[language]
	assert(os.isdir(root), "The installed SDK root is missing")
	assert(#target:sourcefiles() > 0, "Declare genuine CLR application source files")
	for _, source in ipairs(target:sourcefiles()) do
		assert(
			path.extension(source) == extension,
			"CLR source extension disagrees with set_language"
		)
	end
	target:set("kind", kind)
	if not target:get("filename") then
		target:set("filename", target:name() .. ".wasm")
	end
	if not target:get("targetdir") then
		target:set("targetdir", path.join(path.absolute(target:scriptdir()), "build"))
	end
end

-- @brief Resolve a checksum-indexed offline closure without an ambient tool lookup.
-- @param target Current application's explicit provisioning selection.
-- @param root Borrowed SDK root containing the installer and tool manifest.
-- @return Complete native closure path and genuine executable entries.
-- @details A read-only development closure must be verified by the acceptance
-- harness and is reported as warm-tool. The installed-manifest branch retains
-- the existing checksum-verified XMZ installer for a complete distribution.
function _tools(target, root)
	local directory = target:values("ros.sdk.managed_tools") or os.getenv("UWVM_ROS_MANAGED_TOOLS")
	if directory then
		assert(path.is_absolute(directory), "Use an absolute provisioned CLR tool directory")
		directory = path.normalize(directory)
		local programs = {
			dotnet = path.join(directory, "dotnet9-preview6/dotnet"),
			cc = path.join(directory, "llvm23/bin/clang"),
			ld = path.join(directory, "llvm23/bin/wasm-ld"),
		}
		for _, program in pairs(programs) do
			assert(os.isfile(program), "The explicitly provisioned CLR tool closure is incomplete")
		end
		return directory, programs
	end
	local manifest = target:values("ros.sdk.dotnet_bundle")
		or os.getenv("UWVM_ROS_DOTNET_BUNDLE")
		or target:values("ros.sdk.managed_bundle")
		or os.getenv("UWVM_ROS_MANAGED_BUNDLE")
	manifest = manifest
		or path.join(
			root,
			"share/toolchains/host",
			os.host() .. "-" .. os.arch(),
			"dotnet-aot.json"
		)
	assert(
		os.isfile(manifest),
		"Install the pinned offline CLR bundle or select a verified tool directory"
	)
	local cache = os.getenv("XDG_CACHE_HOME")
	if not cache then
		cache = path.join(assert(os.getenv("HOME"), "Set HOME or XDG_CACHE_HOME"), ".cache")
	end
	return import("tool_bundle", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).install(
		path.absolute(manifest),
		path.join(cache, "uwvm-ros/managed-aot")
	)
end

-- @brief Build actual language source and embed the genuine Mono AOT runtime.
-- @param target Current configured CLR application target.
-- @param root Borrowed installed SDK root with complete public managed modules.
-- @return No value; any frontend, AOT, native-link, or output failure raises.
-- @details The original language compiler emits IL, Mono emits LLVM bitcode,
-- and LLVM 23 links the complete WASI command. Native ROS and uwvm2-ros are not
-- build prerequisites and are never invoked by this operation.
function build(target, root, request)
	local language, backend = _settings(target)
	_request(target, request, language, backend)
	local closure, programs = _tools(target, root)
	local library_feed, library_receipt
	if target:kind() == "shared" then
		library_feed, library_receipt = import("library_bundle", {
			rootdir = path.join(root, "tools/language/dotnet"),
			anonymous = true,
		}).prepare(target, root)
	end
	import("dotnet", { rootdir = path.join(root, "tools/language/dotnet"), anonymous = true }).build(
		target,
		root,
		language,
		backend,
		closure,
		programs,
		library_feed,
		library_receipt
	)
end
