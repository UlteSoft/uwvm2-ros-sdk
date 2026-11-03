# Genuine Python.Wasm asynchronous task migration

This example uses the installed CPython 3.14.8 Wasm core and the opt-in
`rclpy-jazzy-async-tasks-v2` profile. The official source baseline is rclpy
7.1.12, commit `4e607c09d624debc39a4ae5405680c06d87fac35`. It exercises
27 local scheduling, exception, cancellation, capacity and reentry assertions.

In the supported SSH Linux environment, select the installed SDK and its
pinned LLVM 23.1.4 toolchain through the normal SDK configuration. From this
directory run:

```sh
xmake
xmake test
```

The test target is `rclpy-wasm-async-tasks`; it uses the existing SDK common
WASI component test support. Supply the runtime owner's qualified deployment
and actual stopped-exec/live-boundary admission as documented by that support.
Missing runtime admission is a required prerequisite failure. Source status:
authored, with Linux syntax/build/guest execution still unverified.

Each Future permits 32 lifetime callback registrations. The executor permits
256 live Tasks, including pre-reserved completion callbacks, 256 Nodes and
65,536 lifetime Task creations. Quota exhaustion returns RosError status90
before registration. Cancellation is a local scheduling operation; it does
not authorize or prove native ROS request cancellation. Normal task errors
remain in the Task and propagate from `spin_once`.

Use `spin_once(timeout_sec=0)` for a cooperative pass. Default/infinite and
positive timed waits, native wait sets, multithreaded execution and native
coroutine subscription dispatch remain unsupported. `spin` requires the
Context's explicitly configured finite idle driver. Existing Context leases
still reject ROS callback reentry with status17. Executor objects, node names
and Python objects grant no ROS authority and do not create memory isolation.

This local scheduler example makes no native ROS or independent-instance
acceptance claim. The required official ROS roundtrip, audited denied/no-effect,
graph and file-I/O Stage A continues separately in `../rclpy_pubsub`. All
business and callback assertions here must execute in genuine Python.Wasm;
host CPython execution cannot qualify them.
