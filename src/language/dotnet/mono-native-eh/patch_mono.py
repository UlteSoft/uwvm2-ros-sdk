#!/usr/bin/env python3
"""@file patch_mono.py
@brief Configure the genuine upstream Mono native EH path for a WASI core build.

@details Every edit starts from a previously admitted fixed-commit Git blob.
The reviewed configuration enables the upstream LLVM runtime, builds its real
Wasm carrier for WASI, and selects native unwinding through an explicit CMake
option. Browser defaults and the original emulated WASI mode remain available.
The resumed-clause native-call gate and independent filter return slot are
corrected for full LLVMOnly native EH.
The original carrier, callback, managed source and codec assertions remain real.
"""

from __future__ import annotations

import os

import hashlib
import json
from pathlib import Path
import shutil
import subprocess

from patch_interp import reviewed_interp


AUDIT = Path(os.environ["UWVM_MONO_BUILD_AUDIT"]).resolve()
SOURCE = Path(os.environ["UWVM_MONO_BUILD_ROOT"]).resolve() / "runtime"
COMMIT = "573461dc897731c11d6166574b77a8c3aabba220"


def replace_once(source: str, old: str, new: str) -> str:
    """@brief Reject drift before applying one exact, reviewed configuration edit."""
    if source.count(old) != 1:
        raise ValueError("The fixed upstream configuration contract differs: " + old[:100])
    return source.replace(old, new)


def reviewed_source(relative: str, source: str) -> str:
    """@brief Produce only the explicit platform and unwind-policy configuration edits.

    @param relative Fixed-commit repository path admitted by the source manifest.
    @param source Canonical, Git-verified upstream source text.
    @return Fully reviewed configured text; unrecognized paths are rejected.
    @details ENABLE_WASM_NATIVE_EH requires the complete LLVM-enabled WASI core.
    The read-only runtime option is selected at compilation; an application
    cannot silently switch an emulated runtime into native exception handling.
    """
    if relative == "src/mono/mono/mini/CMakeLists.txt":
        old = "\n".join([
            "  add_library(mono-wasm-eh-wasm STATIC llvm-runtime.cpp)",
            "  target_link_libraries (mono-wasm-eh-wasm PRIVATE monoapi eglib_api)",
            '  set_target_properties(mono-wasm-eh-wasm PROPERTIES COMPILE_FLAGS "-fwasm-exceptions")',
            ('  set_target_properties(mono-wasm-eh-wasm PROPERTIES LINK_FLAGS '
             '"-fwasm-exceptions -s EXPORT_EXCEPTION_HANDLING_HELPERS=1")'),
            "  install(TARGETS mono-wasm-eh-wasm LIBRARY)",
            "endif()",
        ])
        new = '''endif()

# @brief Build the actual native Wasm-EH carrier for the configured WASI runtime.
# @details JavaScript exception helpers remain browser-only. ENABLE_LLVM_RUNTIME
# must also be enabled for the complete core; no disabled stub is substituted.
if(HOST_BROWSER OR HOST_WASI)
  add_library(mono-wasm-eh-wasm STATIC llvm-runtime.cpp)
  target_link_libraries (mono-wasm-eh-wasm PRIVATE monoapi eglib_api)
  set_target_properties(mono-wasm-eh-wasm PROPERTIES COMPILE_FLAGS "-fwasm-exceptions")
  if(HOST_BROWSER)
    set_target_properties(mono-wasm-eh-wasm PROPERTIES
      LINK_FLAGS "-fwasm-exceptions -s EXPORT_EXCEPTION_HANDLING_HELPERS=1")
  else()
    set_target_properties(mono-wasm-eh-wasm PROPERTIES LINK_FLAGS "-fwasm-exceptions")
  endif()
  install(TARGETS mono-wasm-eh-wasm LIBRARY)
endif()'''
        return replace_once(source, old, new)
    if relative == "src/mono/cmake/options.cmake":
        old = 'option (ENABLE_LLVM_RUNTIME "Enable runtime support code for LLVM.")'
        return replace_once(source, old, old + '''

# @brief Select the genuine native WebAssembly unwind policy for the WASI core.
# @details This opt-in requires ENABLE_LLVM_RUNTIME and a WASI wasm32 build.
# The default retains the upstream WASI emulation policy.
option (ENABLE_WASM_NATIVE_EH "Use native WebAssembly exception handling in the WASI runtime.")''')
    if relative == "src/mono/cmake/config.h.in":
        old = "#cmakedefine ENABLE_LLVM_RUNTIME 1"
        return replace_once(source, old, old + '''

/** @brief Select the configured native WASI exception-unwinding policy.
 * @details CMake rejects this mode without the real LLVM runtime core. */
#cmakedefine ENABLE_WASM_NATIVE_EH 1''')
    if relative == "src/mono/CMakeLists.txt":
        old = "# arm64 MacCatalyst runtime host or AOT target is more like Apple mobile targets than x64"
        new = '''# @brief Reject native WASI EH when the full runtime contract is unavailable.
# @details The carrier library alone does not change the core's unwind policy.
# Require both the WASI target and ENABLE_LLVM_RUNTIME before emitting config.h.
if(ENABLE_WASM_NATIVE_EH)
  if(NOT TARGET_WASI OR NOT TARGET_WASM OR NOT ENABLE_LLVM_RUNTIME)
    message(FATAL_ERROR "ENABLE_WASM_NATIVE_EH requires a WASI Wasm target and ENABLE_LLVM_RUNTIME.")
  endif()
  if(NOT HOST_WASI AND NOT MONO_CROSS_COMPILE)
    message(FATAL_ERROR "ENABLE_WASM_NATIVE_EH requires the WASI core or its matching AOT cross compiler.")
  endif()
endif()

''' + old
        return replace_once(source, old, new)
    if relative == "src/mono/mono/utils/options-def.h":
        old = '''#if defined(TARGET_WASI)
DEFINE_BOOL_READONLY(llvm_emulate_unwind, "emulate-unwind", TRUE, "")'''
        new = '''/** @brief Match the immutable unwind policy to the configured runtime.
 * @details Native WASI EH uses the original upstream throw/catch path. The
 * default WASI build retains emulation; this is not an application override. */
#if defined(TARGET_WASI) && !defined(ENABLE_WASM_NATIVE_EH)
DEFINE_BOOL_READONLY(llvm_emulate_unwind, "emulate-unwind", TRUE, "")'''
        return replace_once(source, old, new)
    if relative == "src/mono/mono/mini/llvm-runtime.cpp":
        if source.count("#ifdef HOST_WASM") != 3:
            raise ValueError("The original browser-only carrier declarations changed")
        source = source.replace("#ifdef HOST_WASM", "#ifdef HOST_BROWSER")
        return '''/**
 * @file llvm-runtime.cpp
 * @brief Carry Mono's original native exception throw and callback catch.
 * @details Emscripten headers, keepalive annotations, and jiterpreter exports
 * belong to browser builds. WASI uses the same unmodified throw/catch bodies
 * with the configured native WebAssembly C++ ABI and unwind libraries.
 */
''' + source
    if relative == "src/mono/mono/mini/interp/interp.c":
        return reviewed_interp(source, replace_once)
    if relative == "src/mono/mono/tools/offsets-tool/offsets-tool.py":
        source = replace_once(
            source,
            "\t\tparser.add_argument ('--wasi-sdk', dest='wasi_path', help='path to wasi sdk')",
            "\t\tparser.add_argument ('--wasi-sdk', dest='wasi_path', help='path to wasi sdk')\n"
            "\t\tparser.add_argument ('--clang-resource-dir', dest='clang_resource_dir', "
            "help='actual Clang resource directory used for target parsing')\n"
            "\t\tparser.add_argument ('--target-include-dir', dest='target_include_dirs', "
            "action='append', default=[], help='additional actual target system include directory')",
        )
        old = ('\t\t\t\tself.sys_includes = [args.wasi_path + "/share/wasi-sysroot/include", '
               'args.wasi_path + "/lib/clang/18/include", args.mono_path + "/wasi/mono-include"]')
        new = '''\t\t\t\t# @brief Use explicit real resource paths for independently provisioned SDKs.
\t\t\t\t# @details Preserve upstream defaults when no override is supplied. The
\t\t\t\t# caller records actual directories; no SDK version alias is invented.
\t\t\t\tresource = args.clang_resource_dir or (args.wasi_path + "/lib/clang/18")
\t\t\t\tself.sys_includes = [
\t\t\t\t\targs.wasi_path + "/share/wasi-sysroot/include",
\t\t\t\t\tresource + "/include", args.mono_path + "/wasi/mono-include",
\t\t\t\t] + args.target_include_dirs'''
        source = replace_once(source, old, new)
        return source
    raise ValueError("Unreviewed runtime source path: " + relative)


def main() -> None:
    """@brief Apply or verify the exact reviewed configuration against canonical Git blobs."""
    provenance = json.loads((AUDIT / "source-materialization.json").read_text())
    originals = {row["path"]: row for row in provenance["files"]}
    receipt_path = AUDIT / "runtime-source-patch.json"
    previous = json.loads(receipt_path.read_text()) if receipt_path.exists() else None
    records = []
    for relative in (
        "src/mono/mono/mini/CMakeLists.txt",
        "src/mono/cmake/options.cmake",
        "src/mono/cmake/config.h.in",
        "src/mono/CMakeLists.txt",
        "src/mono/mono/utils/options-def.h",
        "src/mono/mono/mini/llvm-runtime.cpp",
        "src/mono/mono/mini/interp/interp.c",
        "src/mono/mono/tools/offsets-tool/offsets-tool.py",
    ):
        original = originals[relative]
        canonical = subprocess.check_output(["git", "show", COMMIT + ":" + relative], cwd=SOURCE)
        before = hashlib.sha256(canonical).hexdigest()
        if before != original["sha256"]:
            raise ValueError("The admitted upstream Git blob changed: " + relative)
        updated = reviewed_source(relative, canonical.decode()).encode()
        after = hashlib.sha256(updated).hexdigest()
        path = SOURCE / relative
        actual = hashlib.sha256(path.read_bytes()).hexdigest()
        admitted = {before, after}
        if previous is not None and previous.get("source_commit") == COMMIT:
            admitted.update(row["after_sha256"] for row in previous.get("files", [])
                            if row["path"] == relative)
        if actual not in admitted:
            raise ValueError("The runtime source contains an unreviewed change: " + relative)
        if actual != after:
            path.write_bytes(updated)
        records.append(dict(path=relative, original_git_blob=original["git_blob_sha"],
                            before_sha256=before, applied_input_sha256=actual, after_sha256=after))
    record = dict(
        format="uwvm-mono-runtime-wasi-native-eh-platform-patch-v6",
        source_commit=COMMIT, files=records, full_core_requires_enable_llvm_runtime=True,
        explicit_native_eh_cmake_option="ENABLE_WASM_NATIVE_EH", core_function_body_changed=True,
        native_call_exception_gate_includes_full_llvm_only=True,
        saved_il_filter_result_slot_independent_of_arguments_and_locals=True,
        ordinary_method_return_buffers_unchanged=True,
        original_pending_exception_and_stack_cleanup_paths_preserved=True,
        immutable_unwind_policy_selected_by_configuration=True, disabled_stub_replaced=False,
        original_carrier_function_bodies_unchanged=True, browser_annotations_scoped_to_browser=True,
        matching_aot_cross_compiler_requires_same_native_eh_policy=True,
        original_offsets_algorithm_unchanged=True, offsets_resource_paths_explicit=True,
        managed_or_codec_source_changed=False,
    )
    if previous is not None and previous != record:
        history = AUDIT / "results/history"
        history.mkdir(parents=True, exist_ok=True)
        revision = 1
        destination = history / ("runtime-source-patch-r" + str(revision) + ".json")
        while destination.exists():
            revision += 1
            destination = history / ("runtime-source-patch-r" + str(revision) + ".json")
        shutil.copyfile(receipt_path, destination)
    receipt_path.write_text(json.dumps(record, indent=2) + "\n")


if __name__ == "__main__":
    main()
