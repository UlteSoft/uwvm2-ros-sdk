"""@brief Prepare the explicitly nonstandard Uwvm Preview 1 memory64 libc adapter.

@details Upstream wasi-libc does not implement a wasm64 Preview 1 ABI. Uwvm exposes
separate ``*_wasm64`` imports with 64-bit pointers and size_t values, retaining
32-bit file descriptors, flags and error codes. This adapter is restricted to
the pinned source revision and to a single-threaded, static Preview 1 build.
It must never be used as evidence of upstream WASI memory64 compatibility.
"""

from __future__ import annotations

import json
from pathlib import Path
import re
import shutil

REVISION = "3fb7ebdae8dd8353ec014259039e5c4e31fd651f"


def replace_once(text: str, old: str, new: str) -> str:
    """@brief Apply one revision-specific source replacement with an exact match.

    @param text Complete source text.
    @param old Required unique byte sequence.
    @param new Reviewed replacement sequence.
    @return Updated source text.
    @throws RuntimeError Unless the original sequence occurs exactly once.
    """
    if text.count(old) != 1:
        raise RuntimeError("pinned memory64 adapter no longer matches: " + old)
    return text.replace(old, new)


def prepare(source: Path, destination: Path) -> Path:
    """@brief Prepare the explicit Uwvm Preview 1 memory64 libc variant.

    @param source Extracted wasi-libc tree at the pinned revision.
    @param destination Private adapted source directory; never the original tree.
    @return Adapted source directory with a generated ABI-change receipt.
    @details Pointer and size operands widen to 64 bits; descriptors and error
    codes retain 32 bits. Imports use the explicit _wasm64 suffix. This static,
    single-threaded Uwvm extension is not an upstream WASI compatibility claim.
    @throws RuntimeError On any revision, declaration or wrapper-count mismatch.
    """
    if (source / ".uwvm-source-revision").read_text().strip() != REVISION:
        raise RuntimeError("the memory64 adapter only supports the pinned wasi-libc revision")
    shutil.copytree(source, destination, dirs_exist_ok=True)
    header = destination / "libc-bottom-half/headers/public/wasi/wasip1.h"
    text = header.read_text()
    text = replace_once(
        text,
        "#ifndef __wasm32__\n#error <wasi/api.h> only supports wasm32; doesn't yet support wasm64\n#endif",
        "#ifndef __wasm64__\n#error This libc adapter requires the Uwvm memory64 ABI.\n#endif",
    )
    adjustments = {
        "_Alignof(void *) == 4": "_Alignof(void *) == sizeof(void *)",
        "sizeof(__wasi_size_t) == 4": "sizeof(__wasi_size_t) == sizeof(void *)",
        "_Alignof(__wasi_size_t) == 4": "_Alignof(__wasi_size_t) == sizeof(void *)",
        "sizeof(__wasi_iovec_t) == 8": "sizeof(__wasi_iovec_t) == 2 * sizeof(void *)",
        "_Alignof(__wasi_iovec_t) == 4": "_Alignof(__wasi_iovec_t) == sizeof(void *)",
        "offsetof(__wasi_iovec_t, buf_len) == 4": "offsetof(__wasi_iovec_t, buf_len) == sizeof(void *)",
        "sizeof(__wasi_ciovec_t) == 8": "sizeof(__wasi_ciovec_t) == 2 * sizeof(void *)",
        "_Alignof(__wasi_ciovec_t) == 4": "_Alignof(__wasi_ciovec_t) == sizeof(void *)",
        "offsetof(__wasi_ciovec_t, buf_len) == 4": "offsetof(__wasi_ciovec_t, buf_len) == sizeof(void *)",
        "sizeof(__wasi_prestat_dir_t) == 4": "sizeof(__wasi_prestat_dir_t) == sizeof(void *)",
        "_Alignof(__wasi_prestat_dir_t) == 4": "_Alignof(__wasi_prestat_dir_t) == sizeof(void *)",
        "sizeof(__wasi_prestat_t) == 8": "sizeof(__wasi_prestat_t) == 2 * sizeof(void *)",
        "_Alignof(__wasi_prestat_t) == 4": "_Alignof(__wasi_prestat_t) == sizeof(void *)",
    }
    for old, new in adjustments.items():
        text = replace_once(text, old, new)
    header.write_text(text)
    implementation = destination / "libc-bottom-half/sources/__wasilibc_real.c"
    text = implementation.read_text()
    widened: dict[str, list[int]] = {}
    wrapper = re.compile(
        r"(?P<head>(?:__wasi_errno_t|_Noreturn void|int32_t|void)\s+__wasi_\w+\((?P<parameters>.*?)\)\s*\{)(?P<body>.*?)^\}",
        re.DOTALL | re.MULTILINE,
    )

    def widen_wrapper(match: re.Match[str]) -> str:
        """@brief Widen pointer and size operands in one pinned generated WASI wrapper.

        @param match Wrapper declaration and body selected from the pinned source.
        @return Updated wrapper source retaining its scalar descriptor operands.
        @details The collected operand positions subsequently drive the matching
        import declarations, keeping call sites and imported signatures paired.
        """
        parameters = match.group("parameters").split(",")
        identifiers = set()
        for parameter in parameters:
            if "*" in parameter or re.search(r"\b(?:size_t|__wasi_size_t)\b", parameter):
                identifiers.add(re.findall(r"\b\w+\b", parameter)[-1])
        body = match.group("body")
        identifiers.update(re.findall(r"\bsize_t\s+(\w+)\s*=", body))
        call = re.search(r"(__imported_wasi_snapshot_preview1_\w+)\((.*?)\)", body, re.DOTALL)
        # The generator's arguments contain casts, so the first closing
        # parenthesis is not the end of the invocation. Read through the ';'.
        call = re.search(r"(__imported_wasi_snapshot_preview1_\w+)\((.*?)\);", body, re.DOTALL)
        if call:
            args = call.group(2).split(",")
            positions = []
            for index, argument in enumerate(args):
                variable = re.fullmatch(r"\s*\(int32_t\)\s*(\w+)\s*", argument)
                if variable and variable.group(1) in identifiers:
                    args[index] = argument.replace("(int32_t)", "(int64_t)")
                    positions.append(index)
            widened[call.group(1)] = positions
            body = body[: call.start(2)] + ",".join(args) + body[call.end(2) :]
        return match.group("head") + body + "}"

    text = wrapper.sub(widen_wrapper, text)
    if len(widened) != 45:
        raise RuntimeError("the pinned generated wrapper set changed: " + str(len(widened)))
    for function, positions in widened.items():
        declaration = re.compile(r"(" + re.escape(function) + r"\()(.*?)(\)\s*__attribute__)", re.DOTALL)
        found = declaration.search(text)
        if found is None:
            raise RuntimeError("missing imported declaration: " + function)
        params = found.group(2)
        for position in positions:
            params, count = re.subn(r"\bint32_t(\s+arg" + str(position) + r")\b", r"int64_t\1", params)
            if count != 1:
                raise RuntimeError("unexpected imported parameter shape: " + function)
        text = text[: found.start(2)] + params + text[found.end(2) :]
    text = re.sub(r'__import_name__\("(\w+)"\)', r'__import_name__("\1_wasm64")', text)
    text = "/* Uwvm-specific memory64 adapter; generated by prepare_wasm64.py. */\n" + text
    implementation.write_text(text)
    limits = destination / "libc-top-half/musl/arch/wasm32/bits/stdint.h"
    text = limits.read_text()
    for macro in ("INTPTR_MIN", "INTPTR_MAX", "UINTPTR_MAX", "PTRDIFF_MIN", "PTRDIFF_MAX", "SIZE_MAX"):
        text, count = re.subn(r"(#define\s+" + macro + r"\s+)(U?INT)32(_M(?:IN|AX))", r"\1\g<2>64\3", text)
        if count != 1:
            raise RuntimeError("unexpected pointer limit definition: " + macro)
    limits.write_text(text)
    atomic = destination / "libc-top-half/musl/arch/wasm32/atomic_arch.h"
    atomic.write_text(
        atomic.read_text() + "\n" + "/* Preserve full-width pointers in the single-threaded memory64 build. */\n"
        "#if !defined(__wasm64__) || defined(_REENTRANT)\n"
        "#error The Uwvm memory64 adapter only supports the single thread model.\n"
        "#endif\n"
        "#define a_cas_p a_cas_p\n"
        "static inline void *a_cas_p(volatile void *p, void *expected, void *desired)\n"
        "{\n"
        "    return __sync_val_compare_and_swap((void *volatile *)p, expected, desired);\n"
        "}\n"
    )
    posix = destination / "libc-top-half/musl/arch/wasm32/bits/posix.h"
    posix.write_text(posix.read_text().replace("ILP32_OFFBIG", "LP64_OFF64"))
    tls = destination / "libc-top-half/musl/src/env/__init_tls.c"
    tls.write_text(
        replace_once(tls.read_text(), ".globaltype __stack_pointer, i32", ".globaltype __stack_pointer, i64")
    )
    (destination / "uwvm-memory64-adapter.json").write_text(
        json.dumps(
            {
                "source_revision": REVISION,
                "abi": "uwvm-preview1-memory64-extension",
                "standard_wasi": False,
                "threads": False,
                "shared_libraries": False,
                "import_module": "wasi_snapshot_preview1",
                "import_suffix": "_wasm64",
                "widened_import_parameters": widened,
            },
            indent=2,
        )
        + "\n"
    )
    return destination
