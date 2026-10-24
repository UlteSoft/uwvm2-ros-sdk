# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.

class Labeled:
    __slots__ = ('_label',)
    def __init__(self, label):
        self._label = label
    def __repr__(self):
        return f'<{self._label}>'
