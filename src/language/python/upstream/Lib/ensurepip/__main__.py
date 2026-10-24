# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import ensurepip
import sys

if __name__ == "__main__":
    sys.exit(ensurepip._main())
