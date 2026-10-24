# ABB controller and application contracts

This platform remains incomplete. ROS1 uses the distinct
[abb_robot_driver source at d1678957](https://github.com/ros-industrial/abb_robot_driver/tree/d1678957d3792e6aa54582ff894db62b6a51dac0),
with its separately pinned interface repository. ROS2 uses the
[PickNik integration at e6486f74](https://github.com/PickNikRobotics/abb_ros2/tree/e6486f7409073cdb2a10d6878bb50191dd50172b),
whose actual dependency manifest selects `gbartyzel/abb_ros2_msgs` at
`071bb1fc2148a7cd850a1ff550c5987e67da6bdd`. The maintenance identity is recorded;
this is not relabeled as a manufacturer-wide official ROS2 SDK.

| Route | Boundary |
| --- | --- |
| ROS1 driver | Independent ROS1 Definition/MD5/native installation, not ROS2 type relabeling |
| Selected ROS2 integration | RWS 1.0 source boundary; RobotWare 7/RWS 2.0 is excluded |
| EGM | Actual controller options, RAPID/state-machine configuration and native libegm version required |
| RWS | Native HTTP/session/credential ownership; endpoints and read/write/motion/admin effects independently reviewed |
| Six-axis example | IRB1200_5_90, explicit joint_1..joint_6 order, position/velocity interfaces, no partial goals |
| Other robots/controllers | Require actual model/configuration, RobotWare/options and measured native acceptance |

The pinned ROS2 documentation reports a 250 Hz update, 100 Hz state publication
and 20 Hz action monitor for its example. These source configuration rates are
not measured performance and are not copied to every ABB controller. A prepared
message graph cannot install libegm/librws/managers or resolve their native license
and version requirements automatically.

The full-value preflight selects that six-axis ROS2 application subset. It
requires actual names, current state, bounds, age and point quota and rejects
partial/reordered joints, invalid timings/tolerances, malformed values and
unsupported component goals. It sends no trajectory. Complete EGM settings,
RAPID values, tool/workobject/load records, state-machine services and I/O remain
their original types; source field availability grants no operation.

Both C GetSpeedRatio reactors now expose `response_ready`, `speed_ratio`,
`result_code`, `message_size` and whole diagnostic copying. RC_SUCCESS is 1.
Controller refusals retain their exact code/message; insufficient capacity and
overlap refuse before writing a destination prefix. ROS1 and ROS2 use their own
generated source families. Typed ROS2 query sources for JavaScript, Rust,
AssemblyScript and TinyGo preserve complete responses and independent cleanup.

`stop_rapid` and `stop_egm` are the original TriggerWithResultCode services, not
std_srvs/Trigger. Their preconditions and native effects differ. Neither equals
an owned Action cancel or a physical emergency stop. Keep RPC return, cancel
acknowledgement, Action terminal result, native controller state and physical
stopping evidence separate. Timeout/connection loss never automatically resets,
resends, restarts RAPID or re-enables EGM. Recovery requires separate authority.

The ROS1/ROS2 upstream audits include launch/configuration/tutorial inputs even
when no standalone C/Python `main` is found. RobotStudio, fake hardware and actual
controllers are distinct lanes. None was executed by this source audit, and its
candidate file count is not an official-example or test-case denominator.

```sh
xmake f -c -p linux -a x86_64 --import-ros2=y --ros-vendor-abb=y \
  --ros-vendor-abb-registry-header=/ABSOLUTE/REVIEWED/merged/manifest.hpp
xmake -j1
```

For ROS1 select the genuine ROS1 backend and its separately bound domain. For
multiple vendors, deduplicate compatible declarations into one physically
identical manifest. No native ABB library is linked into the Guest by this recipe.

Canonical source layout: public modules are in `sdk/include/platform/abb/`, complete application sources are in `sdk/example/platform/abb/`, and platform documentation/provenance is in `sdk/share/platform/abb/`. Documentation for a language does not establish an implemented or qualified language port.
