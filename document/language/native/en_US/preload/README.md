# Public mixed-language preload example

The ROS1 and ROS2 projects in `example/language/native/preload` use the common
public provider and dispatch. They declare `set_language`, `set_ros_platform`,
`set_kind`, `set_arch`, and `set_ros_run_config`; their compiler lifecycle is
owned by the installed SDK.

The graph contains a D static archive, a Zig algorithm shared module, a D I/O
shared module, an Objective-C communication shared module, and a Zig application.
Only the four Wasm modules are deployed. The static archive is a build input;
the linker must extract its referenced `scalar_bias` symbol.

| Target | Kind | Language | Runtime authority |
| --- | --- | --- | --- |
| bias | static | D | Not deployed |
| algorithm | shared | Zig | No extra WASI rights; ROS disabled |
| io | shared | D | WASI standard output; ROS disabled |
| ros_comm | shared | Objective-C | One exact String publish grant and realtime clock |
| main | binary | Zig | WASI arguments/standard streams; ROS disabled |

Each module owns its linear memory. Cross-module calls pass scalar integers.
The import names `algorithm`, `io`, and `ros_comm` match the explicit preload
names. No memory, raw pointer, allocator ownership, or ROS handle is transferred.

Set `UWVM_ROS_SDK_ROOT` to the installed SDK, enter the ROS1 or ROS2 project, and
build with Xmake alone:

```sh
xmake f -P . -c --yes -p wasm-wasip1 -a wasm32
xmake build -P . -r -vD --yes
```

Omitting `-a` selects wasm32. Select `-a wasm64` to build every target at memory64.
The target kind is unchanged: `bias` produces `libbias.a`, and the other targets
produce independently instantiated `.wasm` modules. Intermediates and compiler
caches are excluded from the deployment files.

Copy `deployment.example.json` to `deployment.json` for a wasm32 build.
For memory64 copy `deployment64.example.json` to `deployment.json` instead. Set the installed runtime and matching
native gateway paths. Set the exact ROS connection, String type identity, topic,
bounds, and all three preload paths. The application target uses
`build/main/main.wasm`; the preload files are in `build/io`, `build/algorithm`,
and `build/ros_comm`. All must have the same selected memory width.

Start the genuine native ROS environment and an independent native String
subscriber on the configured outgoing topic. ROS1 selects Noetic and the chosen
master URI; ROS2 selects Jazzy, domain 149, and the configured RMW implementation.
The SDK run action manages its worker and gateway. It does not start the master
or the independent subscriber.

The application declares `set_ros_run_config` with this literal `deployment.json`
path. After editing that manual file, use the public run entry:

```sh
xmake run -P . main
```

Keep the same architecture configuration used for the build. The JSON is read by
the run action. A compile-time ROS platform selection identifies the import
family; it grants no native operation. In particular, `io` remains WASI-only at
runtime. The deployment explicitly disables ROS on main, algorithm, and io.
Only `ros_comm` receives its one exact publish capability and `realtime-clock`.
The pinned Preview1 `nanosleep` implementation uses the realtime clock.
No global ROS grant, inherited environment, filesystem, socket, or random grant
is added to any module.

Input 9 computes 38; input 53 computes 170. The independent subscriber must
receive the same complete native String value. ROS1 publishes the same value
twice with one bounded 1000-ms discovery interval because its native publisher
is created on the first publish. A subscriber may receive both values. ROS2
uses one bounded 500-ms pacing interval. A delay alone does not establish
subscriber readiness.

A successful process exit is insufficient: preserve the actual Wasm hashes,
native type identity, complete native serialized message, worker/gateway policy,
resource-create/resource-close audit, and cleanup result. The command owns one
ROS resource and closes it once. It issues no robot-control operation.
Runtime-free Objective-C compilation here does not qualify ARC, object
allocation, message dispatch, every native language pair, or vendor messages.
