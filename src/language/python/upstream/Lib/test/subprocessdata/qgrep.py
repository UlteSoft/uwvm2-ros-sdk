# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""When called with a single argument, simulated fgrep with a single
argument and no options."""

import sys

if __name__ == "__main__":
    pattern = sys.argv[1]
    for line in sys.stdin:
        if pattern in line:
            sys.stdout.write(line)
