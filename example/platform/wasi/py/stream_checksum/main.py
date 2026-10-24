"""@file main.py
@brief Execute stream_checksum in the genuine Python engine.
@details Process only arguments and inherited binary standard streams. No path,
clock, random, network or ROS resource is opened.
"""
import sys


def main():
    """Hash the actual stdin bytes using FNV-1a modulo 2^32."""
    value = 2166136261
    while True:
        chunk = sys.stdin.buffer.read(256)
        if not chunk:
            break
        for byte in chunk:
            value = ((value ^ byte) * 16777619) & 0xFFFFFFFF
    sys.stdout.write(f"{value:08x}\n")
    sys.stdout.flush()
    return 0


try:
    raise SystemExit(main())
except OSError:
    raise SystemExit(5)
