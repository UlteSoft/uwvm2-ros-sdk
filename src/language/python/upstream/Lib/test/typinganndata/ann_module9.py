# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
# Test ``inspect.formatannotation``
# https://github.com/python/cpython/issues/96073

from typing import Union, List

ann = Union[List[str], int]

# mock typing._type_repr behaviour
class A: ...

A.__module__ = 'testModule.typing'
A.__qualname__ = 'A'

ann1 = Union[List[A], int]
