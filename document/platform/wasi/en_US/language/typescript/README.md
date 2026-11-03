# TypeScript WASI scalar examples

The maintained examples are `example/language/typescript/static_same` and
`example/language/typescript/shared_same`. They use the existing Microsoft
TypeScript 5.9.3 frontend, shared QuickJS core and LLVM23 route. Their
`apply(i32, i32)` scalar contract is separate from standard ROS ESM commands.

Configure `-a wasm32` or `-a wasm64` explicitly. Build before running; use the
example's explicit deployment file and set its runtime to the exact installed
VM product. A shared producer requires the declared preload and Single inputs
already present in that deployment. Keep those module identities and permission
settings unchanged.

The VM enforces real generated-chain checked unwind and crash-stack recovery.
There is no public option to select an unwind mode. Native self-checks of checked
unwind and crash-stack recovery are required for the exact VM product before
claiming acceptance. An older VM receipt does not qualify a newly built product.
QEMU is for correctness and architecture checks; performance requires native
execution and actual hardware counters.

Generic scalar-library qualification does not qualify native ROS static/shared
commands or every TypeScript platform. The new standard ROS source candidates
and the next VM product retain their own pending verification states.
