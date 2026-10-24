# ABB controller and upstream audit

[ros-industrial/abb_robot_driver](https://github.com/ros-industrial/abb_robot_driver/tree/d1678957d3792e6aa54582ff894db62b6a51dac0), `d1678957d3792e6aa54582ff894db62b6a51dac0`.

RWS state observation, RAPID/file/I/O services, the EGM hardware interface and controller lifecycle are distinct surfaces. StateMachine Add-In 1.0/1.1, EGM and smart-gripper indicators gate additional services. Actual topic names include `joint_states`, `system_states` and `sm_addin/runtime_states`; capability aliases require explicit operator binding. The ROS2 message catalog is independently pinned to gbartyzel/abb_ros2_msgs. Its presence does not qualify an equivalent PickNik driver interface or version pairing.

The header documents RobotWare [6.07.01,7.0), while the actual rejection predicate is `major == 6 && minor < 7 && patch < 1`. That predicate does not implement the documented interval. Passing it is not controller-compatibility evidence.

See `share/platform/abb/driver-audit.json` for complete original resources, file hashes and selection conditions. This work executes no driver, firmware update or physical controller command.
