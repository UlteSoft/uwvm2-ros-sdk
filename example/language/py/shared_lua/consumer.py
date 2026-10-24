"""Perform cross-library assertions as ordinary genuine Python execution."""

import _foreign


def apply(a, b):
    """Check real foreign function values, exceptions, result types and retirement."""
    _foreign.initialize()
    assert _foreign.apply(4, 7) == 20
    assert _foreign.apply(4, 7) == 21
    assert _foreign.apply(-1, 7) == 22 << 32
    assert _foreign.apply(-2, 7) == 22 << 32
    assert _foreign.apply(4, 7) == 22
    assert _foreign.close() == 0
    assert _foreign.close() == 0
    assert _foreign.apply(4, 7) == 20
    assert _foreign.close() == 0
    return 12345

assert apply(0, 0) == 12345
assert apply(0, 0) == 12345
