# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""Main entry point"""

import sys
if sys.argv[0].endswith("__main__.py"):
    sys.argv[0] = "python -m tkinter"
from . import _test as main
main()
