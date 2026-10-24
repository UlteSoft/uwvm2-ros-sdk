# nvidia: TinyGo ROS2

The component modules expose complete bounded original records with strict UTF-8,
finite numbers, exact sequence/tuple bounds, timestamps and independent defaults.
Use nvidia/tinygo/ros2/complete for a component. The NVIDIA umbrella selects
ros.vendor.component explicitly; its original-Array native component is
nvidia-isaac-ros. Canonical field-order little-endian wire is distinct from ROS CDR.

Each component has independent roundtrip, decode_argument and malformed_wire
CPU programs. roundtrip takes an optional uint32 seed and prints the entire wire;
decode_argument takes one complete exact hex body; malformed_wire checks a valid
roundtrip plus truncation/trailing rejection. Local invalid input is 22 and stream
failure is 5. Isaac ROS values retain two detections, four corners each, every
covariance entry and the original unnormalized quaternion.

Set UWVM_ROS_SDK_ROOT to the installed SDK. Build an example with xmake f -a wasm32
then xmake -vD -j1. TinyGo 0.38.0 owns LLVM 19.1.2 code generation; Go 1.24.2
provides source support. Shared LLVM 23.1.4 supplies support assembly and final
linking. The pinned public bundles restore offline through Xmake. The output is
one Wasm application; native ROS is a separate runtime dependency.

CPU execution uses the example's main-random-opt-in.deployment.template.json.
Replace runtime/gateway paths, review the arguments and set UWVM_ROS_RUN_CONFIG
to that operator file before xmake run. Only main has monotonic-clock and random;
ROS is disabled and grants is empty. Basic default standard streams remain.

The Isaac ROS original_array_receive, original_array_echo and original_array_revoke
programs use separately named main-random-realtime-opt-in templates. Only their
main module receives realtime-clock/random and the literal original ROS aliases,
native/codec identities, QoS and resource limits. The independent ROS-denied
template retains no ROS grants. No build/run hook adds authority.

Receive closes once and observes actual old-handle status 9; echo deliberately
publishes 20 complete Arrays at 100 ms intervals; revoke observes old-handle 9 and
reopen refusal 125. Only empty 11 permits bounded polling. Primary, retirement and
cleanup status remain separate; timeout does not undo an admitted external effect.

The unchanged source/Wasm cohort has finite cold-build and x86/QEMU AArch64
CPU/native qualification. See share/platform/nvidia/development-capabilities.json
for concise scope. ROS1, memory64, static/shared combinations, all other native
types, GPU/NITROS/simulation and ARM-host compilation require separate acceptance.
