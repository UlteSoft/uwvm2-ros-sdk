# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
initialized = True

class TestFrozenUtf8_1:
    """\u00b6"""

class TestFrozenUtf8_2:
    """\u03c0"""

class TestFrozenUtf8_4:
    """\U0001f600"""

def main():
    print("Hello world!")

if __name__ == '__main__':
    main()
