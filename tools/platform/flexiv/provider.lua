-- @brief Supply vendor module locations to the unchanged common Zig producer.
-- @param target Actual source target. @param root Installed shared SDK.
-- @param context Public version-one request. @param selected Exact release descriptor.
-- @return Independent request; this descriptor performs no compilation or grant.
local function zig_request(target, root, context, selected)
	assert(context and context.api_version == 1, "Use the public provider lifecycle")
	local request = table.clone(context)
	request.native_action = import(
		"actions",
		{ rootdir = path.join(root, "tools/platform/flexiv"), anonymous = true }
	).zig(selected)
	return request
end
-- @file provider.lua
-- @brief Consume this vendor's exact release descriptor and central producers.
-- @details No compiler, language engine, ROS runtime, policy grant, or DSL is
-- implemented here. The provider never substitutes a backend or address width.
function selection(target, root)
	import("core.base.json")
	local manifest = json.loadfile(path.join(root, "share/platform/flexiv/provider.json"))
	local id = target:values("ros.vendor.profile")
	assert(type(id) == "string", "Set ros.vendor.profile to one exact installed release")
	local selected
	for _, profile in ipairs(manifest.profiles) do
		if profile.id == id then
			selected = profile
		end
	end
	assert(selected, "Unknown flexiv source release: " .. id)
	assert(
		target:values("ros.sdk.backend") == selected.backend,
		"Selected native ROS generation differs"
	)
	assert(
		target:values("ros.sdk.distribution") == selected.distribution,
		"Selected native ROS distribution differs"
	)
	target:set("values", "ros.sdk.catalog", path.join(root, selected.catalog))
	target:set("values", "ros.sdk.vendor_descriptor", manifest)
	target:set("values", "ros.sdk.vendor_profile", selected)
	for _, define in ipairs(selected.defines or {}) do
		target:add("defines", define)
	end
	target:add(
		"includedirs",
		path.join(root, "include/platform/flexiv/c", selected.backend, selected.bundle)
	)
	target:add(
		"includedirs",
		path.join(root, "include/platform/flexiv/cpp", selected.backend, selected.bundle)
	)
	return selected
end
function configure(target, root, context)
	local selected = selection(target, root)
	if target:values("ros.sdk.language") == "zig" then
		local request = zig_request(target, root, context, selected)
		import("language_adapter", { rootdir = path.join(root, "tools/xmake"), anonymous = true })
			.load(root, request)
			.configure(target, root, request)
	end
end
function build(target, root, context)
	local selected = selection(target, root)
	if target:values("ros.sdk.language") == "zig" then
		return import(
			"language_adapter",
			{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
		).build(target, root, zig_request(target, root, context, selected))
	end
	local language = target:values("ros.sdk.language")
	if
		language == "c"
		or language == "cpp"
		or language == "objectc"
		or language == "c_ffi_bridge"
	then
		target:set("values", "ros.sdk.standard", language == "cpp" and "c++20" or "c17")
		local arguments = { "-Wno-unused-parameter", "-Wno-type-limits", "-Wno-error=fuse-ld-path" }
		-- Translate only the selected vendor descriptor. The shared producer
		-- currently does not consume ordinary target defines/includedirs.
		for _, define in ipairs(selected.defines or {}) do
			table.insert(arguments, "-D" .. define)
		end
		for _, family in ipairs({ "c", "cpp" }) do
			table.insert(
				arguments,
				"-I"
					.. path.join(
						root,
						"include/platform/flexiv",
						family,
						selected.backend,
						selected.bundle
					)
			)
		end
		import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
			target,
			root,
			target:values("ros.sdk.triple"),
			arguments
		)
		return
	end
	local owner = ({
		as = "native",
		d = "native",
		go = "native",
		haskell = "native",
		moonbit = "native",
		nim = "native",
		odin = "native",
		rs = "native",
		swift = "native",
		tinygo = "native",
		zig = "native",
		java = "jvm",
		kotlin = "jvm",
		csharp = "dotnet",
		fsharp = "dotnet",
		vbnet = "dotnet",
		py = "python",
		js = "js",
		lua = "lua",
		ruby = "ruby",
		php = "php",
		r = "r",
	})[language]
	assert(owner, "Unknown declared source language")
	local folder = path.join(root, "tools/language", owner)
	assert(
		os.isfile(path.join(folder, "provider.lua")),
		"Install the central " .. owner .. " provider"
	)
	import("provider", { rootdir = folder, anonymous = true }).build(target, root)
end
