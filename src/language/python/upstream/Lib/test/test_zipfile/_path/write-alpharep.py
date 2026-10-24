# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
from . import test_path

__name__ == '__main__' and test_path.build_alpharep_fixture().extractall('alpharep')
