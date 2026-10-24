-- SPDX-License-Identifier: Apache-2.0
-- @file provider.lua
-- @brief Compile a WASI-only command through the common source-language layer.
-- @details This provider attaches no ROS schemas, native peers or policy grants.

-- @brief Configure a source command without probing tools.
-- @param target Current application target.
-- @param root Installed SDK.
-- @param context Validated WASI ABI context.
function configure(target, root, context)
	assert(
		context and context.backend == "wasi" and #context.sources > 0,
		"Declare actual WASI command sources"
	)
	if
		context.language ~= "c"
		and context.language ~= "cpp"
		and context.language ~= "c_ffi_bridge"
	then
		local adapter = import(
			"language_adapter",
			{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
		).load(root, context)
		adapter.configure(target, root, context)
	end
end

-- @brief Produce a sole Wasm using the actual source frontend.
-- @param target Current application.
-- @param root Installed SDK.
-- @param context Validated target and feature choices.
function build(target, root, context)
	if
		context.language == "c"
		or context.language == "cpp"
		or context.language == "c_ffi_bridge"
	then
		import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
			target,
			root,
			context.triple
		)
	else
		context.module_roots = {}
		context.native_sources = {}
		import("language_adapter", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
			target,
			root,
			context
		)
	end
end

-- @brief Run only with the manually configured installed runtime.
-- @param target Already compiled application.
-- @param root Installed SDK.
-- @param context Validated WASI selection.
function run(target, root, context)
	import("run", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).run(
		target,
		root,
		context
	)
end
