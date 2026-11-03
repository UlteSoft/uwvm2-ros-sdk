# GR00T typed bindings and migration status

The retained GR00T schema, complete generated tensor/service codecs and source-language bindings describe the selected interface. They do not establish that GR00T inference or upstream ROS client code executes in Wasm.

The earlier SDK-authored host Python ROS inference service, tensor/video helpers and package entry have been removed from the public SDK. Native inference, service callbacks or host Python file access cannot substitute for guest application behavior. The historical sources and their precise native-only scope are preserved in owner qualification archives; no public build or test loads them.

A supported migration must use the actual client code inside the guest. ROS2 C/C++ requires the shared rcl/rclcpp Wasm products; Python requires python.wasm and the shared migrated rclpy modules; Java requires AOT-to-Wasm client/runtime products. Required missing operations must fail clearly. The VM owner's controlled ROS boundary validates every approved operation rather than executing an arbitrary Python program or model sidecar for the guest.

Model identity, hardware and numerical prerequisites are separate from inference acceptance. A VLM architecture, chat response or generated video is not proof of an action-conditioned world model. The required world-model application, multilingual module graph, permissioned communication/file I/O and unchanged-Wasm cross-vendor official simulations remain NOT_RUN/BLOCKED.

All relevant model/source/license, toolchain, guest, VM host and provider identities must be pinned for a real run. Existing bounded codec/CPU/source-language observations do not qualify those complete tasks.
