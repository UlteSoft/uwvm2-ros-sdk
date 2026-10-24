# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
# Used by test_typing to verify that Final wrapped in ForwardRef works.

from __future__ import annotations

from typing import Final

name: Final[str] = "final"

class MyClass:
    value: Final = 3000
