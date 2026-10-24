# Common genuine CLR AOT provider

All robot platforms delegate to `configure(target, root, context)` and
`build(target, root, context)`. A platform contributes ordinary C#/F#/VB.NET source, the selected ROS
family, typed catalog modules and native deployment data. It does not own or
download a Mono interpreter, SDK or compiler.

The shared DSL supplies `ros.sdk.language`, `ros.sdk.backend`, `ros.sdk.root`,
`target:arch()` and `target:plat()`. Sources must match `.cs`, `.fs` or `.vb`.
Configuration checks source and target contracts without running a compiler,
probing native ROS or granting a capability. The fixed route is wasm32-wasip1;
other explicit targets fail rather than being changed to wasm32.

Build uses the exact .NET SDK 9.0.100-preview.6.24328.19 Roslyn/F# frontends,
separate SDK and application assemblies, Mono LLVMOnly AOT, and LLVM23 native
compilation/linking. The ordinary IL library exposes real CLR types to all
three languages. Numeric C adapters preserve the same-Wasm ROS/WASI FFI only;
they do not implement the application or substitute C for a source language.
The generated module-registration source must prove `EE_MODE_LLVMONLY` and actual
AOT modules. Interpreted assemblies, partial AOT and deduplication are refused.

`ros.sdk.dotnet_bundle` / `UWVM_ROS_DOTNET_BUNDLE` selects one checksum-indexed
`uwvm-host-tool-bundle-v1` archive. The older `managed_bundle` spelling remains
an explicit compatibility alias. A development `UWVM_ROS_MANAGED_TOOLS` directory
is a warm-tool input and requires independent whole-closure verification. An
installed default is `share/toolchains/host/<host>-<arch>/dotnet-aot.json`.

Native EH requires one matching pair manifest. Set explicit development roots
`UWVM_ROS_MONO_NATIVE_EH_ROOT`, `UWVM_ROS_MONO_NATIVE_EH_COMPILER_ROOT`,
`UWVM_ROS_MANAGED_EH_ROOT` and `UWVM_ROS_MONO_NATIVE_EH_MANIFEST` only to admitted
artifacts. The manifest indexes complete native runtime libraries, the genuine
AOT executable and its native dependencies, and the LLVM23 target C++ ABI.
Both compiler and target must use source commit
573461dc897731c11d6166574b77a8c3aabba220 and immutable native unwind policy.
The Mono producer development SDK is LLVM 16.0.5-alpha.1.24204.1; this does not
relabel its original development headers/libraries as LLVM23. Real target
C/C++ libraries and final Wasm compilation use LLVM23.1.4.

A changed pair invalidates this target's previous SDK/application AOT objects.
The receipt records pair, native AOT, source compiler, host and artifact hashes.
The runtime selector does not edit IL/LLVM IR, replace an exception carrier,
wrap an exception symbol or convert malformed input into a success result.
Standard Wasm EH is enabled consistently during source and native/LTO emission.

Public output is exactly one application `.wasm`. IL, objects, NuGet packages,
link responses and tool caches remain under the target's private `.uwvm-ros`
intermediates. Building requires neither uwvm2-ros nor native ROS. Running uses
the common separately installed runtime/deployment dispatcher and explicit
user-supplied permissions.

A producer build is not VM qualification. Require all five exact counts of 43
from the unchanged complete cross-assembly codec, then every CLR language and
backend, native ROS peers and actual QEMU AArch64 execution. No native-EH binary
default is admitted by this source candidate before those gates. The test-only
Xmake scratch image needs a minimal read-only passwd/group data fixture for
MSBuild's user lookup; that fixture installs no executable or SDK into the image.

The C#, F# and VB wasm32 shared producers passed actual Linux x86_64 preload
execution with a genuine C# consumer. Each group verified actual overflow
catch/finally counts, one initialization per instance and independent state.
This profile preserves ordinary `set_kind("shared")`, selects upstream WASI library
mode, roots the genuine user library, and reads its actual trimmed metadata.
Named static nongeneric `UnmanagedCallersOnly(EntryPoint = "...")` methods
admit only i32/i64/f32/f64 arguments and scalar/void results. Managed references,
aggregate marshalling, alternate calling conventions, reserved symbols and
duplicate names fail explicitly. The real AOT compiler emits the native wrappers;
no IL or LLVM IR is rewritten. The reactor CRT and original `initialize_runtime`
run through Mono's genuine native initialization callback before a native export
enters the module-owned runtime. The qualified scalar example checks its actual
lazy initialization, export/import signatures, exception and cleanup behavior.
Other consumer languages and native ROS graphs remain separate gates.

Scalar shared consumers now use actual static `DllImport` declarations marked
with `System.Runtime.InteropServices.WasmImportLinkage`. The original fixed SDK emits their
native module/name imports; the host metadata task rejects references, pointers,
aggregate values and unsupported scalar signatures. Ordinary Xmake `add_deps`
binds the real producer bytes without adding a managed assembly reference or
passing a producer's heap address to another runtime. The actual three producer
groups use this C# consumer. Static `.a` production and consumption remain rejected.

The original VB compiler rejects `UnmanagedCallersOnly` with BC37316. VB source
can instead declare the original `MonoPInvokeCallback` convention using a real
local delegate and the SDK attribute. The method bodies remain genuine VB.
Exports retain the fixed WasmAppBuilder names
`wasm_native_to_interp_<assembly>_<type>_<method>`. This initial naming profile
requires simple identifiers. The native consumer explicitly calls the original
exported `initialize_runtime` function on each instance before these callbacks.
The actual original delegate Invoke signature must equal the static method's
scalar signature; the metadata task creates no delegate or user object.

The fixed Preview 6 native glue has the namespaced-export lookup defect recorded
in dotnet/runtime#106310. Shared builds retain the exact original runtime.c hash
3d6d98fa1c5819b4ab89920be85fa3429b3f0bc32e035cc4f100791dbef3d00b and
compile an owned source copy that resolves the original full type name through
Mono's public reflection parser. Metadata-derived scalar adapters bind the
unchanged original export table to Mono's actual compiled native-to-managed
wrapper. The original interpreter-shaped table is retained. User methods and
managed wrappers remain original compiler outputs. The selected source hash,
actual scalar contract and preserved native item metadata are recorded in
managed-callback-lookup.json. The immutable workload is never edited.

Preview 6 can inline F# module-state accesses into a native callback wrapper
whose LLVM-only initialization is absent. Only the F# shared primary assembly
uses the original Mono --optimize=-inline option, preserving ordinary method
initialization. The actual build log records each assembly's process options;
FSharp.Core and System.Private.CoreLib retain their original options.

The earlier Java native-EH consumer fails common-VM validation: TeaVM0.13.1
linear WASI emits legacy opcode0x06. The JVM provider now rejects that unsupported
profile explicitly. Current CLR examples declare a genuine C# consumer using
the same native Mono/LLVM23 EH chain as their producers. Earlier Java failures
and the exact successful JVM noeh components are retained separately.

C#/F#/VB 的 wasm32 共享库加 C# 标量消费端已通过真实 Linux x86_64 执行，实际
验证溢出 catch/finally、单次初始化和实例隔离。普通 shared 目标保留原版 WASI library/reactor
路径；C#/F# 使用 UCO，VB 使用原版 MonoPInvokeCallback、真实委托及原版生成
名称，消费端先显式调用每个实例的 initialize_runtime。各语言方法体保留原样。
C# 消费端通过真实 DllImport/WasmImportLinkage 导入标量，元数据检查拒绝跨堆引用、
指针及聚合参数。每个模块保留自己的运行时与堆，静态归档仍拒绝。此前 Java EH
消费端的旧式指令0x06失败及已通过的 JVM noeh 组件均单独保留。
