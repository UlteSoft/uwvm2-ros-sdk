# Four independent modules: original NVIDIA Array

The application receives the unchanged `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray` through real ROS2 Jazzy DDS. Each target owns a separate Core memory and table. The C++ algorithm uses the public C record codec through an `extern "C"` scalar module ABI; its source and compiler frontend are C++.

| Module | Language | Owned state and work | Explicit extra authority |
|---|---|---|---|
| main | C | Alias bytes and orchestration | None |
| io | C | Wire/report storage, generation token, stdout, idle wait | WASI monotonic-clock |
| algorithm | C++ | Complete typed Array, signed id sum, whole-wire FNV-1a | None |
| ros_comm | C | Alias, ROS owner/raw handles, complete Array and wire | One Single subscription, module-exports |

Alias and wire bytes cross one integer scalar at a time. Addresses, records, borrowed spans and ROS handles remain in their owning module. IO's opaque 64-bit token identifies a storage generation. Commit retires writes before report output; a stale write returns 9 without changing bytes. ROS owners are cleaned before output, including error paths.

The algorithm decodes every field, sums original ids in 64 bits and hashes every canonical byte. The fixture has two distinct detections, four corners and 36 covariance values per detection. The independent oracle compares all nested fields and all 72 covariance values with the native observation, then recomputes the checksum from the wire.

Direct ROS probes in main/io/algorithm must each return 13. Algorithm clock/random and ros_comm clock calls must return raw WASI 76 and preserve their private sentinel outputs. IO's separately granted wait must succeed. Every probe is checked independently, including transport-denied cases.

## Build

From this example directory:

```sh
export UWVM_ROS_SDK_ROOT=/absolute/sdk
xmake f -c -y -a wasm32 --ros-tool-cache=/absolute/shared/tool-cache
xmake -vD -j1
```

Use a separate project directory with `-a wasm64` for actual 64-bit memories and tables. Outputs are `build/main/main.wasm`, `build/io/io.wasm`, `build/algorithm/algorithm.wasm` and `build/ros_comm/ros_comm.wasm`. Ordinary shared Xmake targets use the public owned-memory Core preload model, including real Core start sections. No private compiler or custom module DSL is required. `run.autobuild=false` preserves built bytes during execution.

Read [deployment](DEPLOYMENT.en.md). Build selection and linking grant no runtime authority.
