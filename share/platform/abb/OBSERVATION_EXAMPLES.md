# ABB complete typed observation examples

The current C++ query uses one public cpp API with the actual shared profile
macros for C++98/03/11/14/17/20/23/draft26. Outcome now owns plain complete
values with explicit response_present, reply_present and cleanup_present flags;
unused zero storage is not an observation. It uses shared StringView/FixedArray
and the generated stationary typed client, without std::optional or lambdas.
These latest source changes still need formatting and all eight real compiler
checks. Historical round-five formatter receipts apply to their earlier bytes;
no old-mode, new installed xmake or Guest acceptance is inferred.

The current Go decoder also corrects a static mismatch with the selected
generated canonical profile: embedded NUL is Invalid22, rather than a valid
typed message. Complete raw SDK bytes remain available when transport succeeded
but typed decoding refused. Unicode and the full512-byte bound remain intact;
no string is clipped or treated as a C terminator. This latest two-file Go fix
and its real-module Guest fixture have not yet been formatted, compiled or run.

The examples preserve the original GetSpeedRatio request and every
speed_ratio/result_code/message response field. Historical private SDK snapshots
have actual C11 ROS1/ROS2 and Rust xmake builds, with an exact Rust Guest denial
receipt. Those passes remain tied to their original source/tool hashes. Current
global SDK regeneration/install and current Rust/JS/TinyGo rebuilding remain
unqualified. A scoped AS0.28.20 candidate passed CMake installation/relocation,
compilation, validation/import checks and three Guest denial/input cases on
2026-10-22. It requires a private generated-codec inheritance fix; shared
regeneration and AS xmake acceptance remain pending.
RC_SUCCESS is 1; a complete refusal remains available with application status 5.
Transport/decode failure leaves no response. Primary error and every cleanup
result remain separate, including constructor rollback. No request is retried.

Round five introduced a typed C++ library/command and a separate official-Go
library/command. Their four C++/Go files passed genuine selected formatting.
The two Go manifests additionally passed genuine Go1.24.2 formatting, actual
production path rebinding and an offline module-graph check in
`20261022-round05-go-module-paths-r3`. Current C++/Go compilation, installed
xmake and Guest execution remain pending; no official application is completed.

| Language | SDK-relative source entry | Execution boundary |
| --- | --- | --- |
| C | example/platform/abb/c/query.c or query_ros1.c | Real ROS2/ROS1 imports and independent families |
| Macro-selected cpp | example/platform/abb/cpp/query.cpp; include/platform/abb/cpp/query_once.hpp | Actual generated typed client, full original response and call/close facts |
| Official Go | example/platform/abb/go/query; include/platform/abb/go/query | Genuine official-Go Owner/Result API, ros2 tag and complete typed fields |
| Rust | example/platform/abb/rs/query/main.rs | Wasip1/edition 2021, full original Error facts |
| JavaScript | example/platform/abb/js/main.mjs | Real embedded QuickJS Session and full typed service client |
| AssemblyScript | example/platform/abb/as/main.ts | Real selected NativeApi and checked whole response |
| TinyGo | example/platform/abb/tinygo/query/cmd/observe | Real WASI/TinyGo/ros2 route, complete records package |

Rust/TinyGo commands take one explicit argv alias. JavaScript/AssemblyScript
take a nonzero u8 alias-byte count followed by strict UTF-8 bytes from ordinary
stdin. `vendor-query` is 12 bytes. JavaScript emits primary and cleanup u32LE;
engine exit 0 is script completion, not ROS success. Complete response objects
remain in Wasm. An actual denied run must independently establish primary 13
and absent response. Historical Rust has this full-output witness. The scoped
AS command independently exited13 on default denial and22 on empty/NUL input;
its outcome object was not externally inspected. JavaScript/TinyGo current
compiler/Guest qualification remains pending. Foundation telemetry receipts do
not qualify these vendor applications.

The new C++ and Go commands each take one argv alias. C++ emits a 36-byte LE
header (primary, cleanup, cleanup presence, call presence, call status, length
presence as u32; original length as u64; body bytes as u32) and the full canonical
response, including every diagnostic byte. Go prints the full response and
original SDK data/required-length facts with escaped Go string formatting.
Both preserve independent cleanup failure and check stdout before clamping
process status to125. Official Go uses its own `Owner.Request` API and
`wasip1/wasm/ros2/!ros1/!tinygo` selection. The publisher maps its real maintenance
dependencies into the installed SDK; the new xmake route uses the c_ffi_bridge Go
provider. Its installed command build remains unqualified.

With a real installed SDK and pinned Rust root, the known historical
Rust 1.85.0/std/edition-2021/abort profile uses this SDK xmake route:

```sh
xmake f -c -P "$SDK_ROOT/example" --ros-sdk-platforms=ros \
  --ros-sdk-languages=rs --sdk-example-platform=abb \
  --sdk-example-language=rs --sdk-example=query \
  --sdk-toolchain="$RUST_ROOT" --sdk-target=wasm32-wasip1 \
  --sdk-startup=command --sdk-offline=y --sdk-exceptions=n --sdk-threads=n \
  --sdk-rust-version=1.85.0 --sdk-rust-library=std \
  --sdk-rust-edition=2021 --sdk-rust-panic=abort
xmake sdk-example-build -P "$SDK_ROOT/example" --output="$FRESH_OUTPUT"
```

The edition is not an MSRV/all-version claim. TinyGo is distinct from official
Go; build its actual `./cmd/observe` with the WASI target and `ros2` tag, one job
and a reviewed finite runtime/memory profile. JavaScript needs the real existing
embedded producer, complete closed module graph and every emitted compiler/link
job. AssemblyScript needs its real abort binding and finite Wasm runtime. A host
Node/Python script or fake Api does not qualify any of those routes.

No query authorizes speed-ratio writes, I/O, RAPID/EGM start/stop, recovery or
native RWS credentials. Follow the actual RobotWare/RWS/EGM contract. Source
DTOs and observations do not certify physical stop. Source views contain the
full facades and SDK-local dependencies; presence is not current-build evidence.
AssemblyScript keeps the original RPCReply,
required-length facts, constructor rollback and normal cleanup separately.
Current global assembly/install must retain those source exports and exercise
their actual xmake backends. This read-only service observation does not port
the native RWS/EGM bringup compositions. Other language targets, complete
official applications, native integration and upstream suites remain open.
This documentation update adds no execution receipt.

Canonical source layout: public modules are in `sdk/include/platform/abb/`, complete application sources are in `sdk/example/platform/abb/`, and platform documentation/provenance is in `sdk/share/platform/abb/`. Documentation for a language does not establish an implemented or qualified language port.
