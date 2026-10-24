# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""This is a test"""

# Import the name nested_scopes twice to trigger SF bug #407394 (regression).
from __future__ import nested_scopes, nested_scopes

def f(x):
    def g(y):
        return x + y
    return g

result = f(2)(4)
