# Original Array: cpp consumes c static

This example receives the complete original `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray`, preserves every nested field, re-encodes it and passes the full canonical payload through a genuine c producer. Output contains the full wire, detection count, signed id sum and FNV32 over every payload byte. Quaternion values are not normalized.

The producer borrows the payload synchronously within the application memory and retains no pointer. Malformed input must leave every output field unchanged. The archive contains two genuine relocatable objects: the summary implementation is selected and the independent unresolved sentinel member must remain unselected.

Set `UWVM_ROS_SDK_ROOT` to the installed SDK:

```sh
xmake f -a wasm32
xmake -vD -j1
```

Use `-a wasm64` for real memory64/table64. Unsupported targets are diagnosed without width fallback. Both languages use the pinned shared LLVM 23 compiler. Build requires Xmake and the SDK dependency closure; the runtime and native ROS installation are needed only for execution. Ordinary `set_kind` and `add_deps` describe this graph.

Deploy only `build/main/main.wasm`; the indexed `.a` is a build input.

Read `DEPLOYMENT.en.md`. Mode 0 closes normally; 1 closes/reopens and checks old handle status 9; 2 revokes and requires reopen status 125. Denied acquisition returns 13 without a native subscription. Each width and x86/QEMU execution requires its own evidence. Source availability does not qualify GPU, NITROS or a real ARM compiler host.
