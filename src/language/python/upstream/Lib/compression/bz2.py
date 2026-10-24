# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import bz2
__doc__ = bz2.__doc__
del bz2

from bz2 import *
