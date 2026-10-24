# universal_robots SDK

This candidate restores every retained independent source domain, including field order, constants, defaults, fixed arrays and finite dynamic quotas. Original notices remain under `share/platform/universal_robots/catalogs/`. The source layer does not install a native driver or establish controller firmware compatibility.

| Domain | Backend | Original definitions | Expanded records |
| --- | --- | ---: | ---: |
| `universal-robots-ros1-complete` | ros1 | 36 | 56 |
| `universal-robots-ros1-trajectory-complete` | ros1 | 41 | 64 |
| `universal-robots-polyscopex-complete` | ros2 | 43 | 50 |
| `universal-robots-ros2-complete` | ros2 | 67 | 108 |
| `universal-robots-ros2-trajectory-complete` | ros2 | 73 | 116 |

## Installation and configuration

Integrate this overlay into the matching shared SDK. It consumes the central LLVM 23 closure, source-language compilers/interpreters and Xmake actions; no vendor engine is included. Verified SDK manifests provide build-time dependencies. The engineering coverage matrix separates source availability, actual builds and actual execution; unexecuted routes are not complete.

`set_language`, `set_ros_platform`, `set_ros1_version`/`set_ros2_version`, `set_arch` and `set_plat` are the public declarations. `ros.sdk.vendor_version` selects an exact domain; `ros.sdk.vendor_binding` points to its language data descriptor. `ros.sdk.model`, `ros.sdk.controller` and `ros.sdk.transport` describe the independently admitted native deployment. These fields do not grant permissions.

Select `wasm32` or `wasm64` explicitly with `wasm-wasip1`. A failed memory64 request must never fall back to wasm32. WASI preview, threads and EH features require separate evidence in the shared target manifest.

## Types, services and actions

Read `catalog.md`, each language `API.md` and `domains/*.ir.json` for every field, constant, default and source identity. Bytes use the SDK finite canonical format; they are distinct from CDR, ROS1 network serialization and native memory layouts.

The retained C/C++/Rust/JavaScript/AssemblyScript/TinyGo `bounded_interfaces` preserve original typed service/action owner semantics. Requests, responses, action goals, results and feedback remain distinct complete types. Server request tickets are not capability handles. Submit admission is not completion; idle 11 is not a delivered event; a cancellation acknowledgement is not a terminal result. Retain the exact owned goal/request ID and keep primary, RPC, length, required-capacity and cleanup outcomes separate. Never replay a request after timeout or uncertain physical outcome. New language record modules require their central transport-owner integration before native service/action acceptance.

## Verification scope

Examples are complete-value codec lessons that execute real source encoding/decoding. Defaults are fixture data and are not robot observations. Retained I/O, service and action application flows live in `src/platform/universal_robots/flows/`. Independent native ROS fixtures belong to engineering validation, never build prerequisites. `xmake run` requires installed uwvm2-ros and manually supplied deployment/permissions; no code grants capabilities automatically.

## Immutable upstream sources

- [UniversalRobots/Universal_Robots_ROS2_Driver @ 262330ed9b54](https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/tree/262330ed9b5467a17c8ceae09567991e22d13944)
- [UniversalRobots/Universal_Robots_ROS_Driver @ bd14b5c53313](https://github.com/UniversalRobots/Universal_Robots_ROS_Driver/tree/bd14b5c533135886f4f85ef0cabd097a5e1b8d0f)
- [UniversalRobots/urinterfaces @ e88cebb16503](https://github.com/UniversalRobots/urinterfaces/tree/e88cebb16503bcbe6e7385251e1f83b1fa54e9c8)
- [ros-controls/control_msgs @ 36e2e30551e3](https://github.com/ros-controls/control_msgs/tree/36e2e30551e3f2bfd9e55fca553f1ef019f4e4b1)
- [ros-controls/control_msgs @ 4418bbf3efda](https://github.com/ros-controls/control_msgs/tree/4418bbf3efda12828795e4bb011742133c67a6e2)
- [ros-industrial/ur_msgs @ 3c584014d9b2](https://github.com/ros-industrial/ur_msgs/tree/3c584014d9b228e0b2da819db0ca1d887c373e1d)
- [ros-industrial/ur_msgs @ 6c6dc66c63bd](https://github.com/ros-industrial/ur_msgs/tree/6c6dc66c63bd551e3985281739add762bfaa3aa9)
- [ros/common_msgs @ 092bc230c815](https://github.com/ros/common_msgs/tree/092bc230c8153dd4cfee0c84c9796cc7e6b09fdb)
- [ros/std_msgs @ 34198520757d](https://github.com/ros/std_msgs/tree/34198520757d1aab358118a0ef294fe2609fde33)
- [ros2/common_interfaces @ 08434490d3e4](https://github.com/ros2/common_interfaces/tree/08434490d3e4abd37ccc5462cdde69b88853b5b8)
- [ros2/rcl_interfaces @ 82776fc9068d](https://github.com/ros2/rcl_interfaces/tree/82776fc9068d1e0cd4af11c2e2700195994b2eb1)
