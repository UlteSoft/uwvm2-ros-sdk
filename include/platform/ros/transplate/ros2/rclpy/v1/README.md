# rclpy Jazzy source migration v1 candidate

Status: **Migration candidate — historical frozen applications have genuine
CPython/Wasm link and import evidence; current public build/test, guest runtime,
native ROS and official simulation remain unqualified.** A historical link
does not qualify changed source or a new boot. This directory is the shared
Python migration implementation; vendor bindings reuse the existing language
core.

The selected source API reference is ROS2 rclpy 7.1.12, commit
`bd637294dd02b1c128422395c059fa06df8387a3`. The compatible modules derive from the
SDK's existing incremental implementation, with origins and changes recorded
in `source-origins.json`. They are not unmodified upstream rclpy. In particular,
`rclpy.init()` returns `None`, matching this pinned Jazzy API. A modern
`with rclpy.init():` spelling is not part of this profile.

The source producer links the existing genuine CPython 3.14.8 static archive,
its matching headers and frozen encodings, and `src/platform/ros/py/_native.c`
compiled as Wasm. The bridge registers `_roswasm_native`, selects only the
controlled `uwvm_ros2_v1` imports, pins input buffers for each synchronous call
and copies owned output bytes. The common C ABI is consumed without changes.
`ROSWASM_OWNED_SERVICE=0` is explicit; the optional owned-service protocol has
not been enabled. No host Python extension or native Python client is loaded.

`bundle.json` enumerates every packaged SDK and genuine CPython source SHA256.
An opt-in loader uses CPython's real import machinery, including circular
imports and failure rollback. Its registry is finite. Startup has no user-site,
environment path, filesystem module-search path or shared-extension fallback.
Missing modules raise ordinary import errors. Standard-library C extensions
must already exist in the pinned core; an unavailable extension is a blocker.
There is no claim that the complete CPython standard library is available.

The finite registry includes the matching original CPython `struct.py` facade.
Real Linux VM execution has passed that import closure and reached Context,
Node and subscription creation. This is a component startup observation; the
public ROS roundtrip and audit requirements below remain unqualified. Guest
monotonic clock use requires an explicit runtime grant for its actual module.
Capability aliases use the common VM identifier grammar (ASCII letters, digits,
underscore, hyphen and dot, up to 255 bytes, excluding `.` and `..`); they are
not ROS resource paths. Their syntax and local mappings grant no authority.

The initial source subset includes explicit Context lifecycle, String/Bool
codecs, QoS depth/history/reliability/durability, publisher/subscription creation,
publishing, nonblocking `spin_once(timeout_sec=0)`, synchronous callbacks and
explicit owner retirement. `Context.configure` is a deployment bootstrap
extension: its operation/resource/type/QoS-to-alias map grants no permissions.
The runtime remains authoritative for module/grant/provider identity and every
operation. No endpoint is opened during module import.

Implicit rosout and parameter services are unavailable. Node construction must
explicitly pass `enable_rosout=False, start_parameter_services=False`; requesting
either facility raises before owner construction. Remapping/domain CLI
selection, native signal handlers, positive/infinite timeout waits, native
executor objects, callback groups, worker threads, concurrent callbacks,
unbounded async execution and implicit discovery are unsupported. Existing
service/client/timer source is retained for further porting, with no qualified
behavior claimed for this profile. Actions, lifecycle, parameters, full ROS
time and the remaining release/provider/API matrices remain required work.

One interpreter runs on one guest thread with the ordinary CPython GIL.
The bridge invokes no Python callback during a synchronous host import. Local
callbacks run only when the guest explicitly polls. Terminal traps need runtime
cleanup; ordinary Python exception recovery cannot guarantee trap recovery.
The current dispatch lease rejects ROS reentry from a callback with status 17,
including publishing through a sibling owner. The initial example callback only
matches the received payload. Publisher-in-callback and concurrent callback
semantics require further implementation and qualification; the current poller
does not establish equivalence to an upstream rclpy executor.
File and clock operations, if requested by guest code, use the runtime's WASI
permission boundary. The port does not create a native process or tunnel ROS
through WASI files or sockets.

This interpreter, its built-in C bridge, imported Python modules and static
libraries form one memory and authority trust domain. Multiple Context,
Session, Node or class objects within it are not independently sandboxed ROS
components. Independent trust boundaries require distinct genuine Wasm runtime
instances with private heaps, stacks, globals and allocator state. Even two
instances of identical Wasm bytes may have different grants; the actual
runtime caller and generation determine authority.

Cross-instance arguments must use the shared SDK01/VM versioned typed
channel/copy ABI. This adapter does not define a second common schema. Raw
Python/C pointers stay inside their originating private heap. Explicit
pointer-sharing preload is opt-in compatibility with shared memory trust and
requires its own complete dependency, allocator and lifetime qualification.
Multi-memory indices, exported-memory names and ring-slot conventions alone
do not create ROS permissions or read-only/per-byte memory protection.

The independent-component route still needs real private-memory/growth and
alias tests, typed request/callback/backpressure tests, stolen-handle and
descriptor denial without native effect, callback caller attribution and
revoke/update/stale-generation tests. No such isolation acceptance follows
from the current single-interpreter pub/sub example.

Each actual build must retain the generated build receipt, whole Wasm SHA256,
actual imports/features, compiler/core/ABI/source identities and command exits.
Each runtime qualification must additionally retain fresh native correlations,
permission decisions, no-effect denial evidence and actor/cgroup/lock retirement.
Source presence, successful imports or a compiled binary cannot establish these
runtime properties. ROS1 rospy uses its own historical API and is not aliased to
this package.
