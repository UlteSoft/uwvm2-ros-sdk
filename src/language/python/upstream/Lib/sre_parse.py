# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import warnings
warnings.warn(f"module {__name__!r} is deprecated",
              DeprecationWarning,
              stacklevel=2)

from re import _parser as _
globals().update({k: v for k, v in vars(_).items() if k[:2] != '__'})
