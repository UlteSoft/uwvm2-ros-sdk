# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
def function_1():
    function_3(1, 2)

# Check stacktrace
def function_2():
    function_1()

# CALL_FUNCTION_VAR
def function_3(dummy, dummy2):
    pass

# CALL_FUNCTION_KW
def function_4(**dummy):
    return 1
    return 2  # unreachable

# CALL_FUNCTION_VAR_KW
def function_5(dummy, dummy2, **dummy3):
    if False:
        return 7
    return 8

def start():
    function_1()
    function_2()
    function_3(1, 2)
    function_4(test=42)
    function_5(*(1, 2), **{"test": 42})

start()
