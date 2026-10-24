# Complete original FollowJointTrajectory libraries

The `kinova` / `ros2_humble` C and C++ `codec_static` and `codec_shared` examples consume the complete original `control_msgs/action/FollowJointTrajectory` Goal, Feedback and Result. Both trajectory families, all four tolerance arrays, all feedback branches and the result code/text remain present. The pinned catalog contains 17 records and 64 fields. These three components reach 16 records and 59 fields; the separate `sensor_msgs/msg/JointState` is outside this example's consumption. The complete catalog stays unchanged.

This example decodes and re-encodes caller-supplied canonical bytes. It neither submits a robot goal nor proves exact Humble native communication. Native Humble SDK/TypeSupport export and native type identity remain separate prerequisites. A codec identity is not a native ROS type hash. Executing this portable library in an existing runtime also does not establish that runtime's Humble registry support.

## Build and run

Set `UWVM_ROS_SDK_ROOT` to the installed SDK and enter the selected language/kind example directory. The ordinary target declarations are `set_kind("static")` or `set_kind("shared")`, `add_deps("record_codec")`, `set_ros_platform("kinova")`, `set_ros2_version("humble")` and profile `ros2_humble`. Use the same width for both targets:

```sh
export UWVM_ROS_SDK_ROOT=/path/to/sdk
xmake f --plat=wasm-wasip1 --arch=wasm32
xmake -vD main
cp deployment.template.json deployment.json
```

Select `wasm64` instead for memory64. Edit `deployment.json` yourself: set `runtime` to the installed uwvm2-ros executable and `gateway` to an installed executable accepted by the deployment schema. All modules explicitly disable ROS, so the gateway is validated as an input and is never started. Set the first argument to `goal`, `feedback` or `result` and the second to the full canonical hexadecimal input. For a compact complete Result, `feffffff0400000041e4b8ad` encodes error code -2 and UTF-8 text `A中`. Then run:

```sh
UWVM_ROS_RUN_CONFIG=deployment.json xmake run main
```

The public run hook executes existing artifacts. It must preserve the supplied policy and must not build or acquire a compiler cache. Output contains the component byte count and actual re-encoded hexadecimal bytes. `primary=0 cleanup=0` reports success; malformed arguments/bytes return 22. Exit 42 means the real eager library initializer had not completed before main's first call.

## Deployment and scalar API

A static dependency is an indexed `.a` under the common private `.uwvm-ros/archives` build directory; deploy only `build/main/main.wasm`. A shared dependency is a separately instantiated Core module at `build/record_codec/record_codec.wasm`; deploy both `.wasm` files and preserve the template's exact `record_codec` preload/import identity. It uses the runtime's Core-module contract, without assuming a native shared-object ABI or an LLVM PIC loader.

`main` and `record_codec` each have `ros_enabled: false`, `grants: []` and `wasi_grants: []`. Static deployment has only `main`. Empty additional WASI grants retain the runtime's ordinary basic standard streams. These examples request no ROS authority and do not silently add any permission.

The library owns the selected complete typed value and input/output storage. All six exports use `uint32_t` scalars; no pointer, C++ object, native ROS handle or memory is passed across modules. Calls are sequential within one module:

| Export | Contract |
|---|---|
| `record_codec_ready()` | Observe 101 after the real eager initializer. Observation never repairs initialization. |
| `record_codec_reset(component)` | Select Goal=0, Feedback=1 or Result=2; discard previous input/output. Invalid selector returns 22 without changing state. |
| `record_codec_push(value)` | Append one byte 0–255. Invalid scalars or full 8581-byte bounded input return 22 without appending. |
| `record_codec_validate()` | Decode and re-encode the complete selected component; return 0 or 22. Read output only after success. |
| `record_codec_size()` | Observe successful encoded byte count, zero after reset. |
| `record_codec_byte(index)` | Copy one output byte; return `UINT32_MAX` outside the current extent. |

Start each value with reset, push every input byte, validate once, then copy the successful bytes before another reset. C and C++ share the scalar ABI while retaining their own public language codecs and module storage. The initializer runs eagerly; no ready-check fallback creates it.

## Complete schema and bounds

| Original record | Complete ordered fields | Canonical bytes min/max |
|---|---|---:|
| `builtin_interfaces/msg/Duration` | `sec`, `nanosec` | 8/8 |
| `builtin_interfaces/msg/Time` | `sec`, `nanosec` | 8/8 |
| `std_msgs/msg/Header` | `stamp`, `frame_id` | 12/140 |
| `trajectory_msgs/msg/JointTrajectoryPoint` | `positions`, `velocities`, `accelerations`, `effort`, `time_from_start` | 24/280 |
| `trajectory_msgs/msg/JointTrajectory` | `header`, `joint_names`, `points` | 20/1484 |
| `geometry_msgs/msg/Vector3` | `x`, `y`, `z` | 24/24 |
| `geometry_msgs/msg/Quaternion` | `x`, `y`, `z`, `w` | 32/32 |
| `geometry_msgs/msg/Transform` | `translation`, `rotation` | 56/56 |
| `geometry_msgs/msg/Twist` | `linear`, `angular` | 48/48 |
| `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `transforms`, `velocities`, `accelerations`, `time_from_start` | 20/844 |
| `trajectory_msgs/msg/MultiDOFJointTrajectory` | `header`, `joint_names`, `points` | 20/2048 |
| `control_msgs/msg/JointTolerance` | `name`, `position`, `velocity`, `acceleration` | 28/156 |
| `control_msgs/msg/JointComponentTolerance` | `joint_name`, `component`, `position`, `velocity`, `acceleration` | 30/158 |
| `control_msgs/action/FollowJointTrajectory_Goal` | `trajectory`, `multi_dof_trajectory`, `path_tolerance`, `component_path_tolerance`, `goal_tolerance`, `component_goal_tolerance`, `goal_time_tolerance` | 64/8580 |
| `control_msgs/action/FollowJointTrajectory_Result` | `error_code`, `error_string` | 8/264 |
| `control_msgs/action/FollowJointTrajectory_Feedback` | `header`, `joint_names`, `desired`, `actual`, `error`, `multi_dof_joint_names`, `multi_dof_desired`, `multi_dof_actual`, `multi_dof_error` | 152/4708 |

Canonical data uses little-endian scalars and 32-bit sequence/string byte lengths, with UTF-8 text and no string terminator. It is the SDK's bounded wire format, not raw DDS CDR. The deployment bounds preserve the original fields: ordinary joint sequences and tolerance arrays allow 8 entries; each trajectory allows 1 point; multi-DOF transforms and feedback joint names allow 1; multi-DOF velocity/acceleration sequences allow 8. Names/frame IDs allow 128 UTF-8 bytes, and Result error text allows 256. Exact bounds and order remain in `share/platform/kinova/catalogs/ros2_humble/records.json` and the public bounded-record headers.

All floating values must be finite. Time uses signed seconds plus normalized nanoseconds below 1,000,000,000. A structurally valid negative Duration is codec data; it is not evidence of a feasible controller goal. Physical joint units and tolerance semantics must follow the selected controller interface; this codec performs no unit conversion or feasibility decision. Truncation, trailing data, excessive counts, malformed text/time and nonfinite data fail without a successful output claim.

## Verification scope

The private review checks both widths, both ordinary library kinds and both source languages using original complete Goal/Feedback/Result inputs, truncation/trailing/length mutations and NaN/positive/negative infinity. Actual x86 and QEMU AArch64 consumption, eager initialization, manual policy preservation and worker cleanup require their own receipts. Native Humble ROS, cancellation and physical-controller behavior remain outside this codec qualification.
