# Freestanding C/C++ Guest thread stacks

This example builds real C and C++ wasm32 Preview1/noeh binaries with the SDK's
existing LLVM23 compiler and linker. Both binaries use an explicitly declared
shared WAT memory owner. Select `wasm-wasip1-threads`, `freestanding`, `noeh`, an
explicit `env.memory` binding and finite initial/maximum memory linker bounds.
The owner is a build-only dependency; it is not linked as a C library.

Set `UWVM_ROS_SDK_ROOT` and an absolute existing Linux VM/launcher in
`UWVM_ROS_THREAD_TEST_VM`, then run from this directory:

```sh
xmake f -y -p wasm-wasip1-threads -a wasm32
xmake
xmake test -v
```

The SDK compiles its `wasip1_thread_entry.s` into a Guest Wasm object and links it
into each binary. The actual `wasi_thread_start(tid, arg)` loads a caller-owned
12-byte `uwvm_wasip1_thread_context`: stack top, stack bottom and user argument.
It selects the child activation's `__stack_pointer` before any C/C++ prologue,
then calls `uwvm_wasip1_thread_main`. Each caller supplies distinct, aligned,
sufficiently sized Guest stack storage. The descriptor is not Host authority.
There is no Host shim and no fabricated child entry.

Both actual children keep 64 volatile local words live at an arrival/release
barrier. Main reads those words while both child frames are active. After release,
each worker makes a nested call with another volatile frame and checks its live
values during 1,000 atomic increments. Main also checks its own live frame and
makes a nested call. The result contains the two real Guest WASI tids, shared
count, worker and nested stack addresses, main stack address and both stack ranges.
Python checks distinct positive tids, counter 2,000, disjoint worker ranges and
addresses within the corresponding ranges. These checks exercise each activation's
independent mutable compiler stack global instead of avoiding linear stack usage.

Twenty real VM processes cover C/C++, interpreter/LLVM, four exact authority
refusals and the positive case. The shared lifecycle helper retains the original
leader with WNOWAIT until group cleanup and reaping finish; every process has an
owned external deadline. Guest functional effects and runner lifecycle controls
remain separate evidence.

The linker-generated `__tls_base`, numeric globals and original start section
are retained. The SDK inspects the real exported `__tls_size` and rejects nonzero
compiler TLS data. It does not implement a TLS image/bootstrap, a libc allocator,
`pthread` or `std::thread`. The installed ordinary libc's pthread symbols are not
used as a thread runtime. Command startup, exception-enabled profiles, threaded
library graphs and imported non-WASI runtime functions are rejected. The route
reuses only the declared compiler resource from the ordinary manifest, without
claiming a threaded libc closure.

This is a bounded freestanding stack ABI and executable example, not general C/C++
thread runtime qualification. Stack overflow protection, dynamic stack allocation,
TLS variables, shared64, ROS-threaded integration, SDK TSan and memory tagging are
outside its scope. Additional host platforms require their own runtime execution;
native x86_64 success does not establish i686/AArch64 behavior.
