# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
# Test `@no_type_check`,
# see https://bugs.python.org/issue46571

class NoTypeCheck_Outer:
    class Inner:
        x: int


def NoTypeCheck_function(arg: int) -> int:
    ...
