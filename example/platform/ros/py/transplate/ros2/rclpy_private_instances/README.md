# Two genuine Python Wasm consumer source candidate

This prepares one real CPython/Wasm build artifact containing reader and
actuator behaviors. It must be instantiated twice with distinct genuine
runtime instances, private heaps and caller-derived grants. The identical node
name and module hash deliberately cannot identify authority. A role argument
selects behavior only. One interpreter with two scripts/Contexts is forbidden.

The optional target-only C probe uses a real static64-byte Wasm memory0
sentinel, copied reads/writes, memory.size/grow and an ordinary private C pointer
fold. It accepts no arbitrary pointer, host address or peer memory selector.
Its local offset is not a global memory identity. The default profile exposes
none of these functional diagnostics. This is functional instrumentation, not
release isolation or performance evidence.

The reader consumes official ROS input, computes an intent inside its heap,
and sends copied String data. The actuator validates bounded intent, publishes
the command, requires actual fresh official ROS feedback, writes/reads its own
receipt, and sends an acknowledgement. Each then verifies its private sentinel
survived peer work/growth. Both attempt the peer-only alias and the reader must
be denied actuator-only file writes. Exact future native ownership/payload and
no-effect audit is mandatory; guest observations cannot establish those facts.

`xmake` builds the complete genuine artifact. Existing `xmake test` registers
only a truthful one-instance `probe-only` guest-component case. It cannot run
the two roles sequentially and call that a passing isolation test. The real
simultaneous multi-instance consumer awaits the SDK01/VM-owned concrete shared
memory/channel/deployment contract. Existing ROS2 typed String copies are a
transport candidate, not a replacement public component protocol. Read
instance-requirements.json for the exact ungranted requirements and remaining
negative matrix. No custom host client, private IPC or fake admission is used.

All new source is unbuilt/unrun until Linux qualification under the original
resource/admission rules. Stage A/B, all12 isolation groups, rospy and broader
migration obligations remain independently required.
