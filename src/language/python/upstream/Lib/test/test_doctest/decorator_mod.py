# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
# This module is used in `doctest_lineno.py`.
import functools


def decorator(f):
    @functools.wraps(f)
    def inner():
        return f()

    return inner
