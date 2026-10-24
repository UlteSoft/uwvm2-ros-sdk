# Fixed-source Mono native Wasm exceptions

These are the real upstream-runtime and matching AOT-producer build recipes.
The opt-in `ENABLE_WASM_NATIVE_EH` selects the immutable native unwind policy in
both producer and target. Original exception throw/catch function bodies remain
unchanged. Generated IL/LLVM IR, malformed-wire tests and codec outcomes are not
rewritten. Browser-specific declarations stay scoped to the browser.

Set absolute `UWVM_MONO_BUILD_ROOT`, `UWVM_MONO_BUILD_AUDIT`,
`UWVM_MONO_TOOL_ROOT`, and `UWVM_MONO_TARGET_SYSROOT` inputs. The audit directory
contains `inputs/`, `source-inventory.json`, and these recipes. Use the exact
pinned original host tool closure and LLVM23 EH target sysroot; do not rename a
compiler or target archive to suggest another version. Copy the CMake toolchain
beside the audit inputs. Acquire the shared execution lease and verify a Linux
64 GiB, swap-zero container before invoking source acquisition or compilation.

Run `git_source.py`, `fetch_llvm_sdk.py`, `build_runtime.py configure`,
`build_runtime.py build`, then `build_cross_compiler.py offsets`,
`build_cross_compiler.py cross-configure`, and `build_cross_compiler.py cross-build`.
Source and package acquisition require the official fixed endpoints; subsequent
build phases run offline. The original Mono LLVM 16 development SDK belongs to
the host producer; LLVM23 builds the C/C++ target libraries and final Wasm.

A successful producer build is not guest qualification. Require the unchanged
complete 43-record cross-assembly codec to complete all rich/default/roundtrip,
truncated and trailing cases through actual uwvm2-ros. Only then qualify all CLR
languages, native ROS backends, denied permissions and QEMU AArch64 execution.
The distribution currently has no admitted native-EH binary default.

The source repair also gives the WASI native-EH saved-IL filter result a separate
scalar return slot. The original `ENDFILTER` stores its boolean into that slot,
so copied-back arguments and locals retain their actual values. Ordinary method
and value-type return buffers keep the original upstream allocation. This source
change needs its own rebuilt runtime and complete guest gates before qualification.
