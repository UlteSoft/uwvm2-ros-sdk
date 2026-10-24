# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
# gh-143706: Test that sys.argv is correctly set during main module import
# when using forkserver with __main__ preloading.

import multiprocessing
import sys

# This will be printed during module import - sys.argv should be correct here
print(f"module:{sys.argv[1:]}")

def fun():
    # This will be printed when the function is called
    print(f"fun:{sys.argv[1:]}")

if __name__ == "__main__":
    ctx = multiprocessing.get_context("forkserver")
    ctx.set_forkserver_preload(['__main__'])

    fun()

    p = ctx.Process(target=fun)
    p.start()
    p.join()
