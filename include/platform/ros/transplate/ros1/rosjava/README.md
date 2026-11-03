# Historical rosjava Wasm source profile 0.1.0

This initial source port preserves the real ROS1 `org.ros.namespace.GraphName` API, its upstream NameResolver/NodeNameResolver remapping and private-name algorithms, and `org.ros.exception.RosRuntimeException` from [rosjava_core 111c1d10](https://github.com/rosjava/rosjava_core/tree/111c1d109ebb9089ba5dc446de80319d82580e88), the archived kinetic branch snapshot.

GraphName retains its upstream validation, canonicalization, private/global/relative name handling, joining and anonymous counter. The only dependency adaptation replaces Guava's null check with `java.util.Objects.requireNonNull` and removes the testing-only annotation. NameResolver is unchanged; NodeNameResolver drops only its documentation-only import of the unported Node API. Original upstream test vectors are retained in review evidence. No source, compiler or tests from this revision have been executed on the Mac.

These names are guest values and confer no ROS authority. The anonymous counter has the original per-process limitation; cross-instance uniqueness and concurrent execution are not qualified.

This is a namespace-library source port. NodeMain/ConnectedNode, publishers/subscribers, services, parameter server, TCPROS/XML-RPC, generated message reflection, callbacks, timers and ROS1 communication remain BLOCKED_NOT_IMPLEMENTED for this new profile. The upstream Netty sockets, XML-RPC dynamic proxy and host executor must be ported through the common audited boundary; they cannot run as a host JVM application.

The existing Java/Kotlin provider compiles this versioned source root using the shared TeaVM toolchain. Build, Wasm emission, actual VM execution, official ROS1 provider tests and performance are NOT_RUN. This profile does not claim Kinetic or Noetic runtime support from the upstream branch name.
