# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import multiprocessing
import sys

print(__name__, end='', file=sys.stderr)
print(__name__, end='', file=sys.stdout)
if __name__ == '__main__':
    multiprocessing.set_start_method('forkserver')
    for _ in range(2):
        p = multiprocessing.Process()
        p.start()
        p.join()
