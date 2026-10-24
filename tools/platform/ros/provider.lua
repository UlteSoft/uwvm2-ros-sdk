-- SPDX-License-Identifier: Apache-2.0
-- @file provider.lua
-- @brief Describe native ROS application bindings for the shared compiler layer.
-- @details ROS1 and ROS2 retain their distinct import families and schemas.
-- This provider owns no language compiler, interpreter, implicit policy or
-- source execution substitute. C and C++ use the common LLVM 23 action.

-- @brief Validate source extensions and attach the platform binding descriptor.
-- @param target Ordinary Xmake application target.
-- @param root Installed SDK root.
-- @param context Provider-schema-validated target context.
-- @return Complete shared adapter request with source/module/ABI descriptors.
function request(target, root, context)
	import("core.base.json")
	assert(
		context and context.api_version == 1,
		"Native ROS requires the shared provider schema contract"
	)
	local descriptor =
		json.loadfile(path.join(root, "share/platform/ros/bindings", context.language .. ".json"))
	assert(
		descriptor.format == "uwvm-ros-binding-v1" and descriptor.language == context.language,
		"Install the exact ROS language binding descriptor"
	)
	assert(#context.sources > 0, "Declare real language sources with add_files")
	local contract =
		import("provider_contract", { rootdir = path.join(root, "tools/xmake"), anonymous = true })
	for _, source in ipairs(context.sources) do
		assert(
			contract.contains(descriptor.extensions, path.extension(source)),
			"Source extension conflicts with set_language"
		)
	end
	context.binding = descriptor
	context.abi = context.backend == "ros1" and "uwvm_ros1_v1" or "uwvm_ros2_v1"
	context.module_roots = descriptor.module_roots
	context.native_sources = descriptor.native_sources
			and descriptor.native_sources[context.backend]
		or {}
	-- A binding may name a complete source action for a public scenario.
	-- Selection changes compiler inputs only; deployment authority stays external.
	local profile = (descriptor.native_actions or {})[context.scenario]
	if profile then
		local action = assert(
			profile[context.backend],
			"Binding source profile lacks the selected ROS backend"
		)
		assert(
			action.format == "uwvm-native-action-v1" and action.language == context.language,
			"Binding source profile conflicts with the shared native action contract"
		)
		context.native_action = action
	end
	return context
end

-- @brief Configure source metadata without resolving any compiler or native ROS installation.
-- @param target Current command target.
-- @param root Installed SDK root.
-- @param context Validated provider context.
function configure(target, root, context)
	local selected = request(target, root, context)
	target:set("objectdir", path.join(path.absolute(target:scriptdir()), ".uwvm-ros/objects"))
	target:set("dependir", path.join(path.absolute(target:scriptdir()), ".uwvm-ros/dependencies"))
	target:set("values", "ros.sdk.binding", selected.binding)
	if
		selected.language ~= "c"
		and selected.language ~= "cpp"
		and selected.language ~= "c_ffi_bridge"
	then
		local adapter = import(
			"language_adapter",
			{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
		).load(root, selected)
		adapter.configure(target, root, selected)
	end
end

-- @brief Build the exact source language through a common engine.
-- @param target Current application target.
-- @param root Installed SDK root.
-- @param context Validated ABI and distribution choices.
function build(target, root, context)
	local selected = request(target, root, context)
	if
		selected.language == "c"
		or selected.language == "cpp"
		or selected.language == "c_ffi_bridge"
	then
		local extra = {}
		if selected.language == "c_ffi_bridge" then
			table.join2(extra, {
				"-DROSWASM_C_FFI_BACKEND=" .. selected.backend:sub(4),
				"-I" .. path.join(root, "include/platform/ros/c_ffi_bridge"),
				path.join(root, "src/platform/ros/c_ffi_bridge/shim.c"),
			})
		end
		import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
			target,
			root,
			selected.triple,
			extra
		)
	else
		import("language_adapter", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
			target,
			root,
			selected
		)
	end
end

-- @brief Execute an installed runtime with explicit manual permissions.
-- @param target Already compiled command.
-- @param root Installed SDK.
-- @param context Exact selected middleware and target ABI.
function run(target, root, context)
	import("core.base.json")
	import("core.project.config")
	import("lib.detect.find_program")
	local filename = target:values("ros.sdk.run_config")
		or config.get("ros-run-config")
		or os.getenv("UWVM_ROS_RUN_CONFIG")
	assert(filename and os.isfile(filename), "Prepare an explicit native ROS run configuration")
	local deployment = json.loadfile(filename)
	if deployment.format == "uwvm-ros-command-run-v1" then
		import("run", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).run(
			target,
			root,
			context
		)
		return
	end
	assert(deployment.format == "uwvm-native-ros-run-v2", "Unknown native ROS deployment format")
	assert(
		deployment.backend == context.backend and deployment.distribution == context.distribution,
		"Native deployment backend/distribution does not match this application"
	)
	local python = assert(
		find_program("python3"),
		"Native gateway process orchestration requires installed Python 3"
	)
	os.execv(
		python,
		{
			path.join(root, "tools/platform/ros/run.py"),
			"--target",
			context.triple,
			"--backend",
			context.backend,
			"--distribution",
			context.distribution,
			"--config",
			path.absolute(filename),
			"--scenario",
			context.scenario,
			"--wasm",
			path.absolute(target:targetfile()),
			"--report-directory",
			path.join(path.absolute(target:scriptdir()), ".uwvm-ros/native-ros/run"),
		}
	)
end
