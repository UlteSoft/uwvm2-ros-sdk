# Explicit ROS quotas and synchronous waits

An enabled ROS namespace and a visible import do not grant a ROS operation. Each operation still requires its exact module, resource, type, identity and semantic contract. Once granted, omitted resource quotas are unlimited. The SDK deployment runners do not add worker timeouts, audit rates, gateway session counts or message quotas.

A quota accepts a canonical unsigned integer or `unlimited`. Zero is an explicit empty budget: configuration remains valid and an operation that needs positive capacity is refused before its native side effect. Native ABI ranges and complete wire-frame limits are representation constraints, not default quotas. A finite timeout that cannot be represented by the IPC uint32 millisecond field is rejected; wire timeout zero represents no deadline, whereas a configured finite timeout zero expires locally before dispatch.

For each supported replenishing quota, `<quota>.on-exhausted` selects `reject` (the default) or `wait`. Waiting keeps the ordinary synchronous call and its owned request, releases the relevant queue lock, and resumes only that admission stage when capacity becomes available. It never sends an already submitted native request again. Fixed request sizes, permanent binding history and cumulative audit totals cannot replenish and therefore reject a configured `wait` action.

Local `overflow-policy` accepts only `reject` or `wait`. Existing `drop-oldest`, `drop-newest` and `backpressure` contracts are configuration errors. A per-quota `.on-exhausted` overrides this queue default. Native DDS `KEEP_LAST` remains a distinct middleware history policy and requires an explicit positive finite depth. `KEEP_ALL` does not require depth; it does not cause an unlimited number to be passed to a container constructor. Native queue and service history storage grows only for actual admitted records.

Per-operation `<quota>.on-proc-exit` selects cancellation or completion of an authorized VM exit wait. `native-wait.on-proc-exit` controls actual transport waiting; when omitted, `timeout-ms.on-proc-exit` supplies its default. The VM connection phase uses the separate target `connect-timeout-ms.on-proc-exit`. The gateway is an external process: an observed dead peer or worker pidfd always cancels its work. Gateway-global `on-proc-exit=wait` is unsupported because it cannot establish a VM exit owner; configure the initiating VM connection or capability instead.

Gateway-global quotas also default to unlimited. For example, an operator can explicitly configure a single active session and wait for a previous session to close:

```text
max-sessions 1
max-sessions.on-exhausted wait
```

The gateway waits on an actual session-completion notification and observes peer closure and process shutdown. `audit-max-records-per-second.on-exhausted=wait` uses a timer; cumulative audit record and byte limits only reject. Numeric quota values and actions are emitted only when present in the deployment's `worker_limits` or `gateway_limits` maps.

A synchronous wait requires an independent progress path. An `event.observe` source backed by `service.call`, `action.receive-feedback` or `action.receive-result` cannot wait for a reservation that only a later consume request on the same serial connection can release; this configuration is rejected. Entity admission such as `max-active-goals`, `max-actions`, `max-native-clients`, publishers, subscribers and services rejects `wait` because a later release on that same serial session is required. The current owned RMW routes similarly return unsupported for waiting on in-flight/history admission that requires a later commit or retire on that same route. Callback ingress queues may wait because their authenticated consumer runs independently. These restrictions must remain until a real multiplexed transport or independently authorized consumer exists.

Local functional tests and official simulation qualification remain separate. A local test receipt never replaces the original official admission, native identity, middleware or qualification gates.

Native service and Action completion callbacks signal a retained notification object; the public request still waits synchronously and observes its absolute deadline, peer closure and worker lifetime. An incomplete ordinary service request is removed from the native pending map on return. Service and Action discovery use actual native graph notifications with a 100 ms cancellation check interval; the interval is not an operation timeout. Feedback waits retain the same encoded message, release the goal lock, and resume after its authenticated consumer removes a queued record.

Owned service profiles retain every independent native identity and complete codec proof. Host `maximum-entries` and `history-per-endpoint` are optional independent storage quotas; omission or `unlimited` does not preallocate storage. Zero allows the profile to load and refuses reservation. The default control identity freezer emits only explicitly selected storage values alongside the required actual export digest. Canonical string extents and native QoS receipts remain schema and identity inputs.

The owned complete service-response metadata route currently rejects the known FastDDS `rmw_fastrtps_cpp` and `rmw_fastrtps_dynamic_cpp` providers with error 95: their shared response-take implementation does not populate the request writer GUID. A zero-initialized array is not proof of native metadata, and the gateway does not copy a GUID from another observation. It keeps the completed native response privately and publishes an error control record instead of a falsely complete response. Ordinary `service.call` remains a separate supported route. A deadline crossed during the actual native take produces error 110 before this metadata check and does not cause the native operation to be repeated. Other providers still require the existing independent metadata qualification.
