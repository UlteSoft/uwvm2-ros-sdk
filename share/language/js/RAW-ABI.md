# Complete shared static ROS ABI bridge

The genuine QuickJS and CPython engines compile the same checked call-frame
implementation with all 38 ROS1 or all 43 ROS2 imports. Each backend bridge is
compiled from source against the authoritative `share/abi/abi-v1.json`.
`tools/language/js/abi_dispatch.py` refuses changed forms/counts/signatures and
records the descriptor, emitter and generated header hashes. Final Wasm import
types, actual memory width, finite memory limit and complete import set are
checked independently of source emission. Lua uses its existing complete static
bridge and the same authoritative ABI descriptor.

## Calls and exact values

JavaScript calls `__uwvm.invoke(name, handle, input, capacity, other, correlation)`.
Python calls `_uwvm_ros.invoke(name, handle, input, capacity, other, correlation)`.
The final pair may be omitted together for the original four-argument form;
both default to zero. JavaScript words must be genuine BigInts in 0..2^64-1.
Python words must be exact ints in that range: bool and int subclasses refuse.
No value travels through a floating-point representation. Names contain no NUL.
Input is a contiguous readable byte buffer (Uint8Array for JS), at most
4,193,786 bytes. Output capacity is 0..4,194,304 bytes. Both memory32 and memory64
convert actual guest pointers through uintptr_t before the ABI's u64 offset.
The bridge uses guest memory index0 and pins input/output for the synchronous
original host import. JavaScript capacity follows its documented int64 conversion;
Python capacity uses Py_ssize_t conversion. Callers should pass exact integers.

Results are `(errno, bytes, required, value)` or the equivalent four-element JS
array. Bytes are newly owned language storage. `required` is present only for a
poll/rpc form when the initialized UINT64_MAX sentinel was changed and status
is0 or90. Error90 alone never proves that a length was written. `value` is the
successful exact owner/ID for open/submit or the queried ABI version; otherwise
it is None/null. `event_ready` requires capacity32 and returns exactly32 bytes
on success. Unknown names/invalid form extents return22 without entering an
import. Malformed successful lengths/nonzero-owner replies become local22.

The open/handle/write/watch/ready/submit/rpc forms preserve the original ABI
parameters below. `other` is a borrowed second handle, and correlation is an
opaque u64 word. Open creates one owner only on native success; submit returns
the original request/goal ID and never turns that ID into a capability handle.
Existing handles remain instance/backend owned. Creation, close, revoke, watch,
cancel and result acknowledgement are explicit calls; no finalizer runs them.

All resources start without authority. The host still checks alias, operation,
endpoint/type, QoS, owner, quotas and native identity. Typical statuses include
bad/stale handle9, idle/quota11, denied13, invalid22, capacity90, unsupported95,
disconnected107, timeout110 and revoked125. Native nonzero errors are preserved.
A timeout or local result-allocation error can follow a real effect. Result
arrays, copied buffers or integers can still fail to allocate after the call;
there is no rollback or automatic replay. Keep independent primary/cleanup
facts. The bridge neither contacts a native side channel nor grants policy.

Lua retains `native.prepare(name, handle, input, capacity, other, correlation)`
and one-use `native.invoke(frame)`. Its words are exactly eight little-endian
bytes. Inspect `frame:error()`, `valid()`, `data()`, `required()` and `value()`;
owner/result storage remains rooted before the effect. Native service/action
semantics, type catalogs and capabilities remain in their ordinary modules.

## Verification boundary

A complete import table is construction evidence. Genuine guest execution,
complete-record codec tests, explicit denied permissions, native ROS peers,
x86_64, QEMU AArch64 execution and ARM-host compilation each require separate
evidence for the exact bytes. No ABI-version query establishes those results.
The pure raw bridge has no robot schema, address, controller command or grant.

## Original complete operation signatures

The following table is generated from the descriptor named above. It records
original scalar parameters, rather than a replacement transport protocol.

### uwvm_ros1_v1

| Operation | Form | Original parameters | Return |
|---|---|---|---|
| `abi_version` | version | `()` | ABI version |
| `capability_open` | open | `memory:i32, alias_offset:i64, alias_length:i64, handle_out_offset:i64` | error code |
| `capability_close` | handle | `handle:i64` | error code |
| `capability_revoke` | handle | `handle:i64` | error code |
| `topic_publish` | write | `handle:i64, memory:i32, payload_offset:i64, payload_length:i64` | error code |
| `topic_subscribe` | handle | `handle:i64` | error code |
| `event_poll` | poll | `handle:i64, memory:i32, output_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `event_watch` | watch | `observer_handle:i64, source_handle:i64, correlation:i64` | error code |
| `event_poll_v1` | poll | `handle:i64, memory:i32, output_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `event_ready` | ready | `observer_handle:i64, memory:i32, output_offset:i64` | error code |
| `service_submit` | submit | `source_handle:i64, observer_handle:i64, memory:i32, request_offset:i64, request_length:i64, request_id_out_offset:i64` | error code |
| `service_call` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `service_advertise` | handle | `handle:i64` | error code |
| `service_respond` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_send_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_cancel_own_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_cancel_any_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_receive_feedback` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_receive_result` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_advertise` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_respond` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `tf_lookup` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `tf_broadcast` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_get` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_set` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_delete` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_exists` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_list` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_search` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_topic` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_node` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_service` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_list_topics` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_list_nodes` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_list_services` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `time_read_ros` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `time_read_wall` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `log_write` | write | `handle:i64, memory:i32, payload_offset:i64, payload_length:i64` | error code |

### uwvm_ros2_v1

| Operation | Form | Original parameters | Return |
|---|---|---|---|
| `abi_version` | version | `()` | ABI version |
| `capability_open` | open | `memory:i32, alias_offset:i64, alias_length:i64, handle_out_offset:i64` | error code |
| `capability_close` | handle | `handle:i64` | error code |
| `capability_revoke` | handle | `handle:i64` | error code |
| `topic_publish` | write | `handle:i64, memory:i32, payload_offset:i64, payload_length:i64` | error code |
| `topic_subscribe` | handle | `handle:i64` | error code |
| `event_poll` | poll | `handle:i64, memory:i32, output_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `event_watch` | watch | `observer_handle:i64, source_handle:i64, correlation:i64` | error code |
| `event_poll_v1` | poll | `handle:i64, memory:i32, output_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `event_ready` | ready | `observer_handle:i64, memory:i32, output_offset:i64` | error code |
| `service_submit` | submit | `source_handle:i64, observer_handle:i64, memory:i32, request_offset:i64, request_length:i64, request_id_out_offset:i64` | error code |
| `service_call` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `service_advertise` | handle | `handle:i64` | error code |
| `service_respond` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_send_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_cancel_own_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_cancel_any_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_receive_feedback` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_receive_result` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_advertise` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_respond` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `tf_lookup` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `tf_broadcast` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_get` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_set` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_list` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_describe` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_declare` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_undeclare` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_topic` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_node` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_service` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_action` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_subscribe_events` | handle | `handle:i64` | error code |
| `graph_list_topics` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_list_nodes` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_list_services` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `lifecycle_get_state` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `lifecycle_change_state` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `time_read_ros` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `time_read_system` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `time_read_steady` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `log_write` | write | `handle:i64, memory:i32, payload_offset:i64, payload_length:i64` | error code |
