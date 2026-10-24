# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import gzip
__doc__ = gzip.__doc__
del gzip

from gzip import *
