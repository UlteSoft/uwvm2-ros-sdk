# ROS 2 parameter completion callbacks in Wasm

This C example queries the original official ROS parameter peer and dispatches
validated query values to callbacks in the same Wasm instance. A successful set
runs an acknowledgement callback without reporting a remote value. A later
query must supply that observed value. The positive branch performs five real
parameter operations and asserts three query callbacks and two acknowledgements.

The native peer is the installed `tf2_ros/static_transform_publisher`, whose
parameter services and parameter events remain enabled. Readiness requires actual
GetParameters and SetParameters endpoint discovery before the VM is released.
The Wasm callbacks still run only after actual validated native replies.

The other three required branches cover an ungranted alias, an owned closed
write handle, and a bounded query timeout. Callback invocation counts and
untouched result state are asserted in Wasm. Null callbacks and noncanonical
set input are refused locally before an import. The process fixture only
supervises the real peer, restricted gateway, VM and read-only observer; it
does not execute SDK business or supply guest responses.

Build with normal xmake, then run normal xmake test with an explicit qualified
current-boot UWVM_ROS_RUN_CONFIG and a short admitted writable
UWVM_ROS_TEST_OUTPUT_ROOT. Preserve the complete public SDK layout. Every
native executable, Wasm, caller identity and independent native/VM grant must
be pinned by the actual qualified producer. Source authoring is not qualification.

These are synchronous single-bool migration callbacks. They do not implement
native async futures, executors, parameter validation/change subscriptions or
cross-instance function-pointer sharing. Those official API requirements remain
missing or unverified. Separate Wasm components require SDK01's typed-copy
contract and separately bound grants; this local callback API grants no authority.
