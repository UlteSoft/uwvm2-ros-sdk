"""@file main.py
@brief Execute sum_arguments in the genuine Python engine.
@details Process only arguments and inherited binary standard streams. No path,
clock, random, network or ROS resource is opened.
"""
import re
import sys


def main():
    """Sum bounded signed 32-bit decimals; malformed or overflowing input is 22."""
    total = 0
    if len(sys.argv) > 1025:
        return 22
    for text in sys.argv[1:]:
        if len(text) > 11 or re.fullmatch(r"[+-]?[0-9]+", text) is None:
            return 22
        value = int(text, 10)
        if not -2147483648 <= value <= 2147483647:
            return 22
        total += value
        if not -2147483648 <= total <= 2147483647:
            return 22
    sys.stdout.write(str(total) + "\n")
    sys.stdout.flush()
    return 0


try:
    raise SystemExit(main())
except OSError:
    raise SystemExit(5)
