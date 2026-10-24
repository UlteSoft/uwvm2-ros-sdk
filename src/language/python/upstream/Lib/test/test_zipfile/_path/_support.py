# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import importlib
import unittest


def import_or_skip(name):
    try:
        return importlib.import_module(name)
    except ImportError:  # pragma: no cover
        raise unittest.SkipTest(f'Unable to import {name}')
