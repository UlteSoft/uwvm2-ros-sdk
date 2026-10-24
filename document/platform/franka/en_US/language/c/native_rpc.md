# Original Franka ROS1 service and action clients in C

The examples `call_native_joint_impedance` and `call_native_grasp` use the
original Noetic interfaces through the common ROS capability API. Their sources
are under `sdk/example/platform/franka/c/ros1`. Each directory contains an
independent Xmake project and an explicit native deployment template.

## Build and deployment

Set `UWVM_ROS_SDK_ROOT` to the installed SDK, enter either example directory,
and build with Xmake. The common producer restores the pinned LLVM 23 compiler
and target inputs. Compilation does not require a ROS installation or a VM.

```sh
export UWVM_ROS_SDK_ROOT=/opt/uwvm2-ros/sdk
xmake f -a wasm32
xmake
```

Use `xmake f -c -a wasm64` followed by `xmake` to select a real memory64
application. `set_language("c")`, `set_ros_platform("franka")`,
`set_ros1_version("noetic")` and `set_plat("wasm-wasip1")` describe the shared
build request. The ordinary Xmake architecture selection takes precedence over
the example's wasm32 default. The application output is one `.wasm` file.

Copy `deployment.template.json` to `deployment.json`. Select the installed
runtime, gateway, ROS master and offline fixture endpoint yourself. The runtime
and gateway must have matching original Franka type registries and codec
identities. Review every grant before running:

```sh
cp deployment.template.json deployment.json
# Edit deployment.json for the installed, source-matched native environment.
UWVM_ROS_RUN_CONFIG=deployment.json xmake run main
```

`run.autobuild` is disabled: the run command uses the existing application and
does not require compiler caches. The launcher preserves the supplied policy.
The examples use controlled ROS fixtures; they do not start a physical robot.

## Joint impedance service

`call_native_joint_impedance` imports
`<franka/c/ros1/franka-ros1-complete/bounded_interfaces.h>` and the shared ROS1
backend. It sends all seven `joint_stiffness` values in
`franka_msgs/SetJointImpedanceRequest` once, in N·m/rad. The `sample` argument
selects the manually granted `service.call` capability. The template bounds the
request to 56 bytes and the response to 261 bytes.

The complete native response contains `success` and `error`. A valid
`success=false` response remains business data and is printed with its complete
encoded bytes. Transport, codec and cleanup errors remain separate. The guest
closes its acquired capability, reports both statuses, and returns the primary
error before any cleanup error. It does not replay a timed-out request.

## Grasp action

`call_native_grasp` fills the original goal's width, speed, force and both
epsilon tolerances. Width and tolerances use metres, speed uses metres/second,
and force uses newtons. Four independently named capabilities own the send,
own-goal cancel, feedback and result roles. The example sends one goal, observes
the original empty feedback, consumes the complete terminal result, checks that
the local goal table has retired the goal, and closes all four owners.

Only idle status 11 permits another poll. Each observation permits at most 250
attempts, separated by 20 ms pauses; exhausted polling returns 110. The template
therefore explicitly grants `monotonic-clock` to the main module. Other errors
return immediately. The acquired cancel role is closed during cleanup; this
example does not invoke cancellation. The result's business status is distinct
from transport success and cleanup status.

## Reviewed scope

The source delivery has four real Xmake producer builds and sixteen actual
`xmake run main` checks: two clients, two guest widths, two native hosts and
both granted and denied policies. The native hosts are x86_64 and QEMU AArch64;
the same four Wasm artifacts are reused on both. All checks used measured
64 GiB, zero-swap Linux cgroups. The parent compared complete native values,
unchanged artifact and policy hashes, and action feedback retirement.

The published C source has the same non-comment tokens as the tested source;
formatting and explanatory comments were reviewed separately. These results
cover these clients only. Server implementations, actual cancellation, ARM-host
source compilation and physical-controller behavior require separate acceptance.
