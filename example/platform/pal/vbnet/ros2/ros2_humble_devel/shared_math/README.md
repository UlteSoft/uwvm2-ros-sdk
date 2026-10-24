# Genuine CLR shared producer with a C# consumer

This wasm32 scalar component passed actual Linux x86_64 compilation and public
VM execution. The producer uses its own source-language frontend and real Mono
LLVMOnly AOT. The C# consumer imports real Core functions through the original
WasmImportLinkage P/Invoke generator. Each library instance owns its runtime,
memory and table.

The genuine VB producer uses MonoPInvokeCallback with original delegate metadata. Its C# consumer explicitly calls each instance's original initialize_runtime export.

The consumer checks signed arithmetic, a real caught overflow, catch/finally
counts, one managed initialization per instance, and independent math/math_peer
state. The exact final counters are 4294967299 and 1; both initialization counts
are 1. Only scalar values cross module boundaries.

Set installed runtime/gateway paths in run-native-clr.json, then use the public
interface:

```sh
xmake f -p wasm-wasip1 -a wasm32 -c --ros-run-config=run-native-clr.json
xmake
xmake run main
```

main, math and math_peer explicitly disable ROS and retain empty WASI grants.
The public runner owns deployment. Deployable outputs are under build/targets;
compiler intermediates remain in .uwvm-ros.

The pinned Preview 6 glue resolves actual full CLR type names and binds its
unchanged generated export table to the original native AOT wrappers. Metadata
validation reads the real assembly; no user method body is supplied by the
glue generator. Original compiler bitcode, target objects, registration and
actual stripped-assembly embedding are retained in the review evidence.

This component covers the own-language producer and a C# consumer. CLR ARM,
memory64, static archives, native ROS graphs and complete platform routes remain
open. The separate ordinary native AOT/no-IL minimum gate has its own evidence.
Historical Java-consumer failures remain in the review evidence; current Xmake
compiles Main.cs.
