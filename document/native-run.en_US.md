# Native ROS execution and module permissions

Building with `xmake` produces the application Wasm. Running with `xmake run`
requires a separately installed uwvm2-ros runtime and a manually reviewed
deployment JSON. Enabling ROS in any loaded module additionally requires its
matching native gateway and the selected ROS environment. Select
that file with `set_ros_run_config`, `--ros-run-config` or
`UWVM_ROS_RUN_CONFIG`. Compilation grants no ROS or extra WASI permissions.

## Public build declarations

```lua
includes(path.join(os.getenv("UWVM_ROS_SDK_ROOT"), "tools/xmake/ros.lua"))
target("abb_reader")
    set_kind("binary")
    set_language("cpp")
    set_ros_platform("abb")
    set_abb_version("complete")
    set_ros2_version("jazzy")
    set_ros_scenario("read_speed")
    set_arch(get_config("arch") or "wasm32")
    set_plat("wasm-wasip1")
    add_files("main.cpp")
target_end()
```

Use `set_ros1_version` for ROS1. Agibot also exposes `set_agibot_version` and
`set_agibot_variant`; their combined selection must agree with the original
source profile. All version setters validate provider choices. A catalog version
identifies interface source, not controller firmware compatibility. There are
no unprefixed version setters or alternate scenario setters.

## Deployment contract

`uwvm-native-ros-run-v2` requires `runtime`, `backend`, `distribution`,
`connection` and `examples`. The `gateway` executable is required when any main
or preload module sets `ros_enabled: true`. Runtime and gateway paths are explicit
executable paths, resolved relative to the JSON file. An optional `runtime_loader` and
`runtime_library_path` pair selects a native ELF loader and its library directory.
An enabled native deployment must use matching runtime and gateway type registries.

When every loaded module sets `ros_enabled: false`, omit `gateway`. The launcher
starts only the VM; it neither resolves an unused gateway path nor checks the
shell's `ROS_DISTRO`. Keep `backend`, `distribution` and `connection` explicit:
they identify the selected build and policy schema, even for a codec-only program.
WASI grants remain explicit and ROS grants must be empty. Enabling even one
preload restores the gateway requirement and the sourced-distribution check.

Each `examples` entry has exactly four fields:

| Field | Meaning |
| --- | --- |
| `arguments` | Exact application argument array, including the alias and any signal name. Empty strings and argument-looking text remain arguments. |
| `main_module` | Explicit main-module name used by the runtime's Single policy binding. |
| `preloads` | Ordered objects containing `module`, `path` and `attribute` (`none` or `copy`). Paths select real compiled `.wasm` libraries. |
| `modules` | One explicit policy for every loaded module, including main. Missing, extra and duplicate identities are errors. |

Each module declares Boolean `ros_enabled`, `grants` and `wasi_grants` arrays.
`grants: []` authorizes no ROS operation. A disabled module must have no grants.
Each grant contains `alias`, `operation`, `resource`, `type`, `identity` and
`limits`. Multiple grants support paired services, actions, event observation
and other operation families without a scenario whitelist. Native registry and
operation-schema checks remain authoritative; a syntactically accepted JSON does
not prove a type, operation or required QoS profile is installed.

ROS1 identities are actual generated native MD5 values. ROS2 identities are
actual generated RIHS01 values. Canonical codec fingerprints belong in
`adapter-codec-identity`; they never substitute for native identities. Complete
message/service/action adapters must be compiled into both the runtime registry
and native gateway. Merely installing guest headers does not install an adapter.

The module may override its complete `connection` map to select a distinct node
identity. The launcher starts a separate gateway for each enabled module, with
that module's exact grants, socket and the stopped worker's actual UID/PID.
It never combines unrelated modules' grants. Optional `worker_limits` and
`gateway_limits` replace only documented local timeout/audit/session bounds.
Unknown keys and duplicate JSON keys are errors.

## Preload: io, algorithm and ros_comm

The complete editable structure is in
`share/platform/ros/native-preload.template.json`. Replace its explicit
paths, operation and native identity with the ones belonging to the actual
compiled library exports. The application must import those exact module names
and function signatures; a JSON file cannot turn a command into a library.

| Module | Additional WASI grants | ROS policy |
| --- | --- | --- |
| `main` | None | Disabled; calls reviewed library exports. |
| `io` | Explicit `monotonic-clock` in this template | Disabled. |
| `algorithm` | None; basic default WASI streams remain | Disabled. |
| `ros_comm` | None | Only the manually listed ROS operations; explicit export delegation. |

ROS imports normally reject cross-module ancestry. A reviewed ROS library can
explicitly select `call_boundary: "module-exports"`, which emits
`--ros2-single-call-boundary ros_comm module-exports` (or the ROS1 spelling).
The default is `same-module`; omitting the field preserves the rejection.
This choice is available only for an explicitly named Single module, and does
not grant ROS authority to its callers. A direct ROS import in `algorithm`
still fails. Handles remain bound to their owning module and generation;
revocation and permanent retirement checks still apply.

Export delegation deliberately lets callers invoke the reviewed module's public
operations. The library must validate arguments and expose only intended
operations. It is not a caller allowlist. A module that should never act on
another module's behalf should retain `same-module`.

`runtime_features` selects registered Core feature names. Features are emitted
before preload loading. `wasm64-wasip1` enables memory64 and table64, matching
the selected LLVM 23 target closure. This pointer ABI is Uwvm's Preview 1 extension.
Parser features do not grant native host permissions.
Every module disables host environment inheritance and receives no directory or
socket preopens. Default WASI stream access is not a claim of zero authority.

## ABB read-speed example

The C and C++ `read_speed` directories contain `deployment.template.json`.
Replace the native identity placeholder with the independently exported
`abb_robot_msgs/srv/GetSpeedRatio` RIHS01 and select the matching gateway.
`arguments: ["sample"]` supplies the actual alias. `read_io` instead needs
the alias and signal name and its own original type, codec and bounds.

Source the ROS environment, build with `xmake`, set `UWVM_ROS_RUN_CONFIG` to
the reviewed JSON's absolute path, then invoke `xmake run`. The launcher starts
neither physical controllers nor validation peers. Runtime logs, policy files,
exact artifact hashes and process results go under `.uwvm-ros/native-ros/run`;
the deployable application directory contains only Wasm outputs.

## Acceptance

The current source migration and deployment implementation are reviewable.
Positive vendor exchanges, all library language combinations and QEMU AArch64
execution require separate recorded tests. In particular, a runtime predating
the explicit call-boundary implementation cannot run the delegated Preload
example. The public review index records these outstanding acceptance limits.

## Explicit gateway startup arguments

A module policy may contain `gateway_arguments`, an optional array of at most
16 UTF-8 strings and 8192 encoded bytes in total. The default is an empty array.
Arguments are passed unchanged after the generated gateway policy path, without
a shell. Empty elements and spaces are preserved. NUL bytes, invalid UTF-8, and
nonempty arguments on a module with `ros_enabled: false` are rejected before
process creation.

For a gateway built with the original owned RMW service profile, explicitly set
`"gateway_arguments": ["--owned-rmw-service-profile", "/opt/uwvm-ros/profiles/services.json"]`
on the ROS module. Use an absolute profile path readable by that gateway. Each
module has its own argument array, policy, socket, worker binding, and grants.
Startup arguments neither grant ROS operations nor change the submitted policy.
The selected gateway must implement the requested option; unsupported arguments
remain startup errors and are retained in its log.
