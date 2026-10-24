-- @file provider.lua
-- @brief Package original modules into one shared genuine CRuby, Zend or R command.
-- @details This producer only copies original source bytes into the checked empty
-- slot. The selected guest VM parses and executes every source-language operation.
-- Platform providers supply an ordered public module graph; this file contains no
-- vendor schemas, compiler fallback, ROS installation or permission defaults.

-- @brief Describe the common lifecycle without claiming runtime qualification.
-- @return Exact configuration capabilities; shared needs its installed real reactor.
function describe()
	return {
		api_version = 1,
		languages = { "ruby" },
		targets = { "wasm32-wasip1" },
		exception_profiles = { "noeh" },
		features = {},
		artifact_kinds = {
			shared = {
				languages = { "ruby" },
				targets = { "wasm32-wasip1" },
				exception_profiles = { "noeh" },
				dependencies = {},
			},
		},
	}
end

-- @brief Require the common version-one context and retain its exact target.
-- @param target Ordinary Xmake target.
-- @param request Public adapter context.
-- @return Exact triple; legacy positional target strings are rejected.
function _triple(target, request)
	assert(
		type(request) == "table" and request.api_version == 1,
		"Use the public version-one language adapter context"
	)
	assert(
		request.language == target:values("ros.sdk.language"),
		"Adapter request language mismatch"
	)
	assert(request.kind == target:kind(), "Adapter request artifact kind mismatch")
	assert(request.backend == target:values("ros.sdk.backend"), "Adapter request backend mismatch")
	assert(request.triple == target:values("ros.sdk.triple"), "Adapter request target mismatch")
	return assert(request.triple, "The common dispatcher must resolve the exact target")
end

-- @brief Resolve an installed source path without traversal or external input.
-- @param root Immutable SDK root.
-- @param relative Public SDK-relative source path.
-- @return Existing normalized file inside root; malformed paths raise an error.
function _source_path(root, relative)
	assert(
		type(relative) == "string" and not path.is_absolute(relative),
		"Use a public SDK-relative module path"
	)
	assert(not relative:find("\\", 1, true), "Module paths use forward slashes")
	for part in relative:gmatch("[^/]+") do
		assert(part ~= "." and part ~= "..", "A source module must stay inside the SDK")
	end
	local filename = path.join(root, relative)
	assert(os.isfile(filename), "Install the required public source module: " .. relative)
	return filename
end

-- @brief Encode a checked finite u32 as four exact little-endian bytes.
-- @param value Integral source byte count.
-- @return Four binary bytes.
function _word(value)
	assert(
		value >= 0 and value <= 4294967295 and value == math.floor(value),
		"Exact u32 extent required"
	)
	return string.char(
		value % 256,
		math.floor(value / 256) % 256,
		math.floor(value / 65536) % 256,
		math.floor(value / 16777216) % 256
	)
end

-- @brief Encode original bytes compactly without evaluating source in the builder.
-- @param source Arbitrary source bytes.
-- @return RFC 4648 Base64 with exact padding.
function _base64(source)
	local alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	local result = {}
	for index = 1, #source, 3 do
		local a, b, c = source:byte(index, index + 2)
		b, c = b or 0, c or 0
		local value = a * 65536 + b * 256 + c
		for shift = 3, 0, -1 do
			local digit = math.floor(value / (64 ^ shift)) % 64
			result[#result + 1] = alphabet:sub(digit + 1, digit + 1)
		end
		if index + 1 > #source then
			result[#result - 1] = "="
		end
		if index + 2 > #source then
			result[#result] = "="
		end
	end
	return table.concat(result)
end

-- @brief Validate the real language, complete application and requested target.
-- @param target Xmake target with one genuine source file and an explicit backend.
-- @param root Installed shared SDK.
-- @param request Validated public v1 context; no narrowing occurs.
-- @details memory64 remains a separate missing runtime port. A request is refused
-- before creating an output and cannot silently select the memory32 VM.
function configure(target, root, request)
	import("core.project.config")
	local language = target:values("ros.sdk.language")
	assert(
		language == "ruby" or language == "php" or language == "r",
		"Select genuine CRuby, PHP/Zend or GNU R source"
	)
	local kind = target:kind()
	assert(
		kind == "binary" or kind == "shared" and language ~= "r",
		"This genuine adapter needs binary or shared; static archives and GNU R libraries remain unqualified"
	)
	local triple = _triple(target, request)
	assert(
		triple == "wasm32-wasip1",
		"A separate genuine memory64 interpreter port is required for this target"
	)
	local profile = target:values("ros.sdk.exception_profile")
		or config.get("ros-exceptions")
		or "noeh"
	assert(profile == "noeh", "This genuine Asyncify engine requires its exact noeh target closure")
	local features = target:get("values.ros.sdk.features")
	if features == nil then
		features = {}
	end
	assert(type(features) == "table", "Requested Core features must be an explicit array")
	for _ in pairs(features) do
		raise(
			"Additional requested Core features need a separately qualified genuine engine profile"
		)
	end
	local backend = target:values("ros.sdk.backend")
	assert(backend == "ros1" or backend == "ros2", "Select the original ROS import namespace")
	local sources = target:sourcefiles()
	local extension = language == "ruby" and ".rb" or language == "php" and ".php" or ".R"
	assert(
		#sources == 1
			and (
				path.extension(sources[1]) == extension
				or language == "r" and path.extension(sources[1]) == ".r"
			),
		"Declare one actual-language application source"
	)
	assert(
		type(target:get("values.ros.sdk.modules")) == "table",
		"The platform must supply its ordered public module graph"
	)
	-- The common artifact contract owns filenames, directories and dependencies.
	-- This genuine engine adapter validates source/ABI choices only.
end

-- @brief Assemble source modules and a real entry into the immutable engine slot.
-- @param target Validated Xmake target.
-- @param root SDK root shared by all vendors.
-- @param request Validated public v1 context with the exact target.
-- @details The full reserved region, guard, engine digest, version and backend
-- must agree. Only the slot's length/source bytes change; code/imports stay intact.
-- Failed validation leaves an existing output untouched. The receipt stays in the
-- build cache, so the only deployment output is the application .wasm.
function build(target, root, request)
	configure(target, root, request)
	import("core.base.json")
	local language = target:values("ros.sdk.language")
	local backend = target:values("ros.sdk.backend")
	local shared = target:kind() == "shared"
	local folder = path.join(root, "lib/language", language, backend, shared and "module" or "")
	local runtime = path.join(
		folder,
		shared and "module.wasm"
			or (language == "ruby" and "cruby.wasm" or language == "php" and "php.wasm" or "R.wasm")
	)
	assert(
		os.isfile(runtime),
		language == "r"
				and "The genuine GNU R source port still needs Fortran90, embedded base startup and execution qualification; see share/language/r/port-status.json"
			or (
				shared
					and "Install the common genuine interpreter reactor template for this exact backend"
				or "Install the one shared genuine interpreter artifact"
			)
	)
	local metadata = assert(
		json.loadfile(path.join(folder, "runtime.json")),
		"Install the shared genuine engine metadata"
	)
	local version = language == "ruby" and "3.4.7" or language == "php" and "8.4.13" or "4.5.1"
	assert(
		metadata.format
				== (shared and "uwvm-real-interpreter-module-v1" or "uwvm-real-interpreter-v1")
			and metadata.language == language
			and metadata.version == version,
		"The engine must retain the shared pinned implementation and version"
	)
	if shared then
		assert(
			metadata.entry_profile == "scalar-i32-v1"
				and metadata.module_source_sha256 == hash.sha256(
					path.join(root, "src/language", language, "module.c")
				):lower()
				and metadata.embedding_source_sha256 == hash.sha256(
					path.join(root, "src/language", language, "embed.c")
				):lower()
				and metadata.public_header_sha256
					== hash.sha256(path.join(root, "include/language/common/module.h")):lower(),
			"The installed reactor must match the maintained genuine VM entry and typed public header"
		)
	end
	assert(
		metadata.target == "wasm32-wasip1" and metadata.ros_backend == backend,
		"Engine target/backend mismatch"
	)
	local descriptor_path = path.join(root, "share/abi/abi-v1.json")
	local descriptor =
		assert(json.loadfile(descriptor_path), "Install the one canonical ROS ABI manifest")
	assert(
		metadata.abi_profile == "complete-ros-v1"
			and metadata.canonical_abi_sha256 == hash.sha256(descriptor_path):lower()
			and metadata.ros_import_count
				== descriptor.modules["uwvm_" .. backend .. "_v1"].function_count,
		"Install a cold-built complete ROS ABI engine; an old eight-import engine is not a complete SDK"
	)
	assert(
		hash.sha256(runtime):lower() == metadata.sha256:lower(),
		"The selected genuine VM differs from its manifest"
	)
	local raw = assert(io.readfile(runtime, { encoding = "binary" }))
	assert(raw:sub(1, 8) == "\0asm\1\0\0\0", "Expected a genuine core Wasm artifact")
	local marker, capacity = "UWVM-SRC-APP-v1!", 4194304
	local first, last = raw:find(marker, 1, true)
	assert(
		first and not raw:find(marker, last + 1, true),
		"Exactly one checked source slot is required"
	)
	local guard = last + 5 + capacity
	assert(
		raw:sub(last + 1, guard - 1) == string.rep("\0", 4 + capacity) and raw:byte(guard) == 167,
		"The full source slot must be empty and guarded"
	)
	local pieces, inputs, seen = {}, {}, {}
	local function append(filename, name, public)
		assert(
			type(name) == "string"
				and name:match("^[a-zA-Z0-9_/%.-]+$")
				and not name:find("..", 1, true),
			"Use a normalized public module name"
		)
		assert(not seen[name], "Duplicate source module")
		seen[name] = true
		local bytes = assert(io.readfile(filename, { encoding = "binary" }))
		inputs[#inputs + 1] = {
			path = public or "application",
			sha256 = hash.sha256(filename):lower(),
			bytes = #bytes,
		}
		if language == "ruby" then
			pieces[#pieces + 1] = '$LOADED_FEATURES << "'
				.. name
				.. '.rb"\n'
				.. 'eval(["'
				.. _base64(bytes)
				.. '"].join.unpack1("m0").force_encoding(Encoding::UTF_8), '
				.. 'TOPLEVEL_BINDING, "/__uwvm_source__/'
				.. name
				.. '.rb", 1)\n'
		elseif language == "php" then
			bytes = bytes:gsub("^<%?php", "", 1)
			pieces[#pieces + 1] = 'eval(base64_decode("' .. _base64(bytes) .. '"));\n'
		else
			assert(not bytes:find("\0", 1, true), "GNU R source must contain no NUL byte")
			pieces[#pieces + 1] = "\n# public source module: " .. name .. "\n" .. bytes .. "\n"
		end
	end
	for _, module in ipairs(target:get("values.ros.sdk.modules")) do
		assert(
			type(module) == "table" and type(module.path) == "string",
			"Every module needs its exact public path"
		)
		append(_source_path(root, module.path), module.name, module.path)
	end
	append(path.absolute(target:sourcefiles()[1]), "application")
	local source = table.concat(pieces)
	assert(
		#source <= capacity,
		"The complete original source closure exceeds the engine's 4 MiB slot"
	)
	local packed = raw:sub(1, last)
		.. _word(#source)
		.. source
		.. string.rep("\0", capacity - #source)
		.. raw:sub(guard)
	assert(#packed == #raw, "Packing must preserve all Wasm section extents")
	local output = path.absolute(target:targetfile())
	os.mkdir(path.directory(output))
	io.writefile(output, packed, { encoding = "binary" })
	local cache = path.join(path.absolute(target:scriptdir()), ".uwvm-ros/interpreter")
	os.mkdir(cache)
	json.savefile(path.join(cache, "build-receipt.json"), {
		format = shared and "uwvm-shared-interpreter-module-v1"
			or "uwvm-shared-interpreter-application-v1",
		status = shared and "PACKED_SHARED_REQUIRES_EXECUTION" or "PACKED_REQUIRES_EXECUTION",
		artifact_kind = target:kind(),
		entry_profile = shared and "scalar-i32-v1" or "command",
		language = language,
		version = version,
		backend = backend,
		target = "wasm32-wasip1",
		engine_sha256 = metadata.sha256,
		source_bytes = #source,
		source_capacity = capacity,
		artifact_sha256 = hash.sha256(output):lower(),
		inputs = inputs,
	})
end
