# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import sys

class MyMod(object):
    __slots__ = ['__builtins__', '__cached__', '__doc__',
                 '__file__', '__loader__', '__name__',
                 '__package__', '__path__', '__spec__']
    def __init__(self):
        for attr in self.__slots__:
            setattr(self, attr, globals()[attr])


sys.modules[__name__] = MyMod()
