# kuka SDK

This candidate restores every retained independent source domain, including field order, constants, defaults, fixed arrays and finite dynamic quotas. Original notices remain under `share/platform/kuka/catalogs/`. The source layer does not install a native driver or establish controller firmware compatibility.

| Domain | Backend | Original definitions | Expanded records |
| --- | --- | ---: | ---: |
| `kuka-ros2-complete` | ros2 | 26 | 31 |

## Installation and configuration

Integrate this overlay into the matching shared SDK. It consumes the central LLVM 23 closure, source-language compilers/interpreters and Xmake actions; no vendor engine is included. Verified SDK manifests provide build-time dependencies. The engineering coverage matrix separates source availability, actual builds and actual execution; unexecuted routes are not complete.

`set_language`, `set_ros_platform`, `set_ros1_version`/`set_ros2_version`, `set_arch` and `set_plat` are the public declarations. `ros.sdk.vendor_version` selects an exact domain; `ros.sdk.vendor_binding` points to its language data descriptor. `ros.sdk.model`, `ros.sdk.controller` and `ros.sdk.transport` describe the independently admitted native deployment. These fields do not grant permissions.

Select `wasm32` or `wasm64` explicitly with `wasm-wasip1`. A failed memory64 request must never fall back to wasm32. WASI preview, threads and EH features require separate evidence in the shared target manifest.

## Types, services and actions

Read `catalog.md`, each language `API.md` and `domains/*.ir.json` for every field, constant, default and source identity. Bytes use the SDK finite canonical format; they are distinct from CDR, ROS1 network serialization and native memory layouts.

The retained C/C++/Rust/JavaScript/AssemblyScript/TinyGo `bounded_interfaces` preserve original typed service/action owner semantics. Requests, responses, action goals, results and feedback remain distinct complete types. Server request tickets are not capability handles. Submit admission is not completion; idle 11 is not a delivered event; a cancellation acknowledgement is not a terminal result. Retain the exact owned goal/request ID and keep primary, RPC, length, required-capacity and cleanup outcomes separate. Never replay a request after timeout or uncertain physical outcome. New language record modules require their central transport-owner integration before native service/action acceptance.

## Verification scope

Examples are complete-value codec lessons that execute real source encoding/decoding. Defaults are fixture data and are not robot observations. Retained I/O, service and action application flows live in `src/platform/kuka/flows/`. Independent native ROS fixtures belong to engineering validation, never build prerequisites. `xmake run` requires installed uwvm2-ros and manually supplied deployment/permissions; no code grants capabilities automatically.

## Immutable upstream sources

- [kuka-ros/kuka_drivers @ 15fbb6941356](https://github.com/kuka-ros/kuka_drivers/tree/15fbb6941356390c38bbd135a0676dfd96a050c0)
- [ros-controls/control_msgs @ 2eaaa5440d6d](https://github.com/ros-controls/control_msgs/tree/2eaaa5440d6dc2291601ea445b83015a663f5f88)
- [ros2/common_interfaces @ a941f14bb318](https://github.com/ros2/common_interfaces/tree/a941f14bb318d8d904505ed935ccbb97f24a70a4)
- [ros2/rcl_interfaces @ 7aa3caf43377](https://github.com/ros2/rcl_interfaces/tree/7aa3caf43377ea6ad615bc1040832e2c7566bfbe)
