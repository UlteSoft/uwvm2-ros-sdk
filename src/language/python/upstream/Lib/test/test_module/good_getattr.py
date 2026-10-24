# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
x = 1

def __dir__():
    return ['a', 'b', 'c']

def __getattr__(name):
    if name == "yolo":
        raise AttributeError("Deprecated, use whatever instead")
    return f"There is {name}"

y = 2
