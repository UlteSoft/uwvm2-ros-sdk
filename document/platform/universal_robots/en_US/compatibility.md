# Original interfaces and compatibility scope

The table identifies pinned source catalogs and their selected fixture distribution. A branch name, interface build, or SDK codec pass alone does not qualify a complete driver, controller, firmware release, or physical robot.

| Domain | ROS | Fixture distribution | Expanded records | Original definitions |
| --- | --- | --- | ---: | ---: |
| universal-robots-ros1-complete | ros1 | noetic | 56 | 36 |
| universal-robots-ros1-trajectory-complete | ros1 | noetic | 64 | 41 |
| universal-robots-polyscopex-complete | ros2 | humble | 50 | 43 |
| universal-robots-ros2-complete | ros2 | humble | 108 | 67 |
| universal-robots-ros2-trajectory-complete | ros2 | humble | 116 | 73 |

## Immutable sources

Full commits, catalog SHA-256 values, package versions, and metadata sources are in `share/platform/universal_robots/compatibility.json`. Original definitions retain their exact bytes. Constants, defaults, field order, array extents, and string bounds are part of the contract.

- [UniversalRobots/Universal_Robots_ROS_Driver README](https://raw.githubusercontent.com/UniversalRobots/Universal_Robots_ROS_Driver/bd14b5c533135886f4f85ef0cabd097a5e1b8d0f/README.md), commit `bd14b5c533135886f4f85ef0cabd097a5e1b8d0f`, SHA-256 `193e709380d0f2e667d0885dceef5ec14b3e8971161ddbe55a75b413dfd71235`.
- [UniversalRobots/Universal_Robots_ROS2_Driver README](https://raw.githubusercontent.com/UniversalRobots/Universal_Robots_ROS2_Driver/262330ed9b5467a17c8ceae09567991e22d13944/README.md), commit `262330ed9b5467a17c8ceae09567991e22d13944`, SHA-256 `9374f5ebf202e52b472cdbf9f6b5ca25bea9ddfff9dc488026ce075924945151`.
- [ur_dashboard_msgs 2.15.0](https://raw.githubusercontent.com/UniversalRobots/Universal_Robots_ROS2_Driver/262330ed9b5467a17c8ceae09567991e22d13944/ur_dashboard_msgs/package.xml), commit `262330ed9b5467a17c8ceae09567991e22d13944`, SHA-256 `27a8a960088486c28dc9c8518ffc9aaab09730b5d22213605495b88f70e84fab`.
- [ur_msgs 2.6.0](https://raw.githubusercontent.com/ros-industrial/ur_msgs/3c584014d9b228e0b2da819db0ca1d887c373e1d/package.xml), commit `3c584014d9b228e0b2da819db0ca1d887c373e1d`, SHA-256 `e2d839623cf79a8d8248e8e4cb8b192ee072a4011c57a377dab1112c3ed42748`.
- [urinterfaces 9.0.0](https://raw.githubusercontent.com/UniversalRobots/urinterfaces/e88cebb16503bcbe6e7385251e1f83b1fa54e9c8/package.xml), commit `e88cebb16503bcbe6e7385251e1f83b1fa54e9c8`, SHA-256 `e1839fe1f2dbc74635ee858c3c9d985a687aa8dccbd4b4a68686369e786b4bed`.

## Interpreting native tests

Native ROS peer tests and Wasm communication through uwvm2-ros require separate receipts. Building pinned Humble interface sources on Jazzy qualifies only that interface fixture combination. It does not establish complete Humble driver support. Historical Kinetic, Melodic, AWS, and patch branches remain distinct even when service names match. The retained KUKA source contains ROS2 interfaces only; no ROS1 interface is inferred.

Explicitly select the model, controller, native type, and identity at deployment; the user configures permissions.
