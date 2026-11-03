# Additional portable capability sources, v0.2.0 preview

The two algorithms are source previews. Neither has an emitted Wasm artifact,
VM host implementation, native ROS result, or official simulation acceptance.
The availability fields in the frozen source descriptions record this source
seal; subsequent artifact and execution receipts must be published separately.

`planar_goal` submits one bounded planar pose goal using the logical alias
`navigation`. It computes a small x displacement from actual returned state,
waits for a terminal native result, and checks a fresh resulting pose. The host
must implement `planar.pose.goal.v1` with an external frame, map/odometry,
native-action and simulator mapping. It provides no motor, balance or gait
controller. Native goal acceptance alone cannot satisfy completion.

`sensor_digest` uses only describe/read/close rights on the logical alias
`sensor`. It validates one mono8/RGB8 frame and computes FNV-1a-32 over the actual
payload, including padding. An independent native capture must establish that
the exact simulator sample entered the executing Wasm. FNV is an integrity
oracle for this algorithm; it provides no authentication, vision detection,
calibration, depth or IMU processing.

Both use the existing generic seven-call ABI declarations from
`include/platform/ros/portable/v0_1_0/abi.h`, with distinct record kinds defined
in `share/platform/ros/portable/v0.2.0/wire.json`. The read-only sensor program
need not import unused submit/wait functions. Hosts must reject an unsupported
family instead of translating it into a joint command.

The existing SDK C/WASI route builds each source separately on the admitted
Linux worker. Set `UWVM_ROS_SDK_ROOT` to that worker's exact staged SDK, enter
the selected example directory, then run `xmake f -y -c -a wasm32` and
`xmake -vD -j2`. These are reproduction instructions, not executed results.
They do not run a simulator or select a robot.

Freeze each emitted algorithm once, retain its complete SHA256, compiler and
source inputs, and reuse those exact bytes across every applicable platform.
Adapters, permissions, resource names, unit conversion and frame transforms
remain external. Source recompilation is not proof of byte reuse. All official
applicable simulation modes and ROS distribution/ABI cases retain their own
execution rows and correctness oracles. Physical robot actuation is excluded.

`share/platform/ros/portable/capability-families.json` also records the remaining
manipulation, gripper, effort, legged, lidar, IMU and vision semantic work. It is
a partial capability inventory, not an exhaustive official robot/mode audit.
Missing host support or installed dependencies is a blocker, not evidence of
non-applicability.
