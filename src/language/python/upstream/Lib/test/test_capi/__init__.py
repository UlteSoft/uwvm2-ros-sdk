# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import os
import unittest
from test.support import load_package_tests
from test.support import TEST_MODULES_ENABLED


if not TEST_MODULES_ENABLED:
    raise unittest.SkipTest("requires test modules")


def load_tests(*args):
    return load_package_tests(os.path.dirname(__file__), *args)
