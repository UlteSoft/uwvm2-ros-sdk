The selected rcljava candidate is 0.1.1. The seven arguments are publish alias, subscribe alias, separate event.observe alias, command topic FQN, feedback topic FQN, command text, and expected response. All three aliases must be distinct. The feedback observer must explicitly select its subscription source alias and topic-message/resource-error/resource-closed kinds in the external VM policy. The guest accepts at most 132 payload bytes plus the existing 64-byte event header; neither stdin credits nor the harness supply a ROS result. This remains a required BLOCKED official-simulation example until its actual frozen Wasm, native provider, permissions/audit and fresh guest callback path are qualified.

# Java legacy source migration example

Run from this directory on Linux:

```sh
xmake
xmake test
```

The build uses the installed JDK 21.0.10+7 and TeaVM 0.13.1 development tool closure to emit one standalone wasm32 WASI Preview1 application. The Java application and maintained rcljava subset execute inside uwvm2-ros. The compiler JVM is a development tool.

The application publishes once through an existing grant and processes a separately granted String subscription in a guest callback. Seven guest arguments select three distinct aliases, distinct resource FQNs, command and expected response. At most 256 explicit stdin credit pairs (`R\n`) pace polling. Native helpers supply neither ROS payloads nor callback results. No test driver or native fallback is provided.

This is a narrow maintained source-API profile referenced to ros2-java/ros2_java commit d0e4e952bad1977ce9818d00b520d3ad0aeafd8d. It does not claim that the complete upstream client, JNI, generated message families, arbitrary QoS, actions, multithreaded executors or official robot simulation are ported. The selected canonical implementation is under `include/platform/ros/transplate/ros2/rcljava/v0_1_1`.

Current status: source only; neither public command has been executed for this revision. The complete application Wasm SHA is not yet frozen. The eight mandatory scenarios remain required and must return non-success BLOCKED until the actual runtime/provider/feedback qualification exists. A successful Java build alone cannot satisfy those scenarios. A String reply is insufficient proof of robot motion or fresh sensor feedback.

Each example owns its `build` output and `.uwvm-ros` intermediates. Missing toolchain, runtime, provider, authority, artifact identity or required scenarios is a failure. Public commands never execute quarantined sources.
