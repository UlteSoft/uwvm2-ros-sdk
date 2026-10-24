# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""Backports from newer versions of the typing module.

We backport these features here so that Python can still build
while using an older Python version for PYTHON_FOR_REGEN.
"""

from typing import NoReturn


def assert_never(obj: NoReturn) -> NoReturn:
    """Statically assert that a line of code is unreachable.

    Backport of typing.assert_never (introduced in Python 3.11).
    """
    raise AssertionError(f"Expected code to be unreachable, but got: {obj}")
