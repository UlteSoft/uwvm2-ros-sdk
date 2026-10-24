# Original AprilTag array clients and module permissions

The project is installed at `sdk/example/platform/nvidia-isaac-ros/c/ros2/original_array`.

# Receive a complete original AprilTagDetectionArray

This C command receives one `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray` through an operator-provided ROS2 alias. It retains the original header, every detection's family and signed id, the complete center and four corners, and the stamped pose with all 36 covariance entries. It uses the public C capability API and the complete canonical record codec. No CDR buffer, native pointer or GPU handle is exposed to the guest.

The original NVIDIA definitions are fixed at commit `7bec6ae5dbb2faa11617f40226e8932a4a94e6e4`. The selected native identity is `RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff`. The native graph contains nine original message types; only Array is registered as a topic root. A matching type hash and full field description are required independently of the guest's bounds.

## Build and run

Copy this entire example directory. On Linux, select the installed SDK and compile one actual pointer width:

```sh
export UWVM_ROS_SDK_ROOT=/absolute/installed/sdk
xmake f -a wasm32
xmake -vD -j1
export UWVM_ROS_RUN_CONFIG=/absolute/operator/deployment.json
xmake run original-nvidia-array
```

Use `xmake f -a wasm64` and rebuild for memory64/table64. The public shared dispatcher chooses the matching Preview1 toolchain; this example supplies no compiler wrapper or runtime flags. Compilation does not need a running ROS graph. Execution needs separately installed matching native products, an actual publisher and the explicit deployment described in the deployment guide (`sdk/example/platform/nvidia-isaac-ros/c/ros2/original_array/DEPLOYMENT.en.md`). `run.autobuild` is disabled: `xmake run` executes existing bytes.

## Source and ownership

`main.c` owns one backend context, one capability, one complete bounded value and one canonical output buffer. It opens the alias, subscribes, and polls at most 250 times. Idle status 11 retains the same owner and waits for one 20 ms monotonic event before the next poll. It does not retry an RPC or construct a native publisher.

The two application arguments are the alias and mode. The shipped configuration uses `sample` and mode `0`:

| Mode | Operation after receiving one full value | Expected resource events |
| --- | --- | --- |
| `0` | Close once | create=1, close=1, revoke=0 |
| `1` | Close, test the old raw handle, reopen, close the new owner | create=2, close=2, revoke=0 |
| `2` | Revoke, test the old raw handle and the revoked alias | create=1, close=0, revoke=1 |

The alias bytes, typed value and codec storage remain local to this module. A saved handle is used only for the explicit retirement checks. Reopening must not reuse the old live identity. These operations retire guest authority; they do not stop the native detector or publisher.

## Result and errors

One JSON line reports `primary`, `cleanup`, `encoding`, the complete `wire_hex`, and independent retirement statuses. A successful receive has all three statuses zero. The wire is canonical little-endian field data with length-prefixed UTF-8/sequence fields, not native CDR. Unused capacity is omitted; active fields are never projected away.

The selected bounds are 64 UTF-8 bytes for frame ids and family names, 16 detections, exactly four corners per detection and exactly 36 covariance values per pose. All floating fields must be finite, and nanoseconds must be below 1000000000. No quaternion normalization or covariance filtering is performed.

| Status | Meaning in this example |
| --- | --- |
| `13` | Alias acquisition denied; no native subscription or resource is created |
| `9` | Expected old-handle and repeated-close refusal after retirement |
| `125` | Expected reopen refusal for a revoked alias |
| `22` / `90` | Invalid canonical value/arguments or insufficient codec output capacity |
| `70` / `71` | The example detected a failed handle-lifetime invariant |
| `73` | JSON/stdout write or flush failed |

The common native execution receipt retains the exact worker exit code. Xmake may wrap a nonzero child status in its own failure exit; inspect `execution.json` rather than treating that wrapper status as the guest's ROS result. Normally acquired owners are closed or revoked before output. A refusal keeps its independent cleanup facts.

The reproducible fixture sends two detections, eight complete corner Points and 72 covariance values. The acceptance harness independently compares every decoded field with an actual ROSIDL/rclcpp publisher, checks exact audit counters and verifies process cleanup. Historical single-module receipts remain separate from validation of this corrected layout and Xmake entrypoint. DDS message transport establishes no NITROS negotiation, CUDA/VPI execution, device ownership or physical AArch64 hardware qualification.


# Explicit native deployment

Build the guest first as described in the source guide (`sdk/example/platform/nvidia-isaac-ros/c/ros2/original_array/README.en.md`). Run only on Linux with the matching original ROS2 Jazzy package and actual publisher. The selected original topic type is `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray` and its native identity is `RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff`. A String publisher, a precomputed canonical buffer or a CPU proxy for a GPU API does not satisfy this deployment.

## Native source layout and build selection

The installed SDK keeps public native declarations in `include/platform/nvidia-isaac-ros/native/first-array-jazzy/`, the conversion implementation in `src/platform/nvidia-isaac-ros/native/first-array-jazzy/native_ros2.hpp`, and metadata in `share/platform/nvidia-isaac-ros/native/first-array-jazzy/`. Canonical source catalogs are beside the original definitions at `share/platform/nvidia-isaac-ros/schemas/ros2/catalog.first-array.preparation.json` and `catalog.first-array.native.json`. `generation.vendor.json` and `binding-proof.json` pin actual SDK-relative paths, extents and SHA256 values; historical generator products are separately labelled.

An operator must build/select one VM and gateway from the same registry. The public native VM selection is `--import-ros2=y` together with `--ros-custom-registry-header=/absolute/sdk/include/platform/nvidia-isaac-ros/native/first-array-jazzy/manifest.hpp`; every VM translation unit must receive the same selection. This build selection grants no runtime capability.

For the public gateway CMake project, the selected paths are:

```sh
cmake -S "$PROJECT/sdk/src/gateway/ros2" -B "$BUILD/gateway" \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_CXX_FLAGS="-I$UWVM_ROS_SDK_ROOT/include/platform" \
  -DUWVM_ROS_CUSTOM_REGISTRY_HEADER="$UWVM_ROS_SDK_ROOT/include/platform/nvidia-isaac-ros/native/first-array-jazzy/manifest.hpp" \
  -DUWVM_ROS_CUSTOM_ROS2_HEADER="$UWVM_ROS_SDK_ROOT/src/platform/nvidia-isaac-ros/native/first-array-jazzy/native_ros2.hpp" \
  '-DUWVM_ROS_CUSTOM_ROS2_PACKAGES=isaac_ros_apriltag_interfaces;geometry_msgs;builtin_interfaces;std_msgs'
cmake --build "$BUILD/gateway" --target uwvm-ros2-gateway --parallel 1
```

`PROJECT` is the matching full common source checkout, `BUILD` is a fresh native build directory, and `UWVM_ROS_SDK_ROOT` is the installed SDK. Supply the actual native compiler/sysroot and sourced ROS package installation through the normal CMake toolchain/prefix settings. The `include/platform` root is required for the public includes in the relocated native implementation. Keep the existing compiler warnings and type/metadata checks enabled. The package must contain the original message definitions and their complete standard dependencies; generated source alone is not an execution receipt.

## Operator configuration

Copy `deployment.template.json` to an operator-owned absolute path. Replace `runtime` and `gateway` with executable paths for the matching native products. A loader or QEMU exec prefix can select the actual target architecture, but must preserve the PID and the public launcher's arguments. Select the real topic resource and ROS domain in both connection blocks. The template's `/sdk_fixture/nvidia/AprilTagDetectionArray` and domain 137 describe the finite local fixture; change them only to match an independently running publisher.

The sole module is `nvidia_main`, with `same-module` boundary. It receives one `topic.subscribe` alias named `sample`, the exact type/RIHS above, and the exact canonical codec identity from the metadata. It also receives only the extra WASI `monotonic-clock` right needed by idle waits. Basic standard-stream rights remain the default. No environment, directory, network or global ROS grant is added by this example or Xmake.

The explicit topic limits are 9872 maximum canonical bytes, reliable/volatile keep-last depth 10, burst 10, one subscriber/inflight operation, 98720 queue bytes and 262144 bytes per second. The rate is 20 per second and overflow drops the oldest item. Burst must not exceed depth. Bounds and limits remain applicable even when a native publisher accepts larger original ROS messages; oversized or invalid complete values are refused, not truncated.

The template uses `security-mode=disabled-test` for the isolated fixture only. A real deployment must supply its required security settings and package/distribution-specific installation. Source the actual ROS2 environment before launching; the public launcher checks the selected distribution. No detector, robot, GPU process or ROS peer is automatically started.

```sh
export UWVM_ROS_RUN_CONFIG=/absolute/operator/deployment.json
xmake run original-nvidia-array
```

The public `platform/ros/run.py` owns native gateway/worker creation, per-module socket policy, the gateway-bound real worker PID and cleanup. It derives memory64/table64 parser features from a wasm64 target before loading any module. `UWVM_ROS_RUN_CONFIG` is not an authority fallback: it names the exact reviewed operator configuration.

## Verify and diagnose

Inspect the new directory under `.uwvm-ros/native-ros/run/`. Retain `execution.json`, worker stdout/stderr, gateway policy/logs and the actual product hashes. `plan.target` must match the compiled width, the module/grant list must match the submitted configuration, and `cleanup_errors` must be empty. Compare every decoded original field with an independent native observation, not just a success code.

For a deliberate denial, remove the `sample` grant while keeping the remaining configuration explicit. The worker must exit 13, produce an empty wire, create zero resources and create no native subscriber. For mode 1/2, check every retirement field independently: stale and repeated-close are 9, old-again remains 9 after reopen, and a revoked alias reopens with 125. Preserve original failures rather than overwriting their receipts.

This example qualifies one original ROSIDL DDS data path only. Native GPU execution, NITROS type adaptation/negotiation, guest publishing, other languages and shared/static combinations require separate real evidence.

## Reproducible native inputs

Original type-only ROSIDL inputs and their exact pins are installed under src/platform/nvidia-isaac-ros/native/first-array-jazzy/interfaces and share/platform/nvidia-isaac-ros/native/first-array-jazzy/native-type-support-inputs.json. Build them with official Jazzy ROSIDL, source the installation and build the matching gateway. Commands are in the independent four-module deployment guide (`sdk/example/platform/nvidia-isaac-ros/c/ros2/original_array_modules/DEPLOYMENT.en.md`).
