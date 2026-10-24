# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import _collections_abc
from _contextvars import Context, ContextVar, Token, copy_context


__all__ = ('Context', 'ContextVar', 'Token', 'copy_context')


_collections_abc.Mapping.register(Context)
