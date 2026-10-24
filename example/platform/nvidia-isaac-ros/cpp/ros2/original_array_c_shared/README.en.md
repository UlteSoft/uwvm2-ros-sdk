# Original Array: cpp consumes c shared

This example receives the complete original `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray`, preserves every nested field, re-encodes it and passes the full canonical payload through a genuine c producer. Output contains the full wire, detection count, signed id sum and FNV32 over every payload byte. Quaternion values are not normalized.

Only scalar bytes, indices and opaque generation tokens cross the module boundary. Sealing retires writes; closing retires reads. Stale writes return 9. Producer ROS/clock probes return 13/76, and the denied clock output remains unchanged. Default Preview 1 WASI retains basic standard streams.

Set `UWVM_ROS_SDK_ROOT` to the installed SDK:

```sh
xmake f -a wasm32
xmake -vD -j1
```

Use `-a wasm64` for real memory64/table64. Unsupported targets are diagnosed without width fallback. Both languages use the pinned shared LLVM 23 compiler. Build requires Xmake and the SDK dependency closure; the runtime and native ROS installation are needed only for execution. Ordinary `set_kind` and `add_deps` describe this graph.

Deploy `build/main/main.wasm` and `build/array_c/array_c.wasm`. The latter owns separate memory/table.

Read `DEPLOYMENT.en.md`. Mode 0 closes normally; 1 closes/reopens and checks old handle status 9; 2 revokes and requires reopen status 125. Denied acquisition returns 13 without a native subscription. Each width and x86/QEMU execution requires its own evidence. Source availability does not qualify GPU, NITROS or a real ARM compiler host.
