-- SPDX-License-Identifier: Apache-2.0
-- @file library.lua
-- @brief Link source-defined scalar functions through genuine shared engine cores.
-- @details Ordinary set_kind/add_deps select linkage. The source ABI is deliberately
-- bounded: apply(i32,i32) returns an exact i32; close releases the owned language
-- state. A packed u64 carries errno/result. No pointer or object crosses modules.

local families = { js = "js", typescript = "js", py = "python", lua = "lua" }
local versions = { js = "2026-06-04", py = "3.14.8", lua = "5.4.8" }

-- @brief Resolve one engine manifest member without accepting path traversal.
local function inside(root, relative)
	assert(
		type(relative) == "string"
			and not path.is_absolute(relative)
			and not relative:find("\\", 1, true),
		"Use a portable SDK-relative engine member"
	)
	for part in relative:gmatch("[^/]+") do
		assert(part ~= "." and part ~= "..", "Engine member escaped its SDK")
	end
	local result = path.join(root, relative)
	assert(os.isfile(result), "Install the qualified genuine core input: " .. relative)
	return result
end

-- @brief Encode the common namespace-qualified target identity in a C symbol.
-- @param name Exact Xmake fullname, also used as the shared preload identity.
local function prefix(name)
	return "uwvm_"
		.. (name:gsub(".", function(value)
			return string.format("%02x", value:byte())
		end))
end

-- @brief Select the single source-built core; verify every archive/header byte.
local function core(root, language, triple)
	-- TypeScript producers contain genuine emitted ECMAScript and share this core.
	if language == "typescript" then language = "js" end
	import("core.base.json")
	local filename = path.join(root, "lib/language", families[language], triple, "core/core.json")
	local value =
		assert(json.loadfile(filename), "Install the genuine common language core metadata")
	assert(
		value.format == "uwvm-genuine-language-core-v1"
			and value.language == language
			and value.version == versions[language]
			and value.target == triple
			and value.compiler == "LLVM 23.1.4",
		"The fixed engine/core ABI differs"
	)
	for _, row in ipairs(value.inputs) do
		assert(
			hash.sha256(inside(root, row.path)):lower() == row.sha256,
			"A genuine core input changed: " .. row.path
		)
	end
	inside(root, value.archive)
	return value
end

-- @brief Preserve one direct scalar dependency, including a transitive chain.
local function foreign(target, root)
	local artifacts =
		import("artifact_contract", { rootdir = path.join(root, "tools/xmake"), anonymous = true })
	local result
	for _, dependency in ipairs(artifacts.direct(target, true)) do
		assert(
			not result,
			"The scalar interpreter ABI currently supports one direct library dependency per target"
		)
		assert(
			dependency:kind() == "static" or dependency:kind() == "shared",
			"A scalar dependency must be a real library"
		)
		assert(
			families[dependency:values("ros.sdk.language")],
			"The scalar bridge currently consumes js/py/lua producers only"
		)
		result = dependency
	end
	return result
end

-- @brief Check ABI/profile limits without changing native kind or output paths.
function configure(target, root, request)
	assert(
		families[request.language]
			and (request.triple == "wasm32-wasip1" or request.triple == "wasm64-wasip1")
	)
	assert(
		request.language ~= "lua" or request.exception_profile == "eh",
		'The genuine Lua core requires set_wasm_exceptions("eh")'
	)
	-- on_load precedes Xmake's dependency graph. Only resolve native targets
	-- after the common after_load callback has published their descriptors.
	-- The build path performs the same complete dependency validation again.
	local dependency
	if target:data("ros.sdk.dependency_targets") ~= nil then
		dependency = foreign(target, root)
	end
	if request.backend ~= "wasi" then
		assert(
			request.backend == "ros2"
				and request.language == "js"
				and target:kind() == "shared"
				and request.triple == "wasm32-wasip1"
				and not dependency,
			"The first native interpreter library profile is one independent QuickJS ROS2 wasm32 shared producer"
		)
		for _, row in ipairs(request.dependency_targets or {}) do
			assert(
				row.usage == "build-only",
				"The native interpreter library profile has no linked dependency yet"
			)
		end
		target:data_set("ros.sdk.genuine_native_library_backend", "ros2")
	end
	for _, row in ipairs(request.dependency_targets or {}) do
		if row.usage ~= "build-only" then
			assert(
				families[row.language],
				"Only genuine interpreter scalar producers have a declared binding"
			)
			assert(
				row.language ~= "lua" or request.exception_profile == "eh",
				"A Lua producer requires the actual modern-EH closure"
			)
		end
	end
	target:set("toolchains", "ros.wasm.command")
	target:data_set("ros.sdk.scalar_dependency", dependency and dependency:fullname())
end

-- @brief Write exact source bytes as a data initializer; evaluate nothing here.
local function source_header(raw)
	assert(
		not raw:find("\0", 1, true) and #raw <= 4194304,
		"Source must be a bounded ordinary text entry without NUL"
	)
	local rows = { "static unsigned char const module_source[] = {" }
	for begin = 1, #raw, 24 do
		local values = {}
		for at = begin, math.min(begin + 23, #raw) do
			table.insert(values, tostring(raw:byte(at)))
		end
		table.insert(rows, "    " .. table.concat(values, ", ") .. ",")
	end
	table.insert(rows, "    0\n};\n")
	return table.concat(rows, "\n")
end

-- @brief Compile only marshalling glue, preserving actual guest source evaluation.
function build(target, root, request)
	import("core.base.json")
	local artifacts =
		import("artifact_contract", { rootdir = path.join(root, "tools/xmake"), anonymous = true })
	local compiler =
		import("cfamily", { rootdir = path.join(root, "tools/xmake"), anonymous = true })
	local selected = compiler.selection(root, request.triple, request.exception_profile)
	local programs = compiler.tools(root)
	local own_core = core(root, request.language, request.triple)
	local work = path.join(
		path.absolute(target:scriptdir()),
		".uwvm-ros/genuine",
		artifacts.identity(target)
	)
	local temporary = path.join(work, "tmp")
	os.mkdir(temporary)
	local commands = {}
	local function run(program, arguments, options)
		table.insert(commands, { program = program, arguments = arguments })
		local selected_options = options or {}
		selected_options.envs = { TMPDIR = temporary }
		os.vrunv(program, arguments, selected_options)
	end
	local language = request.language
	local family = families[language]
	local cxx = language == "lua"
	local common = {
		"--target=" .. request.triple,
		"--sysroot=" .. path.join(root, selected.sysroot),
		"-resource-dir=" .. path.join(root, selected.resource_dir),
		"-isystem",
		path.join(root, selected.include_dir),
		"-B" .. path.join(root, selected.lib_dir),
		"-L" .. path.join(root, selected.lib_dir),
		"-no-canonical-prefixes",
		"-fintegrated-cc1",
		"-O2",
		"-g0",
		"-ffile-prefix-map=" .. root .. "=/sdk",
		"-fmacro-prefix-map=" .. root .. "=/sdk",
		"-ffile-prefix-map=" .. path.absolute(target:scriptdir()) .. "=/application",
		"-fmacro-prefix-map=" .. path.absolute(target:scriptdir()) .. "=/application",
	}
	local compiling = table.join(common, { cxx and "-std=c++20" or "-std=c17", "-I" .. work })
	for _, directory in ipairs(own_core.include_roots) do
		table.insert(compiling, "-I" .. path.join(root, directory))
	end
	local native_backend = target:data("ros.sdk.genuine_native_library_backend")
	if native_backend then
		local folder = path.join(root, "src/language/js/library/native", native_backend)
		local manifest = assert(json.loadfile(path.join(folder, "generation.json")))
		assert(
			manifest.backend == native_backend and manifest.abi_function_count == 43,
			"Use the one complete source-generated ROS2 dispatcher"
		)
		assert(
			hash.sha256(path.join(root, "share/abi/abi-v1.json")):lower()
				== manifest.abi_descriptor_sha256,
			"Review a changed complete ROS ABI before compiling its interpreter bridge"
		)
		for _, member in ipairs(manifest.inputs) do
			assert(
				hash.sha256(inside(root, member.path)):lower() == member.sha256,
				"The maintained native bridge input changed: " .. member.path
			)
		end
		table.join2(compiling, {
			"-DUWVM_LIBRARY_NATIVE_ROS2=1",
			"-ffunction-sections",
			"-fdata-sections",
			"-I" .. path.join(root, "src/language/js"),
			"-I" .. path.join(root, "src/language/js/support"),
			"-I" .. folder,
		})
	end
	for _, directory in
		ipairs(
			table.join(
				table.wrap(target:get("includedirs")),
				artifacts.inherited(target, "includedirs")
			)
		)
	do
		table.insert(compiling, "-I" .. path.absolute(directory))
	end
	for _, definition in
		ipairs(
			table.join(table.wrap(target:get("defines")), artifacts.inherited(target, "defines"))
		)
	do
		table.insert(compiling, "-D" .. definition)
	end
	local feature_flags = {
		["bulk-memory"] = "-mbulk-memory",
		["reference-types"] = "-mreference-types",
		["sign-extension"] = "-msign-ext",
	}
	for _, feature in ipairs(request.features) do
		if feature == "memory64" or feature == "table64" then
			assert(selected[feature] == true, "The exact core target lacks " .. feature)
		elseif feature == "exceptions" then
			assert(request.exception_profile == "eh", "exceptions requires the modern-EH closure")
		else
			table.insert(
				compiling,
				assert(feature_flags[feature], "Unsupported scalar-library Core feature")
			)
		end
	end
	if cxx then
		table.join2(compiling, selected.cxxflags)
	end
	table.join2(compiling, own_core.compile_flags or {})
	for _, relative in ipairs(own_core.forced_includes or {}) do
		table.join2(compiling, { "-include", inside(root, relative) })
	end
	table.join2(compiling, table.wrap(target:get("cxflags")))
	table.join2(compiling, table.wrap(target:get(cxx and "cxxflags" or "cflags")))
	local own_prefix = prefix(target:fullname())
	table.join2(compiling, {
		"-Duwvm_module_apply=" .. own_prefix .. "_apply",
		"-Duwvm_module_close=" .. own_prefix .. "_close",
		"-Duwvm_module_execute=" .. own_prefix .. "_execute",
	})
	local entry = path.absolute(request.sources[1])
	io.writefile(
		path.join(work, "module_source.h"),
		source_header(assert(io.readfile(entry, { encoding = "binary" })))
	)
	local dependency = foreign(target, root)
	if dependency then
		local other = prefix(dependency:fullname())
		local declaration =
			'#pragma once\n#include <stdint.h>\n#ifdef __cplusplus\nextern "C" {\n#endif\n'
		if dependency:kind() == "static" then
			declaration = declaration
				.. 'uint64_t foreign_apply(int32_t, int32_t) __asm__("'
				.. other
				.. '_apply");\n'
				.. 'uint32_t foreign_close(void) __asm__("'
				.. other
				.. '_close");\n'
		else
			local module = string.format("%q", dependency:fullname())
			declaration = declaration
				.. "__attribute__((import_module("
				.. module
				.. '), import_name("'
				.. other
				.. '_apply"))) uint64_t foreign_apply(int32_t, int32_t);\n'
				.. "__attribute__((import_module("
				.. module
				.. '), import_name("'
				.. other
				.. '_close"))) uint32_t foreign_close(void);\n'
		end
		-- The common start section owns real reactor initialization. This hook
		-- remains an ordinary source binding and never calls _initialize again.
		declaration = declaration
			.. "static inline void foreign_initialize(void) {}\n#ifdef __cplusplus\n}\n#endif\n"
		io.writefile(path.join(work, "foreign_binding.h"), declaration)
		table.insert(compiling, "-DUWVM_CONSUMER_HOOKS=1")
	end
	local source =
		path.join(root, "src/language", family, "library", cxx and "module.cpp" or "module.c")
	local object = path.join(work, "module.o")
	run(programs[cxx and "cxx" or "cc"], table.join(compiling, { "-c", source, "-o", object }))
	local objects = { object }
	if native_backend then
		local native_object = path.join(work, "native.o")
		run(
			programs.cc,
			table.join(compiling, {
				"-c",
				path.join(root, "src/language/js/library/native.c"),
				"-o",
				native_object,
			})
		)
		table.insert(objects, native_object)
	end
	if language == "py" then
		local manager = path.join(work, "manager.o")
		run(
			programs.cc,
			table.join(
				compiling,
				{
					"-c",
					path.join(root, "src/language/python/library/library_manager.c"),
					"-o",
					manager,
				}
			)
		)
		table.insert(objects, manager)
	end
	local output = path.absolute(target:targetfile())
	os.mkdir(path.directory(output))
	if target:kind() == "static" then
		local mri = path.join(work, "archive.mri")
		local body = "CREATE " .. output .. "\n"
		for _, item in ipairs(objects) do
			body = body .. "ADDMOD " .. item .. "\n"
		end
		body = body .. "ADDLIB " .. inside(root, own_core.archive) .. "\nSAVE\nEND\n"
		io.writefile(mri, body)
		if os.isfile(output) then
			os.rm(output)
		end
		run(programs.ar, { "-M" }, { stdin = mri })
	else
		local linking = table.join(common, {
			"-fuse-ld=" .. programs.ld,
			"-Wl,--threads=1",
			"-Wl,--stack-first",
			"-Wl,-z,stack-size=8388608",
			"-Wl,--max-memory=268435456",
			"-Wl,--strip-all",
		}, objects)
		if target:kind() == "binary" then
			-- This entry merely evaluates the original command and reports its
			-- engine status; it contains no source-language result computation.
			table.insert(linking, path.join(root, "src/language/python/library/command.c"))
			table.insert(linking, "-Duwvm_module_execute=" .. own_prefix .. "_execute")
		else
			table.join2(linking, {
				"-mexec-model=reactor",
				"-Wl,--export=" .. own_prefix .. "_apply",
				"-Wl,--export=" .. own_prefix .. "_close",
			})
		end
		local extra = table.copy(own_core.link_libraries)
		for _, item in ipairs(artifacts.static_closure(target)) do
			table.insert(linking, path.absolute(item:targetfile()))
			local other_core = core(root, item:values("ros.sdk.language"), request.triple)
			table.join2(extra, other_core.link_libraries)
		end
		table.insert(linking, inside(root, own_core.archive))
		if request.exception_profile == "eh" then
			table.join2(linking, selected.ldflags)
			table.insert(linking, "-Wl,-mllvm,-wasm-use-legacy-eh=false")
		end
		for _, directory in
			ipairs(
				table.unique(
					table.join(
						table.wrap(target:get("linkdirs")),
						artifacts.inherited(target, "linkdirs")
					)
				)
			)
		do
			table.insert(linking, "-L" .. path.absolute(directory))
		end
		for _, name in
			ipairs(
				table.unique(
					table.join(
						table.wrap(target:get("links")),
						artifacts.inherited(target, "links")
					)
				)
			)
		do
			table.insert(
				linking,
				path.extension(name) == ".a" and path.absolute(name) or "-l" .. name
			)
		end
		table.join2(linking, table.unique(extra))
		table.join2(linking, table.wrap(target:get("ldflags")))
		table.join2(linking, { "-o", output })
		run(programs[request.exception_profile == "eh" and "cxx" or "cc"], linking)
		if target:kind() == "shared" then
			import("wasm_module", { rootdir = path.join(root, "tools/xmake"), anonymous = true }).initialize(
				output,
				"_initialize"
			)
		end
	end
	target:data_set("ros.sdk.build_command", commands)
	json.savefile(path.join(work, "source-abi.json"), {
		format = "uwvm-interpreter-scalar-abi-v1",
		target = target:fullname(),
		kind = target:kind(),
		language = language,
		triple = request.triple,
		exception_profile = request.exception_profile,
		source_sha256 = hash.sha256(entry):lower(),
		artifact_sha256 = hash.sha256(output):lower(),
		exports = { apply = own_prefix .. "_apply", close = own_prefix .. "_close" },
		dependency = dependency and dependency:fullname(),
		initialization_owner = "common Core start section",
		memory_contract = "Scalars only; each preload owns memory/table, static linkage shares memory and authority.",
		permissions = "manual deployment only",
		runtime_executed = false,
		native_ros_backend = native_backend,
		native_ros_scope = native_backend
				and "Raw ABI only; manual module policy; genuine source executes each operation"
			or nil,
	})
end
