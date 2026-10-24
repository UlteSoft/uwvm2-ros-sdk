--- @brief Compute in the actual Lua instance with its ordinary captured state.
local calls = 0
function apply(a, b)
    if a == -1 then error("controlled language exception") end
    if a == -2 then return "invalid return type" end
    calls = calls + 1
    return a * 3 + b + calls
end
