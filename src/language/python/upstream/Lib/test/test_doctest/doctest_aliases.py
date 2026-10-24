# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
# Used by test_doctest.py.

class TwoNames:
    '''f() and g() are two names for the same method'''

    def f(self):
        '''
        >>> print(TwoNames().f())
        f
        '''
        return 'f'

    g = f # define an alias for f
