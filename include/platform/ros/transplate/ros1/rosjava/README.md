# rosjava namespace source profile 0.1.0

This profile ports four real classes from rosjava_core commit
`111c1d109ebb9089ba5dc446de80319d82580e88`: GraphName, NameResolver,
NodeNameResolver and RosRuntimeException. UPSTREAM.json pins each original
blob and lists the dependency adaptations. NameResolver and
RosRuntimeException retain their original bytes. Apache 2.0 notices remain
in each source file; LICENSE contains the full license text.

The Java/Kotlin provider selects this versioned source root for ROS1.
`namespace_upstream_checks` builds and tests the actual source through the
public Xmake entry, genuine TeaVM FULL AOT output, and the configured Wasm VM.
It adapts the upstream naming test vectors into a standalone guest main.
It also checks remapping overloads, the original unmodifiable live map view,
exception identity, and sequential anonymous names. The upstream native
executor concurrency test is explicitly excluded. Source selection does not
establish a Kinetic or Noetic runtime qualification.

These names are guest values. TCPROS, XML-RPC, NodeMain/ConnectedNode,
publishers, subscriptions, services, parameters, discovery, native executors,
cross-instance uniqueness, authority and memory isolation remain unported or
unqualified. No host JVM application path or new VM ABI is introduced.
