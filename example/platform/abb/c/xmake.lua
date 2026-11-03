-- @file xmake.lua
-- @brief Build ABB observation commands and the explicit ROS2 development examples.
-- @details Each child exposes the actual language compiler and a production
-- uwvm2/ROS run callback. Configure an explicit deployment before xmake run.
includes("read_speed/xmake.lua", "read_io/xmake.lua", "system_state/xmake.lua")
includes("ros2/official_ros_communication/xmake.lua", "ros2/isolated_joint_components/xmake.lua")

includes("ros2/official_ros_parameters")
includes("ros2/official_ros_parameter_callbacks")
