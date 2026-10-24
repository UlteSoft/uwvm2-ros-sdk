# Publish the complete original Array

This independent C example creates the full original `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray` in guest-owned memory. It initializes two distinct detections, eight complete corners, both stamped poses and all 72 covariance values, then encodes the complete canonical value with the public record API. The fixture differs from the native receive fixture. No native input is copied into the guest to construct its result.

Set UWVM_ROS_SDK_ROOT to the installed SDK and run `xmake f -a wasm32` followed by `xmake -vD -j1`. Use a separate directory with wasm64 for actual memory64/table64. The only application output is one Wasm file. Build selection grants no host authority. The shared LLVM23 producer and common Xmake lifecycle are used.

The arguments are the explicit alias and mode: 0 publishes/closes; 1 additionally checks close/reopen and the old handle; 2 revokes and checks that the alias cannot reopen. Twenty explicit 50 ms intervals allow DDS discovery under reliable/volatile keep-last QoS. They are ordinary application publication calls, not a hidden retry in the API. Each successful call increments publications.

For modes 1/2, a separate valid payload changes the top timestamp and first id. Only retired raw handles attempt that poisoned value. Both attempts must return 9, repeated close must return 9, and every native observation must remain the legitimate complete value. Reopen is 0 after close with a distinct owner, or 125 after revoke. All acquired owners are retired before JSON output.

One JSON line retains exact operation/encoding/cleanup statuses, publication count, complete legitimate/poison wires and retirement results. Native execution requires an independently running subscriber. Raw WASI/ROS statuses and Xmake's outer exit must be assessed separately. See DEPLOYMENT.en.md in this same example, or the installed manual `sdk/document/platform/nvidia-isaac-ros/en_US/language/c/guest_publish.md`.

# Explicit publisher deployment

Use the matching original Array VM/gateway and the original ROS2 Jazzy interface package described in `sdk/document/platform/nvidia-isaac-ros/en_US/language/c/native_array.md`. Its exact original RIHS is `RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff`; the canonical codec is `UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5`. Native source formatting preserves the executed original tokens; original and formatted source hashes remain separately recorded.

Copy deployment.template.json to an operator path, replace runtime/gateway with actual executable paths, and match domain/topic to a separately running original-type subscriber. The finite fixture uses domain137 and `/sdk_fixture/nvidia/guest_array`. The sole module nvidia_pub has one outgoing topic.publish Single alias and only the extra WASI monotonic-clock needed by the explicit 50 ms waits. There is no global ROS grant or inherited environment/filesystem/network authority. Security-mode disabled-test is for the isolated fixture only.

Preserve the full original type/RIHS, codec identity, 9872-byte maximum wire, reliable/volatile keep-last depth10, burst10, rate20 and byte rate262144. An oversized complete record is refused, not truncated. gateway_arguments is explicitly empty. Set `UWVM_ROS_RUN_CONFIG=/absolute/operator/deployment.json`, then execute `xmake run original-nvidia-array-publish`. run.autobuild is disabled. The public launcher selects memory64/table64 before --run for wasm64.

Remove only the outgoing grant for the ungranted control: worker13, publications0, no native message or publisher/resource. Mode1 expects resource create/close2/2 and old-handle statuses9 with reopen0; mode2 expects create1/revoke1, old9 and alias reopen125. Positive mode0 expects create/close1/1. The independent native subscriber must receive legitimate full original fields for every granted case and must never receive a poisoned value. Keep configuration/Wasm hashes before/after, exact Xmake and worker exits, real gateway-bound worker PID, actual native identities/CDR/counters and graceful cleanup receipts.

Acceptance is Linux x86_64/QEMU AArch64 using the same unchanged Wasm per width, actual wasm32/wasm64, positive/ungranted/close/revoke. Native DDS publication establishes no GPU/NITROS, physical ARM compiler-host, other-language or broad library qualification.

The gateway also requires explicit shared queue fields for a publish grant: max-queue-bytes=98720, max-publishers=1 and overflow-policy=drop-oldest. These fields remain explicit in the complete policy.
