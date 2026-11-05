"""Run one explicitly configured guest with bounded parent-owned output pipes."""
from pathlib import Path
import argparse
import signal
import subprocess
from pipe_capture import PipeLoggedProcess


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--stdout", type=Path, required=True)
    parser.add_argument("--stderr", type=Path, required=True)
    parser.add_argument("--timeout", type=float, required=True)
    parser.add_argument("--limit", type=int, default=8 * 1024 * 1024)
    parser.add_argument("command", nargs=argparse.REMAINDER)
    args = parser.parse_args()
    command = args.command[1:] if args.command[:1] == ["--"] else args.command
    if not command or not 0 < args.timeout <= 3600:
        parser.error("An exact command and finite deadline are required")
    def interrupted(signum, frame):
        raise InterruptedError("Guest supervisor interrupted")
    signal.signal(signal.SIGTERM, interrupted)
    signal.signal(signal.SIGINT, interrupted)
    with args.stdout.open("xb") as stdout, args.stderr.open("xb") as stderr:
        child = PipeLoggedProcess(command, stdin=subprocess.DEVNULL, stdout=stdout,
                                  stderr=stderr, output_limit=args.limit)
        try:
            result = child.wait(timeout=args.timeout)
        finally:
            if child.poll() is None:
                child.kill()
                child.wait(timeout=5)
    return result if result >= 0 else 128 - result


if __name__ == "__main__":
    raise SystemExit(main())
