"""Check actual Linux cgroup limits independently of a scheduler's directory name.

This is resource-boundary evidence only. It neither authorizes guest imports nor
replaces the caller's ownership, executable identity or process retirement checks.
"""
from pathlib import Path
import sys

TOTAL_MEMORY = 64 * 1024**3


def cgroup_budget():
    if sys.platform != "linux":
        raise RuntimeError("A real Linux unified cgroup is required")
    membership = Path("/proc/self/cgroup").read_text()
    lines = membership.splitlines()
    if len(lines) != 1 or not lines[0].startswith("0::/"):
        raise RuntimeError("Require one actual unified cgroup membership")
    root = Path("/sys/fs/cgroup").resolve(strict=True)
    current = (root / lines[0][3:].lstrip("/")).resolve(strict=True)
    if current == root or not current.is_relative_to(root):
        raise RuntimeError("Run inside a bounded unified cgroup")
    rows = []
    node = current
    while node != root:
        memory = (node / "memory.max").read_text().strip()
        swap = (node / "memory.swap.max").read_text().strip()
        if not memory.isdecimal() or not 0 < int(memory) <= TOTAL_MEMORY or swap != "0":
            raise RuntimeError("Every actor ancestor through the shared boundary must remain <=64 GiB and zero swap")
        rows.append({"path": str(node), "memory.max": memory, "memory.swap.max": swap})
        if int(memory) == TOTAL_MEMORY:
            return {"membership": membership, "ancestors": rows,
                    "scope": "Actual kernel resource limits only; caller retains process ownership and retirement evidence."}
        node = node.parent
    raise RuntimeError("An exact 64 GiB shared ancestor is required")
