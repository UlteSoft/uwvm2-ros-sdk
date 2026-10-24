# Universal Robots controller and application contracts

This platform remains incomplete. Three original source domains remain distinct:

| Source | Immutable selection | Meaning |
| --- | --- | --- |
| ROS1 driver | bd14b5c533135886f4f85ef0cabd097a5e1b8d0f | Original ROS1 driver/dashboard plus separately pinned ur_msgs |
| ROS2 Humble driver | 262330ed9b5467a17c8ceae09567991e22d13944 | Original ROS2 driver/dashboard plus Humble ur_msgs |
| PolyScope X urinterfaces | e88cebb16503bcbe6e7385251e1f83b1fa54e9c8 | Separate native interface family, not a rename of ur_msgs |

The [pinned ROS2 source](https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/tree/262330ed9b5467a17c8ceae09567991e22d13944)
includes CB3 and later source configurations. CB3/PolyScope 3, e-Series/PolyScope 5,
newer robot configurations and PolyScope X must retain their actual controller,
model, calibration, firmware, URCap and client-library versions. The installation
guide's minimum PolyScope 3.7/5.1 is specifically an ExternalControl URCap
installation statement; it does not qualify every driver feature at that version.
Actual dependency/package commits and native installations still need acceptance.

The prior selected graphs did not contain a standard JointState/FJT root. The
new `extend_ur_catalogs.py` candidate prepares separate `ros1_trajectory` and
`ros2_trajectory` domains with every original field of those protocols and their
dependencies, verified against fixed upstream Git blobs. Original ros1/ros2/
polyscopex domains stay intact. This candidate needs admitted generation, actual
native binding and task 10 publication before any new SDK support is claimed.
The native PolyScope X family does not acquire a standard FJT route by inclusion.

The proposed ROS2 preflight distinguishes CB3, e-Series and newer six-axis source
configurations and requires the actual installed joint order, current positions,
bounds, freshness and quota. Zero final velocity is a conservative application
restriction. This is pure validation, not controller/model compatibility proof.
Existing full I/O and speed-fraction APIs retain their three different field/type
contracts. A complete RobotStateRTMsg remains the original ROS message, not a
complete RTDE/realtime packet parser or an automatically current robot state.

Scaled trajectory execution, speed fraction, tool/gripper I/O, payload, force
mode, program execution, Dashboard and safety-mode operations require distinct
reviewed aliases. RTDE/Dashboard TCP and native client-library handles remain in
the trusted Gateway. No raw Guest socket or credential route is introduced.
RawRequest and SendScript carry command semantics which need their own host
review; a bounded string is not a command allowlist. Unlocking protective stop,
changing operational mode or restarting a program is never ordinary read authority.

Owned Action cancel acknowledgement, terminal result, controller failure, physical
stop and recovery remain separate. On uncertain delivery or timeout, do not resend
motion, resume the program or reset a safety state automatically. Guest code cannot
change Runtime policy, debugger or updates. Ordinary stdio is the only default I/O.

The current source audits capture 21 ROS1 and 78 ROS2 launch/example/test/helper
candidates. ROS2 includes `examples.py`, `force_mode.py`, `move_until_example.py`
and `scripts/example_move.py`. Launch files and original upstream tests are
separate entries. These counts exceed the earlier five-source census because
the audit includes the actual driver tree and launch/test paths; neither is an
official-example denominator. PolyScope X and external client-library examples,
semantic language mappings, upstream suites and controller simulation remain open.

```sh
xmake f -c -p linux -a x86_64 --import-ros2=y --ros-vendor-universal-robots=y \
  --ros-vendor-universal-robots-registry-header=/ABSOLUTE/REVIEWED/merged/manifest.hpp
xmake -j1
```

Source-only preparation, native-bound registry generation, Wasm build, actual
Guest, native ROS, Gateway integration and URSim/hardware are separate evidence
layers. A build option, include, module preload or existing family name grants
no rights and establishes none of those later layers.

Canonical source layout: public modules are in `sdk/include/platform/universal_robots/`, complete application sources are in `sdk/example/platform/universal_robots/`, and platform documentation/provenance is in `sdk/share/platform/universal_robots/`. Documentation for a language does not establish an implemented or qualified language port.
