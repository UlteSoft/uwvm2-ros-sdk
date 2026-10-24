-- SPDX-License-Identifier: Apache-2.0
-- @file provider.lua
-- @brief Adapt the three genuine interpreters to the common Xmake lifecycle.
-- @details Platforms contribute source descriptors. This adapter owns no robot
-- catalog, competing compiler version, deployment launcher or runtime grants.

-- @brief Declare the exact implemented scalar-library and command interfaces.
-- @return Version-one capabilities; these declarations are not test receipts.
function describe()
	local languages = { "js", "py", "lua" }
	local kinds = {}
	for _, kind in ipairs({ "binary", "static", "shared" }) do
		kinds[kind] = {
			languages = languages,
			targets = { "wasm32-wasip1", "wasm64-wasip1" },
			exception_profiles = { "noeh", "eh" },
			dependencies = {
				static = { "js", "typescript", "py", "lua" },
				shared = { "js", "typescript", "py", "lua" },
			},
		}
	end
	return {
		api_version = 1,
		languages = languages,
		targets = { "wasm32-wasip1", "wasm64-wasip1" },
		exception_profiles = { "noeh", "eh" },
		artifact_kinds = kinds,
		features = {
			"memory64",
			"table64",
			"exceptions",
			"bulk-memory",
			"reference-types",
			"sign-extension",
		},
		entry_profiles = { "command" },
	}
end

-- @brief Present the frozen command packer with the common artifact identity.
-- @details The legacy helper's command-only path settings are ignored by this
-- target view. All source, values, caches and output queries use the real target.
-- The original packer and its genuine-engine source locks remain unchanged.
local function command_target(target)
	local view = {}
	function view:set(name, ...)
		if name == "kind" or name == "extension" or name == "filename" or name == "targetdir" then
			return
		end
		return target:set(name, ...)
	end
	for _, name in ipairs({
		"values",
		"get",
		"arch",
		"plat",
		"sourcefiles",
		"scriptdir",
		"targetfile",
		"name",
		"fullname",
		"kind",
		"data",
		"data_set",
	}) do
		local method = name
		view[method] = function(_, ...)
			return target[method](target, ...)
		end
	end
	return view
end

-- @brief Validate real sources while preserving the ordinary target kind.
-- @param target Native Xmake target. @param root Installed SDK namespace.
-- @param request Current common provider context, including checked dependencies.
function configure(target, root, request)
	assert(request and request.api_version == 1, "Use the current common language-adapter request")
	assert(
		request.wasi_preview == 1 and not request.threads and request.entry == "command",
		"The genuine interpreters require Preview 1, single-thread command startup"
	)
	local extensions = { js = { ".js", ".mjs" }, py = { ".py" }, lua = { ".lua" } }
	local contract =
		import("provider_contract", { rootdir = path.join(root, "tools/xmake"), anonymous = true })
	assert(
		#request.sources == 1
			and contract.contains(extensions[request.language], path.extension(request.sources[1])),
		"Declare one source entry in the actual requested language"
	)
	-- Configure may run during on_load, before Xmake permits orderdeps().
	-- The common context supplies actual dependency usages after graph loading.
	local linked = target:kind() ~= "binary" or request.backend == "wasi"
	for _, dependency in ipairs(request.dependency_targets or {}) do
		if dependency.usage ~= "build-only" then
			linked = true
		end
	end
	if linked then
		assert(
			request.backend == "wasi"
				or (
					request.backend == "ros2"
					and request.language == "js"
					and target:kind() == "shared"
					and request.triple == "wasm32-wasip1"
				),
			"Interpreter libraries currently use WASI, or one raw-ABI QuickJS ROS2 shared producer on wasm32"
		)
		import("library", { rootdir = path.join(root, "tools/language/js"), anonymous = true }).configure(
			target,
			root,
			request
		)
	else
		assert(
			request.exception_profile == (request.language == "lua" and "eh" or "noeh"),
			"Select the exact genuine command-engine exception profile"
		)
		if not target:values("ros.sdk.bundle_manifest") then
			local family = request.language == "py" and "python" or request.language
			target:set(
				"values",
				"ros.sdk.bundle_manifest",
				"share/language/" .. family .. "/" .. request.backend .. "/bundle.json"
			)
		end
		import("pack", { rootdir = path.join(root, "tools/language/js"), anonymous = true }).configure(
			command_target(target),
			root
		)
	end
	target:data_set("ros.sdk.genuine_library_route", linked)
end

-- @brief Build source archives, standalone modules or complete genuine commands.
-- @details Source is parsed and evaluated only by the guest's genuine engine.
function build(target, root, request)
	if target:data("ros.sdk.genuine_library_route") then
		return import(
			"library",
			{ rootdir = path.join(root, "tools/language/js"), anonymous = true }
		).build(target, root, request)
	end
	return import("pack", { rootdir = path.join(root, "tools/language/js"), anonymous = true }).build(
		command_target(target),
		root
	)
end
