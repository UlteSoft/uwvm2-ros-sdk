# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
def func(x):
    b = x + 1
    return b + 2

def func2():
    """Test function for issue 9936 """
    return (1,
            2,
            3)
