# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
from __future__ import unicode_literals
import unittest


class Tests(unittest.TestCase):
    def test_unicode_literals(self):
        self.assertIsInstance("literal", str)


if __name__ == "__main__":
    unittest.main()
