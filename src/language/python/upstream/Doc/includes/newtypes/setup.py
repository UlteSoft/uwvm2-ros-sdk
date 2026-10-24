# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
from setuptools import Extension, setup
setup(ext_modules=[
    Extension("custom", ["custom.c"]),
    Extension("custom2", ["custom2.c"]),
    Extension("custom3", ["custom3.c"]),
    Extension("custom4", ["custom4.c"]),
    Extension("sublist", ["sublist.c"]),
])
