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

Use `xmake f -a wasm64` and rebuild for memory64/table64. The public shared dispatcher chooses the matching Preview1 toolchain; this example supplies no compiler wrapper or runtime flags. Compilation does not need a running ROS graph. Execution needs separately installed matching native products, an actual publisher and the explicit deployment described in [the deployment guide](DEPLOYMENT.en.md). `run.autobuild` is disabled: `xmake run` executes existing bytes.

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
