# Bounded ROS1 service and resource connections

The native gateway retains a TCPROS connection within one authenticated session
and one complete `service.call` capability. Repeated calls avoid another Master
lookup and TCPROS handshake. Builtin services and generated custom services use
the same bounded transport. The guest import signature and canonical wire codec
are unchanged.

Reuse requires the same alias, operation, resource, native type, MD5 identity,
limits and selected Master/resource endpoint. A similarly named service is not
an identity match. The handshake verifies the actual peer's type and MD5 before
any request is sent. Normal request authorization, quotas, audit and canonical
response validation still apply to every call.

The complete call, including waiting for an occupied connection, uses its
original deadline. Waiting does not extend the timeout. Closing an alias retires
the retained connection; a request already admitted retains only its own owner
until it finishes. A timeout, invalid response, oversize response or broken
connection closes that stream. The gateway never automatically replays the
request, because the server might already have performed its operation. A later,
separately authorized request may discover and connect again.

Deploy ROS1 with numeric `ROS_MASTER_URI` and `ROS_IP` addresses, or the supported
`localhost` spelling. Unbounded DNS resolution is not part of this transport.
Persistent connections do not replace ROS authentication or network isolation.
They do not add permissions or allow a guest to access a raw TCPROS socket.

The regression source is maintained in the VM repository at
`test/0073.ros-tests/support/source/runtime_repair/ros1_connection_reuse.cc`.
It counts real handshakes and requests, including contract changes, wrong peer
identity, retirement, timeout, malformed data, size limits, EOF and concurrent
waiter deadlines. Performance results are workload-specific and are recorded
separately from these correctness checks.

## Graph and parameter requests

The graph and parameter adapters also retain their bounded XMLRPC connection
to the selected Master. This uses the same session-owned client pool as service
calls. The complete capability, exact endpoint and native client type must match;
closing or revoking the alias releases that ownership.

Every invocation still sends its real query. No graph result, parameter value,
existence result or authorization decision is cached. A parameter update or
deletion made by another native client is visible on the next request. Searching
and the existing parameter type preflight share the original call deadline with
the final query, including time spent waiting for a busy connection.

Only an unambiguous successful HTTP/1.1 response permits connection reuse.
HTTP/1.0 and explicit connection-close responses remain valid results but do not
retain the stream. Response size, header framing and XML nesting checks remain
bounded before parsing. Transport failures, invalid XML, XMLRPC faults, EOF and
timeouts retire the stream without replaying the request. A waiter that reaches
its deadline leaves the active request's connection intact. Request writes
suppress SIGPIPE per socket operation, without changing process signal policy.

The VM fixture `ros1_xmlrpc_reuse.cc` independently counts accepted connections
and complete requests, checks fresh response values and exercises retirement,
concurrent waiters and an actual ROS Master. `ros_resource_peer.cc` and
`run_ros_service_benchmark.py` compare the official native APIs, authorized IPC,
and the same Wasm imports. Compilation, discovery and warm-up are outside the
timed exchange loop; malformed or unexpected results fail the measurement.
