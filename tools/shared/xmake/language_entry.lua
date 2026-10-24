-- SPDX-License-Identifier: Apache-2.0
-- @file language_entry.lua
-- @brief Route a standalone shared Wasm interpreter build to its own project.
-- @details The outer repository and SDK projects call this before ordinary
-- targets. Only an installed lib/language directory with its own xmake.lua
-- matches. This selects build source, not a native application runtime.
local sdk_root = path.absolute("../../..", os.scriptdir())
local library_root = path.normalize(path.join(sdk_root, "lib/language"))

-- @brief Include the language runtime selected by the caller's working directory.
-- @return True when the outer description must stop registering other targets.
function uwvm_language_repository_entry()
    local working = os.getenv("PWD")
    if not working or not path.is_absolute(working) then
        return false
    end
    working = path.normalize(working)
    if working:sub(1, #library_root + 1) ~= library_root .. "/" then
        return false
    end
    local description = path.join(working, "xmake.lua")
    if not os.isfile(description) then
        return false
    end
    includes(description)
    return true
end
