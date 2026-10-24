-- @file provider.lua
-- @brief Select complete source-pinned fourier schemas and shared language producers.
-- @details The provider contains configuration only. Engines/toolchains are shared
-- with every other platform. Compilation grants no native ROS authority.

-- @brief Validate exact platform/profile/backend/distribution choices.
-- @param target Genuine source target.
-- @param root Immutable installed SDK.
-- @return Admitted profile data, retaining its source-only qualification state.
function configure(target, root, context)
	assert(
		type(context) == "table" and context.api_version == 1,
		"Use the public version-one provider context"
	)
	import("core.base.json")
	assert(target:values("ros.sdk.platform") == "fourier", "Platform selector mismatch")
	local manifest = assert(json.loadfile(path.join(root, "share/platform/fourier/provider.json")))
	local name = target:values("ros.sdk.profile")
	local selected = manifest.profiles[name]
	assert(selected, "Select an exact installed ros.sdk.profile")
	assert(
		target:values("ros.sdk.backend") == selected.backend,
		"The selected source profile has another ROS ABI"
	)
	local distribution = target:values("ros.sdk.distribution")
	assert(
		table.contains(selected.distributions, distribution),
		"Distribution is outside this source profile"
	)
	local triple = assert(context.triple, "The common dispatcher must resolve the exact target")
	target:set("values", "ros.sdk.triple", triple)
	local language = target:values("ros.sdk.language")
	if selected.bindings and selected.bindings[language] then
		target:set("values", "ros.sdk.binding", selected.bindings[language])
	end
	if selected.modules[language] then
		target:set("values", "ros.sdk.modules", selected.modules[language])
		local adapter = import(
			"language_adapter",
			{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
		).load(root, context)
		adapter.configure(target, root, context)
	end
	return selected
end

-- @brief Build one actual-language application through its shared producer.
-- @param target Validated ordinary Xmake target.
-- @param root SDK installation.
-- @details Missing compiler/engine modules remain explicit dependencies. No source
-- is translated into a replacement language, and memory64 is never narrowed.
function build(target, root, context)
	configure(target, root, context)
	local language = target:values("ros.sdk.language")
	local triple = target:values("ros.sdk.triple")
	if language == "c" or language == "cpp" or language == "c_ffi_bridge" then
		return import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).build(
			target,
			root,
			triple
		)
	end
	return import(
		"language_adapter",
		{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
	).build(target, root, context)
end

-- @brief Run the existing Wasm with explicit operator deployment configuration.
-- @param target Built application.
-- @param root SDK root with the one common launcher.
-- @details Vendor scenarios and explicit application arguments belong to the
-- parent-owned native launcher contract. This hook never rebuilds or adds rights.
function run(target, root)
	import("core.project.config")
	local deployment = target:values("ros.sdk.run_config")
		or config.get("ros-run-config")
		or os.getenv("UWVM_ROS_RUN_CONFIG")
	assert(
		deployment and os.isfile(deployment),
		"Supply the manually configured native ROS deployment"
	)
	local launcher = path.join(root, "tools/platform/ros/run.py")
	assert(os.isfile(launcher), "Install the one common permission-preserving native launcher")
	local artifact = path.absolute(target:targetfile())
	assert(os.isfile(artifact), "Build the application explicitly before running it")
	local backend = target:values("ros.sdk.backend")
	local distribution = target:values("ros.sdk.distribution")
	local triple = target:values("ros.sdk.triple")
	os.vrunv(
		"python3",
		{
			"-B",
			launcher,
			"--config",
			path.absolute(deployment),
			"--backend",
			backend,
			"--distribution",
			distribution,
			"--target",
			triple,
			"--scenario",
			target:values("ros.sdk.scenario"),
			"--wasm",
			artifact,
			"--report-directory",
			path.join(path.absolute(target:scriptdir()), ".uwvm-ros/native-run"),
		}
	)
end
