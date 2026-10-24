# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import zlib
__doc__ = zlib.__doc__
del zlib

from zlib import *
