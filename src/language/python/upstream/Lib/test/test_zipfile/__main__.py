# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import unittest

from . import load_tests  # noqa: F401


if __name__ == "__main__":
    unittest.main()
