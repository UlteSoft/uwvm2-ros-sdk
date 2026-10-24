# TypeScript archives and shared modules

Use ordinary Xmake `set_kind("binary")`, `set_kind("static")`,
`set_kind("shared")` and `add_deps`. TypeScript uses the existing JavaScript
library ABI and one genuine QuickJS core, linked by LLVM 23. It does not create
another language runtime or implement the application's algorithm in generated C.

## Source contract

A scalar producer is a TypeScript script assigning
`globalThis.apply = function(left: number, right: number): number { ... }`.
The result must be an exact signed 32-bit integer. A consumer with one ordinary
library dependency receives `__foreign.initialize()`,
`__foreign.apply(left, right)` and `__foreign.close()`.

The result of `__foreign.apply` is a `bigint`: the high 32 bits carry errno and
the low 32 bits carry the integer value. The shared binding translates neither
errors nor ownership. `initialize()` observes loader-owned initialization rather
than calling the Core start section twice. `close()` releases owned producer
state; repeated closure is harmless, and a subsequent call creates fresh state.

Each shared module owns its language objects, memory and table. Only integer
values cross this interface. Static linkage shares the consumer's memory and
authority. This bounded ABI is not an arbitrary ESM export or object-passing ABI:
these library sources are scripts, with one direct scalar dependency per target.

## Examples

| Project | Producer | Consumer | Producer kind |
|---|---|---|---|
| `static_same` | TypeScript | TypeScript | `static` |
| `shared_same` | TypeScript | TypeScript | `shared` |
| `shared_js_consumer` | TypeScript | JavaScript | `shared` |
| `shared_js_producer` | JavaScript | TypeScript | `shared` |

Every directory under `sdk/example/language/typescript` has an independent
commented `xmake.lua`. Run `xmake f -y -a wasm32 -p wasm-wasip1` and `xmake`.
Select wasm64 for both targets with the same `-a wasm64` configuration.

The consumer executes two complete lifecycle rounds. It independently checks
20, 21 and 22, a real source exception, a deliberately invalid runtime return,
repeated closure and the fresh-instance result 20. Success exits with status zero.
An intentional unsafe assertion in the producer exists only to test rejection
of an invalid runtime return; it is not ordinary application guidance.

## Explicit Preload and permissions

The static example needs only the final consumer. A shared example also delivers
`algorithm.wasm`. Its identity is the ordinary Xmake target name `algorithm`.
Do not rename the preload identity without changing the dependency declaration.

Each example supplies a `deployment.json` template for wasm32. Review its runtime
path and arguments, then select it explicitly:

```sh
xmake f -y --ros-run-config=deployment.json
xmake run consumer
```

Shared templates explicitly create a WASI Single for `algorithm`, disable host
environment inheritance, preload the algorithm under its actual identity, and
run the consumer. The computation modules request no additional filesystem,
network or ROS authority. Default basic WASI behavior is retained.

For wasm64, change the template target to `wasm64-wasip1` and explicitly add
`--wasm-feature-enable-memory64` and `--wasm-feature-enable-table64` to its runtime
arguments. The build and run commands do not insert these switches for you.

For a larger application, keep I/O, algorithm and ROS communication as separate
shared modules when independent permissions are required. Grant the I/O module
only its required WASI facilities, leave the algorithm with default basic WASI,
and grant ROS only to the communication module. A statically linked algorithm
shares its caller's authority and does not form an independent permission domain.
These arithmetic examples deliberately open no ROS resource; the original-type
ROS module must use a separately qualified platform deployment profile.

The four public library examples also passed 16 actual Xmake run invocations across both widths and hosts. Each invocation used an explicitly reviewed deployment, performed no compilation, and preserved every previously accepted Wasm hash and modification time.
