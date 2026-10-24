# Native-language SDK build adapters

`native_languages` contains the shared compiler and runtime configuration for
Rust, Zig, official Go, TinyGo, Swift, Haskell, Nim, D, and Odin. The public
configuration/build entry is `sdk/xmake.lua`. Maintained helper implementations
are in `sdk/tools/native_languages`; the Xmake adapters are
`tools/xmake/languages/native_languages.lua` and `native_examples.lua`.

The separate [C FFI bridge](../c_ffi_bridge/README.md) serves Swift, Haskell, Nim,
D, and Odin through `roswasm_c_ffi_invoke()`. Rust, Zig, Go, and TinyGo use their
own direct Wasm import bindings. Compiler registration or a C bridge test does
not qualify an ABB application written in any of these consumer languages.

Each language's `contract.json` distinguishes source/compiler versions, Rust
editions, target ABI, runtime dependencies and qualification receipts. An empty
qualification list means untested. It never means every compiler or target is
supported. The default profile is wasm32-wasip1, exceptions off, threads off,
core 3.0 baseline. Actual emitted features, WASI imports, libc linkage and runtime
requirements must still be inspected. These adapters currently refuse wasm64,
threads, EH-on and Rust panic-unwind; those target/runtime closures remain work,
not successful fallback paths. Rust core, alloc and application std are distinct.

## Source generation

Author and format generated source in the local workspace, then synchronize
complete directories with scp. Run compiler and execution acceptance on the
configured 64 GiB, swap-disabled Linux builder:

```sh
python3 -I -B tools/native_languages/numeric.py \
  --schema share/abi/abi-v1.json --out "$RUN/c-ffi-bridge"
python3 -I -B tools/native_languages/emit.py --sdk "$SDK" \
  --catalog "$CAPTURED_CATALOG" --out "$RUN/native-records"
```

`numeric.py` emits the complete 38 ROS1/43 ROS2 numeric signatures for Swift,
Haskell, Nim, D and Odin. A small private C translation unit preserves the
original import names/types and compiles exactly one explicitly selected
backend. It rejects native compilation and wasm64. It links no native ROS
library, does not proxy network/device access, and exposes no administrative
operation. Its numeric dispatcher may retain every selected backend import;
binary import inspection must check this actual closure, not source reachability.

`emit.py` uses the existing complete bounded Record/Interface loader. It emits
all nine native-language record packages without rewriting vendor products.
Every declared scalar, nested value, fixed array, sequence, UTF-8 string, admitted
raw-byte string, scalar default and constant is accessible in a typed field.
Its independent JSON records original names, exact native identities, canonical
codec identities, fields, bounds and component roles. Native identities are
copied from independently acquired inputs; this helper never creates one.
The original loader deliberately refuses unsupported source grammar, recursion,
unbounded fields, unknown defaults and unimplemented aliases.

Strings and containers carry u32 little-endian lengths. Integers retain their
exact widths, including signed minimum and unsigned 64-bit maximum; floats use
finite IEEE754 bits. Decoders reject malformed Bool, invalid UTF-8, NUL in normal
ROS strings, truncation, trailing bytes and bounds violations. Original control
raw-byte strings keep their independent byte contract. Encoders never serialize
native struct memory. Swift/Nim/Haskell return fresh values; D/Odin/Zig decode
variable containers into explicit caller arenas/allocators. D/Odin/Zig string
views borrow the input. Discard a whole decode arena on refusal, and keep input
and arena alive while any decoded view is used. Canonical byte quotas are not
stack/RSS or native DDS allocation budgets.

The original node-control family uses the separate owned RMW raw12 transport.
Record emission does not supply that transport in a new language. Never call
legacy service RPCs for control interfaces or register incomplete facades.
That language-specific control transport remains a separately stated dependency.

## Typed operations and ownership

Owners open only explicitly granted aliases. Copies share retirement state (or
borrow the same stable State cell). Close/revoke retires local ownership before
the Host notification, including on failure. Reentrancy returns 17 without
waiting. Output slots begin at UINT64_MAX; error 90 reports a required length
only when the Host overwrote the sentinel. Only initialized successful bytes
reach decoders. Unknown status codes remain unsigned. No operation retries a
timeout, disconnect or capacity refusal automatically.

Local Session/Node/Executor objects provide bounded bookkeeping and caller-driven
callbacks. A local Node label is not a native identity or native rcl context.
Each service advertise/respond, action send/cancel/feedback/result, parameter,
graph, TF, lifecycle, clock, log and observer role requires its own alias. RPC
selection cannot change the resource/type/QoS/endpoint fixed by trusted policy.
Owned request and goal IDs are full u64 values, not cross-instance authority.
Cancellation acknowledgement, terminal result and actual controller stop remain
separate outcomes. Unknown delivery is never automatically replayed.

Default extra authority is empty. Ordinary stdin/stdout/stderr are the baseline.
No import, SDK, platform option, Wasm feature or callback grants ROS, filesystem,
network, device, debugger, update or policy-management authority. Test only
loopback/simulation; physical motion is outside the default test scope.

## Independent qualification

Keep separate counts for source emission, compiler checks, Wasm validation,
actual uwvm Guest execution, real native ROS, Guest→Runtime→Gateway→native ROS,
upstream suites, QEMU architectures and hardware-counter performance. Pure codec
tests and host-language programs do not qualify Guest integration. These are
project-authored tutorials, not a denominator of migrated upstream examples.
All 31 platforms remain incomplete until their own acceptance establishes it.

Primary toolchain references checked on 2026-10-21:

- [Rust editions](https://doc.rust-lang.org/edition-guide/editions/index.html)
- [Rust WASIp1 threads target](https://doc.rust-lang.org/rustc/platform-support/wasm32-wasip1-threads.html)
- [Official Go WebAssembly ports](https://go.dev/wiki/WebAssembly)
- [TinyGo WebAssembly documentation](https://tinygo.org/docs/guides/webassembly/)
- [Zig 0.14.1 reference](https://ziglang.org/documentation/0.14.1/)
- [Swift SDK for WebAssembly](https://www.swift.org/documentation/articles/wasm-getting-started.html)
- [GHC WebAssembly cross backend](https://ghc.gitlab.haskell.org/ghc/doc/users_guide/wasm.html)
- [Nim backend integration](https://nim-lang.org/docs/backends.html)
- [LDC project](https://github.com/ldc-developers/ldc)
- [Odin Wasm target documentation](https://github.com/odin-lang/Odin/blob/master/core/sys/wasm/README.md)

The GHC development manual is not a pinned bindist. The D wiki was access-denied
at review. Neither reference supplies compiler/runtime acceptance evidence.
