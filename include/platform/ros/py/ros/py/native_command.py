"""@file native_command.py
@brief Own complete original native ROS String/Trigger records and finite commands.
@details Genuine guest CPython owns every field, codec, operation and cleanup
decision. Its static builtin only adapts scalar imports and owned byte frames.
"""

import sys
from ros.py.transport import Capability, pause_ms


def encode_text(text, maximum):
    """@brief Encode one entire strict UTF-8 field without NUL.

    @param text Original Python str. @param maximum Explicit inclusive byte quota.
    @return Whole owned length-prefixed bytes; invalid values raise ValueError.
    """
    if type(text) is not str or "\0" in text:
        raise ValueError("strict original text required")
    raw = text.encode("utf-8", "strict")
    if len(raw) > maximum:
        raise ValueError("original text exceeds the explicit admission quota")
    return len(raw).to_bytes(4, "little") + raw


def decode_text(raw, maximum):
    """@brief Decode exactly one whole length-prefixed field transactionally.

    @param raw Complete immutable canonical bytes. @param maximum Explicit quota.
    @return Whole owned str; truncation, trailing input or domain errors raise ValueError.
    """
    if type(raw) is not bytes or not 4 <= len(raw) <= maximum + 4:
        raise ValueError("whole bounded canonical text required")
    count = int.from_bytes(raw[:4], "little")
    if count > maximum or count != len(raw) - 4 or b"\0" in raw[4:]:
        raise ValueError("invalid complete canonical text")
    return raw[4:].decode("utf-8", "strict")


class StringValue:
    """@brief Own the complete original std_msgs String data field."""

    __slots__ = ("data",)

    def __init__(self, data=""):
        """@brief Construct one local value. @param data Whole original field; encoding validates it."""
        self.data = data

    def encode(self):
        """@brief Validate the entire original record. @return Owned canonical bytes or ValueError."""
        return encode_text(self.data, 252)

    @classmethod
    def decode(cls, raw):
        """@brief Decode a whole original record. @param raw Complete bytes. @return Owned StringValue."""
        return cls(decode_text(raw, 252))


class TriggerResponse:
    """@brief Own both original Trigger response fields; the original request is empty."""

    __slots__ = ("success", "message")

    def __init__(self, success=False, message=""):
        """@brief Construct original local fields. @param success Original bool. @param message Whole text."""
        self.success, self.message = success, message

    def encode(self):
        """@brief Encode both original fields, retaining false. @return Whole owned bytes or ValueError."""
        if type(self.success) is not bool:
            raise ValueError("original boolean required")
        return bytes((int(self.success),)) + encode_text(self.message, 251)

    @classmethod
    def decode(cls, raw):
        """@brief Decode both original fields transactionally.

        @param raw Whole immutable canonical response. @return Owned complete TriggerResponse.
        @details Noncanonical booleans, text or lengths raise ValueError without partial values.
        """
        if type(raw) is not bytes or not 5 <= len(raw) <= 256 or raw[0] > 1:
            raise ValueError("whole canonical Trigger response required")
        return cls(raw[0] == 1, decode_text(raw[1:], 251))


def outcome():
    """@brief Allocate ordinary result facts without acquiring authority. @return Owned dictionary."""
    return dict(
        primary=0,
        cleanup=0,
        cleanup_present=False,
        rpc_status=0,
        rpc_present=False,
        response_present=False,
        length=(1 << 64) - 1,
        wire_hex="",
        value=None,
    )


def run(operation, alias):
    """@brief Execute one finite original operation and retire an acquired owner once.

    @param operation Exactly 1 publish, 2 subscribe, or 3 service.call.
    @param alias Existing exact policy alias, synchronously borrowed.
    @return Whole typed value, wire and independent primary/RPC/length/cleanup facts.
    @details Publication schedules two samples a discovery second apart; no failed
    effect is replayed. Only idle 11 permits another of at most 250 polls. Ordinary
    Python exceptions retire the acquired owner in finally before propagating.
    """
    result = outcome()
    if type(operation) is not int or operation not in (1, 2, 3):
        result["primary"] = 22
        return result
    publication = StringValue("hello native ROS").encode() if operation == 1 else b""
    if publication:
        result["wire_hex"] = publication.hex()
    owner, result["primary"] = Capability.open(alias)
    if owner is None:
        return result
    try:
        if operation == 1:
            result["rpc_present"] = True
            result["rpc_status"] = owner.invoke("topic_publish", publication)[0]
            result["primary"] = result["rpc_status"]
            if result["primary"] == 0:
                result["primary"] = pause_ms(1000)
            if result["primary"] == 0:
                result["rpc_status"] = owner.invoke("topic_publish", publication)[0]
                result["primary"] = result["rpc_status"]
            if result["primary"] == 0:
                result["primary"] = pause_ms(200)
        else:
            if operation == 2:
                result["primary"] = owner.invoke("topic_subscribe")[0]
            if result["primary"] == 0:
                frame = None
                for attempt in range(250 if operation == 2 else 1):
                    frame = owner.invoke(
                        "event_poll" if operation == 2 else "service_call", b"", 256
                    )
                    result["rpc_present"], result["rpc_status"] = True, frame[0]
                    result["length"] = (1 << 64) - 1 if frame[2] is None else frame[2]
                    result["primary"] = frame[0]
                    if operation != 2 or frame[0] != 11 or attempt == 249:
                        break
                    result["primary"] = pause_ms(20)
                    if result["primary"] != 0:
                        break
                if result["primary"] == 0:
                    try:
                        if frame[2] != len(frame[1]) or len(frame[1]) > 256:
                            raise ValueError(
                                "original length disagrees with whole response"
                            )
                        value = (
                            StringValue if operation == 2 else TriggerResponse
                        ).decode(frame[1])
                        result["wire_hex"] = value.encode().hex()
                        result["value"], result["response_present"] = value, True
                        if operation == 3 and not value.success:
                            result["primary"] = 5
                    except ValueError:
                        result["primary"] = 22
    finally:
        result["cleanup_present"], result["cleanup"] = True, owner.close()
    return result


def report(result):
    """@brief Emit complete safe-ASCII diagnostics after explicit cleanup.

    @param result Whole owned result. @return First primary, cleanup or stdout status, clamped for exit.
    @details The lossless canonical hex retains every Unicode field byte. Decimal
    u64 length is quoted, preserving its full range across diagnostic consumers.
    """
    keys = (
        "primary",
        "cleanup",
        "cleanup_present",
        "rpc_status",
        "rpc_present",
        "response_present",
    )
    fields = ['"' + key + '":' + str(int(result[key])) for key in keys]
    fields += [
        '"length":"' + str(result["length"]) + '"',
        '"wire_hex":"' + result["wire_hex"] + '"',
    ]
    code = result["primary"] or result["cleanup"]
    try:
        sys.stdout.write("{" + ",".join(fields) + "}\n")
        sys.stdout.flush()
    except OSError:
        code = code or 5
    return min(code, 125)
