# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
from typing import ForwardRef

MyList = list[int]
MyDict = dict[str, 'MyList']

fw = ForwardRef('MyDict', module=__name__)
