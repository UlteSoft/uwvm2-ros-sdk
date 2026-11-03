# Fourier Jazzy joint-step migration status

Status: **BLOCKED**. `xmake` and `xmake test` must fail with
`BLOCKED_REQUIRED_WASM_ROS_QUERY_FEEDBACK` while the required implementation
is unavailable. No simulation case is qualified by this entry.

The previous SDK-authored host ROS query/observation path has been removed
from the public SDK. This entry does not execute it from another location.
The canonical C application, original vendor model and licence, official
ROS dependency identities, external adapter/grant data and four required
scenarios are preserved for the actual migration. The unchanged application
Wasm is `c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043`.

A usable replacement must execute the actual supported legacy client
implementation, queries, callbacks, state/sensor feedback and file I/O inside
Wasm through uwvm2-ros permissions and audit. ROS2 requires explicit rcl,
rclcpp, rclpy-in-python.wasm and rcljava-AOT-to-Wasm qualification; ROS1
requires its real historical client libraries. Neither a host interpreter
nor a native sidecar can substitute for this work.

The official GenericSystem/JTC providers are external ideal simulation
components. Their original model and versioned profiles do not establish
vendor physics, full legacy client portability or single-binary dev release
support. The existing separate native-host build prerequisite also leaves
the single-executable release claim incomplete.

The normal commands, once the migration is implemented and qualified, remain:

```sh
xmake
xmake test
```

Required outcomes remain normal completion, default-denied access, an
ungranted alias and the official disable_commands fault. Zero tests, skipped
requirements, old receipts and native-only witnesses cannot yield success.
