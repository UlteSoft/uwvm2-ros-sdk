"""@file main.py
@brief Execute copy_lines in the genuine Python engine.
@details Process only arguments and inherited binary standard streams. No path,
clock, random, network or ROS resource is opened.
"""
import sys


def main():
    """Copy binary stdin in bounded chunks, completing each short stdout write."""
    while True:
        chunk = sys.stdin.buffer.read(256)
        if not chunk:
            break
        pending = memoryview(chunk)
        while pending:
            written = sys.stdout.buffer.write(pending)
            if written is None or not 0 < written <= len(pending):
                return 5
            pending = pending[written:]
    sys.stdout.buffer.flush()
    return 0


try:
    raise SystemExit(main())
except OSError:
    raise SystemExit(5)
