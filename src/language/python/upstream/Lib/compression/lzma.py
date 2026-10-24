# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import lzma
__doc__ = lzma.__doc__
del lzma

from lzma import *
