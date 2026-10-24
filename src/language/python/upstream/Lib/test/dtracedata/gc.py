# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import gc

def start():
    gc.collect(0)
    gc.collect(1)
    gc.collect(2)
    l = []
    l.append(l)
    del l
    gc.collect(2)

gc.collect()
start()
