"""Compute in the genuine Python module with instance-owned mutable state."""

calls = 0


def apply(a, b):
    """Return an ordinary integer, preserving real exceptions and invalid results."""
    global calls
    if a == -1:
        raise ValueError("controlled language exception")
    if a == -2:
        return "invalid return type"
    calls += 1
    return a * 3 + b + calls
