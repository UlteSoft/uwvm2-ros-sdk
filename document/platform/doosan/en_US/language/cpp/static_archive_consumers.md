# C archive with C and C++ consumers

Use `sdk/example/platform/doosan/cpp/ros2/doosan-ros2-jazzy-complete/static_archive_consumers`. The three ordinary Xmake targets are `algorithm_archive`
(`static`), `static_c_consumer` (`binary`) and `static_cpp_consumer` (`binary`).
The archive contains real relocatable Wasm objects; each application deploys as
one `.wasm`. `add_deps` selects the archive through the shared SDK link path.
The `.a` is a build input and is not required by the runtime.

Set `UWVM_ROS_SDK_ROOT` to the installed SDK, enter the example directory and run:

```sh
xmake f --plat=wasm-wasip1 --arch=wasm32
xmake static_c_consumer
xmake static_cpp_consumer
```

Select `--arch=wasm64` for the memory64 build. The SDK supplies its verified
LLVM23 closure; building requires neither uwvm2-ros nor native ROS. Each source
uses its actual declared C or C++ frontend. The public header supplies `extern
"C"` linkage to the C++ consumer. No pointer, allocator or C++ object crosses
this ABI. `algorithm_apply` computes `3 * value + 1` using modulo-2^32 unsigned
arithmetic; input 7 must print `{"archive_result":22}` and return zero.
Output failure returns 5; an unexpected result returns 22.

The unused archive member has a trapping constructor. Ordinary archive
extraction must leave that member unlinked. A successful run is paired with
the retained linker/member inspection; it alone does not describe every linker
option or prove a dynamic-library route.

Install uwvm2-ros separately to run the already built applications. Save this
explicit configuration as `deployment.json`, review the executable selection,
then use `UWVM_ROS_RUN_CONFIG=deployment.json xmake run static_cpp_consumer`
or select `static_c_consumer`. For wasm64, change `target` to `wasm64-wasip1`.
The launcher appends the selected application and does not widen this policy.

```json
{
  "format": "uwvm-ros-command-run-v1",
  "target": "wasm32-wasip1",
  "backend": "ros2",
  "distribution": "jazzy",
  "runtime": "uwvm2-ros",
  "runtime_arguments": [
    "--runtime-aot",
    "--runtime-llvm-jit-call-stack", "unwind",
    "--wasip1-global-noinherit-system-environment",
    "--ros2-global-disable"
  ],
  "application_arguments": []
}
```

ROS is explicitly disabled; default WASI basic streams remain available. No
robot endpoint or vendor message is involved in this scalar archive example.
The retained cohort covers four archives and sixteen C/C++ consumer executions
across the two platforms, wasm32/wasm64 and x86/QEMU AArch64. It does not qualify
the complete vendor API, native Humble, all languages or an ARM compiler host.
