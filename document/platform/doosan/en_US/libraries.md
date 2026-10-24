# doosan library integration status

Shared-module and static-archive producer/consumer routes are pending common
SDK integration. The codec application examples establish only their separately
qualified binary behavior. A target declaration alone does not establish
linking, preloading or native ROS communication.

Use the ordinary Xmake interface: `set_kind("binary")`, `set_kind("shared")`
and `set_kind("static")`, with `add_deps`, `add_links`, `add_linkdirs` and
public include propagation. The common SDK must preserve the declared kind;
this vendor provider preserves the kind it receives. A common dispatcher that
overwrites it with binary must be updated before library routes are admitted.

| Requested target kind | Required real output | Current library qualification |
| --- | --- | --- |
| binary | One deployable application `.wasm` | Per exact binary example only |
| shared | Separately built, actually preloaded `.wasm` | Pending |
| static | `.a` containing relocatable Wasm objects, linked into an application | Pending |

Archive members must participate in real symbol extraction. Shared modules
must satisfy the actual uwvm loader's import/export contract. Core Wasm preload
support does not establish LLVM PIC/dylink support. Language source bundling
does not establish an archive ABI or dynamic Wasm interoperation.

The first required composition has four separately built modules. This is the
integration topology; a qualifying runnable four-module example is still pending.

| Loaded identity | Role | Manual authority contract |
| --- | --- | --- |
| main | Application coordinating scalar results | No ROS grant |
| io | Separate shared module using WASI stream I/O | Selected WASI stream policy; no ROS grant |
| algorithm | Separate computation module | Default WASI, no additional resource or ROS grant |
| ros_comm | Separate module communicating with a controlled native peer | Only this exact loaded identity receives selected ROS Single grants |

Default WASI retains basic standard-stream rights. It does not mean zero
descriptor authority. WASI/ROS Single targets must be created for and bound to
the actual loaded identity before applying their manual settings. A global ROS
grant cannot establish module-local isolation. The runner must preserve the
submitted configuration without adding grants.

Every admitted route needs separate same-language and cross-language producer/
consumer evidence, both actual memory32 and memory64, and Linux x86 plus QEMU
AArch64 execution. Verify transitive dependencies, archive extraction,
import/export collisions, width/signature mismatch refusal and module lifetime.
Pointer offsets belong to a specific memory; cross-module calls must identify
that memory and the complete span/lifetime contract. Do not assume a C pointer
is transferable between independently owned module memories.

The native ROS acceptance must include positive observations from ros_comm and
explicit refused operations from ungranted main/io/algorithm modules, followed
by cleanup. Full commands, immutable native type identities, gateway settings
and all four deployment files must accompany the completed example. Those
acceptance artifacts are pending; this source overlay supplies no library
producer/consumer qualification for any of the requested language routes.
