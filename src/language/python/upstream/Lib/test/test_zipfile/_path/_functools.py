# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import functools


# from jaraco.functools 3.5.2
def compose(*funcs):
    def compose_two(f1, f2):
        return lambda *args, **kwargs: f1(f2(*args, **kwargs))

    return functools.reduce(compose_two, funcs)
