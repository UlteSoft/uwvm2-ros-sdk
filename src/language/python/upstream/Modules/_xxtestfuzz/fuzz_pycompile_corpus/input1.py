# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
from __future__ import annotations

def test() -> None:
    x: list[int] = []
    x: dict[int, str] = {}
    x: set[bytes] = {}
    print(5 + 42 * 3, x)
