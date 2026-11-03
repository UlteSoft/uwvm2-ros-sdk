# rospy Noetic1.17.4 genuine Python Wasm source candidate

This new opt-in source profile uses the existing genuine CPython3.14.8
wasm32-wasip1 core and the real `_roswasm_native` C bridge compiled for backend1.
It is source-authored and has no Linux build/runtime/ROS qualification yet.
It does not run host rospy, native Python, sockets, XMLRPC or receiver threads.

The original1.17.4 package XML, selected API files and full BSD headers are
retained under upstream-reference with exact hashes. The guest adaptation is
separate; it is not an unmodified complete upstream distribution. String/Bool
retain the ROS1 type spelling and MD5 rather than relabelling ROS2 messages.

Before the standard init_node call, an explicit guest configure extension maps
operation/resource/type to symbolic aliases and queue/latch/output bounds.
These maps grant nothing. This finite cooperative profile requires explicit
disable_rostime=True, disable_rosout=True and disable_signals=True. Native
ports/remapping and implicit facilities are refused before endpoint effects.
Publisher/Subscriber callbacks and field serialization execute in the genuine
Wasm interpreter. Queue/latch settings must match the installed native grant.

spin_once is an explicit nonblocking extension. spin requires a finite selected
guest idle driver and does not claim native threaded rospy semantics. ROS time,
Rate/sleep, services/actions/parameters/logging, transport introspection and
full upstream acceptance remain required unimplemented/unqualified work.

Resources are registered before effects using the shared once-only owner frame.
Close/cleanup status is retained; callbacks cannot silently create or retire
resources reentrantly. Unregister checks retirement before message construction
or encoding. Runtime failures retain their numeric ABI result in
ROSCapabilityError, a ROSException subclass. Full native no-effect/audit and raw
stale-handle tests remain mandatory in addition to these local guards.

One module's State and callbacks share one interpreter heap and authority.
Independent components require distinct real Wasm runtime instances and the
SDK01/VM-owned concrete memory/channel/deployment contract. This candidate
creates no second shared protocol or isolation claim.

After a failed shutdown, explicit retry_cleanup may attempt only owners whose
real bridge witness is still NotAttempted. Entered/unknown IDs stay hidden and
shutdown callbacks are never replayed; Runtime teardown remains mandatory.
