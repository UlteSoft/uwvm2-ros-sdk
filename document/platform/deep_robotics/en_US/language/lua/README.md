# deep_robotics: lua complete-value observations

The pinned source revision is `9ea6ee94bfe90c9a36f5799d39f8dc1d821128db` from `DeepRoboticsLab/sdk_deploy`.
Official drdds ROS2 source plus complete standard dependencies. Read `share/platform/deep_robotics/catalogs` for every original
definition, including dependencies; every field and bound remains part of the
record identity. Source definitions do not supply native runtime type identity.

Install the SDK and set `UWVM_ROS_SDK_ROOT`. Each of the three examples under
`example/platform/deep_robotics/lua/ros2` has its own Xmake project and real
source. `set_language`, `set_ros_platform`, `set_ros2_version`, `set_arch` and
`set_plat` select one target. Plain `xmake` builds one `.wasm` from shared
verified language/LLVM inputs, with no installed ROS/runtime required. The
provider reads the pinned vendor version from `ros.deep_robotics.version` (default
above), and validates optional `ros.deep_robotics.model` against provider.json.
The firmware, topic/service/action resources, transport, QoS, native registry
and physical limits are explicit deployment inputs. No source version implies
a firmware or actual hardware model. Guest threads/WASI Preview2 are separate
open routes, never silently coerced to this Preview1 profile.

Import the public `deep_robotics/lua/ros2/observation` module. `wait_<operation>(alias, attempts, pause)`
returns the complete typed value and independent `primary`, `cleanup`,
`cleanup_present`, `response_present`, `rpc_present`, `rpc_status`, `polls`,
`required_present`, `required`, `length` and `wire_hex` facts. `output(result)`
prints all canonical response bytes after cleanup, then returns the primary,
cleanup or output error in that precedence, capped to process status 125.
The exact generated record module exposes all original fields, constants,
defaults, native identity (possibly absent), codec identity and byte quotas.
Construction grants no ROS authority. Encode/decode reject complete malformed,
truncated and trailing data; a canonical identity is never a native identity.

`alias` must already name an independently type-bound, user-granted topic.
`attempts` is an integer 1..250. For multiple polls `pause` must be a callable
that waits 20 ms using the explicitly granted monotonic clock and returns its
actual WASI errno. Only idle errno 11 permits another poll of the same owner.
Denial 13, domain 22, capacity 90 and all other failures stop immediately.
No service, publish or command effect is replayed. Ordinary acquired paths close
exactly once. Fatal traps/allocation exhaustion require the outer instance's
retirement and cannot promise ordinary finalizer cleanup.

The three example operations are listed in their source and each uses a
distinct full record. Observing a command-valued topic remains an observation;
these examples never actuate physical hardware. Full catalog codec regression
is additional to the three application flows.

For deployment, install `uwvm2-ros` and manually prepare the native ROS registry,
gateway and policy. Set `UWVM_ROS_RUN_CONFIG` to JSON with format
`uwvm-installed-runtime-launch-v1`, literal `runtime_arguments` containing your
manual permissions/provider options, and `application_arguments` containing
the exact alias. `xmake run` adds only `--run` and the existing Wasm path.
`UWVM_ROS_RUNTIME` may name the installed executable. Build never grants rights
or needs the runtime. Native ROS/architecture acceptance of the delivered bytes
is recorded separately; it cannot be inferred from source or packaging.

Current accepted configuration choices: [shared provider configuration](../../CONFIGURATION.md).
