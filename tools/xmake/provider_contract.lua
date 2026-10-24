-- SPDX-License-Identifier: Apache-2.0
-- @file provider_contract.lua
-- @brief Validate platform metadata and exact guest ABI selections.
-- @details Schema validation executes no compiler and creates no ROS resources.
-- Supported target declarations identify requests, never execution qualification.

-- @brief Resolve a confined SDK-relative file from trusted provider metadata.
-- @param root Installed SDK root.
-- @param relative Forward slash path without traversal or control characters.
-- @return Absolute path inside root; malformed paths raise before import.
function inside(root, relative)
    assert(type(relative) == "string" and relative ~= "" and not path.is_absolute(relative),
           "Provider paths must be SDK relative")
    assert(not relative:find("\\", 1, true) and not relative:find("[%z\1-\31]"),
           "Provider paths must use normalized forward slash components")
    for part in relative:gmatch("[^/]+") do
        assert(part ~= "." and part ~= "..", "Provider paths cannot traverse directories")
    end
    return path.join(root, relative)
end

-- @brief Test membership in a provider's explicit array.
-- @param choices Array of scalar configuration choices.
-- @param value Exact requested value.
-- @return True only for a declared, equal choice.
function contains(choices, value)
    for _, choice in ipairs(choices or {}) do
        if choice == value then
            return true
        end
    end
    return false
end

-- @brief Validate one complete provider configuration without filling in authority.
-- @param target Current target, already assigned its exact triple.
-- @param root Installed SDK root.
-- @param schema Parsed uwvm-ros-provider-v1 manifest.
-- @return New context table consumed by the provider and shared language adapter.
function validate(target, root, schema)
    import("core.project.config")
    assert(schema.format == "uwvm-ros-provider-v1" and schema.api_version == 1,
           "Install a provider schema implementing uwvm-ros-provider-v1")
    local platform = target:values("ros.sdk.platform")
    assert(schema.id == platform or contains(schema.aliases, platform), "Provider schema identity mismatch")
    local backend = target:values("ros.sdk.backend")
    if not backend and (platform == "ros1" or platform == "ros2" or platform == "wasi") then
        backend = platform
    end
    assert(backend and schema.backends[backend], "Select one declared backend with set_ros1_version/set_ros2_version")
    assert((platform ~= "ros1" and platform ~= "ros2") or backend == platform,
           "The selected ROS backend conflicts with set_ros_platform")
    local distribution = target:values("ros.sdk.distribution")
    local backend_schema = schema.backends[backend]
    if backend ~= "wasi" then
        assert(distribution and contains(backend_schema.distributions, distribution),
               "Select an explicitly declared native ROS distribution")
    else
        assert(not distribution, "A WASI-only provider has no native ROS distribution")
    end
    local triple = target:values("ros.sdk.triple")
    assert(contains(schema.targets, triple), "The provider has no exact target route for " .. tostring(triple))
    local language = target:values("ros.sdk.language")
    assert(contains(schema.languages, language), "No provider binding for " .. tostring(language))
    -- Structured declarations retain dictionaries, singleton arrays and invalid keys.
    local options = target:get("values.ros.sdk.options") or {}
    assert(type(options) == "table", "Provider configuration must be a map")
    local checked = {}
    for key in pairs(options) do
        assert(schema.options and schema.options[key], "Unknown provider option: " .. tostring(key))
    end
    for key, descriptor in pairs(schema.options or {}) do
        local value = options[key]
        local declared = target:values("ros.sdk.option." .. key)
        assert(declared == nil or value == nil or declared == value, "Conflicting provider option: " .. key)
        if value == nil then value = declared end
        if value == nil then value = descriptor.default end
        assert(not descriptor.required or value ~= nil, "Missing required provider option: " .. key)
        if value ~= nil then
            assert(type(value) == "string" and contains(descriptor.values, value),
                   "Invalid provider option: " .. key .. "=" .. tostring(value))
            checked[key] = value
        end
    end
    local features = target:get("values.ros.sdk.features") or {}
    assert(type(features) == "table", "Wasm Core features must be an array")
    local seen = {}
    for index, feature in ipairs(features) do
        assert(type(feature) == "string" and contains(schema.features, feature) and not seen[feature],
               "Undeclared or repeated Wasm Core feature: " .. tostring(feature))
        seen[feature] = true
    end
    local feature_count = 0
    for key in pairs(features) do
        feature_count = feature_count + 1
        assert(type(key) == "number" and key >= 1 and key <= #features and key % 1 == 0,
               "Wasm Core features must form a dense array")
    end
    assert(feature_count == #features, "Wasm Core features must form a dense array")
    local profile = target:values("ros.sdk.exception_profile") or config.get("ros-exceptions") or "noeh"
    assert(profile == "noeh" or profile == "eh", "Unknown target exception profile")
    local entry = target:values("ros.sdk.entry") or "command"
    assert(entry == "command" or entry == "freestanding", "Select command or freestanding startup")
    assert(not (seen.memory64 or seen.table64) or target:values("ros.sdk.address_bits") == 64,
           "memory64/table64 require an explicit wasm64 target")
    assert(not seen.exceptions or profile == "eh", "exceptions require the explicit eh target profile")
    local scenario = target:values("ros.sdk.scenario") or path.filename(path.absolute(target:scriptdir()))
    assert(not schema.scenarios_restricted or not schema.scenarios or schema.scenarios[scenario],
           "Unknown provider scenario: " .. scenario)
    target:set("values", "ros.sdk.backend", backend)
    target:set("values", "ros.sdk.distribution", distribution)
    target:set("values", "ros.sdk.exception_profile", profile)
    return {
        api_version = 1, root = root, platform = platform, provider = schema.id,
        kind = target:kind() or "binary",
        dependency_targets = (target.data and target:data("ros.sdk.dependency_targets")) or {},
        public_include_roots = (target.data and target:data("ros.sdk.public_include_roots")) or {},
        links = table.wrap(target:get("links")), linkdirs = table.wrap(target:get("linkdirs")),
        language = language, backend = backend, distribution = distribution,
        triple = triple, address_bits = target:values("ros.sdk.address_bits"),
        wasi_preview = target:values("ros.sdk.wasi_preview"),
        threads = target:values("ros.sdk.threads"), exception_profile = profile, entry = entry,
        features = features, options = checked, scenario = scenario,
        include_roots = {path.join(root, "include"), path.join(root, "include/platform")},
        sources = target:sourcefiles(), artifact = path.absolute(target:targetfile())
    }
end
