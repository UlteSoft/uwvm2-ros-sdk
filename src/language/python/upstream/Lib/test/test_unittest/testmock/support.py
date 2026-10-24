# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
target = {'foo': 'FOO'}


def is_instance(obj, klass):
    """Version of is_instance that doesn't access __class__"""
    return issubclass(type(obj), klass)


class SomeClass(object):
    class_attribute = None

    def wibble(self): pass


class X(object):
    pass

# A standin for weurkzeug.local.LocalProxy - issue 119600
def _inaccessible(*args, **kwargs):
    raise AttributeError


class OpaqueProxy:
    __getattribute__ = _inaccessible


g = OpaqueProxy()
