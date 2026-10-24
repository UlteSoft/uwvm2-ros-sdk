#!/usr/bin/env python3
"""@brief Keep the complete generated C facade valid under strict C and C++ diagnostics.

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
#ifndef UWVM_ROS_C_ZERO_INITIALIZER
# if defined(__cplusplus)
#  define UWVM_ROS_C_ZERO_INITIALIZER {}
# else
#  define UWVM_ROS_C_ZERO_INITIALIZER {0}
# endif
#endif
"""


def normalize(body: str, *, records: bool = False) -> str:
    """@brief Normalize one maintained generated C header without changing its ABI.

    @param body Complete generated header text, either before or after formatting.
    @param records True for the records header that owns the initializer macro.
    @return Updated complete source; repeated application leaves it unchanged.
    @details Only the generated inline-function grammar is accepted for unused
    parameter handling. Function bodies in this emitter contain no brace-valued
    string literals. Braces are counted so nested validation blocks stay intact.
    An unterminated function is rejected instead of emitting a partial header.
    """
    body = re.sub(r"=\s*\{\s*0\s*\}", "= UWVM_ROS_C_ZERO_INITIALIZER", body)
    if records and "#ifndef UWVM_ROS_C_ZERO_INITIALIZER" not in body:
        marker = "#include <limits.h>"
        if marker not in body:
            raise ValueError("The complete canonical records header has no limits include")
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


def prepare(directory: Path) -> None:
    """@brief Normalize an explicitly selected generated C header tree.

    @param directory Owned public C include directory, containing record headers.
    @details Record headers declare the guarded zero initializer. Facades include
    those headers before using it. This pass changes no wire representation and
    invokes no compiler; executable qualification belongs to the SSH test host.
    """
    for filename in sorted(directory.rglob("*.h")):
        filename.write_text(
            normalize(filename.read_text(), records=filename.name in ("records.h", "bounded_records.h"))
        )


def main() -> None:
    """@brief Normalize locally authored headers in an explicit maintained tree."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--directory", type=Path, required=True)
    arguments = parser.parse_args()
    prepare(arguments.directory.resolve(strict=True))


if __name__ == "__main__":
    main()
