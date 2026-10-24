"""@file observation.py
@brief Read whole ABB observations in the actual CPython Wasm interpreter.
@details All data validation, request encoding, transport control and cleanup
run in Python. Only idle topic polls repeat; every service is called once.
"""

import sys
from ros.py.transport import Capability, pause_ms
from abb.py import records
from ros.py.wire import CodecError


def outcome():
    """@brief Create independent numeric observations. @return Owned result dictionary."""
    return dict(
        primary=0,
        cleanup=0,
        cleanup_present=0,
        response_present=0,
        rpc_present=0,
        rpc_status=0,
        required_present=0,
        required="0",
        encoding=0,
        wire_hex="",
        value=None,
    )


def receive(alias, request, codec, topic, accepted):
    """@brief Read once through a finite owned capability lifecycle.

    @param alias Externally granted type-specific alias.
    @param request Complete validated bytes, encoded before acquisition.
    @param codec Original full response class and finite extent.
    @param topic True subscribes and polls at most 250 times; false calls once.
    @param accepted Pure controller-result predicate over the complete response.
    @return Independent operation, response and cleanup facts after owner retirement.
    """
    result = outcome()
    owner, result["primary"] = Capability.open(alias)
    if owner is None:
        return result
    try:
        if topic:
            result["primary"] = owner.invoke("topic_subscribe")[0]
        if result["primary"] == 0:
            frame = None
            for attempt in range(250 if topic else 1):
                frame = owner.invoke("event_poll" if topic else "service_call", request, codec.SCHEMA["maximum"])
                result["rpc_present"], result["rpc_status"] = 1, frame[0]
                if not topic or frame[0] != 11 or attempt == 249:
                    break
                result["primary"] = pause_ms(20)
                if result["primary"]:
                    break
            if result["primary"] == 0:
                result["primary"] = frame[0]
            if frame is not None and frame[2] is not None:
                result["required_present"], result["required"] = 1, str(frame[2])
            if frame is not None and frame[0] == 0:
                try:
                    value = codec.decode(frame[1])
                    result["value"], result["response_present"] = value, 1
                    result["wire_hex"] = frame[1].hex()
                    if not accepted(value):
                        result["primary"] = 5
                except (CodecError, ValueError):
                    result["primary"] = 22
    finally:
        result["cleanup_present"], result["cleanup"] = 1, owner.close()
    return result


def read_speed(alias):
    """@brief Read speed without changing override.

    @param alias Granted GetSpeedRatio alias.
    @return Full response; RC_SUCCESS=1 and speed_ratio<=100 determine success.
    """
    return receive(
        alias,
        b"",
        records.Ros2Abb_robot_msgsSrvGetSpeedRatio_Response,
        False,
        lambda value: value.result_code == 1 and value.speed_ratio <= 100,
    )


def read_io(alias, signal):
    """@brief Read one strict UTF-8 IO signal without setting it.

    @param alias Granted GetIOSignal alias.
    @param signal Nonempty original signal name within 512 UTF-8 bytes.
    @return Whole value/result_code/message and independent operation facts.
    """
    if type(signal) is not str or not signal:
        result = outcome()
        result["primary"] = 22
        return result
    try:
        request = records.Ros2Abb_robot_msgsSrvGetIOSignal_Request(signal=signal).encode()
    except (CodecError, ValueError):
        result = outcome()
        result["primary"] = 22
        return result
    return receive(
        alias, request, records.Ros2Abb_robot_msgsSrvGetIOSignal_Response, False, lambda value: value.result_code == 1
    )


def system_state(alias):
    """@brief Retain one subscription until complete state or expiry.

    @param alias Granted SystemState subscription alias.
    @return Complete header, flags, RAPID tasks and mechanical units; idle stays 11.
    """
    return receive(alias, b"", records.Ros2Abb_robot_msgsMsgSystemState, True, lambda value: True)


def output(result):
    """@brief Emit exact response bytes after cleanup and select exit precedence.

    @param result Owned observation dictionary.
    @return Original primary, otherwise cleanup, otherwise output status, clamped to 125.
    @details The minimal diagnostic JSON contains integers and safe ASCII strings;
    full UTF-8/native values are preserved without projection in wire_hex.
    """
    status = result["primary"] or result["cleanup"]
    keys = (
        "primary",
        "cleanup",
        "cleanup_present",
        "response_present",
        "rpc_present",
        "rpc_status",
        "required_present",
        "required",
        "encoding",
        "wire_hex",
    )
    fields = []
    for key in keys:
        value = result[key]
        fields.append('"' + key + '":' + ('"' + value + '"' if type(value) is str else str(value)))
    try:
        sys.stdout.write("{" + ",".join(fields) + "}\n")
        sys.stdout.flush()
    except OSError:
        status = status or 5
    return min(status, 125)
