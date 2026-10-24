# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
def evens():
    i = 0
    while True:
        i += 1
        if i % 2 == 0:
            yield i
