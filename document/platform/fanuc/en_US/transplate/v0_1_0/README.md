# FANUC legacy ROS migration bindings, review version 0.1.0

**State: BLOCKED. No source-compatible legacy client profile is qualified.**
The vendor layer owns model/resource/unit/frame/schema/grant bindings and examples.
The shared ROS and language owners supply the actual upstream client ports and
engines. The requested include spelling is `transplate`. No placeholder upstream
headers or native-client substitute are installed to manufacture compatibility.

The current shared boundary is
`share/platform/ros/transplate/v0.1.0/contract.json`, SHA256 `0a7ffe5eeedf2aed99d198c97516b2ad640fd14572354a756eeceaeb909a3bd0`.
Its scalar transport source rejects host-native builds and declares 38 ROS1 and
43 ROS2 imports. It explicitly reports rcl, rclcpp and roscpp upstream client
compatibility as NOT_IMPLEMENTED. These counts and forwarding functions do not
establish library behavior, source compatibility or VM execution. The historical
VM authority SHA recorded in the descriptor also requires provenance reconciliation
before integration. Consume the frozen shared files read-only.

The required vendor routes remain:

| Requested include route | Shared implementation owner | Qualification |
| --- | --- | --- |
| `include/platform/fanuc/transplate/ros1/` | Shared roscpp/C transport; shared Python rospy; shared Java rosjava | BLOCKED; actual historical APIs and pinned source profile required |
| `include/platform/fanuc/transplate/ros2/rcl/` | Shared C/ROS owner | BLOCKED; real upstream rcl client code must compile to Wasm |
| `include/platform/fanuc/transplate/ros2/rclcpp/` | Shared C/ROS owner | BLOCKED; real upstream rclcpp, generated messages and typesupport must compile to Wasm |
| `include/platform/fanuc/transplate/ros2/rclpy/` | Shared Python owner | BLOCKED; actual Python.wasm/C-extension import and callbacks required |
| `include/platform/fanuc/transplate/ros2/rcljava/` | Shared Java owner | BLOCKED; app/client/runtime AOT to Wasm required |

A Python process importing the host's _rclpy extension, a JVM/JNI process, a host
ELF produced by Java AOT, or an arbitrary shell/native function cannot implement
any of these routes. Do not copy a language engine per vendor. ROS1 keeps actual
roscpp/rospy/rosjava release semantics; it is not a ROS2 namespace alias. Existing
vendor typed guest bindings are also distinct from source-compatible upstream
client migration. No supported legacy release, package or compiler identity is
inferred while the real shared profile is unavailable.

The genuine shared Jazzy `rclpy-jazzy-pubsub-v1` source candidate is now
consumed read-only by the owned guest component at
`example/platform/abb/py/ros2/joint_feedback_component`. Its single application
source is `include/platform/abb/transplate/ros2/rclpy/v0_1_0/joint_feedback.py`;
this vendor's external request is
`include/platform/fanuc/transplate/ros2/rclpy/v0_1_0/binding.request.json`.
All three compatible vendor bindings must consume the same complete future Wasm
bytes. The component contains nine actual guest assertion bodies and bounded
named JointState callbacks; it rejects host CPython. It has not been parsed,
built or executed. The request is unbound and grants no authority. The fixed
Jazzy guest API and external native provider distribution/ABI need separate
qualification; this does not claim Humble-source compatibility. Codec assertions
alone cannot satisfy any required official uwvm2-ros simulation row. Actions,
concurrent callback semantics and other unported legacy APIs remain required.

The first separately inventoried ROS2 simulation binding request is
`example/platform/fanuc/c/official_mock/mapping.request.json`, SHA256 `a10e21d365945246198462cad773b58f68d3e9273e4c3c4f46633ae47abb9c42`.
It is UNBOUND and grants no authority. Its original provider is
[FANUC-CORPORATION/fanuc_driver](https://github.com/FANUC-CORPORATION/fanuc_driver),
commit `da5db3f611cdc9dffe687e056c4e79bea584bf5c`; controller type
`fanuc_controllers/ScaledJointTrajectoryController`. Requested native joint order: `J1`, `J2`, `J3`, `J4`, `J5`, `J6`.

| Resource role | Requested exact native endpoint |
| --- | --- |
| `joint_state_topic` | `/fanuc_simulation/joint_states` |
| `position_action` | `/fanuc_simulation/joint_trajectory_controller/follow_joint_trajectory` |
| `controller_status_service` | `/fanuc_simulation/controller_manager/list_controllers` |

These endpoint strings are proposed resources for the selected ROS2 profile.
They do not qualify ROS1 endpoints, a live controller, a current ABI/RMW, native
provenance or an authorized alias. Physical endpoints are forbidden. Joint
position uses radians, with a canonical 0.001 rad bounded step and 0.00025 rad
post-result tolerance. Actual finite limits, source frame, mapping epoch, native
controller parameters and permission ownership must be independently bound.
Preserve the original ScaledJointTrajectoryController and its GenericSystem configuration. The mock profile is ideal command/state mirroring. It does not implement contact physics or commercial controller firmware. A standard JTC reference or renamed controller cannot qualify this profile.

Keep initialization/shutdown, actual message serialization, pub/sub/QoS,
services/actions, timers/ROS time, executors and concurrent callbacks, cancellation,
node/handle lifetime, lifecycle, parameters/discovery, stale/foreign references,
pause/reconnect/restart and permission-preserving update/rollback as separate
required semantics. The shared contract currently marks them unqualified. An
unsupported API must report its precise failure; it cannot fall back to a native
ROS client, socket tunnel, file tunnel or application sidecar.

The existing portable joint-step is a separate C/WASI reference at
`lib/platform/ros/portable/v0.1.0/joint-step.wasm`, whole SHA256
`c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043`.
Its same-byte vendor binding requirement remains mandatory. It is not a compiled
rcl/rclcpp/Python/Java legacy port. Every future compatible legacy application
must similarly keep its complete Wasm SHA unchanged across vendors; adapters and
grants remain external. A multi-module graph pins every member and adds coverage,
without replacing the single-unchanged-application requirement.

The existing official example exposes ordinary `xmake` and `xmake test`. Its
SDK-authored host ROS query implementation has been physically isolated. That
implementation was read-only, not a goal publisher. The current driverless
required-implementation declaration keeps all five scenario groups BLOCKED and
must produce non-success. A native finite reference, a source declaration or a
zero-test command cannot qualify migration. Original official processes and
plugins remain external environment; SDK-written launch composition is not an
upstream driver.

Restoration requires original Linux public commands and case counts, pinned
upstream source/licences/messages/patches/compiler, whole Wasm and graph/import
identities, exact VM/controlled-host/provider/process/library identities, unified
permission/audit decisions and causal command/result/native UUID correlations.
Fresh reverse state/sensor bytes must enter the same executing guest. Prove denied
ROS and file authority has no unauthorized native effect, then complete required
boundary, ownership, timeout/cancel, concurrency, lifecycle and rollback cases.
Preserve checked unwind, debugger/source ownership and measured off/on performance
requirements. All inventoried historical/current release/model/language/form/width
rows remain required; missing support is BLOCKED/NOT_RUN. No full migration,
official simulation, performance or dev single-executable claim follows from
this binding review.
