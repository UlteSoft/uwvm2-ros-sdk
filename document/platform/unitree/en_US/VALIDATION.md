# Unitree publication validation

This publication contains 22 source routes and 132 independent examples. Each
route has three ROS 1 and three ROS 2 examples. `c_ffi_bridge` is an explicitly
compiled C ABI bridge, so the route count includes 21 source languages and that
bridge. The language index lists every admitted route and its actual entry file.

| Check | Distinct examples | Exact scope |
| --- | ---: | --- |
| Cold Xmake build | 132/132 | Linux x86_64; Xmake-only build environment; offline pinned SDK tool bundles |
| Native ROS execution on x86_64 | 132/132 | Original Noetic and Jazzy, production uwvm2-ros and native gateways |
| Native ROS execution under QEMU AArch64 | 132/132 | The same Wasm SHA-256 values, actual AArch64 runtime, gateway and original ROS libraries |
| Complete native adapter probes | 54/54 record types | All 11 ROS 1 and 43 ROS 2 records, full default round trips and invalid framing rejection |

These are distinct accepted examples, not a claim that all tests ran in one
batch. Each final Wasm is joined to its actual cold-build and native execution
receipts. Unchanged bytes retain the earlier execution evidence; changed Lua,
MoonBit, Ruby, PHP, Rust, Java and Kotlin artifacts were executed again. The
dispatcher review proves that adding language branches preserved the previously
qualified core branches. Every exact case and its evidence hashes are recorded in
[the current qualification](../../../../share/platform/unitree/qualification.json).

Example target selectors preserve explicit Xmake architecture and platform
requests. A separate actual-Xmake configuration audit compares the complete
default target before and after that correction and checks rejection of
`wasm64`, `wasm-wasip2` and `wasm-wasip1-threads` in that original wasm32 publication. The separately qualified C/C++ memory64 extension is documented in [MEMORY64.md](MEMORY64.md). Default compilation settings
and language inputs remain identical. These configuration checks are recorded
separately and are not counted as additional Wasm builds or executions.

All compilation and execution took place on SSH Linux in 64 GiB memory cgroups
with swap disabled. Maintained code was authored locally and copied as complete
folders using SCP. Local review checked text, source hashes, documentation and
evidence; it did not compile or execute the SDK examples.

The sole application deliverable is `build/*.wasm`. Xmake extracts the bundled
toolchain into its cache; compiler intermediates remain internal build inputs.
Building needs the complete SDK distribution and Xmake, with no preinstalled
language compiler, ROS or uwvm2-ros. `xmake run` separately needs the installed
runtime, matching native gateway and ROS distribution, trusted deployment JSON,
and Python 3 as the process launcher. Lua requires the explicit Wasm exceptions
feature in the deployment. Java and Kotlin are AOT compiled; their application
execution does not require a JVM.

Native checks compare every canonical byte of the complete original message,
verify status and one normal owner close, and retain the built Wasm unchanged.
Additional real-Wasm regressions cover an untouched required-length sentinel,
full unsigned 32/64-bit diagnostic values, and Rust stdout refusal/full-device
errors without replacing the earlier primary or cleanup failure. Complete-record
codec checks cover all 54 types separately from live topic transport.

The interpreter routes contain genuine pinned CPython, QuickJS, Lua, CRuby and
Zend PHP Wasm engines. Their application packaging and execution are qualified.
A fresh, complete source rebuild of every interpreter engine is a separate
unfinished task; the original identities and available provenance are retained
under [engine origins](../../../../share/platform/unitree/engine-origins/README.md).

Qualification covers `wasm32-wasip1` observation applications on Noetic and Jazzy.
The six observed native types do not establish live transport for every one of
the 54 codec types, robot actuation, or physical robot behavior. QEMU covers actual
AArch64 executable behavior; it does not qualify physical ARM hardware or an
ARM-native compiler host. C/C++ now also have the separately recorded memory64 profile. Other ROS distributions, C#/F#/VB.NET
and R remain outside this published Unitree set. Their incomplete routes have
not been copied into the public Unitree example tree.

Current tool pins are in
[publication.json](../../../../share/platform/unitree/publication.json). The
original eight-route receipt remains unchanged at
[the original qualification](../../../../share/platform/unitree/qualification/wasm32-eight-route-baseline.json).
Machine-specific source inventories and raw execution logs are retained outside the SDK distribution.
