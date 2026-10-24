# NVIDIA component selection: cpp

Choose one original GR00T, Isaac ROS or Isaac Sim component. The umbrella introduces no new wire protocol.

The typed Codec<T> facade uses owned byte containers and exact spans; its canonical record layout remains distinct from native ROS objects.

Read the platform README for source revisions, component/version/transport selections, native identities, complete-value quotas, errors and deployment permissions. The public import root is the installed `include/platform` plus the language's shared module map; example imports must not depend on parent-directory depth. Build descriptions use `set_language("cpp")`, `set_ros_platform("nvidia")`, `set_ros2_version("jazzy")`, `set_arch` and `set_plat`. No native ROS installation or runtime is required to compile the application.

Current source API files:

- `include/platform/nvidia/cpp/support/basic_io.hpp`

Independent application directories:

- `example/platform/nvidia/cpp/ros2/groot_malformed_wire`
- `example/platform/nvidia/cpp/ros2/isaac_ros_roundtrip`
- `example/platform/nvidia/cpp/ros2/isaac_sim_stdin_record`

For C, the complete records expose `*_valid`, `*_wire_size`, `*_encode` and `*_decode`; use their declared MAX_WIRE_BYTES, initialized disjoint caller storage and exact returned lengths. C++ uses `roswasmcpp::Codec<T>` with owned byte containers and exact spans. Other emitted source modules retain every member from `share/platform/nvidia/catalog.json` and use the shared language's real wire foundation. Native service/action envelope ownership is separate from a pure component codec. Preserve full response fields, explicit application nonces and independent cleanup results.

Run from a copied standalone example with `UWVM_ROS_SDK_ROOT` set: `xmake`, then inspect the sole Wasm. `xmake run` requires the installed runtime and manually supplied permissions. For roundtrip, vary the supplied uint32 seed and compare actual full bytes; for malformed_wire, require refusal and unchanged destinations; for stdin_record, supply the entire canonical body and check all returned bytes. A route with missing source, fewer than three applications, an unverified memory64 frontend, or missing native peer evidence remains open work. Consult the external coverage matrix for independent implemented/built/executed/documented states.

The shared C-family producer selects `ros.sdk.exception_profile` (`noeh` by default or explicit `eh`) and matching LLVM23 libraries. NVIDIA adds no exception/RTTI-disabling override. `ros.sdk.standard` selects a supported source standard; this provider defaults to C++20. An EH profile requires the actual VM feature configuration and separate execution qualification.

For C/C++ source consumers of records with declared native defaults, call the emitted inline `*_default` initializer before filling caller-owned storage. It initializes nested defaults, including Quaternion.w=1, and returns zero on success. The C++ aliases expose the same C initializer. Exact default values are preserved in the published original schemas and per-component catalog metadata.

The required ordinary Xmake targets are `set_kind("binary")`, `set_kind("shared")` and `set_kind("static")`, with standard `add_deps`, `add_links`, `add_linkdirs` and public includes. The present platform application examples do not qualify shared/static producer or consumer support. A shared deployment needs each real Wasm library plus explicit preload names; a static archive contains relocatable Wasm objects and must undergo actual archive-symbol extraction. Each language, memory width and producer/consumer combination needs its own execution result.

The required module example has `main`, `io`, `algorithm` and `ros_comm`. Only `ros_comm` receives manual ROS Single authority bound to its loaded module identity. Default WASI retains basic standard-stream rights; algorithm receives no additional resource or ROS grants. The common loader/build-kind/cross-module caller contract must be qualified before claiming this flow. Native positive observations and denied operations from ungranted modules are required; `xmake run` preserves the exact submitted configuration.
