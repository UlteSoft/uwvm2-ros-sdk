"""@file observation.py
@brief Observe complete schema-bound platform records with independent errors and one explicit owner.
@details Only idle 11 permits another caller-budgeted poll. Complete decoding and
reencoding finish before value exposure. Every ordinary post-open path closes
once; fatal traps and unrecoverable allocation failures require outer retirement.
"""

from ros.py.transport import Capability
from ros.py.wire import CodecError


def empty():
    """@brief Allocate local independent facts without native effects. @return Owned result."""
    return dict(
        primary=0,
        cleanup=0,
        cleanup_present=0,
        rpc_status=0,
        rpc_present=0,
        response_present=0,
        polls=0,
        required_present=0,
        required="0",
        length="18446744073709551615",
        wire_hex="",
        value=None,
    )


def receive(alias, codec, attempts, pause):
    """@brief Retain one exact-type subscription until a whole record or finite refusal.
    @param alias Borrowed existing strict UTF-8 alias; grants no new permission.
    @param codec Complete original class from the selected native backend catalog.
    @param attempts Integer poll budget 1..250, including the first poll.
    @param pause Caller-controlled synchronous wait; required for more than one poll.
    @return Entire owned original value and independent original RPC/length/close facts.
    @details No capacity retry, fallback backend, background callback or command is created.
    """
    result = empty()
    if type(attempts) is not int or not 1 <= attempts <= 250 or (attempts > 1 and not callable(pause)):
        result["primary"] = 22
        return result
    owner, result["primary"] = Capability.open(alias)
    if owner is None:
        return result
    try:
        result["primary"] = owner.invoke("topic_subscribe")[0]
        if result["primary"] == 0:
            frame = None
            for attempt in range(attempts):
                frame = owner.invoke("event_poll", b"", codec.SCHEMA["maximum"])
                result["polls"] += 1
                result["rpc_present"], result["rpc_status"] = 1, frame[0]
                result["primary"] = frame[0]
                if frame[2] is not None:
                    result["required_present"] = 1
                    result["required"] = result["length"] = str(frame[2])
                if frame[0] != 11 or attempt + 1 == attempts:
                    break
                code = pause()
                result["primary"] = code if type(code) is int and 0 <= code <= 4294967295 else 22
                if result["primary"] != 0:
                    break
            if result["primary"] == 0 and frame is not None:
                value = codec.decode(frame[1])
                encoded = value.encode()
                if encoded != frame[1]:
                    raise CodecError()
                result["value"], result["response_present"] = value, 1
                result["wire_hex"] = encoded.hex()
    except CodecError as error:
        result["primary"] = result["primary"] or error.code
    except (ValueError, TypeError, OverflowError):
        result["primary"] = result["primary"] or 22
    except Exception:
        result["primary"] = result["primary"] or 5
    finally:
        result["cleanup_present"] = 1
        try:
            result["cleanup"] = owner.close()
        except Exception:
            result["cleanup"] = 5
    return result


def output(result):
    """@brief Emit complete canonical hex after close. @param result Whole outcome.
    @return Primary, cleanup or stdout status clamped to a conventional process exit.
    @details Full-width lengths remain decimal strings, never narrowed to floats.
    """
    import sys

    status = result["primary"] or result["cleanup"]
    fields = []
    for key, value in result.items():
        if key != "value":
            fields.append('"' + key + '":' + ('"' + value + '"' if type(value) is str else str(value)))
    try:
        sys.stdout.write("{" + ",".join(fields) + "}\n")
        sys.stdout.flush()
    except (OSError, IOError):
        status = status or 5
    return min(status, 125)
