#!/usr/bin/env python3
"""@brief Keep the complete ABB C facade valid under strict C and C++ diagnostics.

@details This source-maintenance pass preserves the canonical wire layout. It
chooses the language's aggregate zero initializer and explicitly consumes a
generated formal parameter only when that complete function never references it.
Empty ROS records retain their zero-byte wire representation. No compiler is
executed here; LLVM 23 acceptance runs separately on the Linux test host.
"""

import argparse
from pathlib import Path
import re

ZERO_INITIALIZER = """
/**
 * @brief Initialize every member of a C or C++ aggregate to its zero value.
 * @details C uses its standard leading-zero aggregate initializer; C++ uses
 * empty aggregate initialization, including nested arrays and record members.
 * This macro does not apply the optional native ROS field defaults.
 */
#ifndef UWVM_ABB_ZERO_INITIALIZER
# if defined(__cplusplus)
#  define UWVM_ABB_ZERO_INITIALIZER {}
# else
#  define UWVM_ABB_ZERO_INITIALIZER {0}
# endif
#endif
"""


def normalize(body: str, *, records: bool = False) -> str:
    """@brief Normalize one maintained ABB C header without changing its ABI.

    @param body Complete generated header text, either before or after formatting.
    @param records True for the records header that owns the initializer macro.
    @return Updated complete source; repeated application leaves it unchanged.
    @details Only the generated inline-function grammar is accepted for unused
    parameter handling. Function bodies in this emitter contain no brace-valued
    string literals. Braces are counted so nested validation blocks stay intact.
    An unterminated function is rejected instead of emitting a partial header.
    """
    body = re.sub(r"=\s*\{\s*0\s*\}", "= UWVM_ABB_ZERO_INITIALIZER", body)
    if records and "#ifndef UWVM_ABB_ZERO_INITIALIZER" not in body:
        marker = "#include <limits.h>"
        if marker not in body:
            raise ValueError("The complete ABB records header has no limits include")
        body = body.replace(marker, marker + "\n" + ZERO_INITIALIZER, 1)
    pattern = re.compile(r"\b(?:inline\s+static|static\s+inline)\s+" r"(?:\w+\s+)*\w+\((?P<parameters>[^()]*)\)\s*\{")
    edits = []
    for function in pattern.finditer(body):
        start = function.end()
        cursor, depth = start, 1
        while depth and cursor < len(body):
            depth += (body[cursor] == "{") - (body[cursor] == "}")
            cursor += 1
        if depth:
            raise ValueError("Unterminated generated inline function")
        implementation = body[start : cursor - 1]
        unused = []
        for parameter in function["parameters"].split(","):
            name = re.search(r"\b(\w+)\s*$", parameter)
            if name and name[1] != "void" and not re.search(r"\b" + name[1] + r"\b", implementation):
                unused.append(name[1])
        if unused:
            edits.append((start, "\n" + "\n".join("    (void)" + name + ";" for name in unused)))
    for offset, text in reversed(edits):
        body = body[:offset] + text + body[offset:]
    return body


def prepare(sdk: Path) -> None:
    """@brief Apply strict aggregate and parameter handling to ABB-owned headers.

    @param sdk Installed SDK root containing both complete ABB schema families.
    @details Records provide the macro used by interfaces and observation.h.
    Other platforms and shared schema emitters are outside this pass's scope.
    Files are authored locally before the complete directory is sent to Linux.
    """
    root = sdk / "include/platform/abb/c"
    for filename in sorted(root.rglob("*.h")):
        filename.write_text(normalize(filename.read_text(), records=filename.name == "bounded_records.h"))


def main() -> None:
    """@brief Resolve a source SDK directory and update its owned C headers."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    arguments = parser.parse_args()
    prepare(arguments.sdk.resolve(strict=True))


if __name__ == "__main__":
    main()
