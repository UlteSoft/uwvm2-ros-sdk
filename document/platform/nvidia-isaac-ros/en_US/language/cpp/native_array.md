# Original AprilTag array clients and module permissions

The project is installed at `sdk/example/platform/nvidia-isaac-ros/c/ros2/original_array_modules`.

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

Read deployment (`sdk/example/platform/nvidia-isaac-ros/c/ros2/original_array_modules/DEPLOYMENT.en.md`). Build selection and linking grant no runtime authority.


# Explicit four-module deployment

Follow the source guide (`sdk/example/platform/nvidia-isaac-ros/c/ros2/original_array_modules/README.en.md`) and independent single-module native build guide (`sdk/example/platform/nvidia-isaac-ros/c/ros2/original_array/DEPLOYMENT.en.md`). Use the same original registry/converter and a real original-type publisher. The reproducible type-only package is `src/platform/nvidia-isaac-ros/native/first-array-jazzy/interfaces`; exact source pins and retained official-generator evidence are in `share/platform/nvidia-isaac-ros/native/first-array-jazzy/native-type-support-inputs.json`. Source ROS2 Jazzy, then:

```sh
cmake -S "$UWVM_ROS_SDK_ROOT/src/platform/nvidia-isaac-ros/native/first-array-jazzy/interfaces" -B "$BUILD/interfaces" -DCMAKE_INSTALL_PREFIX="$BUILD/interfaces-install"
cmake --build "$BUILD/interfaces" --parallel 1
cmake --install "$BUILD/interfaces"
```

The driver preserves both NVIDIA message definitions and uses official rosidl_default_generators with the standard dependencies. Supply actual target toolchain/prefix settings for a cross build. Source its installation before gateway construction. This builds only interfaces. Original Array RIHS is `RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff`; verify all nine original identities.

Copy deployment.template.json to an operator path. Set real native runtime/gateway absolute paths. The three preload paths are relative to the configuration directory; replace them with absolute built-file paths if needed. Order is io, algorithm, ros_comm, attributes none. The main artifact comes from Xmake's main target. Every module keeps its own memory/table.

Only ros_comm is ROS-enabled with the sample Single subscription. Module-exports explicitly permits entry through its scalar exports; callers acquire no direct ROS authority or handle. Main/io/algorithm are explicitly ROS-disabled. Only IO has extra WASI monotonic-clock. No global ROS grant, inherited system environment, filesystem or network grant is added. The public gateway_arguments field is an explicit vector, empty here.

Match topic/domain to the real publisher. The finite fixture uses `/sdk_fixture/nvidia/AprilTagDetectionArray`, domain 137, reliable/volatile keep-last depth 10, 9872-byte messages, 98720-byte queue, burst 10 and 262144 bytes/second. Keep original RIHS and canonical codec identity. Oversized complete values are refused rather than truncated. Replace test security settings for a secured deployment.

```sh
export UWVM_ROS_RUN_CONFIG=/absolute/operator/deployment.json
xmake run main
```

For wasm64, the public launcher inserts memory64/table64 before the first preload. Retain the new `.uwvm-ros/native-ros/run/original_array_modules-*` directory. Record Xmake's outer status separately from execution.json.exit_code, the exact worker exit. Configuration and all four Wasm hashes must match before/after. Check exactly four modules, only ros_comm's ROS enablement/alias, only IO's extra clock, real worker PID in gateway policy, resource audits, every original field/checksum and cleanup without forced termination.

Finite controls: remove ros_comm's grant (ungranted), or retain it and change only its boundary to same-module (ancestry denial). Both workers must return 13, empty wire, zero resources and no native subscriber. Mode 1 closes/reopens: old poll/repeated close/old-again are 9; reopen is 0 with a distinct handle. Mode 2 revokes: old-handle results stay 9; alias reopen is 125. Positive mode 0 creates/closes one resource. Check IO stale-token 9 and every isolation probe in every case.

Acceptance is Linux x86_64 and QEMU AArch64, actual wasm32/wasm64, each with positive/ungranted/same-module/close/revoke. This covers the narrow C/C++ scalar pipeline and original DDS message. NITROS negotiation, native GPU execution, all languages and the whole library catalog remain separate qualifications.
