# deep_robotics: c source/API and example guide

Use public `<deep_robotics/c/observation.h>` and the complete backend-specific
`<deep_robotics/c/ros2/records.h>`. The C interface owns complete inline values and exposes transactional exact-width codecs.

The complete preserved source catalogs are under `share/platform/deep_robotics/catalogs`.
Deep Robotics includes every 26 original/dependency definitions and the actual
service components. Booster retains all official declarations plus the distinctly
named SDK bridge; LimX declarations are explicitly authored bridges preserving
native SDK values. No bridge hash or canonical codec identity substitutes for
an independently exported native RIHS identity. Legacy long public type paths
remain available and their imports now resolve through global SDK roots.

- `deep_robotics_wait_imu(alias, output)` reads complete `drdds/msg/ImuDataValue`.
- `deep_robotics_wait_joint(alias, output)` reads complete `drdds/msg/JointData`.
- `deep_robotics_wait_robot_status(alias, output)` reads complete `drdds/msg/RobotStatus`.

Each observation borrows a NUL-terminated UTF-8 alias of 1..255 bytes and writes
an exclusive complete typed output only after exact decoding. Output must be
disjoint from the alias and all scratch/owner storage, valid until return.
The helper opens one existing user-granted exact-type subscription, polls at
most 250 times, waits 20 ms only after idle errno 11, and closes once. Denial,
capacity or wire failures never replay a possibly consuming operation. Fatal
traps require outer instance retirement. No owner or pointer escapes the call.

The returned `uwvm_vendor_observation` retains primary/cleanup errors,
cleanup/response/RPC presence, exact original RPC length and poll count. The
output helper emits the entire canonical value after cleanup and preserves
primary, cleanup, codec and stdout failure precedence. The real record APIs
expose validity, exact wire measurement, transactional encode and exact decode.
Encoding validates before writing; invalid/truncated/trailing data must leave
caller-owned output unchanged. Do not serialize C/C++ padding or native ROS
objects. Fields retain original widths, signedness, fixed/sequence/string
bounds, constants and defaults; units remain exactly the source declarations.

There are three independent projects in `example/platform/deep_robotics/c/ros2`,
each reading a different complete record. A command-valued topic is observed,
never published to hardware. Each `xmake.lua` uses the shared `set_language`,
`set_ros_platform`, `set_ros2_version`, `set_arch`, `set_plat` and scenario selectors.
Set `UWVM_ROS_SDK_ROOT`, then run `xmake` in a project. The actual LLVM 23.1.4 C-family
frontend and selected memory32/memory64 target libraries come from the one
verified SDK closure; compilation needs no installed ROS or uwvm runtime.
`build` contains only the final `.wasm`. C FFI and Objective-C facade compilation
do not establish the additional source-language/runtime features described above.

Source version and optional model are selected with `ros.deep_robotics.version` and
`ros.deep_robotics.model`, validated by provider.json. Firmware, physical limits,
native registry, actual aliases, transport and QoS are explicit deployment
inputs. ROS1, Preview2, threads and unqualified source/model combinations are
open work, never target coercions or inferred compatibility claims.

For `xmake run`, install uwvm2-ros and prepare the real native ROS deployment
yourself. `UWVM_ROS_RUN_CONFIG` names the documented
`uwvm-installed-runtime-launch-v1` JSON with literal `runtime_arguments` and
`application_arguments`. The adapter adds only `--run` and the existing Wasm;
it does not grant capabilities or start physical actuation. Engine, codec,
native ROS and QEMU AArch64 evidence are separate; use the handoff coverage for
the exact delivered bytes and never infer execution from a successful build.

Current accepted configuration choices: [shared provider configuration](../../CONFIGURATION.md).
