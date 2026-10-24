# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""
Utilities for changing test behaviour while hunting
for refleaks
"""

_hunting_for_refleaks = False
def hunting_for_refleaks():
    return _hunting_for_refleaks
