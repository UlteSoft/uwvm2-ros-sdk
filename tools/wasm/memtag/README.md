# Stable WasmMTE producer and rebuild contract

This directory builds the pinned LLVM 23.1.5 WebAssembly producer and WASI SDK 34
library sources recorded in `source-lock.json`. WasmMTE is a nonstandard
instruction extension; selecting Wasm Core 3.0 does not make it part of that
standard. The producer registers only WebAssembly targets and defaults to
`wasm32-wasip1-threads`.

The SDK profile driver in `install/compiler.py` selects address width, Core
version, threads, MTE and exception support independently. A matching sysroot
must exist for the complete profile. It never substitutes a host library,
another compiler's sysroot, memory32 for memory64, or an uninstrumented runtime.
A completed build receipt is not deployment or memory-safety qualification.

## Proof-based tag elision

The WebAssembly stack-tagging pass consumes LLVM `StackSafetyGlobalInfo`.
A static stack object can omit tag generation and retirement only when the
analysis proves all reachable accesses are within the object and within its
lifetime. The proof follows derived pointers and known noninterposable callees.
Unknown indirect calls, escaped or returned pointers, uncertain indices, and
accesses outside a lifetime retain instrumentation. Proving one access safe
cannot justify stripping tags from all other accesses to that object.

This optimization does not disable VM linear-memory bounds checks or grant
host permissions. Dynamic allocations and objects without a complete proof
remain instrumented. LLVM optimization is not a proof that an entire application
has no bugs, and probabilistic tag equality is not a deterministic detection.
Managed references may rely on their language/GC type rules; a managed object
that carries a linear-memory address must preserve its memory identity and tag.

The maintained patch includes `memtag-proven-safe.ll` regressions for memory32
and memory64, safe bounded operations, unknown calls, escaped pointers, and
lifetime violations. This coverage exercises an existing optimization; adding
these tests does not by itself represent a code-generation speed improvement.

## Rebuild order after a producer change

1. Freeze the previous producer, source hashes, profile descriptions, artifacts
   and performance evidence. Reusing a compiler pathname is not an identity.
2. Build the stable producer from the locked archive and patches with
   `build_producer.py`. Reuse an explicitly supplied native bootstrap toolchain.
3. Use `build_sysroots.py` to rebuild compiler-rt, libc/CRT, libc++, libc++abi and
   libunwind for every supported profile. The component cache key includes the
   producer bytes, recipes, source revisions and patches, and profile options.
4. Rebuild every language's standard library, allocator, runtime, FFI bridge and
   interpreter with that producer/profile before rebuilding SDK examples.
   Relinking an old interpreter or tagging only an application's final object
   is not a complete MTE rebuild. Build-time native source generators may be
   reused when their exact identity is verified; guest runtime objects may not.
5. Execute the language and platform tests through uwvm2-ros. Record failures,
   unsupported combinations, permission-denial cases, and source/import checks.
   An unavailable compiler or runtime does not count as a passing test.
6. Compare native x86_64 runs with VTune hardware hotspots and microarchitecture
   data, retaining source/assembly mappings and checksums. Compare uninstrumented
   programs, instrumented programs with runtime MTE disabled, and enabled MTE
   modes separately. QEMU runs establish architecture correctness, not native
   performance. Preserve mismatch and observed tag-collision counts separately.

The rebuild is incomplete while any selected language or platform lacks its
new runtime or execution evidence. No old qualification transfers merely
because the replacement output has the same filename or ABI.

## Current source-build entry points

- `build_producer.py --work <new-work> --bootstrap <existing-native-prefix>`
- `build_sysroots.py --work <new-work> --toolchain <producer-prefix>`
- `tools/language/js/build.py`, `tools/language/lua/build.py`, and
  `tools/language/python/build.py` accept the exact source-built sysroot receipt,
  independent guest profile options, and fresh output/cache directories.

The sysroot builder currently admits wasm32 single-thread, wasm32 WASI threads,
and wasm64 single-thread profiles. Memory64 threads require further VM and
startup ABI work and are rejected explicitly. The installer catalog retains
unqualified language/profile combinations as pending; these entry points do
not establish that every SDK language or vendor integration has been rebuilt.

All local test evidence and intermediate builds belong in the appropriate
project's `.tmp` directory. Retain the configured memory/swap controller and
reuse installed build and profiling tools.
