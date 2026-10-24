# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import os
from test import support
from test.support import import_helper


# skip tests if the _ctypes extension was not built
import_helper.import_module('ctypes')

def load_tests(*args):
    return support.load_package_tests(os.path.dirname(__file__), *args)
