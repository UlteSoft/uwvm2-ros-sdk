# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import unittest

class LongExpText(unittest.TestCase):
    def test_longexp(self):
        REPS = 65580
        l = eval("[" + "2," * REPS + "]")
        self.assertEqual(len(l), REPS)

if __name__ == "__main__":
    unittest.main()
