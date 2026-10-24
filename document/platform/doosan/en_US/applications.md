# Complete-value Doosan examples

Start with `raw` admission, then `state`, then explicitly supplied `command`
data. The [kit guide](../README.md) provides exact build and entry commands for
all six languages and all twelve source selections. Every example starts with
zero ROS authority. A denied open must return 13 before an actuator payload is
read. These finite examples use basic stdin/stdout/stderr only.

| Layer | C / C++ | Rust | JavaScript / AssemblyScript | TinyGo |
| --- | --- | --- | --- | --- |
| Controlled ABI | `roswasm/ros1.h` or `ros2.h` | `roswasm::Capability` | Selected `Session` / `NativeApi` | Selected `roswasm` backend |
| Complete values | Generated `bounded_records.h/.hpp` | Generated `bounded_records.rs` | Generated `bounded_records.mjs/.ts` | Generated records copied unchanged into `records_SELECTION` |
| Owned state/stop operation | `state.h/.hpp`, `guest.c/.cc` | `rust/lib.rs`, `rust/main.rs` | `telemetry_SELECTION`, `guest_SELECTION.mjs`, `main_SELECTION.ts` | `go/main.go`, exact backend tag |
| Typed services/actions | Generated `bounded_interfaces.h/.hpp` | Generated `bounded_interfaces.rs` | Generated `bounded_interfaces.mjs/.ts` | Generated `interfaces.go` in the same selected records package |

The following API map uses the Humble source domain. It identifies actual
generated types; choose the matching family and names for every other domain.
Never mix records from distinct source domains merely because they have the
same ROS package spelling.

## Query controller state through a service

`GetRobotState` is separate from subscribing to `RobotState`. The request is
an original empty request, and the response retains both `robot_state` and
`success`. A successful transport must still inspect `success` before using
the state. An observation-topic grant does not grant a service call.

| Language | Exact typed client | One synchronous call | Cleanup |
| --- | --- | --- | --- |
| C | `roswasmc_capability` and complete generated request/response | `roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_call` | `roswasmc_close`, retain its status separately |
| C++ | `uwvm_custom::Ros2Dsr_msgs2SrvGetRobotStateClient` | `call(request, response)` | `close()` |
| Rust | `bounded_interfaces::Ros2Dsr_msgs2SrvGetRobotStateClient` | `call(&request)` | `close_checked(primary)` |
| JavaScript | `Ros2Dsr_msgs2SrvGetRobotStateClient` | `call(request)` | `closeChecked(primary)` |
| AssemblyScript | `Ros2Dsr_msgs2SrvGetRobotStateClient` | `call(request)` | `closeChecked(primary)` |
| TinyGo | `NewRos2Dsr_msgs2SrvGetRobotStateClient` | `Call(request)` | `CloseChecked(primary)` |

Open the exact explicit service alias once. Check construction/open errors
before calling. Construct the complete empty request type; do not fabricate a
payload field. Call once, inspect the complete response and close the owner.
Preserve the primary error and each cleanup error. If construction acquired
some roles before a later refusal, inspect the generated rollback carrier;
do not discard its cleanup facts or reopen automatically.

For asynchronous use, select a distinct, freshly owned completion observer.
The generated `submit`/`Submit` function uses the real `service_submit` import.
Its returned full-width request ID acknowledges admission, not completion.
Poll the existing unified event decoder through the generated owner, checking
the original backend, source, stream sequence, instance/session and owned
correlation. Do not let a second consumer dequeue that observer's events.
One pending request corresponds to one terminal response/error. Idle is not
permission to submit the request again.

## Execute an explicit joint action

For the retained ROS2 controller's stop path, use the analogous complete
`MoveStop` service owner for `motion/move_stop`, preserving the supplied
`stop_mode` and checking the response's `success`. Do not substitute publication
of `RobotStop` merely because the message declaration exists. The standalone
message-publication lesson requires an actual independently admitted subscriber.

The ROS2 domains contain complete `JogH2r`, `MovejH2r` and `MovelH2r` actions.
For `MovejH2r`, the original goal has six `target_pos`, six `target_vel` and six
`target_acc` values; the result has `success`; feedback has six `pos` values.
The generated `Ros2Dsr_msgs2ActionMovejH2rClient` is available in every managed
binding and C++ (under `uwvm_custom`). C uses the corresponding
`roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_*` functions with an explicitly
initialized `roswasmc_action_bundle`.

Acquire distinct send-goal, cancel-own, feedback and result aliases. A wider
cancel-any alias is optional and independently privileged. If any required
open fails, close the roles already owned and return the original failure
plus all rollback results. No example should add cancel-any authority merely
to execute one owned goal.

Only after all roles are admitted, load a caller-supplied complete goal. Check
the selected controller/model, units, joint order, bounds and freshness in the
qualified native bridge. Send once and retain the returned nonzero goal ID.
Poll feedback/results only for an ID owned by that client. A terminal result
retires that ID; cancellation acceptance is not a terminal result. On timeout
or an unknown outcome, report the ambiguity and follow the independently
qualified controller procedure. Closing or revoking a Wasm owner cannot
certify a physical stop.

The ROS1 branches do not declare these ROS2 actions. They retain their full
original motion services and stream messages. The SDK does not manufacture a
ROS1 action definition to make an API table look uniform.

## Implement a callback server

Generated `GetRobotStateServer` and action `Server` types own separate
advertise/respond authorities. Call `poll_once`/`process_once` (or the language's
corresponding spelling) from a caller-driven bounded executor. Handler changes
apply to the next dispatch; do not recursively poll the same owner from a
callback. Keep each request/goal ticket distinct from a capability handle.
Validate a complete response or result before sending it once. Preserve a
delivered ticket if callback evaluation fails and the generated owner still
permits an explicit response; never convert that failure into an automatic
replay of the incoming actuator request.

The generated owner source contains the precise operation names, complete
types, finite pending limits and cleanup contracts. Source examples and
generated owners are not evidence that native robot delivery or original
driver tests have passed; consult the dated qualification record.

The authoritative SDK is sdk/include/platform/doosan/; applications and actual xmake entries are sdk/example/platform/doosan/. Catalog/schema inputs are sdk/share/platform/doosan/catalogs/. Old one-shot source-copy emitters and optional CMake wrappers are retired. Formatting, compilation, relocated installation and Guest/native acceptance are independent checks. Upstream native reference captures are optional external maintainer-cache inputs, never a normal SDK dependency or fallback.
