# boston_dynamics / rs

The complete source record catalog is retained. A full example/compiler/native acceptance matrix is still required; source presence is not qualification.

## Install and select a source profile

Install Xmake and the complete SDK distribution. Host manifests and their matching XMZ archives are hash-locked build inputs. Ordinary compilation restores the genuine frontend through Xmake, without npm, Cargo, a system compiler, ROS or uwvm2-ros. Rust 1.87.0 (LLVM 20.1.1 frontend).

The independent project declares `set_language`, `set_ros_platform`, one `set_ros1_version` or `set_ros2_version`, `set_arch("wasm32")`, and `set_plat("wasm-wasip1")`. Set `ros.vendor.profile`, the exact `ros.vendor.revision` source-lock SHA-256, and an explicit `ros.vendor.model` using ordinary `set_values`. The provider validates their agreement. No selector implies firmware or physical model qualification.

Use public imports under `boston_dynamics/rs/` and the exact selected profile. SDK discovery uses `UWVM_ROS_SDK_ROOT` or structured directory search. An invalid explicit installation is diagnosed. Examples encode no parent-directory depth.

The native actions admit the pinned memory32 Preview1/noeh profile. D, Zig and Objective-C also expose explicit memory64 trial actions using the matching LLVM 23 target closure; their actual build and execution states must be checked separately. Other frontend closures explicitly refuse memory64 until a real matching producer and standard library exist. No width or feature is silently substituted.

## Exact catalogs and configuration

The preserved models are `Spot`. Exactly one original schema family is compiled per application.

- `ros2`: ROS 2, `jazzy`; source-lock SHA-256 `522dfdda19975e56b369ea3b625a83e94536b2497843517b1802aca4f25eaddc`.

## API and complete values

All 10 complete records/components across these profiles retain original field order, widths, fixed arrays, bounded sequences, text/byte domains, constants and declared defaults. Source definitions live under `share/platform/boston_dynamics/catalogs/`. The native-record inventory names every original type, component, symbol, canonical minimum/maximum, field and codec identity. The language API reference in this directory lists those exact contracts.

Canonical bytes are the SDK gateway wire format. They are distinct from native C layouts, ROS1 serialization, DDS CDR and protobuf. A canonical codec identity is not a native ROS MD5 or RIHS identity. Native registration needs independently exported original ROS metadata and source verification.

New native records use `field_` prefixes where required by the native language. The generated documentation retains every original field name. Full values own their initialized storage. Read a transport result only when its response-presence flag is true; no partial record is published on a codec failure.

The six native-language APIs expose typed `wait...` observers for complete message interfaces and `call...` service clients. Observers retain one owner, retry only idle 11 within 1..250 attempts, and close once on ordinary completion. Service requests are fully encoded before acquisition and are submitted once. Complete action goal/result/feedback component codecs are retained; full convenience action workflows still need native acceptance.

## Errors, ownership and units

Preserve the first operation/codec failure separately from the acquired owner’s close result. Status 22 denotes malformed local/wire values, 90 a capacity limit, 13 denied authority, 9 a stale/foreign handle, 11 idle, 95 unavailable ABI functionality, 107 disconnect, 110 an ambiguous timeout and 125 revoke. Never replay an effect after failure or timeout. Ordinary owners close once before output; a fatal trap or allocation failure cannot promise guest cleanup.

Native aliases are strict UTF-8, contain no NUL, and are 1..255 bytes. Wire lengths and owner handles retain 64 bits. Text and sequence quotas are byte/element limits, not native object sizes. Timestamps retain the original seconds/nanoseconds fields; normalized nanoseconds remain below 1,000,000,000. Velocity constructors use metres/second and radians/second; all limits are explicit caller data.

## Examples, deployment and verification

- `example/platform/boston_dynamics/rs/ros2/codec_ros2uwvm_spot_bridgesrvstate_response`: encode, decode and re-encode the complete original value `uwvm_spot_bridge/srv/State_Response`. Run `xmake` in this directory; it owns an independent `xmake.lua`.
- `example/platform/boston_dynamics/rs/ros2/codec_ros2uwvm_spot_bridgesrvfeedback_response`: encode, decode and re-encode the complete original value `uwvm_spot_bridge/srv/Feedback_Response`. Run `xmake` in this directory; it owns an independent `xmake.lua`.
- `example/platform/boston_dynamics/rs/ros2/codec_ros2uwvm_spot_bridgesrvlease_response`: encode, decode and re-encode the complete original value `uwvm_spot_bridge/srv/Lease_Response`. Run `xmake` in this directory; it owns an independent `xmake.lua`.

Transport examples require exactly one explicitly configured alias argument. Pure codec examples accept no native alias and perform no native operation. Only one application `.wasm` belongs in `build/`; private objects and frontend caches are build inputs, and no sidecar is deployed.

`xmake run` is a separate deployment action. Install uwvm2-ros, the paired native ROS gateway and the exact native types outside the build process. Supply `--ros-run-config` or `UWVM_ROS_RUN_CONFIG` with manually reviewed permissions. The SDK never writes that policy or grants capabilities. The default source catalog grants nothing.

Acceptance must separately establish cold Xmake-only compilation, a sole Wasm output, actual memory width, whole-catalog valid/malformed codec behavior, denied permissions, native ROS1/ROS2 communication, independent cleanup, and exact-artifact QEMU AArch64 runtime execution. Read-only source generation or historical receipts cannot establish those states.

The five `uwvm_spot_bridge` services are project-owned ROS bridge schemas, not official Boston Dynamics ROS interfaces. Native networking, authentication, SDK leases and robot control stay in the separately configured native provider. Spot SDK 5.0.1, 157 original protobuf inputs and 1,319 message descriptors are retained. Full native protobuf C/C++ documents preserve pointer/repeated/map/oneof contents and exact wire bytes; the other language protobuf surfaces remain open work.
