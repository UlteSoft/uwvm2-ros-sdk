# Explicit native deployment

Build the guest first as described in [the source guide](README.en.md). Run only on Linux with the matching original ROS2 Jazzy package and actual publisher. The selected original topic type is `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray` and its native identity is `RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff`. A String publisher, a precomputed canonical buffer or a CPU proxy for a GPU API does not satisfy this deployment.

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
