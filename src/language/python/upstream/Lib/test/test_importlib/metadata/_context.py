# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import contextlib


# from jaraco.context 4.3
class suppress(contextlib.suppress, contextlib.ContextDecorator):
    """
    A version of contextlib.suppress with decorator support.

    >>> @suppress(KeyError)
    ... def key_error():
    ...     {}['']
    >>> key_error()
    """
