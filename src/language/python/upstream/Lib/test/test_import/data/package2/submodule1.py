# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import sys
sys.modules.pop(__package__, None)
from . import submodule2
