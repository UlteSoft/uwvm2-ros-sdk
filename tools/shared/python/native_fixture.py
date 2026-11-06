# SPDX-License-Identifier: Apache-2.0
"""Actual local fixture identities and birth-checked process retirement.

This helper observes the current functional-test boundary. It never issues a
production guardian admission or grants a Wasm interface or ROS resource.
"""
from pathlib import Path
import hashlib
import os
import re
import signal
import sys
import time


def need(condition, message):
    if not condition:
        raise RuntimeError(message)


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def exec_runtime_gate(arguments):
    """Keep one PID alive until its gateway has pinned that process lifetime."""
    need(len(arguments) >= 3, 'Complete runtime executable, identity and arguments required')
    executable, expected, *tail = arguments
    need(Path(executable).is_absolute() and len(expected) == 64
         and all(c in '0123456789abcdef' for c in expected), 'Invalid runtime gate identity')
    need(os.read(0, 1) == b'E', 'Runtime execution was not released by the supervisor')
    need(digest(executable) == expected and os.access(executable, os.X_OK),
         'Runtime executable changed before exec')
    os.execv(executable, [executable, *tail])


def process(pid):
    root = Path("/proc") / str(pid)
    first = (root / "stat").read_text().rsplit(") ", 1)[1].split()
    membership = (root / "cgroup").read_text().strip()
    need(membership.startswith("0::/") and "\n" not in membership, "unified actual cgroup required")
    group = Path("/sys/fs/cgroup") / membership[3:].lstrip("/")
    limits = {name: (group / name).read_text().strip()
              for name in ("memory.max", "memory.swap.max", "cpuset.cpus.effective")}
    executable = root / "exe"
    before = executable.stat()
    sha = digest(executable)
    after = executable.stat()
    file_limit = next(line for line in (root / "limits").read_text().splitlines()
                      if line.startswith("Max file size"))
    match = re.fullmatch(r"Max file size\s+(\S+)\s+(\S+)\s+bytes\s*", file_limit)
    need(match is not None, "actual regular-file limit record absent")
    second = (root / "stat").read_text().rsplit(") ", 1)[1].split()
    need(first[19] == second[19] and (before.st_dev, before.st_ino) == (after.st_dev, after.st_ino),
         "process identity changed during observation")
    return {"pid": pid, "birth": first[19], "session": int(first[3]),
            "observed_monotonic_ns": time.monotonic_ns(), "membership": membership,
            "cgroup_inode": group.stat().st_ino, "cgroup_namespace": str((root / "ns/cgroup").readlink()),
            "executable": str(executable.resolve()), "executable_sha256": sha,
            "file_limit_soft": match[1], "file_limit_hard": match[2], **limits}


def check_resource_boundary(row):
    """Match the actual supervisor leaf, without assuming one host's CPU IDs."""
    supervisor = process(os.getpid())
    fields = ("membership", "cgroup_inode", "cgroup_namespace", "cpuset.cpus.effective")
    need(all(row[field] == supervisor[field] for field in fields),
         "Actual actor left the admitted fixture supervisor resource boundary")
    need(row["memory.max"] == "68719476736" and row["memory.swap.max"] == "0",
         "Actual actor requires the 64 GiB, zero-swap cgroup")


def session_members(session):
    rows = []
    for root in Path("/proc").iterdir():
        if not root.name.isdecimal():
            continue
        try:
            fields = (root / "stat").read_text().rsplit(") ", 1)[1].split()
            if int(fields[3]) == session:
                need(root.stat().st_uid == os.getuid(), "unexpected owner in the created runtime session")
                rows.append({"pid": int(root.name), "birth": fields[19]})
        except (FileNotFoundError, ProcessLookupError):
            pass
    return rows


def retire_session(child, known):
    """Signal only birth-verified members of this newly created session."""
    session = child.pid
    deadline = time.monotonic() + 10
    while True:
        rows = session_members(session)
        if child.poll() is None:
            leader = next((row for row in rows if row["pid"] == child.pid), None)
            need(leader is not None and known.get(child.pid) == leader["birth"],
                 "original runtime session leader identity is unavailable")
            for row in rows:
                known[row["pid"]] = row["birth"]
        need(all(known.get(row["pid"]) == row["birth"] for row in rows),
             "unobserved/replaced session member requires outer guardian retirement")
        child.poll()  # Reap our direct child; never wait on a zombie we own.
        rows = session_members(session)
        need(all(known.get(row["pid"]) == row["birth"] for row in rows),
             "session membership changed after leader retirement")
        if not rows:
            return
        for row in rows:
            try:
                descriptor = os.pidfd_open(row["pid"], 0)
            except ProcessLookupError:
                continue
            try:
                stat = (Path("/proc") / str(row["pid"]) / "stat").read_text().rsplit(") ", 1)[1].split()
                need(stat[19] == row["birth"] == known.get(row["pid"]) and int(stat[3]) == session,
                     "refuse a replaced or foreign process")
                signal.pidfd_send_signal(descriptor, signal.SIGKILL)
            except (FileNotFoundError, ProcessLookupError):
                pass
            finally:
                os.close(descriptor)
        need(time.monotonic() < deadline, "runtime session retirement did not complete")
        time.sleep(0.02)


def require_unprivileged():
    status = dict(line.split(":", 1) for line in Path("/proc/self/status").read_text().splitlines() if ":" in line)
    need(os.getuid() != 0 and os.geteuid() == os.getuid(), "Unprivileged fixture owner required")
    need(all(int(status[key].strip(), 16) == 0 for key in ("CapInh", "CapPrm", "CapEff", "CapBnd", "CapAmb")), "Fixture capabilities must be empty")
    need(status["NoNewPrivs"].strip() == "1" and status["Seccomp"].strip() == "2", "Fixture requires no_new_privs and the selected syscall filter")
    check_resource_boundary(process(os.getpid()))
    return status


if __name__ == "__main__":
    need(len(sys.argv) > 1 and sys.argv[1] == "--exec-runtime-gate", "Explicit gate command required")
    exec_runtime_gate(sys.argv[2:])
