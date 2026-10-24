# doosan SDK

This candidate restores every retained independent source domain, including field order, constants, defaults, fixed arrays and finite dynamic quotas. Original notices remain under `share/platform/doosan/catalogs/`. The source layer does not install a native driver or establish controller firmware compatibility.

| Domain | Backend | Original definitions | Expanded records |
| --- | --- | ---: | ---: |
| `doosan-ros1-aws-robot-complete` | ros1 | 67 | 125 |
| `doosan-ros1-aws-simulation-complete` | ros1 | 67 | 125 |
| `doosan-ros1-doosan-robotics-patch-1-complete` | ros1 | 150 | 280 |
| `doosan-ros1-kinetic-devel-descrepted-complete` | ros1 | 118 | 227 |
| `doosan-ros1-main-complete` | ros1 | 150 | 280 |
| `doosan-ros1-master-complete` | ros1 | 149 | 278 |
| `doosan-ros1-melodic-devel-complete` | ros1 | 150 | 280 |
| `doosan-ros1-noetic-devel-complete` | ros1 | 150 | 280 |
| `doosan-ros1-patch-1-complete` | ros1 | 150 | 280 |
| `doosan-ros1-song-ms-patch-1-complete` | ros1 | 150 | 280 |
| `doosan-ros2-humble-complete` | ros2 | 164 | 310 |
| `doosan-ros2-jazzy-complete` | ros2 | 164 | 310 |

## Installation and configuration

Integrate this overlay into the matching shared SDK. It consumes the central LLVM 23 closure, source-language compilers/interpreters and Xmake actions; no vendor engine is included. Verified SDK manifests provide build-time dependencies. The engineering coverage matrix separates source availability, actual builds and actual execution; unexecuted routes are not complete.

`set_language`, `set_ros_platform`, `set_ros1_version`/`set_ros2_version`, `set_arch` and `set_plat` are the public declarations. `ros.sdk.vendor_version` selects an exact domain; `ros.sdk.vendor_binding` points to its language data descriptor. `ros.sdk.model`, `ros.sdk.controller` and `ros.sdk.transport` describe the independently admitted native deployment. These fields do not grant permissions.

Select `wasm32` or `wasm64` explicitly with `wasm-wasip1`. A failed memory64 request must never fall back to wasm32. WASI preview, threads and EH features require separate evidence in the shared target manifest.

## Types, services and actions

Read `catalog.md`, each language `API.md` and `domains/*.ir.json` for every field, constant, default and source identity. Bytes use the SDK finite canonical format; they are distinct from CDR, ROS1 network serialization and native memory layouts.

The retained C/C++/Rust/JavaScript/AssemblyScript/TinyGo `bounded_interfaces` preserve original typed service/action owner semantics. Requests, responses, action goals, results and feedback remain distinct complete types. Server request tickets are not capability handles. Submit admission is not completion; idle 11 is not a delivered event; a cancellation acknowledgement is not a terminal result. Retain the exact owned goal/request ID and keep primary, RPC, length, required-capacity and cleanup outcomes separate. Never replay a request after timeout or uncertain physical outcome. New language record modules require their central transport-owner integration before native service/action acceptance.

## Verification scope

Examples are complete-value codec lessons that execute real source encoding/decoding. Defaults are fixture data and are not robot observations. Retained I/O, service and action application flows live in `src/platform/doosan/flows/`. Independent native ROS fixtures belong to engineering validation, never build prerequisites. `xmake run` requires installed uwvm2-ros and manually supplied deployment/permissions; no code grants capabilities automatically.

## Immutable upstream sources

- [DoosanRobotics/doosan-robot @ 19d520d7df59](https://github.com/DoosanRobotics/doosan-robot/tree/19d520d7df599dc9751f3e8a41337c399c418a47)
- [DoosanRobotics/doosan-robot @ 1d14369e6bd5](https://github.com/DoosanRobotics/doosan-robot/tree/1d14369e6bd52617b5d75e5aa9382a392833053c)
- [DoosanRobotics/doosan-robot @ 28b6a17692ee](https://github.com/DoosanRobotics/doosan-robot/tree/28b6a17692eec60c27ad89f6fba82239276b750b)
- [DoosanRobotics/doosan-robot @ 2c12e859aed3](https://github.com/DoosanRobotics/doosan-robot/tree/2c12e859aed34c492706fa053af5b3304ce33c86)
- [DoosanRobotics/doosan-robot @ 5a21f1c52b4d](https://github.com/DoosanRobotics/doosan-robot/tree/5a21f1c52b4d6e48ba3f95c6bc1dd774932ec922)
- [DoosanRobotics/doosan-robot @ 5f87fe520f96](https://github.com/DoosanRobotics/doosan-robot/tree/5f87fe520f966ef22a50d456627e802fd2d0b7ce)
- [DoosanRobotics/doosan-robot @ 60f17b306013](https://github.com/DoosanRobotics/doosan-robot/tree/60f17b3060136f96b8c6260e1b2dda6ab238e570)
- [DoosanRobotics/doosan-robot @ 9c4ecd726d07](https://github.com/DoosanRobotics/doosan-robot/tree/9c4ecd726d075bc1a8de3fdf639cc4d557d4b9cb)
- [DoosanRobotics/doosan-robot @ cd0226d777d9](https://github.com/DoosanRobotics/doosan-robot/tree/cd0226d777d92422cd8250fe35c18946bc7d24cc)
- [DoosanRobotics/doosan-robot2 @ 6c5f3ba622bf](https://github.com/DoosanRobotics/doosan-robot2/tree/6c5f3ba622bfa9d6f9cffebf21fa44f57db55b48)
- [DoosanRobotics/doosan-robot2 @ e5e2d7f4fe11](https://github.com/DoosanRobotics/doosan-robot2/tree/e5e2d7f4fe11865b9ddf4ad658362bc8e73296e0)
- [ros/std_msgs @ 34198520757d](https://github.com/ros/std_msgs/tree/34198520757d1aab358118a0ef294fe2609fde33)
- [ros2/common_interfaces @ 08434490d3e4](https://github.com/ros2/common_interfaces/tree/08434490d3e4abd37ccc5462cdde69b88853b5b8)
- [ros2/common_interfaces @ a941f14bb318](https://github.com/ros2/common_interfaces/tree/a941f14bb318d8d904505ed935ccbb97f24a70a4)
