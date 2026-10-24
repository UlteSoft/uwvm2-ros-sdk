--- @file main.lua
--- @brief Execute sum_arguments in the genuine lua language engine.
--- @details Standard streams only; no path, clock, random, network or ROS resource is opened.
--- Sum bounded signed 32-bit decimals, preserving malformed-input status 22.
local function main()
    if #arg > 1024 then
        return 22
    end
    local total = 0
    for index = 1, #arg do
        local text = arg[index]
        if #text > 11 or not text:match("^[+-]?%d+$") then
            return 22
        end
        local value = tonumber(text, 10)
        if not value or value < -2147483648 or value > 2147483647 then
            return 22
        end
        total = total + value
        if total < -2147483648 or total > 2147483647 then
            return 22
        end
    end
    if not io.stdout:write(string.format("%d\n", total)) or not io.stdout:flush() then
        return 5
    end
    return 0
end
local ok, status = pcall(main)
os.exit(ok and status or 5, true)
