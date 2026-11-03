# QoS values copied into a private Wasm instance

This public source implements a strict guest parser for the existing source-
observed UMRE-v1 effective-endpoint record, checked Java-int depth narrowing,
explicit RMW7.3.4 liveliness mapping and lossless special duration classification.
Eight required Wasm codec cases cover292 data vectors. Compilation and execution
are pending. These are pure data fixtures, not native snapshots or permissions.

A successful parse owns copied values. Subsequent input/native-object mutation
cannot change that copied value. C const/value practice does not provide a
hardware ACL inside one trust domain. Independent modules still need actual
private Wasm memories, typed copying and current runtime grants.

The expected source/instance/generation/session/incarnation is supplied by the
qualified live runtime integration. Equality of copied numbers is not authority.
Every real native export and endpoint use must check the actual caller and live
capability again; revocation and foreign-handle tests remain required.

UMRE uses explicit effective-policy enums. Its manual-by-topic value2 maps to
native RMW7.3.4 value3. Named/declaration profiles, SYSTEM_DEFAULT/UNKNOWN and
BEST_AVAILABLE enums require their separate real native export contract;
this parser does not manufacture those profiles. The descriptor does not itself
attest native release/commit, RMW/ROS ABI, source ELF or profile-name provenance.
The linked contract preserves these mandatory missing runtime inputs.

No native QoS pointer or host allocator is borrowed, and no VM import, wire
format or permission is added here. The existing common public execution gate
and original qualification, resources and retirement rules remain mandatory.
