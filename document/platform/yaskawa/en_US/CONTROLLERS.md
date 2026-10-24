# YASKAWA controller and upstream audit

[Yaskawa-Global/motoros2](https://github.com/Yaskawa-Global/motoros2/tree/41ac074a879bb9f75fd1f96618ce54b4899cfd1a), `41ac074a879bb9f75fd1f96618ce54b4899cfd1a`.

The pinned MotoROS2 driver covers DX200/YRC1000/YRC1000micro with minimum firmware DN2.44.00-00/YAS2.80.00-00/YBS2.45.00-00 respectively. Its source documentation lists Foxy/Galactic/Humble/Jazzy and Fast DDS. The catalog retains the motoros2_interfaces 0.2.0 commit rather than substituting newer HEAD.

Trajectories allow at most 200 points and require every configured group/joint; the first point comes from the complete current state. Independent asynchronous groups and partial goals are refused; final velocity and acceleration are zero. start_traj_mode changes drives/job/mode. stop_traj_mode is not the active-goal stop protocol and can leave motors on. The pinned industrial_core ROS2 CMake omits six historical services from native generation. Retaining those complete declarations does not establish native type support or a server.

See `share/platform/yaskawa/driver-audit.json` for complete original resources, file hashes and selection conditions. This work executes no driver, firmware update or physical controller command.
