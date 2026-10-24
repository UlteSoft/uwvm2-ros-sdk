# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
def __getattr__():
    "Bad one"

x = 1

def __dir__(bad_sig):
    return []
