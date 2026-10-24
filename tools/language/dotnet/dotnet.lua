-- @file dotnet.lua
-- @brief Compile genuine C#, F# and VB.NET to a single Mono full-AOT WASI command.
-- @details All tools are provisioned inputs. The build uses direct process
-- calls, an offline NuGet feed and a narrow shell-free MSBuild linker task.
-- Native intermediates, IL and build tools remain outside the sole build/*.wasm.

-- @brief Escape an SDK-owned path for a generated XML attribute.
-- @param value Complete borrowed string to encode.
-- @return XML-safe value; the original string remains unchanged.
function _xml(value)
	return value:gsub("&", "&amp;"):gsub('"', "&quot;"):gsub("<", "&lt;"):gsub(">", "&gt;")
end

-- @brief Compile the exact shell-free MSBuild task with the supplied C# compiler.
-- @param root Installed SDK root containing the maintained task source.
-- @param closure Complete pinned build-tool input directory.
-- @param programs Genuine dotnet and Clang executable entries.
-- @param cache Task-owned writable build cache.
-- @param environment Explicit environment inherited by each genuine tool process.
-- @return Absolute managed build-task assembly path.
-- @details This invokes Roslyn directly; no host compiler, shell, MSBuild Exec
-- task, ambient package feed, or guest execution is involved.
function _task(root, closure, programs, cache, environment)
	local sdk = path.join(closure, "dotnet9-preview6/sdk/9.0.100-preview.6.24328.19")
	local references = os.files(
		path.join(
			closure,
			"dotnet9-preview6/packs/Microsoft.NETCore.App.Ref/9.0.0-preview.6.24327.7/ref/net9.0/*.dll"
		)
	)
	assert(#references > 0, "The pinned .NET 9 reference pack is missing")
	table.sort(references)
	local output = path.join(cache, "managed-build-task.dll")
	local arguments = {
		"exec",
		path.join(sdk, "Roslyn/bincore/csc.dll"),
		"-noconfig",
		"-nostdlib+",
		"-target:library",
		"-out:" .. output,
	}
	for _, reference in ipairs(references) do
		table.insert(arguments, "-reference:" .. reference)
	end
	table.insert(arguments, "-reference:" .. path.join(sdk, "Microsoft.Build.Framework.dll"))
	table.insert(arguments, "-reference:" .. path.join(sdk, "Microsoft.Build.Utilities.Core.dll"))
	table.insert(arguments, path.join(root, "tools/language/dotnet/DirectLink.cs"))
	table.insert(arguments, path.join(root, "tools/language/dotnet/ConfigureRuntimeEhLink.cs"))
	table.insert(arguments, path.join(root, "tools/language/dotnet/ManagedLibrary.cs"))
	table.insert(arguments, path.join(root, "tools/language/dotnet/WasiCallbackLookup.cs"))
	os.vrunv(programs.dotnet, arguments, { envs = environment, curdir = cache })
	return output
end

-- @brief Build the complete actual source-language application through Mono LLVMOnly.
-- @param target Current genuine C#, F# or VB.NET application target.
-- @param root Installed SDK root with public managed source namespaces.
-- @param language Exact csharp, fsharp or vbnet identifier.
-- @param backend Exact ros1 or ros2 import family selected by the public DSL.
-- @param closure Complete pinned, offline tool input directory.
-- @param programs Genuine dotnet and LLVM 23 executable entry table.
-- @return No value; compiler, ABI, runtime-mode or sole-output failures raise.
-- @details The application owns all writable cache paths. Native ROS and uwvm2
-- are run prerequisites and are never invoked during compilation.
function build(target, root, language, backend, closure, programs, library_feed, library_receipt)
	import("core.base.json")
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
	local kind = target:kind() or "binary"
	assert(kind == "binary" or kind == "shared", "Select an implemented CLR binary/shared producer")
	assert(
		#(target:get("links") or {}) == 0,
		"CLR native archive add_links consumption remains unimplemented"
	)
	local shared_dependencies = {}
	for _, dependency in ipairs(target:orderdeps({ inherit = true })) do
		assert(
			kind == "binary" and dependency:kind() == "shared",
			"CLR dependency consumption requires a binary and real shared Core-module producers"
		)
		local file = path.absolute(dependency:targetfile())
		assert(os.isfile(file), "Build the declared real shared producer before its CLR consumer")
		table.insert(
			shared_dependencies,
			{
				target = dependency:fullname(),
				language = dependency:values("ros.sdk.language"),
				kind = dependency:kind(),
				artifact = file,
				sha256 = hash.sha256(file),
				linked_as_managed_reference = false,
			}
		)
	end
	local sdk_project = path.join(cache, "sdk/Uwvm.RosWasm.Managed.csproj")
	local extension = ({ csharp = "csproj", fsharp = "fsproj", vbnet = "vbproj" })[language]
	local project = path.join(cache, "application/Application." .. extension)
	local dotnet_root = path.join(closure, "dotnet9-preview6")
	local wasi_root = path.join(closure, "wasi-sdk23")
	os.mkdir(path.directory(sdk_project))
	os.mkdir(path.directory(project))
	os.mkdir(path.join(cache, "tmp"))
	assert(os.isfile(programs.dotnet), "The pinned Mono WASI .NET SDK is missing")
	local clang = programs.cc or programs.clang
	local linker = programs.ld
	if not clang or not linker then
		local layout = json.loadfile(path.join(wasi_root, "layout.json"))
		clang = clang or path.join(layout.compiler, "bin/clang")
		linker = linker or path.join(layout.compiler, "bin/wasm-ld")
	end
	assert(os.isfile(clang), "The genuine LLVM 23 compiler closure is missing")
	local environment = {
		DOTNET_ROOT = dotnet_root,
		DOTNET_HOST_PATH = programs.dotnet,
		DOTNET_MULTILEVEL_LOOKUP = "0",
		DOTNET_CLI_HOME = path.join(cache, "cli-home"),
		DOTNET_SYSTEM_GLOBALIZATION_INVARIANT = "1",
		DOTNET_CLI_TELEMETRY_OPTOUT = "1",
		DOTNET_SKIP_FIRST_TIME_EXPERIENCE = "1",
		DOTNET_PROCESSOR_COUNT = "2",
		DOTNET_CLI_WORKLOAD_UPDATE_NOTIFY_DISABLE = "1",
		DOTNET_CLI_DO_NOT_USE_MSBUILD_SERVER = "1",
		TMPDIR = path.join(cache, "tmp"),
		LD_LIBRARY_PATH = path.join(closure, "lib/host-runtime")
			.. ":"
			.. path.join(closure, "llvm23/lib/host-runtime"),
		MSBUILDDISABLENODEREUSE = "1",
		NUGET_PACKAGES = path.join(cache, "packages"),
		WASI_SDK_PATH = wasi_root,
		UWVM_MANAGED_LLVM_CLANG = clang,
		UWVM_MANAGED_WASI_SYSROOT = path.join(wasi_root, "share/wasi-sysroot"),
		UWVM_MANAGED_LLVM_RESOURCE = path.join(wasi_root, "lib/clang/23"),
		UWVM_MANAGED_LLVM_LINKER = linker,
	}
	io.writefile(
		path.join(cache, "global.json"),
		json.encode({
			sdk = {
				version = "9.0.100-preview.6.24328.19",
				rollForward = "disable",
				allowPrerelease = true,
			},
		})
	)
	local feed = path.join(closure, "nuget-feed")
	assert(os.isdir(feed), "The complete pinned offline NuGet feed is missing")
	local nuget = path.join(cache, "NuGet.Config")
	local extra_feed = ""
	if kind == "shared" then
		assert(
			library_feed and os.isdir(library_feed) and library_receipt,
			"The complete original offline library SDK dependency must be verified before restore"
		)
		extra_feed = '<add key="original-library-sdk" value="' .. _xml(library_feed) .. '"/>'
	end
	io.writefile(
		nuget,
		'<configuration><packageSources><clear/><add key="offline" value="'
			.. _xml(feed)
			.. '"/>'
			.. extra_feed
			.. "</packageSources></configuration>\n"
	)
	local task = _task(root, closure, programs, cache, environment)
	local objects = {}
	local native_sources = {
		managed_ros = "src/language/dotnet/managed_ros.c",
		managed_raw_ros = "src/language/dotnet/managed_raw_ros.c",
		roswasm_bridge = "src/platform/ros/csharp/roswasm_bridge.c",
		stack_bounds = "tools/language/dotnet/stack_bounds.c",
	}
	if kind == "shared" then
		native_sources.library_init = "tools/language/dotnet/library_init.c"
	end
	for name, source in pairs(native_sources) do
		local output = path.join(cache, name .. ".o")
		os.vrunv(clang, {
			"--target=wasm32-wasip1",
			"-no-canonical-prefixes",
			"-fintegrated-cc1",
			"--sysroot=" .. environment.UWVM_MANAGED_WASI_SYSROOT,
			"-resource-dir=" .. environment.UWVM_MANAGED_LLVM_RESOURCE,
			"-isystem",
			path.join(environment.UWVM_MANAGED_WASI_SYSROOT, "include/wasm32-wasip1"),
			"-DUWVM_ROS_BACKEND=" .. (backend == "ros1" and "1" or "2"),
			"-DROSWASM_BACKEND=" .. (backend == "ros1" and "1" or "2"),
			"-I" .. path.join(root, "include"),
			"-I" .. path.join(root, "include/platform", backend, "c/roswasm/detail"),
			"-O2",
			"-c",
			path.join(root, source),
			"-o",
			output,
		}, { envs = environment, curdir = cache })
		objects[name] = output
	end
	local eh_module = import("runtime_eh", {
		rootdir = path.join(root, "tools/language/dotnet"),
		anonymous = true,
	})
	local eh = eh_module.prepare(root, cache, environment)
	local platform = assert(target:values("ros.sdk.platform"), "Select the source platform")
	local platform_root = path.join(root, "include/platform", platform)
	-- @brief Select one canonical declaration for every common binding path.
	-- @details Backend mirrors repeat common RosWasm classes. Include shared
	-- declarations once, then add only backend-owned relative paths. The
	-- selected preprocessor constant below binds the matching native ABI.
	local sdk_sources = {}
	local selected_bindings = {}
	local function append_bindings(directory)
		-- The maintained ordinary public project selects RosWasm/**/*.cs.
		-- Its separate owned-service package has another explicit runtime profile.
		for _, source in ipairs(os.files(path.join(directory, "RosWasm/**.cs"))) do
			local relative = path.relative(source, directory)
			if not selected_bindings[relative] then
				selected_bindings[relative] = true
				table.insert(sdk_sources, source)
			end
		end
	end
	append_bindings(path.join(root, "include/platform/ros/csharp"))
	append_bindings(path.join(root, "include/platform", backend, "csharp"))
	table.join2(sdk_sources, os.files(path.join(root, "src/language/dotnet/**.cs")))
	table.join2(sdk_sources, os.files(path.join(platform_root, "csharp/Uwvm/**.cs")))
	table.join2(sdk_sources, os.files(path.join(platform_root, "csharp", backend, "**.cs")))
	table.sort(sdk_sources)
	local sdk_xml = {
		'<Project Sdk="Microsoft.NET.Sdk">',
		"  <PropertyGroup>",
		"    <TargetFramework>net9.0</TargetFramework>",
		"    <DefineConstants>$(DefineConstants);" .. (backend == "ros1" and "UWVM_ROS1" or "UWVM_ROS2") .. "</DefineConstants>",
		"    <EnableDefaultCompileItems>false</EnableDefaultCompileItems>",
		"    <AllowUnsafeBlocks>true</AllowUnsafeBlocks>",
		"    <UseSharedCompilation>false</UseSharedCompilation>",
		"    <NuGetAudit>false</NuGetAudit>",
		"  </PropertyGroup>",
		"  <ItemGroup>",
	}
	for _, source in ipairs(sdk_sources) do
		table.insert(sdk_xml, '    <Compile Include="' .. _xml(source) .. '" />')
	end
	table.join2(sdk_xml, { "  </ItemGroup>", "</Project>" })
	io.writefile(sdk_project, table.concat(sdk_xml, "\n") .. "\n")
	local application = {
		"<Project>",
		'  <Import Project="Sdk.props" Sdk="Microsoft.NET.Sdk" />',
		'  <Import Project="' .. _xml(path.join(root, "tools/language/dotnet/Aot.props")) .. '" />',
		"  <PropertyGroup>",
		"    <AssemblyName>" .. _xml(target:name()) .. "</AssemblyName>",
		"    <ManagedTargetKind>" .. kind .. "</ManagedTargetKind>",
		"    <ManagedSourceLanguage>" .. language .. "</ManagedSourceLanguage>",
		"    <ManagedLibraryContract>"
			.. _xml(path.join(cache, "managed-library-contract.json"))
			.. "</ManagedLibraryContract>",
		"    <ManagedImportContract>"
			.. _xml(path.join(cache, "managed-import-contract.json"))
			.. "</ManagedImportContract>",
		"    <OutputType>" .. (kind == "shared" and "Library" or "Exe") .. "</OutputType>",
		kind == "shared"
				and "    <UsingMicrosoftNETSdkWebAssembly>true</UsingMicrosoftNETSdkWebAssembly>"
			or "",
		"    <ManagedLibraryInitObject>"
			.. _xml(objects.library_init or "")
			.. "</ManagedLibraryInitObject>",
		"    <RootNamespace></RootNamespace>",
		"  </PropertyGroup>",
		"  <ItemGroup>",
		'    <ProjectReference Include="' .. _xml(sdk_project) .. '" />',
	}
	if kind == "shared" then
		table.insert(
			application,
			'    <TrimmerRootAssembly Include="' .. _xml(target:name()) .. '" />'
		)
	end
	local application_sources = {}
	if language == "fsharp" or language == "vbnet" then
		table.join2(
			application_sources,
			os.files(path.join(platform_root, language, backend, "**.*"))
		)
	end
	for _, source in ipairs(target:sourcefiles()) do
		table.insert(application_sources, path.absolute(source))
	end
	for _, source in ipairs(application_sources) do
		table.insert(application, '    <Compile Include="' .. _xml(source) .. '" />')
	end
	table.join2(application, {
		"  </ItemGroup>",
		'  <Import Project="Sdk.targets" Sdk="Microsoft.NET.Sdk" />',
		'  <Import Project="'
			.. _xml(path.join(root, "tools/language/dotnet/Aot.targets"))
			.. '" />',
		"</Project>",
	})
	io.writefile(project, table.concat(application, "\n") .. "\n")
	os.vrunv(programs.dotnet, {
		"restore",
		project,
		"--configfile",
		nuget,
		"--disable-parallel",
		"-p:WasiSdkRoot=" .. wasi_root,
		"-p:ManagedRosObject=" .. objects.managed_ros,
		"-p:ManagedRawObject=" .. objects.managed_raw_ros,
		"-p:ManagedBridgeObject=" .. objects.roswasm_bridge,
		"-p:ManagedStackObject=" .. objects.stack_bounds,
		"-p:ManagedBuildTask=" .. task,
		"-p:ManagedRuntimeEhRoot=" .. eh.ManagedRuntimeEhRoot,
		"-p:ManagedEhSysroot=" .. eh.ManagedEhSysroot,
		"-p:ManagedMonoAotCompiler=" .. eh.ManagedMonoAotCompiler,
	}, { envs = environment, curdir = cache })
	os.vrunv(programs.dotnet, {
		"publish",
		project,
		"--configuration",
		"Release",
		"--no-restore",
		"-maxcpucount:1",
		"-p:WasiSdkRoot=" .. wasi_root,
		"-p:ManagedRosObject=" .. objects.managed_ros,
		"-p:ManagedRawObject=" .. objects.managed_raw_ros,
		"-p:ManagedBridgeObject=" .. objects.roswasm_bridge,
		"-p:ManagedStackObject=" .. objects.stack_bounds,
		"-p:ManagedBuildTask=" .. task,
		"-p:ManagedRuntimeEhRoot=" .. eh.ManagedRuntimeEhRoot,
		"-p:ManagedEhSysroot=" .. eh.ManagedEhSysroot,
		"-p:ManagedMonoAotCompiler=" .. eh.ManagedMonoAotCompiler,
	}, { envs = environment, curdir = cache })
	local drivers = os.files(path.join(cache, "application/obj/**/driver-gen.c"))
	assert(#drivers == 1, "The actual AOT module registration source is missing or ambiguous")
	local registration = io.readfile(drivers[1])
	assert(
		registration:find("#define EE_MODE_LLVMONLY 1", 1, true),
		"The actual runtime mode permits interpreter fallback"
	)
	assert(
		registration:find("mono_aot_register_module", 1, true),
		"No actual AOT module was registered"
	)
	local artifacts = os.files(path.join(cache, "application/bin/**/AppBundle/*.wasm"))
	assert(#artifacts == 1, "The full-AOT build must produce exactly one complete Wasm command")
	local output = path.absolute(target:targetfile())
	os.mkdir(path.directory(output))
	os.cp(artifacts[1], output)
	local compiler_name = ({
		csharp = "Roslyn/bincore/csc.dll",
		fsharp = "FSharp/fsc.dll",
		vbnet = "Roslyn/bincore/vbc.dll",
	})[language]
	local source_compiler = path.join(dotnet_root, "sdk/9.0.100-preview.6.24328.19", compiler_name)
	assert(os.isfile(source_compiler), "The actual source-language compiler is missing")
	local actual_sdk_sources = {}
	for _, source in ipairs(sdk_sources) do
		table.insert(actual_sdk_sources, { path = path.relative(source, root), sha256 = hash.sha256(source) })
	end
	json.savefile(path.join(cache, "aot-receipt.json"), {
		language = language,
		backend = backend,
		actual_ros_binding_namespace = "Uwvm.RosWasm",
		actual_backend_constant = backend == "ros1" and "UWVM_ROS1" or "UWVM_ROS2",
		actual_managed_sdk_sources = actual_sdk_sources,
		public_native_bridge_source_sha256 = hash.sha256(path.join(root, native_sources.roswasm_bridge)),
		public_native_bridge_object_sha256 = hash.sha256(objects.roswasm_bridge),
		sdk = "9.0.100-preview.6.24328.19",
		dotnet_host_sha256 = hash.sha256(programs.dotnet),
		source_compiler_sha256 = hash.sha256(source_compiler),
		source_compiler = compiler_name,
		runtime = "9.0.0-preview.6.24327.7",
		mode = "LLVMOnly",
		native_eh_pair_sha256 = eh.ManagedNativeEhPairSha256,
		mono_aot_compiler_sha256 = hash.sha256(eh.ManagedMonoAotCompiler),
		runtime_registration = drivers[1],
		artifact_sha256 = hash.sha256(output),
		target_kind = kind,
		original_library_sdk_package = library_receipt,
		shared_export_contract = kind == "shared" and json.loadfile(
			path.join(cache, "managed-library-contract.json")
		) or nil,
		shared_runtime_callback_lookup = kind == "shared" and json.loadfile(
			path.join(path.directory(drivers[1]), "managed-callback-lookup.json")
		) or nil,
		shared_preload_executed = false,
		shared_dependency_artifacts = shared_dependencies,
		shared_import_mechanism = "Original WasmImportLinkage P/Invoke generation; scalar Core imports, separate module-owned heaps",
		shared_import_contract = kind == "binary" and json.loadfile(
			path.join(cache, "managed-import-contract.json")
		) or nil,
		static_archive_consumption = false,
		llvm23_clang_sha256 = hash.sha256(clang),
		runtime_executed_during_build = false,
	})
end
