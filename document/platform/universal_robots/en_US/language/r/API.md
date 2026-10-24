# universal_robots / r API guide

Install the complete matching shared SDK first. The public implementation supplies genuine compilers, interpreters/AOT and verified dependency acquisition. Select an exact vendor source domain, ROS distribution, address width and WASI platform.

Public import: `universal_robots/r/BACKEND/DOMAIN/records.R`.

Complete type pattern: `records(wire)[["RosNTYPE"]]`.

Actual API: `$new, $encode, $decode`.

Requires the genuine centrally pinned R engine; 64-bit values use exact byte words, never R double integers.

Every exact type, member, constant, default and bound is listed in platform `catalog.md` and `share/platform/universal_robots/domains/*.ir.json`. N denotes the original ROS generation; use the record symbol verbatim. DOMAIN must match provider.json exactly.

Check the actual encode/decode result before consuming a value. Empty requests have genuine zero-byte components and no invented payload field. Refuse truncation, trailing bytes, invalid Boolean/time/UTF-8, oversized containers and disallowed nonfinite values. Keep every borrowed input/arena alive for decoded data; discard partial internal cursors after failure.

Construction and pure codecs open no ROS resource. Communication uses explicitly granted owners and native identities. Transport roles require independent permissions; closing an owner is not a physical stop. The sole deployable application is .wasm, with any real interpreter and source modules embedded. Only xmake run needs the installed runtime, gateway and native ROS.

Each language/backend/distribution/address width needs separate genuine build and execution evidence; source availability is not completion.

## Library target status

Shared/static producer and consumer combinations remain pending, including same-language and cross-language links. Use ordinary Xmake kinds and dependency APIs. The required four-module preload composition, module-specific manual permissions, actual width and native x86/AArch64 checks are described in [library integration status](../../libraries.md). Binary codec proof gives no library credit.
