-- @file xmake.lua
-- @brief Build the three independent ABB observation commands in this directory.
-- @details Each child exposes the actual language compiler and a production
-- uwvm2/ROS run callback. Configure an explicit deployment before xmake run.
includes("read_speed/xmake.lua", "read_io/xmake.lua", "system_state/xmake.lua")
