# @file client.py
# @brief Provide the complete agibot client.py source contract.
# @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
# encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
# SPDX-License-Identifier: Apache-2.0
"""Synchronous complete AimDK observations inside the genuine CPython Wasm VM.

Each operation owns one explicitly granted ROS capability and retires it once
before decoding. Returned records are owned Python objects. Service requests
are never replayed. No socket, host Python execution or native ROS client exists.
"""

import _uwvm_ros

from agibot.py.records import DecodeError, decode


class Observation:
    """Keep original fields, primary failure and cleanup facts independent.

    ``value`` is a complete original record on success; ``error`` is the ABI or
    codec errno, ``cleanup`` the independent close result, and ``vendor`` the
    original service response code. A nonzero vendor code is never retried.
    """

    def __init__(self, typename):
        self.typename = typename
        self.value = None
        self.error = 0
        self.cleanup = 0
        self.vendor = 0


def _observe(alias, typename, capacity, topic, timeout_ms):
    """Borrow inputs, retain one owner, close once, then decode complete bytes."""
    result = Observation(typename)
    try:
        if not isinstance(alias, str) or "\0" in alias:
            raise ValueError("Invalid alias")
        name = alias.encode("utf-8", "strict")
        if not 1 <= len(name) <= 255 or type(timeout_ms) is not int or not 1 <= timeout_ms <= 30000:
            raise ValueError("Invalid alias or deadline")
    except (ValueError, UnicodeError):
        result.error = 22
        return result
    if _uwvm_ros.invoke("abi_version", 0, b"", 0)[3] != 1:
        result.error = 22
        return result
    opened = _uwvm_ros.invoke("capability_open", 0, name, 0)
    result.error = opened[0]
    if result.error:
        return result
    owner = opened[3]
    frame = None
    try:
        if topic:
            clock = _uwvm_ros.invoke("monotonic_ns", 0, b"", 0)
            result.error, start = clock[0], clock[3]
            if not result.error:
                result.error = _uwvm_ros.invoke("topic_subscribe", owner, b"", 0)[0]
            while not result.error:
                frame = _uwvm_ros.invoke("event_poll", owner, b"", capacity)
                result.error = frame[0]
                if result.error != 11:
                    break
                now = _uwvm_ros.invoke("monotonic_ns", 0, b"", 0)
                if now[0] or now[3] < start:
                    result.error = now[0] or 5
                    break
                if now[3] - start >= timeout_ms * 1000000:
                    result.error = 110
                    break
                result.error = _uwvm_ros.pause_ms(1)
        else:
            frame = _uwvm_ros.invoke("service_call", owner, bytes(8), capacity)
            result.error = frame[0]
    finally:
        result.cleanup = _uwvm_ros.invoke("capability_close", owner, b"", 0)[0]
    if result.error or result.cleanup:
        return result
    try:
        if frame is None or frame[2] != len(frame[1]):
            raise DecodeError(22, "Invalid returned length")
        result.value = decode(typename, frame[1])
        if not topic:
            header = result.value["header"]
            result.vendor = header["header"]["code"] if "GetRobotResources" in typename else header["code"]
    except DecodeError as invalid:
        result.error = invalid.code
    return result


def query_mode(alias):
    """Query original GetMcAction once using an exact granted service alias.

    Returns an owned Observation. Inspect ``vendor`` separately from ``error``
    and ``cleanup``; closing a capability does not stop any robot motion.
    """
    return _observe(alias, "aimdk_msgs/srv/GetMcAction_Response", 156, False, 3000)


def next_motion_state(alias, timeout_ms=3000):
    """Receive complete McCommonState under a real monotonic deadline.

    Args:
        alias: Granted state-subscribe alias, 1..255 UTF-8 bytes.
        timeout_ms: Deadline in 1..30000 milliseconds. Requires monotonic-clock.
    Returns:
        Owned Observation; error 110 means deadline expiry. No callback thread
        enters Python. Units, timestamps and original status fields are retained.
    """
    return _observe(alias, "aimdk_msgs/msg/McCommonState", 698, True, timeout_ms)


def list_resources(alias):
    """Enumerate original X2 Ultra resources and full bounded file arrays.

    The granted alias selects GetRobotResources. No resource is played, changed
    or downloaded. Independent calls share no mutable SDK storage.
    """
    return _observe(alias, "aimdk_msgs/srv/GetRobotResources_Response", 10236, False, 3000)
