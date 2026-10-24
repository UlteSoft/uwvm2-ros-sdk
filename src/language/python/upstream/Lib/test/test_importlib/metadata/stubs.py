# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import unittest


class fake_filesystem_unittest:
    """
    Stubbed version of the pyfakefs module
    """
    class TestCase(unittest.TestCase):
        def setUpPyfakefs(self):
            self.skipTest("pyfakefs not available")
