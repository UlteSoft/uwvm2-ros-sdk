# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
from __future__ import annotations

import dataclasses


class Foo:
    pass


@dataclasses.dataclass
class Bar:
    foo: Foo
