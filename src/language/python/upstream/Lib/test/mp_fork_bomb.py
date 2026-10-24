# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import multiprocessing, sys

def foo():
    print("123")

# Because "if __name__ == '__main__'" is missing this will not work
# correctly on Windows.  However, we should get a RuntimeError rather
# than the Windows equivalent of a fork bomb.

if len(sys.argv) > 1:
    multiprocessing.set_start_method(sys.argv[1])
else:
    multiprocessing.set_start_method('spawn')

p = multiprocessing.Process(target=foo)
p.start()
p.join()
sys.exit(p.exitcode)
