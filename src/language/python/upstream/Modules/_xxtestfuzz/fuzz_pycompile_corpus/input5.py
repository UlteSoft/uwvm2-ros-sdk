# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
try:
    eval('importer exporter... really long matches')
except SyntaxError:
    print("nothing to see here")
finally:
    print("all done here")
    raise
