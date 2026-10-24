# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""
Fodder for module finalization tests in test_module.
"""

import shutil
import test.test_module.final_b

x = 'a'

class C:
    def __del__(self):
        # Inspect module globals and builtins
        print("x =", x)
        print("final_b.x =", test.test_module.final_b.x)
        print("shutil.rmtree =", getattr(shutil.rmtree, '__name__', None))
        print("len =", getattr(len, '__name__', None))

c = C()
_underscored = C()
