# WAT shared-memory thread counter

This example builds an authored wasm32 Preview1/noeh command and a separate,
explicit shared-memory owner through the installed SDK's WAT provider. It selects
`wasm-wasip1-threads`, declares the `threads` feature and binds the command's real
`env.memory` import. The owner contains only one bounded shared memory and its
export. Its startup is explicitly `freestanding`: no constructor, function or
start section is synthesized or discarded.

Set `UWVM_ROS_SDK_ROOT` to the SDK and `UWVM_ROS_THREAD_TEST_VM` to an existing
absolute Linux VM executable or launcher path. From this example directory run:

```sh
xmake f -y -p wasm-wasip1-threads -a wasm32
xmake
xmake test -v
```

The native Xmake test runs ten actual VM processes across the interpreter and
LLVM backends. It distinguishes disabled namespace, hidden interface, denied
calls, absent thread resource grant, and the fully granted case. Negative cases
must return the expected exit and the diagnostic for that exact authority layer.
The generated Wasm embeds no Host permission or resource grant.

The positive case starts two actual `wasi.thread-spawn` child activations. Both
must record their Guest WASI tids and arrive at one shared barrier before main
releases either child. A serialized synchronous replacement cannot complete this
protocol. Each child performs 1,000 atomic increments; main checks the shared
count of 2,000, both per-child counts, distinct positive tids and each child tid's
match with the real spawn result. Main writes the two recorded tids and counter
as three little-endian u32 values; the Python test validates all three. Guest WASI
tids are not native OS tids. The test does not measure simultaneous CPU scheduling.

Every process has an owned 45-second external deadline. Timeout, an incorrect
policy diagnostic, an unexpected output or a remaining process group fails the
test. The runner stops at its first failure, so the outer Xmake deadline cannot
turn a hung series of cases into a successful result. Evidence records the exact
commands, process identities, artifact hashes, diagnostics and observed tids.

The Linux runner observes leader exit with `waitid(WNOWAIT)` and retains that
original unreaped leader until its process group is empty. Group cleanup checks
its original PID/start time, process group and session; adopted children are
physically reaped before the leader. Signals are masked during creation and the
final cleanup, with the child's original mask restored before exec. No numeric
PGID lookup or signal occurs after the leader is reaped. Lifecycle controls for
normal exit, timeout, signal interruption and a leftover child are recorded
separately from the Guest functional results.

The implemented route is complete wasm32 WAT modules and their memory-only Core
preload owner. Threaded relocatable/static linking, shared64, PIC/dylink, ROS
threaded integration and other source-language thread ABIs are not qualified by
this example. It adds no SDK TSan or memory-tagging qualification. Ordinary WAT
32/64 commands and initialized Core preload libraries keep their existing route.
