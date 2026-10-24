# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import unittest
from test.support import threading_helper

threading_helper.requires_working_threading(module=True)


class TestRlock(unittest.TestCase):
    def test_repr_race(self):
        # gh-153292
        import _thread
        r = _thread.RLock()

        def repr_thread():
            for _ in range(2000):
                repr(r)

        def mutate_thread():
            for _ in range(2000):
                r.acquire()
                r.release()

        threading_helper.run_concurrently([repr_thread, mutate_thread])


if __name__ == "__main__":
    unittest.main()
