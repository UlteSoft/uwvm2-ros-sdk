"""Explicit finite native Isaac Sim JointState graph, never a hardware driver.

The actual original node IDs and field links are selected from fixed87c95274.
All Isaac/Kit imports happen after explicit admission. Normal Sim update/model
loading can block: the operator must retain a finite whole-process owner. Local
steps/time caps do not claim preemptive GPU cancellation or physical stop.
"""

import argparse
import hashlib
import json
import os
from pathlib import Path
import stat
import time
from roswasm_nvidia_isaac_sim.sensor_graph import decode, plan, TOPIC, PRIM


class Refused(Exception):
    """@brief Native configuration refusal carrying its numeric primary status.

    @details Used before graph construction to distinguish invalid source (22),
    unadmitted identity (13) and byte quota (90). It acquires no native resource.
    @see captured_config
    """

    def __init__(self, code):
        """@brief Retain the rejecting configuration operation's numeric status.

        @details Stores code by value; no file, ROS, Kit or permission operation
        occurs. Construction is synchronous and has normal exception allocation.
        @param[in] code Exact primary refusal status.
        @see Refused
        """
        self.code = code


def captured_config(path, expected):
    """@brief Read and bind the complete sensor configuration before planning.

    @details Requires a physical absolute ordinary file, positive size <=65536
    bytes, stable descriptor/name metadata and exact whole-file SHA-256. Captures
    bytes before strict decode/plan; no Kit/ROS import or native graph mutation.
    The owner freezes ancestors and source through this synchronous read.
    @param[in] path Explicit native configuration path; read access is required.
    @param[in] expected Independently selected lowercase 64-hex SHA-256.
    @return Complete sensor plan. Refused(13/22/90), OSError, parse/planning and
    allocation errors propagate without a partial graph or permission grant.
    @see sensor_graph.decode
    @see sensor_graph.plan
    @see main
    """
    selected = Path(path)
    if (
        not selected.is_absolute()
        or selected.parent.resolve(strict=True) != selected.parent
    ):
        raise Refused(22)
    if len(expected) != 64 or any(c not in "0123456789abcdef" for c in expected):
        raise Refused(22)
    fd = os.open(selected, os.O_RDONLY | os.O_NOFOLLOW | os.O_NONBLOCK | os.O_CLOEXEC)
    try:
        first = os.fstat(fd)
        if not stat.S_ISREG(first.st_mode) or not 0 < first.st_size <= 65536:
            raise Refused(90)
        raw = os.read(fd, 65537)
        last = os.fstat(fd)
        named = os.lstat(selected)
        signature = lambda s: (
            s.st_dev,
            s.st_ino,
            s.st_mode,
            s.st_size,
            s.st_mtime_ns,
            s.st_ctime_ns,
        )
        if (
            len(raw) != first.st_size
            or signature(first) != signature(last)
            or signature(last) != signature(named)
        ):
            raise Refused(13)
        if hashlib.sha256(raw).hexdigest() != expected:
            raise Refused(13)
        return plan(decode(raw))
    finally:
        os.close(fd)
