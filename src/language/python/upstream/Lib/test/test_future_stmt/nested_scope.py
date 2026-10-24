# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""This is a test"""

from __future__ import nested_scopes; import site  # noqa: F401

def f(x):
    def g(y):
        return x + y
    return g

result = f(2)(4)
