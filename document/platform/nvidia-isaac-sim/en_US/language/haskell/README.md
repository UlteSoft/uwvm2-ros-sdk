# Isaac Sim joint and clock interfaces: haskell

Preserve JointState header and complete name/position/velocity/effort arrays. The authored ClockControl protocol retains nonce, request sequence, original frame/phase and independent native cleanup status.

Use the actual shared haskell frontend/runtime. The platform contributes complete typed schemas; a C surrogate or a platform-private VM is not an implementation.

Read the platform README for source revisions, component/version/transport selections, native identities, complete-value quotas, errors and deployment permissions. The public import root is the installed `include/platform` plus the language's shared module map; example imports must not depend on parent-directory depth. Build descriptions use `set_language("haskell")`, `set_ros_platform("nvidia-isaac-sim")`, `set_ros2_version("jazzy")`, `set_arch` and `set_plat`. No native ROS installation or runtime is required to compile the application.

Current source API files:

- `include/platform/nvidia-isaac-sim/haskell/ros2/complete/RosWasm/Records.hs`

Independent application directories:

Three complete standalone guest applications remain required for this route.

For C, the complete records expose `*_valid`, `*_wire_size`, `*_encode` and `*_decode`; use their declared MAX_WIRE_BYTES, initialized disjoint caller storage and exact returned lengths. C++ uses `roswasmcpp::Codec<T>` with owned byte containers and exact spans. Other emitted source modules retain every member from `share/platform/nvidia-isaac-sim/catalog.json` and use the shared language's real wire foundation. Native service/action envelope ownership is separate from a pure component codec. Preserve full response fields, explicit application nonces and independent cleanup results.

Run from a copied standalone example with `UWVM_ROS_SDK_ROOT` set: `xmake`, then inspect the sole Wasm. `xmake run` requires the installed runtime and manually supplied permissions. For roundtrip, vary the supplied uint32 seed and compare actual full bytes; for malformed_wire, require refusal and unchanged destinations; for stdin_record, supply the entire canonical body and check all returned bytes. A route with missing source, fewer than three applications, an unverified memory64 frontend, or missing native peer evidence remains open work. Consult the external coverage matrix for independent implemented/built/executed/documented states.

The required ordinary Xmake targets are `set_kind("binary")`, `set_kind("shared")` and `set_kind("static")`, with standard `add_deps`, `add_links`, `add_linkdirs` and public includes. The present platform application examples do not qualify shared/static producer or consumer support. A shared deployment needs each real Wasm library plus explicit preload names; a static archive contains relocatable Wasm objects and must undergo actual archive-symbol extraction. Each language, memory width and producer/consumer combination needs its own execution result.

The required module example has `main`, `io`, `algorithm` and `ros_comm`. Only `ros_comm` receives manual ROS Single authority bound to its loaded module identity. Default WASI retains basic standard-stream rights; algorithm receives no additional resource or ROS grants. The common loader/build-kind/cross-module caller contract must be qualified before claiming this flow. Native positive observations and denied operations from ungranted modules are required; `xmake run` preserves the exact submitted configuration.
