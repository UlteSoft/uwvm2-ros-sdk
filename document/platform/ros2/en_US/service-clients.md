# Reusing native service clients

The ROS2 gateway retains a typed native client for repeated calls within one
gateway session. Its key includes the capability alias, operation, resource,
type, type identity, all limits and QoS fields, and the exact native endpoint.
Two sessions never share this client pool. A changed contract cannot reuse the
previous client merely because its alias matches.

Every request still passes the normal authorization, codec, size and deadline
checks. The first client is created with the configured QoS and both actual
native QoS endpoints are checked before retaining it. A ready client avoids
another discovery wait; a disconnected service must become ready within the
remaining request deadline. No timed-out operation is automatically retried.

The same implementation serves built-in and generated custom service calls,
remote parameter requests and lifecycle requests. A capability can retain at
most eight native endpoint clients, sufficient for those fixed endpoint sets.
Action clients retain their existing separate lifecycle.

Completed or timed-out requests are removed from the native pending-request
map. Native ROS APIs without individual pending-request removal retire a
client after an incomplete request. Closing an alias releases retained client
ownership and wakes the executor; already admitted calls keep their own owner
until they complete. Session teardown releases the remaining pool.

Measure discovery and repeated-call latency separately. A Wasm service-call
duration includes gateway and middleware work; it is not exclusively VM
execution time. The VM repository's `runtime_repair/native_service_reuse.cc`
witness counts actual RCL client creations and native peer calls, including a
timeout and alias close. Accept a result only with its matching source hashes
and Linux execution receipt; source availability alone is not acceptance.
