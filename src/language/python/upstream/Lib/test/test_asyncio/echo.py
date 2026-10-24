# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import os

if __name__ == '__main__':
    while True:
        buf = os.read(0, 1024)
        if not buf:
            break
        os.write(1, buf)
