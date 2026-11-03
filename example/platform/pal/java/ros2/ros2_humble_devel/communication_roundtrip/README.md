This Stage A candidate compiles Java requests and response assertions to one Wasm. It calls the existing ROS2 capability/service imports. The selected external peer uses the unchanged official `demo_nodes_cpp` AddTwoInts ServerNode from `ros2/demos` commit `37e25e0dece32f972b3cc8677b6aab3e891a9365`. Its native Jazzy fixture has passed source/tool/ELF identity checks, actual component loading, five seconds of live startup and SIGINT exit 0. The fixture uses `rclcpp`/`rclcpp_components` 28.1.22 and the original `example_interfaces` 0.12.1 AddTwoInts service generated with the image's native rosidl providers. The qualified scope covers this component and interface subset; full upstream package qualification remains open. A qualified restricted VM host must connect it to the guest.

From this directory in the pinned Linux SDK environment:

```sh
xmake f -p wasm-wasip1 -a wasm32 -o build
xmake
xmake test
```

The guest uses external grant aliases and fresh bounded operands. Its permitted case verifies two different real sums inside Wasm. Separate cases require denial, a closed-handle error and a bounded timeout without retry. Native audit and peer evidence must independently establish no denied effect and causal fresh replies. Guest stdout alone cannot establish a real ROS connection.

The current guest requires a successful initial open for permitted, closed-handle and timeout cases. Their exact service-call counts are 2, 1 and 1; denied open requires zero calls. Every acquired handle receives exactly one close attempt. Retained caller-owned buffers have checked prefix/suffix guards, each reply begins with a value that differs from the expected sum, and request bytes must remain unchanged. These guest checks use the existing imports and canonical 16-byte request/8-byte response. The timeout deadline is enforced by the qualified gateway and shared lifecycle.

R21 generated the current 220,687-byte service module, SHA256 `147640c5091b069a465d6688b7d02144f406342e262c821e1e2dd3e216032e09`. This individual artifact passed full WABT validation and an actual VM default-deny run: open errno 13, zero service calls and zero close attempts. The overall R21 batch failed when checkpoint writes reached the existing disk reserve; its failure and interrupted final validation remain retained. The older `cadf2fd9` module applies to the prior Java source. All four real service scenarios still require the shared gateway and feedback qualification.

The public test currently returns non-success for the missing restricted service host and shared Stage A feedback contract. All four actual ROS/Wasm service scenarios remain unrun. It must not accept prior receipts, an echo implementation or a native SDK/JVM client. The Java compilation profile is Humble; the actual native environment evidence is Jazzy. The native qualification's outer command retained exit 1 from its metadata export limit; all original records were recovered and independently audited without rerunning the native build or peer. Stage B vendor/robot simulations, all other languages/releases and the final world-model scenario remain mandatory.
