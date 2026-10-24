# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""Circular import involving a single-phase-init extension.

This module is imported from the _testsinglephase_circular module from
_testsinglephase, and imports that module again.
"""

import importlib
import _testsinglephase
from test.test_import import import_extension_from_file

name = '_testsinglephase_circular'
filename = _testsinglephase.__file__
mod = import_extension_from_file(name, filename)
