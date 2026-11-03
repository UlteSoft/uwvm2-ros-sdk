# PHP capability composition

This example exercises genuine Zend8.4.13 inside the Wasm command. Run the public `xmake` and `xmake test` entries with a current approved VM deployment, one fresh32-hex-character nonce argument, and separately granted aliases `observe` and `source`. `observe` must be an event observer; `source` must be an owned resource admitted for a metadata-only event watch. The deployment contract belongs to SDK01/VM; this example does not create grants or invent a configuration schema.

The14 required cases cover the full-width owner word, forwarding the second owner to `event_watch`, the original32-byte readiness snapshot, local unsigned64-bit argument validation, forwarding invalid unused high-bit words so the actual raw dispatcher rejects them, and explicit owner retirement. All application logic and assertions remain inside PHP.Wasm. Failure to obtain the required grants is a failure or an explicit blocked deployment, never a skipped test.

The official reference is ROS2 Jazzy rcl9.2.11, commit `22c0b957140035c675f0a061daaab5fd6b2080e7`, [client API](https://github.com/ros2/rcl/blob/22c0b957140035c675f0a061daaab5fd6b2080e7/rcl/include/rcl/client.h) and [wait API](https://github.com/ros2/rcl/blob/22c0b957140035c675f0a061daaab5fd6b2080e7/rcl/include/rcl/wait.h). Its C pointer/sequence and wait-set APIs require an explicit capability/typed-copy migration. This example checks the PHP adapter's existing raw ABI composition path; it does not establish full rcl compatibility, official ROS request/response behavior, separate-instance memory isolation or Stage B simulation.

Current status: source prepared; compilation, genuine Wasm execution, audit/no-side-effect evidence and permission/isolation qualification remain required.
