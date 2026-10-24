# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
from ..source import (
    opened as _open_source,
)
from . import common as _common


def preprocess(lines, filename=None, cwd=None):
    if isinstance(lines, str):
        with _open_source(lines, filename) as (lines, filename):
            yield from preprocess(lines, filename)
        return

    # XXX actually preprocess...
    for lno, line in enumerate(lines, 1):
        kind = 'source'
        data = line
        conditions = None
        yield _common.SourceLine(
            _common.FileInfo(filename, lno),
            kind,
            data,
            conditions,
        )
