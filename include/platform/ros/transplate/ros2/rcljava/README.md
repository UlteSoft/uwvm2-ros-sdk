Selected candidate: `v0_1_1/src/main/java` (source only, not yet qualified).

Subscriptions now require a separate explicit observer alias and a capacity that includes the existing 64-byte versioned event header. They call the existing `event_watch` and `event_poll_v1` imports, validate the full source/sequence/native-instance/session envelope, and decode the message before invoking guest code. Invalid, lost or retired streams stop delivery. Both independently owned capabilities have reserved cleanup records and are closed on factory failure and shutdown. These changes add no ABI or automatic authority.

The prior `v0_1_0` tree remains intact as a historical source input; the JVM provider selects exactly one version. Current complete upstream-client compatibility, actual native ROS callbacks and official simulation remain unqualified.

# rcljava Wasm source profile 0.1.0

This is the canonical home of the SDK's maintained Java source-API subset. The existing 36 source files were moved from the old ROS2 compatibility tree without changing their bytes. Java and Kotlin share the existing JDK/TeaVM AOT toolchain and the same `org.uwvm.roswasm` copied-buffer imports.

The reference API is pinned to [ros2-java/ros2_java d0e4e952](https://github.com/ros2-java/ros2_java/tree/d0e4e952bad1977ce9818d00b520d3ad0aeafd8d). The upstream implementation loads JNI libraries and native type-support/converter handles. This maintained subset replaces those mechanisms with guest code and the existing controlled Wasm ABI. It is a partial source port; the complete upstream implementation has not been compiled to Wasm.

The source contains bounded node/resource ownership, String pub/sub, guest-side callback dispatch, finite single-thread executor pacing, wall timers through explicit clock grants, and selected Trigger/SetBool service/Future logic. Those are implementation dimensions, not current runtime or simulator qualification. The QoS objects are explicit deployment tokens; they do not query or modify native RMW QoS.

Additional native contexts, JNI pointers, dynamic class loading, arbitrary reflected message types, general QoS, native wait-set equivalence, multithreaded executors, actions and the complete parameter/discovery/ROS-time API remain unsupported or incomplete. Unsupported entry points throw or are absent. The source does not spawn a JVM, shell, socket client or native ROS sidecar at application runtime.

The compiler selects this one versioned source root. It must not combine these packages with native rcljava JARs or another version. The pinned toolchain targets core wasm32 WASI Preview1 with an explicit noeh profile and TeaVM-managed linear-memory GC. This does not establish WasmGC, memory64, native exception coverage or concurrent callback support.

The first current minimal source example is `example/platform/pal/java/ros2/ros2_humble_devel/legacy_string_feedback`. Its public commands are `xmake` and `xmake test`. Current relocation/example build, emitted Wasm, VM execution and official simulation are NOT_RUN. All required simulation, permissions, reverse-feedback, release/ABI, architecture and performance rows stay open.
