# Isaac ROS typed values and legacy migration status

The retained complete AprilTag message graph, generated codecs, canonical identities and language bindings remain source inputs for the SDK. Pure ROSIDL-to-canonical conversion traits and native type identity exporters are metadata/controlled-boundary integration inputs; they do not create a ROS client node or establish a migrated rcl/rclcpp library.

SDK-authored native detector, component-manager and CPU pub/sub application candidates have been removed from the public SDK. Their full original sources, build entries and dependencies remain historical qualification material. Public builds cannot restore them, silently fall back to them or use a host observer to supply guest feedback.

Actual application ROS calls, callbacks, state/sensor feedback and file I/O must execute as Wasm in uwvm2-ros through its unified permission and operation audit. The VM owner maintains the narrowly controlled native ROS host. Unmodified official NVIDIA components may be the external provider, with exact per-release identities; an SDK-written native launcher/executor is not itself an official provider.

Historical NITROS and current rosidl Buffer/CUDA buffer profiles require separate source and ABI qualification. CPU DDS transfer or a generated message header does not prove NITROS negotiation, CUDA/VPI execution, device ownership or native AArch64 support. A current header must not be projected onto older releases.

The new upstream client migration examples and official all-Wasm simulation tests are BLOCKED/NOT_RUN. Reintroduction requires genuine guest client products, Linux public `xmake` and `xmake test`, mandatory nonzero cases, denied operations without native effects and correlated command/result/reverse feedback audit evidence.
