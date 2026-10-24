-- @file provider.lua
-- @brief Describe one vendor target and consume the common compiler/run actions.
-- @details No compiler, VM, codec, package downloader or permission policy is
-- implemented here. Source profile identity is independent from robot firmware.

-- @brief Resolve the exact original source profile selected by ordinary Xmake values.
-- @param target Public target with language, vendor, architecture and ROS selections.
-- @param root Installed SDK root containing the shared verified toolchain closure.
-- @return Complete descriptor, selected profile and optional exact model entry.
-- @throws Invalid vendor/profile/source-lock/ABI/model/backend/distribution selections.
-- @details Returned tables describe the preserved full original catalog. Selection
-- validates declarations and creates no endpoint, compiler process or permission.
function settings(target, root)
	import("core.base.json")
	local vendor = target:values("ros.sdk.platform")
	local descriptor = json.loadfile(path.join(root, "share/platform", vendor, "provider.json"))
	assert(descriptor.vendor == vendor, "Vendor descriptor identity differs")
	local name = target:values("ros.sdk.provider.profile")
	assert(type(name) == "string", "Select ros.sdk.provider.profile explicitly")
	local selected
	for _, profile in ipairs(descriptor.profiles) do
		if profile.id == name then
			selected = profile
		end
	end
	assert(selected, "Selected vendor source profile is absent")
	assert(
		table.contains(descriptor.requested_languages, target:values("ros.sdk.language")),
		"Select one declared source-language route"
	)
	local version = target:values("ros.sdk.provider.catalog_version")
	assert(not version or version == selected.source_lock_sha256, "Catalog source version differs")
	local abi = target:values("ros.sdk.provider.abi") or "uwvm-ros-v1"
	assert(abi == "uwvm-ros-v1", "Select the actual supported ROS import ABI")
	local model = target:values("ros.sdk.provider.model")
	local selected_model
	if model then
		local matched = false
		for _, entry in ipairs(descriptor.model_selections) do
			if entry.profile == name and entry.selection == model then
				matched, selected_model = true, entry
			end
		end
		assert(matched, "Model selection is not in this exact original source profile")
	end
	assert(
		selected.ros_version == 1 or selected.ros_version == 2,
		"Unsupported original ROS family"
	)
	local backend = selected.ros_version == 1 and "ros1" or "ros2"
	local actual_backend = target:values("ros.sdk.backend")
	assert(
		actual_backend == backend,
		"Selected ROS backend "
			.. tostring(actual_backend)
			.. " differs from original source family "
			.. backend
	)
	local transport = target:values("ros.sdk.provider.transport") or "native-ros"
	assert(transport == "native-ros", "This provider describes native ROS transport")
	local distribution = target:values("ros.sdk.distribution")
	assert(
		type(distribution) == "string" and #distribution > 0,
		"Select a native ROS distribution explicitly"
	)
	assert(
		table.contains(descriptor.distributions[backend], distribution),
		"Unknown native ROS distribution selector"
	)
	return descriptor, selected, selected_model
end

-- @brief Validate declarations without starting a compiler, native ROS or a runtime.
-- @param target Independent public target. @param root Installed common SDK root.
-- @param context Common checked request with the complete set_ros_config map.
-- @details Values are checked against both the common schema and exact source
-- profile. Explicit conflicting low-level declarations fail instead of winning.
-- @return No value after checked source/profile declarations; no application is built.
-- @details Java catalog files join the actual source graph and retain the public
-- entry-class override. Interpreted targets select their complete declared module
-- manifest. The common version-one build action configures the real producer.
-- @throws A conflicting option map, unsupported ABI/transport or common profile error.
-- @pre context is the current public schema-validated request, including explicit false values.
function configure(target, root, context)
	assert(
		type(context) == "table" and type(context.options) == "table",
		"Common provider request is required"
	)
	local keys = {
		profile = "profile",
		model = "model",
		catalog_version = "catalog_version",
		abi = "abi",
		transport = "transport",
	}
	for option, field in pairs(keys) do
		local value = context.options[option]
		if value ~= nil then
			local key = "ros.sdk.provider." .. field
			local previous = target:values(key)
			assert(previous == nil or previous == value, "Conflicting vendor option: " .. option)
			target:set("values", key, value)
		end
	end
	local descriptor, selected = settings(target, root)
	local language = context.language
	local graph = (selected.source_graph_v1 or {})[language]
	if graph and language == "java" then
		local declared = {}
		for _, source in ipairs(target:get("files") or {}) do
			if type(source) == "string" then
				declared[path.absolute(source)] = true
			end
		end
		for _, source in ipairs(graph.sources or {}) do
			local filename = path.absolute(path.join(root, source))
			if not declared[filename] then
				target:add("files", filename)
			end
		end
		if target:values("ros.sdk.main_class") == nil then
			target:set("values", "ros.sdk.main_class", graph.main_class)
		end
	end
	if graph and graph.bundle_manifest and target:values("ros.sdk.bundle_manifest") == nil then
		target:set("values", "ros.sdk.bundle_manifest", graph.bundle_manifest)
	end
end

-- @brief Attach complete original source DATA to the public common language request.
-- @param target Configured source target. @param root Installed SDK root.
-- @param context Version-one request validated by the shared provider schema.
-- @return A fresh version-one common request with complete native definitions,
-- selected language sources and the public vendor module root.
-- @throws An invalid source profile or common request/schema error.
-- @details Copy the common binding before attaching vendor data; neither the caller's
-- context nor the common shared binding is mutated. No source record or field is removed.
function request(target, root, context)
	local descriptor, selected = settings(target, root)
	local common =
		import("provider", { rootdir = path.join(root, "tools/platform/ros"), anonymous = true })
	local selected_request = common.request(target, root, table.clone(context))
	selected_request.binding = table.clone(selected_request.binding)
	selected_request.module_roots = table.clone(selected_request.module_roots or {})
	selected_request.native_sources = table.clone(selected_request.native_sources or {})
	selected_request.binding.source_graph =
		table.clone((selected.source_graph_v1 or {})[context.language] or {})
	selected_request.binding.native_definitions = {
		catalog = selected.catalog,
		source_lock_sha256 = selected.source_lock_sha256,
	}
	table.insert(
		selected_request.module_roots,
		"include/platform/" .. descriptor.vendor .. "/" .. context.language
	)
	for _, source in ipairs((selected.language_sources or {})[context.language] or {}) do
		table.insert(selected_request.native_sources, source)
	end
	return selected_request
end

-- @brief Build actual source through its one common producer; never replace languages.
-- @param target Configured independent command. @param root Installed SDK root.
-- @details Only the shared producer writes the target's sole application Wasm.
-- @param context Current public request/source graph selected during configuration.
-- @return The actual delegated producer result; an absent result is not acceptance.
-- @throws Common compiler, dependency, width, kind, source or artifact-contract failures.
-- @details C-family uses the one shared cfamily producer; other languages use the
-- version-one adapter with the complete request. No signature probing, C substitution,
-- private compiler, interpreter copy, VM execution or ROS grant is introduced.
function build(target, root, context)
	local descriptor, selected, selected_model = settings(target, root)
	local language = target:values("ros.sdk.language")
	if language == "c" or language == "cpp" or language == "c_ffi_bridge" then
		local standard = target:values("ros.sdk.standard")
			or target:values("ros.native.standard")
			or (language == "cpp" and "c++23" or "c17")
		target:set("values", "ros.sdk.standard", standard)
		local flags = {}
		for name, value in pairs(selected.legacy_defines or {}) do
			assert(
				type(value) == "number" and value == math.floor(value),
				"Legacy profile selector must be integral"
			)
			table.insert(flags, "-D" .. name .. "=" .. string.format("%d", value))
		end
		if selected_model then
			for name, value in pairs(selected_model.legacy_defines or {}) do
				assert(
					type(value) == "number" and value == math.floor(value),
					"Legacy model selector must be integral"
				)
				table.insert(flags, "-D" .. name .. "=" .. string.format("%d", value))
			end
		end
		for _, folder in ipairs(selected.legacy_include_roots) do
			table.insert(flags, "-I" .. path.join(root, folder))
		end
		return import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
			target,
			root,
			target:values("ros.sdk.triple"),
			flags
		)
	end
	return import(
		"language_adapter",
		{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
	).build(target, root, request(target, root, context))
end

-- @brief Use the installed runtime with the caller's existing explicit deployment permissions.
-- @param target Previously built command. @param root Installed SDK root.
-- @details Run never invokes a compiler or creates/widens capability grants.
-- @param context Public checked scenario, guest ABI and explicit run configuration.
-- @return The delegated common run result; failures retain its error/exit behavior.
-- @throws Invalid deployment policy or actual common runtime/gateway execution failure.
-- @pre The requested artifact already exists; automatic compilation remains disabled.
function run(target, root, context)
	settings(target, root)
	return import("provider", { rootdir = path.join(root, "tools/platform/ros"), anonymous = true }).run(
		target,
		root,
		context
	)
end
