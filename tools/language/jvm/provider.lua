-- @file provider.lua
-- @brief Declare the exact implemented shared adapter request contract.
-- @return One source-language family, real guest target and explicit EH profile.
-- @details These are accepted source requests, never native ROS qualification.
function describe()
	return {
		api_version = 1,
		languages = { "java", "kotlin" },
		targets = { "wasm32-wasip1" },
		exception_profiles = { "noeh" },
		features = {},
		artifact_kinds = {
			binary = {
				languages = { "java", "kotlin" },
				targets = { "wasm32-wasip1" },
				exception_profiles = { "noeh" },
				dependencies = { shared = { "java", "kotlin" } },
			},
			shared = {
				languages = { "java", "kotlin" },
				targets = { "wasm32-wasip1" },
				exception_profiles = { "noeh" },
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
		request.exception_profile == "noeh",
		"The selected managed engine requires the explicit noeh profile"
	)
	assert(
		request.kind == (target:kind() or "binary"),
		"The shared request must preserve the actual Xmake target kind"
	)
	for _, feature in ipairs(request.features or {}) do
		assert(
			false,
			"The managed engine has no requested Wasm Core feature: " .. tostring(feature)
		)
	end
end

-- @brief Compile actual Java/Kotlin source to a standalone WASI command.
-- @details The public tools/xmake/ros.lua DSL owns target declaration and run.
-- This provider owns only source validation and genuine JVM-to-Wasm build operations.
-- All compiler/runtime inputs are supplied by the pinned offline tool closure.

-- @brief Resolve one exact source-language and ABI selection without tool probes.
-- @param target Current target populated by the shared public DSL.
-- @return Language identifier and selected native ROS backend.
-- @details Configuration performs no network, compiler, runtime or ROS operation.
function _settings(target)
	local language = target:values("ros.sdk.language")
	assert(
		({ java = true, kotlin = true })[language],
		"The JVM provider supports Java and Kotlin only"
	)
	assert(
		target:plat() == "wasm-wasip1" and target:arch() == "wasm32",
		"JVM Wasm requires wasm-wasip1 / wasm32"
	)
	local backend = target:values("ros.sdk.backend")
	assert(backend == "ros1" or backend == "ros2", "Select an exact ROS backend")
	return language, backend
end

-- @brief Check actual source extensions and preserve the sole public Wasm output.
-- @param target Configured application containing its genuine add_files inputs.
-- @param root Absolute installed SDK root, borrowed for this build.
-- @return No value; invalid source-language/target combinations raise an error.
-- @details Every source remains caller-owned. No source substitution or build occurs.
function configure(target, root, request)
	local language, backend = _settings(target)
	_request(target, request, language, backend)
	local kind = target:kind() or "binary"
	assert(
		kind == "binary" or kind == "shared",
		"The TeaVM linear Wasm backend has no relocatable .a producer; target kind is preserved"
	)
	local extensions = { java = ".java", kotlin = ".kt" }
	assert(#target:sourcefiles() > 0, "Declare the real managed application source")
	for _, source in ipairs(target:sourcefiles()) do
		assert(
			path.extension(source) == extensions[language],
			"Managed source extension disagrees with set_language"
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

-- @brief Resolve an installed, explicitly selected complete build-tool closure.
-- @param target Current application and its provisioned tool selection.
-- @param root Installed SDK root used to locate the common bundle installer.
-- @return Private tool-closure directory and genuine executable entry table.
-- @details An offline XMZ manifest is preferred. The review cache option is an
-- explicit development input, never an ambient Java/Python/shell probe.
function _tools(target, root)
	local manifest = target:values("ros.sdk.jvm_bundle") or os.getenv("UWVM_ROS_JVM_BUNDLE")
	local installed =
		path.join(root, "share/toolchains/host", os.host() .. "-" .. os.arch(), "jvm-aot.json")
	if not manifest and os.isfile(installed) then
		manifest = installed
	end
	if manifest then
		local home = os.getenv("XDG_CACHE_HOME")
		if not home then
			home = path.join(
				assert(
					os.getenv("HOME"),
					"Set HOME or XDG_CACHE_HOME for the managed compiler cache"
				),
				".cache"
			)
		end
		local cache = path.join(home, "uwvm-ros/jvm-aot")
		return import("tool_bundle", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).install(
			path.absolute(manifest),
			cache
		)
	end
	local directory = target:values("ros.sdk.jvm_tools") or os.getenv("UWVM_ROS_JVM_TOOLS")
	assert(
		directory and path.is_absolute(directory),
		"Install the pinned JDK/Kotlin/TeaVM tool bundle"
	)
	directory = path.normalize(directory)
	local java = path.join(directory, "jdk21/bin/java")
	return directory, { java = java }
end

-- @brief Launch the native development JVM with its own manifest-pinned loader.
-- @details The bundle includes libc and its paired ld-linux. Mixing that libc
-- with the image loader can fail before JVM initialization. No application or
-- ROS client is executed here; this helper only runs the compiler tool closure.
function _run_java(closure, programs, arguments, environment)
    assert(os.host() == "linux" and os.arch() == "x86_64",
        "The installed JVM tool closure is qualified only for Linux x86_64 hosts")
    local loader = path.join(closure, "lib/host-runtime/ld-linux-x86-64.so.2")
    assert(os.isfile(loader), "The pinned JVM closure requires its paired native loader")
    local library_path = assert(environment.LD_LIBRARY_PATH, "The paired loader needs its complete library path")
    local launcher_environment = {}
    for name, value in pairs(environment) do
        launcher_environment[name] = value
    end
    -- libjli can re-exec /proc/self/exe when LD_LIBRARY_PATH names lib/server.
    -- With an explicit ld-linux entry that executable is the loader. Keep the
    -- full closure in its --library-path and avoid the launcher's re-exec path.
    launcher_environment.LD_LIBRARY_PATH = ""
    local argv = {"--library-path", library_path, programs.java}
    table.join2(argv, arguments)
    os.vrunv(loader, argv, {envs = launcher_environment})
end

-- @brief Compile Java/Kotlin IR and invoke the exact TeaVM linear-memory backend.
-- @param target Current application with its genuine source inputs and main class.
-- @param root Installed SDK root containing public language namespaces.
-- @param language Exact java or kotlin source-language identifier.
-- @param backend Exact ros1 or ros2 import family.
-- @param closure Complete isolated tool input directory.
-- @param programs Genuine executable entry table from the common bundle installer.
-- @return No value; any compiler diagnostic or missing Wasm output fails the build.
-- @details Compiler class files and caches stay in .uwvm-ros. No host JVM is part
-- of the produced guest; the final command imports the selected ROS ABI directly.
function _jvm(target, root, language, backend, closure, programs)
	-- Each target owns an isolated scratch tree, including when multiple
	-- applications share one project and their builds execute concurrently.
	local target_name = target:name()
	assert(
		target_name:match("^[%w_][%w_.%-]*$"),
		"Managed target names must use letters, digits, underscores, dots or dashes"
	)
	local cache_name = target:fullname() == target_name and target_name
		or import(
			"artifact_contract",
			{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
		).identity(target)
	local cache = path.join(path.absolute(target:scriptdir()), ".uwvm-ros/managed-aot", cache_name)
	local classes = path.join(cache, "classes")
	local kind = target:kind() or "binary"
	local root_class = target:values("ros.sdk.main_class")
		or (
			"uwvm."
			.. assert(target:values("ros.sdk.platform")):gsub("[^A-Za-z0-9_]", "_")
			.. ".example.Main"
		)
	assert(
		#(target:get("links") or {}) == 0,
		"JVM native archive add_links consumption remains unimplemented; use genuine module imports for shared consumers"
	)
	for _, dependency in ipairs(target:orderdeps({ inherit = true })) do
		assert(
			dependency:kind() == "shared",
			"The JVM scalar Core-module consumer requires real shared Wasm dependencies; static/binary dependency consumption is unimplemented"
		)
	end
	local entry_class = root_class
	local export_contract = path.join(cache, "shared-exports.txt")
	local environment = {
		JAVA_HOME = path.join(closure, "jdk21"),
		JAVA_TOOL_OPTIONS = "",
		JDK_JAVA_OPTIONS = "",
		CLASSPATH = "",
		LD_LIBRARY_PATH = path.join(closure, "lib/host-runtime") .. ":" .. path.join(
			closure,
			"jdk21/lib"
		) .. ":" .. path.join(closure, "jdk21/lib/server"),
	}
	-- A successful javac invocation need not regenerate a removed entry class.
	-- Retire only this application's class directory before compiling its
	-- current sources; the immutable compiler bundle remains cached.
	if os.isdir(classes) then
		os.rm(classes)
	end
	os.mkdir(classes)
	local jars = os.files(path.join(closure, "compiler-jars/*.jar"))
	table.sort(jars)
	assert(#jars > 0, "The pinned TeaVM compiler closure is empty")
	local separator = os.host() == "windows" and ";" or ":"
	local compiler_path = table.concat(jars, separator)
	local platform = assert(target:values("ros.sdk.platform"), "Select the source platform")
	local platform_root = path.join(root, "include/platform", platform)
	local sources = os.files(path.join(root, "include/platform/ros/java/**.java"))
	-- The shared ROS source root owns org.uwvm.roswasm once for both backends.
	-- Backend-specific maintained bindings and migration interfaces have separate
	-- namespace roots. Scanning the complete backend tree also selects historical
	-- mirrors of the shared classes and makes genuine javac reject duplicate types.
	table.join2(sources, os.files(path.join(root, "include/platform", backend, "java/uwvm/**.java")))
	table.join2(sources, os.files(path.join(root, "include/platform", backend, "java/compat/**.java")))
	table.join2(sources, os.files(path.join(platform_root, "java/uwvm/**.java")))
	table.join2(sources, os.files(path.join(platform_root, "java", backend, "**.java")))
	table.insert(sources, path.join(root, "tools/language/java/Compile.java"))
	table.join2(sources, os.files(path.join(root, "tools/language/java/teavm-0.13.1/**.java")))
	if kind == "shared" then
		-- This compiler-owned Java entry rejects command execution. The real
		-- user Export methods remain in their genuine Java/Kotlin source class.
		-- TeaVM's module start initializes its own heap before imported calls;
		-- consumers call only the declared scalar exports, never this guard.
		local entry = path.join(cache, "shared-entry/uwvm/ros/build/module/SharedEntry.java")
		os.mkdir(path.directory(entry))
		io.writefile(
			entry,
			table.concat({
				"package uwvm.ros.build.module;",
				"public final class SharedEntry {",
				"    public static void main(String[] args) {",
				'        throw new IllegalStateException("Load this shared module through a preload consumer");',
				"    }",
				"}",
				"",
			}, "\n")
		)
		table.insert(sources, entry)
		entry_class = "uwvm.ros.build.module.SharedEntry"
	end
	if language == "java" then
		for _, source in ipairs(target:sourcefiles()) do
			table.insert(sources, path.absolute(source))
		end
	end
	table.sort(sources)
	local arguments = {
		"-Xmx2g",
		"-XX:ActiveProcessorCount=2",
		"-m",
		"jdk.compiler/com.sun.tools.javac.Main",
		"-source",
		"17",
		"-target",
		"17",
		"-g",
		"-cp",
		compiler_path,
		"-d",
		classes,
	}
	table.join2(arguments, sources)
	_run_java(closure, programs, arguments, environment)
	if language == "kotlin" then
		local kotlin_sources = os.files(path.join(platform_root, "kotlin", backend, "**.kt"))
		for _, source in ipairs(target:sourcefiles()) do
			table.insert(kotlin_sources, path.absolute(source))
		end
		local kotlin = {
			"-Xmx2g",
			"-XX:ActiveProcessorCount=2",
			"-cp",
			compiler_path,
			"org.jetbrains.kotlin.cli.jvm.K2JVMCompiler",
			"-no-stdlib",
			"-no-reflect",
			"-jvm-target",
			"17",
			"-classpath",
			classes .. separator .. compiler_path,
			"-d",
			classes,
		}
		table.join2(kotlin, kotlin_sources)
		_run_java(closure, programs, kotlin, environment)
	end
	local output = path.absolute(target:targetfile())
	os.mkdir(path.directory(output))
	local compile = {
		"-Xmx2g",
		"-XX:ActiveProcessorCount=2",
		"-Duwvm.ros.targetKind=" .. kind,
		"-Duwvm.ros.libraryRoot=" .. root_class,
		"-Duwvm.ros.exportContract=" .. export_contract,
		"-Duwvm.ros.backendReceipt=" .. path.join(cache, "native-backend-identity.json"),
		"-cp",
		classes .. separator .. compiler_path,
		"uwvm.ros.build.Compile",
		entry_class,
		output,
		classes,
	}
	table.join2(compile, jars)
	_run_java(closure, programs, compile, environment)
	assert(os.isfile(output), "TeaVM did not produce the requested Wasm command")
	import("core.base.json")
	local compiler_inputs = {}
	for _, jar in ipairs(jars) do
		table.insert(compiler_inputs, { name = path.filename(jar), sha256 = hash.sha256(jar) })
	end
	json.savefile(path.join(cache, "aot-receipt.json"), {
		language = language,
		backend = backend,
		mode = "TeaVM WEBASSEMBLY_WASI",
		jdk_launcher_sha256 = hash.sha256(programs.java),
        native_loader_sha256 = hash.sha256(path.join(closure, "lib/host-runtime/ld-linux-x86-64.so.2")),
        native_loader_mode = "explicit paired loader; loader-only library path; empty launcher LD_LIBRARY_PATH",
		compiler_inputs = compiler_inputs,
		tool_driver_sha256 = hash.sha256(path.join(root, "tools/language/java/Compile.java")),
		native_backend_identity_sha256 = hash.sha256(path.join(cache, "native-backend-identity.json")),
		native_backend_sources = {
			{ name = "WasmGenerationVisitor.java", sha256 = hash.sha256(path.join(root, "tools/language/java/teavm-0.13.1/org/teavm/backend/wasm/generate/WasmGenerationVisitor.java")) },
			{ name = "WasmBinaryRenderer.java", sha256 = hash.sha256(path.join(root, "tools/language/java/teavm-0.13.1/org/teavm/backend/wasm/render/WasmBinaryRenderer.java")) }
		},
		optimization = "FULL",
		post_generation_Wasm_rewrite = false,
		artifact_sha256 = hash.sha256(output),
		target = "wasm32-wasip1",
		target_kind = kind,
		shared_managed_root = kind == "shared" and root_class or nil,
		shared_exports = kind == "shared" and io.readfile(export_contract) or nil,
		shared_preload_executed = false,
		native_static_archive_consumption = false,
		runtime_executed_during_build = false,
	})
end

-- @brief Compile actual Java or Kotlin source with the pinned JVM-only tools.
-- @param target Current genuine source target.
-- @param root Installed SDK root; source and tool manifests remain immutable.
-- @details Host Java is a compiler input. The produced guest is a standalone
-- TeaVM WASI module and requires no host JVM when uwvm executes it.
function build(target, root, request)
	local language, backend = _settings(target)
	_request(target, request, language, backend)
	local closure, programs = _tools(target, root)
	_jvm(target, root, language, backend, closure, programs)
end
