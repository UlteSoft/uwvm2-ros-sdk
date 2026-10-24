-- @file runtime_eh.lua
-- @brief Bind one checksum-indexed native-EH AOT compiler/runtime pair.
-- @details Matching source versions alone do not establish matching immutable
-- unwind policy. A producer manifest must index the actual compiler and complete
-- target libraries and record both preprocessing checks. Application builds
-- retain that input identity; guest qualification is a separate test result.

-- @brief Resolve a manifest member below one explicit read-only artifact root.
-- @param root Absolute selected compiler, runtime, or target-sysroot directory.
-- @param relative Normalized manifest member; parent traversal is rejected.
-- @return Absolute member path; missing or malformed paths fail the build.
function _member(root, relative)
	assert(
		type(relative) == "string" and not path.is_absolute(relative),
		"Use relative pair members"
	)
	assert(not relative:find("\\", 1, true), "Use normalized forward-slash members")
	for part in relative:gmatch("[^/]+") do
		assert(part ~= "." and part ~= "..", "Invalid pair member")
	end
	local file = path.join(root, relative)
	assert(os.isfile(file), "The native-EH pair is incomplete: " .. file)
	return file
end

-- @brief Select the verified compiler and every native library without fallback.
-- @param root Borrowed installed SDK root.
-- @param cache This target's exclusively owned intermediate directory.
-- @param environment Explicit mutable native-tool environment for this target.
-- @return Exact MSBuild properties and source/artifact identity of the pair.
-- @details Explicit environment selections are development inputs. Their hashes
-- are recorded but do not confer publication qualification. Installed defaults
-- must refer to the source-locked common manifest. No old emulate-unwind AOT
-- producer is selected when the native runtime or its matching compiler is absent.
function prepare(root, cache, environment)
	import("core.base.json")
	local manifest = os.getenv("UWVM_ROS_MONO_NATIVE_EH_MANIFEST")
		or path.join(root, "share/language/dotnet/native-eh-pair.json")
	local runtime = os.getenv("UWVM_ROS_MONO_NATIVE_EH_ROOT")
	local compiler_root = os.getenv("UWVM_ROS_MONO_NATIVE_EH_COMPILER_ROOT")
	local sysroot = os.getenv("UWVM_ROS_MANAGED_EH_ROOT")
	assert(os.isfile(manifest), "Install or explicitly select the matching native-EH pair manifest")
	for _, directory in ipairs({ runtime, compiler_root, sysroot }) do
		assert(
			directory and path.is_absolute(directory) and os.isdir(directory),
			"Select absolute native-EH roots"
		)
	end
	local pair = json.loadfile(manifest)
	assert(pair.format == "uwvm-mono-native-eh-pair-v1", "Unknown native-EH pair format")
	assert(
		pair.runtime_source_commit == "573461dc897731c11d6166574b77a8c3aabba220",
		"Runtime revision mismatch"
	)
	assert(
		pair.compiler_source_commit == pair.runtime_source_commit,
		"AOT and target source revisions differ"
	)
	assert(
		pair.compiler_llvm_sdk == "16.0.5-alpha.1.24204.1",
		"The original Mono LLVM development SDK differs"
	)
	assert(
		pair.target == "wasm32-wasip1" and pair.exception_encoding == "standard",
		"Unexpected pair target ABI"
	)
	assert(
		pair.runtime_emulate_unwind == false and pair.compiler_emulate_unwind == false,
		"Unwind policy mismatch"
	)
	assert(pair.offsets_sha256 and #pair.offsets_sha256 == 64, "Actual target offsets are required")
	local selected = { runtime = runtime, compiler = compiler_root, sysroot = sysroot }
	local identities = {}
	local indexed = {}
	for _, entry in ipairs(pair.files) do
		local directory = assert(selected[entry.component], "Unknown native-EH pair component")
		local file = _member(directory, entry.path)
		assert(
			hash.sha256(file):lower() == entry.sha256:lower(),
			"Native-EH pair bytes changed: " .. file
		)
		table.insert(
			identities,
			{ component = entry.component, path = entry.path, sha256 = entry.sha256 }
		)
		local key = entry.component .. ":" .. entry.path
		assert(not indexed[key], "Duplicate native-EH pair member")
		indexed[key] = true
	end
	assert(indexed["compiler:bin/mono-aot-cross"], "The matching AOT executable is not indexed")
	for _, name in ipairs({
		"libmonosgen-2.0.a",
		"libmono-ee-interp.a",
		"libmono-icall-table.a",
		"libmono-wasm-nosimd.a",
		"libmono-wasm-eh-wasm.a",
	}) do
		assert(
			indexed["runtime:lib/" .. name],
			"The complete target runtime is not indexed: " .. name
		)
	end
	for _, name in ipairs({ "libc++.a", "libc++abi.a", "libunwind.a" }) do
		assert(
			indexed["sysroot:lib/wasm32-wasip1/" .. name],
			"The actual target ABI is not indexed: " .. name
		)
	end
	local manifest_sha = hash.sha256(manifest):lower()
	local receipt = path.join(cache, "runtime-eh-inputs.json")
	if os.isfile(receipt) and json.loadfile(receipt).manifest_sha256 ~= manifest_sha then
		for _, relative in ipairs({ "application/obj", "application/bin", "sdk/obj", "sdk/bin" }) do
			local obsolete = path.join(cache, relative)
			if os.isdir(obsolete) then
				os.rm(obsolete)
			end
		end
	end
	environment.LD_LIBRARY_PATH = path.join(compiler_root, "bin")
		.. ":"
		.. path.join(compiler_root, "lib")
		.. ":"
		.. environment.LD_LIBRARY_PATH
	json.savefile(receipt, {
		format = "uwvm-mono-native-eh-build-inputs-v2",
		manifest_sha256 = manifest_sha,
		files = identities,
		source_commit = pair.runtime_source_commit,
		producer_claims = pair.producer_checks,
		guest_qualification_implied = false,
		generated_code_rewritten = false,
		managed_validation_replaced = false,
	})
	return {
		ManagedRuntimeEhRoot = runtime,
		ManagedEhSysroot = sysroot,
		ManagedMonoAotCompiler = path.join(compiler_root, "bin/mono-aot-cross"),
		ManagedNativeEhPairSha256 = manifest_sha,
	}
end
