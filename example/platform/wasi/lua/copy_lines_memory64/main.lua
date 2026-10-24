--- @file main.lua
--- @brief Execute copy_lines in the genuine lua language engine.
--- @details Standard streams only; no path, clock, random, network or ROS resource is opened.
--- Copy bounded binary chunks using the real Lua stream implementation.
local function main()
    while true do
        local chunk, failure = io.stdin:read(256)
        if not chunk then
            if failure then
                return 5
            end
            break
        end
        if not io.stdout:write(chunk) then
            return 5
        end
    end
    return io.stdout:flush() and 0 or 5
end
local ok, status = pcall(main)
os.exit(ok and status or 5, true)
