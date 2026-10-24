# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import sys
import unittest
import test_regrtest_b.util

class Test(unittest.TestCase):
    def test(self):
        test_regrtest_b.util  # does not fail
        self.assertIn('test_regrtest_a', sys.modules)
        self.assertIs(sys.modules['test_regrtest_b'], test_regrtest_b)
        self.assertIs(sys.modules['test_regrtest_b.util'], test_regrtest_b.util)
        self.assertNotIn('test_regrtest_c', sys.modules)
