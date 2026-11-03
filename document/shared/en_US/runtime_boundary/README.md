# Public Linux execution boundary consumer draft

The installed SDK source consumes a VM-owned live execution context. Version
0.1.0 is an unqualified consumer draft; the VM owner has not agreed or installed
its production publisher. A JSON file, this schema, an environment variable or
a historical passing receipt does not grant execution permission. All changed
consumer sources still need Linux syntax/import/build checks, their own two
real interruption proofs, a bounded harmless successor and actual public Xmake
integration. No SDK code from this draft has run on Mac.

`share/platform/ros/runtime-boundary/v0.1.0/admission.schema.json` lists the
static inputs consumed by `tools/shared/python/runtime_boundary.py`. The VM
owner supplies `UWVM_ROS_SIMULATION_ADMISSION` from a read-only context, with
current boot, complete exact changed-executor packet SHA, installed SDK file
pins, actual shared ancestor and leaf, canonical lease, independent guardian
and original interruption raw evidence. Source paths are relative to the
installed SDK; no `.tmp` directory or private runner is an execution dependency.
The read-only cgroup2 view must be root-owned and nondelegated. Both actual
actors and their shared ancestor require 64 GiB memory and zero swap. The
shared ancestor CPU set and the narrower actor CPU set have separate fields.

The producer atomically publishes one `lease_observations` JSON bundle in the
same read-only consumer context. Its schema is `lease-observations.schema.json`.
The guardian reads its own inherited lease FD. The host independently reads
both keeper and guardian held FDs and observes their actual cgroups. Both
records bind the current boot, context nonce, whole static-admission SHA,
controller and guardian PID/birth/image, and the same observation sequence.
The envelope also binds the exact packet SHA. Every use requires observations
no older than 500 ms, a nondecreasing positive sequence, exact canonical
FD/device/inode and WRITE FLOCK. Atomic publication avoids mixing two heartbeat
generations. Missing, inaccessible, stale or inconsistent facts block execution.
The host must continue direct FD checks until physical retirement. The worker
independently checks kernel lock ownership and both live process births; it
never needs to read a foreign guardian executable or FD. None of the original
host checks is replaced by a guardian self claim.

`actor_gate.py` records its actual PID/birth and all four kernel namespace
identities, then stops itself. `actor_control.py` verifies that stopped gate,
resumes the same PID, observes the actual target executable and argument vector,
and stops it again. The parent opens the actual procfs executable descriptor
and verifies its complete bytes, device/inode, namespaces and cgroup before
resuming. An intended path, self JSON or fast unobserved exit cannot pass.
Requests, gate entry, immediate-exec observation, actual-exec receipt, logs,
failures and same-birth physical retirement stay in the fresh suite folder.
These stops are functional instrumentation and provide no performance result.

Simulation cases execute every declared denial first and record both declared
and actual order. Until those denials pass, the installed launcher refuses
native endpoint actors. The exact frozen joint-step denial requires real VM
exit 13, one matching first-call `open` DENY record and no state copy, accepted
operation, terminal operation or launched native endpoint. Positive cases
still require the actual official simulator, exact provider/runtime closure,
VM-native UUID correlation and all fresh guest state checks. The SDK neither
creates grants nor evaluates ROS application business in a native helper.

The joint feedback consumer accepts only the pinned 4449-byte guest and its
three exact source pins. It checks the original VM stdout, bounded exact JSON
integers, two real memory payloads, whole payload hashes, fresh timestamps,
module/session and runtime generations, owner/mapping/policy/native epochs,
all command UUID/digest links, terminal and final sequences and every joint
bound and target tolerance. It reconstructs command bytes only as an assertion;
it never sends that command. State-copy flags alone do not prove guest
processing. The exact checked guest exit path must also complete successfully.
The callback, sensor and other guest profiles remain required explicit gaps.
The original R5 evidence in `share/platform/ros/runtime-evidence/v1.1.0/` is
finite historical provenance and does not qualify this new consumer.

WASI component tests use the same stopped gate and actual after-exec receipt.
They require a real VM-owned boundary even when a separate hosted CI budget is
available. Missing public runtime deployment or admission remains BLOCKED.
The upstream RCL clock fragment and sum component are not complete ROS client
or simulator acceptance. Every required component case remains listed even
when an earlier prerequisite blocks its execution.

Keep the original external launch reserves: Mac 536870912 bytes, Linux root
570425344 bytes, bootstrap shm 13958643712 bytes, keeper shm 14092861440 bytes,
and fresh LLVM compile shm 14801272832 bytes. The enclosing VM producer and
changed-executor lifecycle enforce these floors before starting the respective
work. This consumer draft supplies no reserve waiver or admission producer.
