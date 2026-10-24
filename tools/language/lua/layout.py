"""@brief Restore the exact reviewed Lua source layout from immutable originals.

@details This is strict source preparation, with no fuzzy patch application.
Every upstream and resulting file identity must match the locked member record.
"""

import re
from pathlib import Path


def restore(original, output, patch, rows, checked):
    """@brief Apply complete exact hunks into a fresh private source directory.

    @param original Read-only official Lua src directory.
    @param output New private adapted src directory.
    @param patch Immutable complete source-layout patch.
    @param rows Ordered upstream/adapted file identity pairs.
    @param checked Exact size and SHA-256 verification function.
    @return None after every original and final byte has been verified.
    """
    output.mkdir()
    lines = patch.read_text().splitlines(keepends=True)
    cursor = 0
    for row in rows:
        name = row["file"]
        if Path(name).name != name:
            raise ValueError("One Lua source basename is required")
        checked(original / name, row["original"])
        if lines[cursor:cursor + 2] != ["--- a/" + name + "\n", "+++ b/" + name + "\n"]:
            raise ValueError("The exact source-layout patch order changed")
        cursor += 2
        before = (original / name).read_text().splitlines(keepends=True)
        after, position = [], 0
        while cursor < len(lines) and lines[cursor].startswith("@@ "):
            match = re.fullmatch(r"@@ -(\d+)(?:,(\d+))? \+(\d+)(?:,(\d+))? @@\n", lines[cursor])
            if not match:
                raise ValueError("Invalid exact source-layout hunk")
            start, old_count, new_start, new_count = [int(v) if v is not None else 1
                                                      for v in match.groups()]
            cursor += 1
            start = start - 1 if old_count else start
            if start < position or start > len(before):
                raise ValueError("A layout hunk has an invalid original position")
            after.extend(before[position:start])
            position = start
            if len(after) != (new_start - 1 if new_count else new_start):
                raise ValueError("A layout hunk has an invalid destination position")
            removed = added = 0
            while (cursor < len(lines) and lines[cursor][:1] in (" ", "+", "-")
                   and not lines[cursor].startswith("--- a/")):
                line = lines[cursor]
                cursor += 1
                if line[0] in " -":
                    if position >= len(before) or before[position] != line[1:]:
                        raise ValueError("Exact original layout context differs")
                    position += 1
                    removed += 1
                if line[0] in " +":
                    after.append(line[1:])
                    added += 1
            if (removed, added) != (old_count, new_count):
                raise ValueError("Exact source-layout hunk extents differ")
        after.extend(before[position:])
        destination = output / name
        destination.write_text("".join(after))
        checked(destination, row["reviewed"])
    if cursor != len(lines):
        raise ValueError("Unexpected trailing source-layout patch bytes")
