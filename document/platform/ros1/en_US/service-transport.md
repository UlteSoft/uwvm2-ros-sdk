# Bounded ROS1 service connections

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
