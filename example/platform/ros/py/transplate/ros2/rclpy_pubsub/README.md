# Jazzy rclpy Python Wasm native test

The original main.py runs completely inside the genuine CPython Wasm application under uwvm2-ros. The host Python runner starts and retires test processes and checks their evidence. It does not import or evaluate the application. The configured native gateway and C++ peer provide actual ROS transport.

Build the Wasm, then select an explicit native test deployment:

```sh
export UWVM_ROS_PYTHON_NATIVE_TEST_DEPLOYMENT=/absolute/path/to/native-test.json
export UWVM_ROS_TEST_EVIDENCE_ROOT=/absolute/path/to/evidence
xmake
xmake test
```

Run in a private loopback-only network namespace and the required 64 GiB, zero-swap cgroup. No toolchain or ROS installation occurs during this test. The deployment format is uwvm-sdk-python-transplate-native-v1; it declares:

- backend (ros2), pinned absolute runtime, gateway and observer paths with SHA-256 identities; ROS1 additionally requires master and master_script pins.
- native_inputs with exact path/SHA-256 pairs for the selected native dependency closure, and an explicit native_environment.
- host_network_namespace (device/inode) captured outside the test namespace, and an absolute socket_directory in owned test storage. The runner creates a private short socket directory there, independently of the full evidence path.
- runtime_arguments, an explicit uwvm-sdk-wasip1-policy-v2 wasi_policy, the exact connection fields, and three ROS grants: migration.string.publish, migration.string.subscribe and migration.graph.topics.
- limits.timeout_seconds and limits.output_bytes for test supervision.

The policy must explicitly enable WASIp1 for main. Declare each required operation separately: args, environ, stdout.write, stderr.write, stdio.metadata, proc-exit, monotonic-clock and monotonic-timer. There are no implicit guest quotas or ROS resource grants. ROS2 preopen host paths select the owned fixture placeholders {readonly} and {workspace} with explicit per-root rights; no external directory is substituted.

The explicit native deployment maps the publish alias to /migration/outbound and the subscription alias to /migration/echo. The independent rclcpp peer records and forwards the original message from outbound to echo, so the guest callback depends on an actual cross-process roundtrip. It also watches the deliberately ungranted /migration/denied topic. The deployment mounts owned /readonly and /workspace fixtures with separate base/inheriting rights. The host can write both fixtures; the guest must receive WASI ENOTCAPABLE for the readonly write, then successfully round-trip the same message through its writable directory.

The native-python-guest test executes the complete original case in guest-cases.json. It requires the exact completion object, actual native payload agreement, graph access, ungranted-alias refusal and closed-handle rejection. An empty event poll may return EAGAIN while the guest waits for its callback; a successful matching callback remains mandatory. Other unexpected gateway errors fail the test. No native request may follow a resource close, and no message may appear on the denied topic.

Evidence includes the actual VM/guest identities, argv, explicit authority, original stdout/stderr, gateway audit, file effects and owned-process retirement. A successful guest exit alone is insufficient.

This is a finite native communication test. It does not establish official simulator coverage, independent component isolation or support for the entire host Python ROS API. The two guest endpoints share one interpreter and authority domain. See include/platform/ros/transplate/ros2/rclpy/v1 for the supported API and lifetime semantics; binding-requirements.json declares requests, not permissions.
