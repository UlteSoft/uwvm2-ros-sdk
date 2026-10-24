-- @file actions.lua
-- @brief Describe clearpath source modules for the platform-neutral native compiler.
-- @details This file contains vendor-owned module locations. It performs no
-- compilation, package acquisition, native registration or permission change.

-- @brief Describe the actual modules of one complete source-language profile.
-- @param language Exact public source-language identifier.
-- @param profile Validated immutable catalog selector.
-- @param backend Selected original ROS import family.
-- @param architecture Validated wasm32 or wasm64 target from the common request.
-- @return Explicit common-compiler action; no source body is synthesized.
function describe(language, profile, backend, architecture)
    local vendor = "clearpath"
    local base = "include/platform/" .. vendor
    local records = base .. "/" .. language .. "/" .. profile
    local action = { format = "uwvm-native-action-v1", language = language }
    local macros = { "UWVM_NATIVE_POINTER_BITS=" .. (architecture == "wasm64" and "64" or "32") }
    if backend == "ros1" then
        table.insert(macros, "UWVM_NATIVE_ROS1")
    else
        table.insert(macros, "UWVM_NATIVE_ROS2")
    end
    if language == "nim" then
        table.insert(macros, "UWVM_NATIVE_NIM")
    end
    if language == "haskell" then
        table.insert(macros, "UWVM_NATIVE_HASKELL")
    end
    if
        language == "zig"
        or language == "d"
        or language == "nim"
        or language == "odin"
        or language == "swift"
        or language == "haskell"
    then
        action.c_sources = { { source = "src/language/native/abi.c", object = "abi.o", defines = macros } }
    end
    if language == "zig" then
        action.zig = {
            imports = { vendor, "native", "native_wire" },
            modules = {
                { name = vendor, source = records .. "/api.zig", imports = { "records", "native", "native_wire" } },
                { name = "records", source = records .. "/records.zig", imports = { "native_wire" } },
                { name = "native", source = "src/language/native/zig/observation.zig", imports = { "native_wire" } },
                { name = "native_wire", source = "src/language/native/zig/wire.zig", imports = {} },
            },
        }
    elseif language == "d" then
        action.d = {
            import_dirs = { "src/language" },
            modules = {
                "native.d.wire",
                "native.d.observation",
                vendor .. ".d." .. profile .. ".records",
                vendor .. ".d." .. profile .. ".observation",
            },
        }
    elseif language == "nim" then
        action.nim = { import_dirs = { "src/language" } }
    elseif language == "odin" then
        action.odin = {
            collections = {
                { name = vendor, directory = base },
                { name = "native", directory = "src/language/native" },
            },
        }
    elseif language == "swift" then
        action.swift = {
            module_name = "ClearpathCommand",
            bridging_header = "include/language/native/abi.h",
            sources = {
                "src/language/native/swift/Wire.swift",
                "src/language/native/swift/CoreObservation.swift",
                records .. "/Records.swift",
                records .. "/Observation.swift",
            },
        }
    elseif language == "haskell" then
        action.haskell = { import_dirs = { "src/language/native/haskell", base .. "/haskell" } }
    elseif language == "rs" then
        action.rust = {
            cfg = { 'feature="' .. backend .. '"', 'feature="alloc"' },
            imports = { "roswasm", vendor },
            crates = {
                { name = "roswasm", source = "include/platform/ros/rs/src/lib.rs", dependencies = {} },
                { name = vendor, source = records .. "/lib.rs", dependencies = { "roswasm" } },
            },
        }
    elseif language == "go" or language == "tinygo" then
        action.go = { modules = { "include/platform/ros/" .. language, records }, tags = { backend } }
    elseif language == "moonbit" then
        action.moonbit = {
            packages = {
                {
                    name = "uwvm/ros/wire",
                    alias = "wire",
                    directory = "include/platform/ros/moonbit/wire",
                    dependencies = { "utf8" },
                },
                {
                    name = "uwvm/" .. vendor .. "/" .. profile,
                    alias = vendor,
                    directory = records,
                    dependencies = { "wire", "utf8", "float" },
                },
            },
            entry_dependencies = { vendor },
        }
    elseif language ~= "as" then
        error("No declared native module action for this source-language profile: " .. language)
    end
    return action
end
