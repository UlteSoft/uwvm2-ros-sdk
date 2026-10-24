--- @file main.lua
--- @brief Execute complete ros1 publish_string inside the genuine Lua guest VM.
--- @details Lua owns every original record field, status and cleanup decision.
local native = require("ros/lua/native_command")
return native.report(native.run(1, "sample"))
