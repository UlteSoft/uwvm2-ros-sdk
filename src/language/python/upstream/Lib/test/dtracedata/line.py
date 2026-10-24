# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
def test_line():
    a = 1
    print('# Preamble', a)
    for i in range(2):
        a = i
        b = i+2
        c = i+3
        if c < 4:
            a = c
        d = a + b +c
        print('#', a, b, c, d)
    a = 1
    print('# Epilogue', a)


if __name__ == '__main__':
    test_line()
