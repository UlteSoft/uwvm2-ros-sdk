# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import multiprocessing

multiprocessing.Lock()


def f():
    print("ok")


if __name__ == "__main__":
    ctx = multiprocessing.get_context("forkserver")
    modname = "test.mp_preload"
    # Make sure it's importable
    __import__(modname)
    ctx.set_forkserver_preload([modname])
    proc = ctx.Process(target=f)
    proc.start()
    proc.join()
