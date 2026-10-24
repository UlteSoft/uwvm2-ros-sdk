# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
def func():
    pass
func.__module__ = None

class A:
    def method(self):
        pass
    method.__module__ = None
