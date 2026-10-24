# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import sys

from . import Distribution


def inspect(path):
    print("Inspecting", path)
    dists = list(Distribution.discover(path=[path]))
    if not dists:
        return
    print("Found", len(dists), "packages:", end=' ')
    print(', '.join(dist.name for dist in dists))


def run():
    for path in sys.path:
        inspect(path)


if __name__ == '__main__':
    run()
