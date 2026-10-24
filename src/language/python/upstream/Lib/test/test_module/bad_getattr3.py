# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
def __getattr__(name):
    if name != 'delgetattr':
        raise AttributeError
    del globals()['__getattr__']
    raise AttributeError
