# Doosan controller and application contracts

This platform remains incomplete. The twelve original selections in
`source/profiles.json` preserve ROS1 historical branches and separate ROS2
Humble/Jazzy interface domains. Current ROS2 source commits are
`6c5f3ba622bfa9d6f9cffebf21fa44f57db55b48` and
`e5e2d7f4fe11865b9ddf4ad658362bc8e73296e0`. Branch count, matching service names
and generated bindings do not establish release, controller or model coverage.
The historical ROS1 source remains useful for explicit legacy installations;
it cannot silently become a current DSR/DRFL ABI.

| Boundary | Required facts |
| --- | --- |
| Controller 2.x | Actual firmware/model and matching native DRCF/DRFL build |
| Controller 3.x | Explicit DRCF_VER=3 native selection; not a renamed 2.x binary |
| MoveIt source route | The pinned README requires controller 2.12 or newer |
| ROS2 Humble / Jazzy | Independent original source locks, generated families and installed native proofs |
| ROS1 stop topic | The retained Noetic driver subscribes to relative stop |
| ROS2 stop service | The retained controller exposes motion/move_stop; the RobotStop declaration does not create a subscriber |

The [pinned Humble instructions](https://github.com/DoosanRobotics/doosan-robot2/blob/6c5f3ba622bfa9d6f9cffebf21fa44f57db55b48/README.md)
separate virtual and real modes. Their Docker emulator must not be launched as
an uncontrolled daemon/container under this task's resource contract. Native
emulator, Gazebo, MuJoCo and physical-controller evidence remain different lanes.
No model is qualified merely because the README describes all-model intent.

The new MoveJoint preflight explicitly selects original ROS2 profile 11 or 12.
It preserves all six positions, velocity, acceleration, time, blend radius,
absolute/relative mode, blend type and sync type. Units remain degrees, deg/s,
deg/s², seconds and millimetres. The caller supplies actual installed limits and
current positions; relative targets are checked as current+offset. Nonfinite
values, controller/DRCF mismatch, stale state, expired deadline, invalid enums
and exceeded limits refuse. Automatic timing requires positive velocity and
acceleration; time-driven requests retain their original zero-value semantics.
This is local preflight, not authenticated state or physical motion acceptance.

The MoveStop constructor preserves the original 0..3 stop_mode values and sends
nothing. It is separate from Action cancellation, service return and physical
stopping confirmation. A successful asynchronous MoveJoint response does not
mean completed motion. Unknown delivery, disconnect or timeout never initiates
automatic replay, DRL restart, safety-state change or controller recovery.

Complete state, real-time/servo, coordinates, tools/TCP, I/O, force, DRL/program,
error and access-control source declarations remain in their exact selected
families. Their generated fields are not grants. Native controller/DRFL pointers,
sessions, sockets, credentials and real-time deadlines stay outside Guest memory.
The comment-only RobotDisconnection source remains a complete empty DTO, with
its previously documented native empty-topic registration gap kept explicit.

The new current-branch audits capture 87 Humble and 96 Jazzy launch/example/test/
helper candidates. They include console manifests, eight direct motion/action
examples, visual-servo/camera programs, real-time C++ and launch/configuration
dependencies. These are not directly comparable to the earlier 315-file
all-historical-branch census. No historical entry is erased and no candidate is
counted as an executed example. Full semantic mappings, native suites, simulator
acceptance and the remaining language targets are open.

```sh
xmake f -c -p linux -a x86_64 --import-ros2=y --ros-vendor-doosan=y \
  --ros-vendor-doosan-registry-header=/ABSOLUTE/REVIEWED/merged/manifest.hpp
xmake -j1
```

Select one exact source/native domain. For multiple vendors prepare one merged,
deduplicated catalog and matching registry; grants remain per Guest/operation/
alias/resource/type/direction/quota/deadline. Default authority stays empty
apart from ordinary stdin/stdout/stderr; no Guest debugger/update/policy API exists.

Canonical source layout: public modules are in `sdk/include/platform/doosan/`, complete application sources are in `sdk/example/platform/doosan/`, and platform documentation/provenance is in `sdk/share/platform/doosan/`. Documentation for a language does not establish an implemented or qualified language port.
