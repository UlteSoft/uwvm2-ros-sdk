# rclpy Jazzy cooperative Python.Wasm profile v2

Opt-in source producer: `rclpy-jazzy-async-tasks-v2`. This profile reuses the
existing genuine CPython core, shared typed ROS ABI and unchanged v1 modules.
Only Task/Future, cooperative Executor, Node executor ownership and explicit
executor spin routing are added. See SOURCE.json for exact official source
identities, API_MAPPING.json for per-interface differences, and the public
`example/platform/ros/py/transplate/ros2/rclpy_async_tasks` example.

The implementation is authored and unverified. No native ROS, simulator,
thread-safe executor, full Jazzy API or independent-memory qualification is
inferred. Blocking/default timeout semantics, callback groups, native coroutine
entity dispatch and the remaining official API denominator are still required.
