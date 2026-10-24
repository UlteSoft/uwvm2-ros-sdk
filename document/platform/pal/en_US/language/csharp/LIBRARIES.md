# csharp shared scalar library

The standalone project is `example/platform/pal/csharp/ros2/ros2_humble_devel/shared_math`. It uses ordinary `set_kind("shared")`
for `math`, `set_kind("binary")` for `main`, and `add_deps("math")` through the
public Xmake interface. The producer is genuinely compiled from csharp;
the consumer is C#. This exact consumer pairing does not establish
every same-language or cross-language combination.

```sh
xmake f -p wasm-wasip1 -a wasm32 -c
xmake
export UWVM_ROS_RUN_CONFIG=/absolute/run-native-clr.json
xmake run main
```

Copy the project's `run-native-clr.json` and explicitly select the installed runtime and
gateway paths. The configuration preloads the same `math.wasm` twice, as `math`
and `math_peer`, each with attribute `none`. The exact preload argument pairs are
`--wasm-preload-library build/targets/6d617468/math.wasm math` and
`--wasm-preload-library build/targets/6d617468/math.wasm math_peer`.
Each alias owns its own memory, runtime, initialization and mutable state.
Only i32/i64 scalar values cross the imports; managed objects and pointers stay
in their defining module.

All three module policies explicitly set `ros_enabled=false`, `grants=[]`,
`wasi_grants=[]`. The public runner creates each module's WASI/ROS Single binding;
no ROS gateway is started. Default WASI retains basic standard-stream authority;
an empty extra-grant list does not mean zero descriptor rights. No environment,
filesystem or socket permission is added by the run hook.

The example checks signed arithmetic, a real caught overflow and finally counts,
two isolated instances, and each initialization count1. These are wasm32 scalar
component checks. They do not qualify PAL vendor messages, native ROS, memory64,
static archives or arbitrary object/reference ABI values. Genuine CLR producers
use the common fixed Mono LLVMOnly runtime/compiler pair; F# uses the original
`--optimize=-inline` option only for its shared primary assembly, with unchanged
user methods and exception handlers.

The separate Java four-module native ROS2 example and its exact manual grants
are documented in `document/platform/ros2/en_US/language/java/PRELOAD.md`.

[Public ABI migration](PUBLIC_ABI.md) explains the canonical binding, typed endpoints and run policy.
