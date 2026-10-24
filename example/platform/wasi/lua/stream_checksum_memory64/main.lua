--- @file main.lua
--- @brief Execute stream_checksum in the genuine lua language engine.
--- @details Standard streams only; no path, clock, random, network or ROS resource is opened.
--- Compute FNV-1a from original bytes using Lua 5.4 integer/bitwise semantics.
local function main()
    local high, low = 0x811c, 0x9dc5
    while true do
        local chunk, failure = io.stdin:read(256)
        if not chunk then
            if failure then
                return 5
            end
            break
        end
        for index = 1, #chunk do
            low = low ~ chunk:byte(index)
            local product = low * 403
            high = (high * 403 + low * 256 + (product >> 16)) & 65535
            low = product & 65535
        end
    end
    if not io.stdout:write(string.format("%04x%04x\n", high, low)) or not io.stdout:flush() then
        return 5
    end
    return 0
end
local ok, status = pcall(main)
os.exit(ok and status or 5, true)
