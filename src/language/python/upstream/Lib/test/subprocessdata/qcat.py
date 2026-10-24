# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""When ran as a script, simulates cat with no arguments."""

import sys

if __name__ == "__main__":
    for line in sys.stdin:
        sys.stdout.write(line)
