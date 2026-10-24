"""@file transport.py
@brief Own genuine Python ROS capability lifetimes over the static raw builtin.
@details No operation retries, native side channel, callback or finalizer is
hidden here. Byte encoding precedes acquisition; callers preserve cleanup facts.
"""

import _uwvm_ros


class Capability:
    """@brief Own one instance-local exact unsigned handle with explicit retirement."""

    def __init__(self, handle):
        """@brief Adopt a successfully returned owner. @param handle Exact full-width integer."""
        if type(handle) is not int or not 0 < handle <= (1 << 64) - 1:
            raise ValueError("invalid owned capability")
        self.handle = handle

    @classmethod
    def open(cls, alias):
        """@brief Open one granted alias once.

        @param alias Nonempty strict UTF-8 name, at most 255 bytes and no NUL.
        @return (owned capability or None, original errno); no fallback alias.
        """
        if type(alias) is not str or "\0" in alias:
            return None, 22
        try:
            raw = alias.encode("utf-8", "strict")
        except UnicodeError:
            return None, 22
        if not 0 < len(raw) <= 255:
            return None, 22
        version = _uwvm_ros.invoke("abi_version", 0, b"", 0)
        if version[0] or version[3] != 1:
            return None, version[0] or 38
        result = _uwvm_ros.invoke("capability_open", 0, raw, 0)
        return (cls(result[3]) if result[0] == 0 else None), result[0]

    def invoke(self, operation, request=b"", capacity=0):
        """@brief Issue one original operation while this owner is live.

        @param operation Explicit raw import name selected by language policy.
        @param request Complete immutable encoded request.
        @param capacity Full finite admitted response bound.
        @return Original four-part raw result; errors never imply a response.
        """
        if self.handle is None:
            return 9, b"", None, None
        return _uwvm_ros.invoke(operation, self.handle, request, capacity)

    def close(self):
        """@brief Retire before one cleanup attempt. @return Original cleanup errno, or 9 if retired."""
        if self.handle is None:
            return 9
        handle, self.handle = self.handle, None
        return _uwvm_ros.invoke("capability_close", handle, b"", 0)[0]


def pause_ms(duration):
    """@brief Wait only for a granted monotonic timer. @param duration Milliseconds. @return WASI errno."""
    return _uwvm_ros.pause_ms(duration)
