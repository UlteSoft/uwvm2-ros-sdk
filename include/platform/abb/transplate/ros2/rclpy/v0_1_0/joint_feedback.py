# SPDX-License-Identifier: Apache-2.0
"""Guest-only JointState decoding and bounded rclpy feedback collection.

The same source is intended for the owned vendor bindings. Configuration grants
no authority. This component neither sends goals nor proves full simulation.
"""
import sys

if sys.platform != "wasi" or sys.implementation.name != "cpython":
    raise RuntimeError("BLOCKED_REQUIRED_REAL_CPYTHON_INSIDE_WASM")

import json
import math
from roswasm import codecs

MAX_JOINTS = 64
MAX_WIRE = 65536
CASE_IDS = (
    "canonical_encode", "canonical_decode", "optional_vectors",
    "reject_truncated", "reject_trailing", "reject_nanosecond_range",
    "reject_nonfinite", "reject_count_overflow", "named_projection_freshness",
)
FIXED_WIRE = bytes.fromhex(
    "01000000" "02000000" "04000000" "62617365"
    "02000000" "02000000" "4a31" "02000000" "4a32"
    "02000000" "0000000000000000" "000000000000f83f"
    "00000000" "00000000"
)


def check(condition, message):
    if not condition:
        raise AssertionError(message)


def rejected(function):
    try:
        function()
    except ValueError:
        return
    raise AssertionError("invalid canonical value was accepted")


def text_field(reader, maximum):
    count = reader.integer(4)
    if count > maximum:
        raise ValueError("bounded UTF-8 field exceeded")
    return reader.take(count).decode("utf-8", "strict")


def vector(reader, element):
    count = reader.integer(4)
    if count > MAX_JOINTS:
        raise ValueError("bounded JointState sequence exceeded")
    return [element(reader) for _ in range(count)]


class Time:
    __slots__ = ("sec", "nanosec")

    def __init__(self, *, sec=0, nanosec=0):
        self.sec, self.nanosec = sec, nanosec
        self.validate()

    def validate(self):
        if (type(self.sec) is not int or not -(1 << 31) <= self.sec < (1 << 31)
                or type(self.nanosec) is not int or not 0 <= self.nanosec < 1000000000):
            raise ValueError("ROS Time requires int32 seconds and 0..999999999 nanoseconds")

    def as_nanoseconds(self):
        self.validate()
        return self.sec * 1000000000 + self.nanosec


class Header:
    __slots__ = ("stamp", "frame_id")

    def __init__(self, *, stamp=None, frame_id=""):
        self.stamp = Time() if stamp is None else stamp
        self.frame_id = frame_id


class JointState:
    """Complete fields in the bounded finite canonical-wire guest profile.

    These are SDK guest classes, not host rosidl capsules or unmodified upstream
    generated Python. Wire bytes are the controlled ABI's canonical LE encoding,
    not DDS CDR. Actual native schema/codec interoperability remains unqualified.
    """
    __slots__ = ("header", "name", "position", "velocity", "effort", "_wire")
    _ROSWASM_TYPE = "sensor_msgs/msg/JointState"

    def __init__(self, *, header=None, name=None, position=None, velocity=None, effort=None):
        self.header = Header() if header is None else header
        self.name = [] if name is None else list(name)
        self.position = [] if position is None else list(position)
        self.velocity = [] if velocity is None else list(velocity)
        self.effort = [] if effort is None else list(effort)
        self._wire = None

    def validate(self):
        if not isinstance(self.header, Header) or not isinstance(self.header.stamp, Time):
            raise ValueError("complete Header/Time required")
        self.header.stamp.validate()
        if not isinstance(self.header.frame_id, str) or len(self.header.frame_id.encode("utf-8")) > 256:
            raise ValueError("bounded Header.frame_id required")
        if len(self.name) > MAX_JOINTS:
            raise ValueError("JointState.name bound")
        for name in self.name:
            if not isinstance(name, str) or not name or "\0" in name or len(name.encode("utf-8")) > 128:
                raise ValueError("bounded exact nonempty joint name required")
        if len(set(self.name)) != len(self.name):
            raise ValueError("duplicate JointState name")
        for values in (self.position, self.velocity, self.effort):
            if len(values) not in (0, len(self.name)):
                raise ValueError("JointState arrays must match name or be empty")
            for value in values:
                if type(value) not in (int, float) or not math.isfinite(value):
                    raise ValueError("finite canonical JointState value required")

    @staticmethod
    def _encode(message):
        if not isinstance(message, JointState):
            raise TypeError("complete guest JointState required")
        message.validate()
        writer = codecs.Writer(MAX_WIRE)
        writer.integer(message.header.stamp.sec, 4, True)
        writer.integer(message.header.stamp.nanosec, 4).text(message.header.frame_id)
        writer.integer(len(message.name), 4)
        for name in message.name:
            writer.text(name)
        for values in (message.position, message.velocity, message.effort):
            writer.integer(len(values), 4)
            for value in values:
                writer.f64(value)
        return writer.finish()

    @staticmethod
    def _decode(data):
        if not isinstance(data, bytes) or len(data) > MAX_WIRE:
            raise ValueError("bounded complete canonical JointState bytes required")
        reader = codecs.Reader(data)
        stamp = Time(sec=reader.integer(4, True), nanosec=reader.integer(4))
        header = Header(stamp=stamp, frame_id=text_field(reader, 256))
        names = vector(reader, lambda value: text_field(value, 128))
        arrays = [vector(reader, lambda value: value.f64()) for _ in range(3)]
        reader.end()
        message = JointState(header=header, name=names,
                             position=arrays[0], velocity=arrays[1], effort=arrays[2])
        message.validate()
        message._wire = data
        return message


def fnv1a64(data):
    """A supplementary guest checksum, never cryptographic provenance/audit."""
    result = 14695981039346656037
    for value in data:
        result = ((result ^ value) * 1099511628211) & 0xFFFFFFFFFFFFFFFF
    return format(result, "016x")


class FeedbackTracker:
    def __init__(self, required_names, allowed_extra_names=(), required_samples=2):
        names = list(required_names)
        extra = list(allowed_extra_names)
        if (not names or len(names) + len(extra) > MAX_JOINTS
                or any(not isinstance(value, str) or not value or "\0" in value
                       or len(value.encode("utf-8")) > 128 for value in names + extra)
                or len(set(names + extra)) != len(names + extra)
                or type(required_samples) is not int or not 2 <= required_samples <= 16):
            raise ValueError("explicit distinct joint names and bounded sample count required")
        self.required_names, self.allowed = tuple(names), frozenset(names + extra)
        self.required_samples = required_samples
        self.last_stamp = self.last_receipt = None
        self.receipts = []

    def project(self, message):
        message.validate()
        if len(message.position) != len(message.name):
            raise ValueError("position feedback must contain every named joint")
        if not set(message.name).issubset(self.allowed):
            raise ValueError("unbound extra joint name; filtering creates no permission")
        index = {name: offset for offset, name in enumerate(message.name)}
        if any(name not in index for name in self.required_names):
            raise ValueError("required original joint name missing")
        return tuple(message.position[index[name]] for name in self.required_names)

    def push(self, message, received_ns):
        if len(self.receipts) >= self.required_samples:
            raise ValueError("bounded feedback sample budget already complete")
        self.project(message)
        stamp = message.header.stamp.as_nanoseconds()
        if type(received_ns) is not int or received_ns < 0:
            raise ValueError("actual guest monotonic receipt required")
        if self.last_stamp is not None and stamp <= self.last_stamp:
            raise ValueError("stale/repeated/regressed ROS stamp; new epoch binding required")
        if self.last_receipt is not None and received_ns <= self.last_receipt:
            raise ValueError("guest receipt clock did not advance")
        encoded = JointState._encode(message)
        if message._wire is not None and message._wire != encoded:
            raise ValueError("decoded fields changed before their callback receipt")
        wire = message._wire if message._wire is not None else encoded
        self.receipts.append({"ros_stamp_ns": stamp, "guest_receipt_ns": received_ns,
                              "canonical_bytes": len(wire), "guest_fnv1a64": fnv1a64(wire),
                              "required_joint_count": len(self.required_names)})
        self.last_stamp, self.last_receipt = stamp, received_ns
        return len(self.receipts) >= self.required_samples


def codec_selftest():
    """Execute real positive/boundary assertions inside the compiled Python Wasm."""
    def sample():
        return JointState(header=Header(stamp=Time(sec=1, nanosec=2), frame_id="base"),
                          name=["J1", "J2"], position=[0.0, 1.5])

    def encode():
        check(JointState._encode(sample()) == FIXED_WIRE, "canonical bytes differ from fixed independent vector")

    def decode():
        value = JointState._decode(FIXED_WIRE)
        check(value.name == ["J1", "J2"] and value.position == [0.0, 1.5]
              and value.header.stamp.sec == 1 and value.header.stamp.nanosec == 2
              and value.header.frame_id == "base", "complete decoded fields differ")

    def optional():
        value = sample()
        value.velocity, value.effort = [0.25, -0.5], [1.0, -2.0]
        result = JointState._decode(JointState._encode(value))
        check(result.velocity == value.velocity and result.effort == value.effort,
              "optional full vectors lost fields")

    def truncated():
        for size in range(len(FIXED_WIRE)):
            rejected(lambda size=size: JointState._decode(FIXED_WIRE[:size]))

    def nanoseconds():
        rejected(lambda: Time(nanosec=1000000000))
        rejected(lambda: JointState._decode(FIXED_WIRE[:4] + bytes.fromhex("00ca9a3b") + FIXED_WIRE[8:]))

    def nonfinite():
        rejected(lambda: JointState._decode(FIXED_WIRE[:36] + bytes.fromhex("000000000000f87f") + FIXED_WIRE[44:]))

    def overflow():
        rejected(lambda: JointState._decode(FIXED_WIRE[:16] + bytes.fromhex("41000000") + FIXED_WIRE[20:]))

    def projection():
        tracker = FeedbackTracker(["J1", "J2"])
        value = sample()
        value.name, value.position = ["J2", "J1"], [1.5, 0.0]
        check(tracker.project(value) == (0.0, 1.5), "joint index was substituted for exact original name")
        check(not tracker.push(value, 100), "single sample was treated as fresh multi-sample evidence")
        rejected(lambda: tracker.push(value, 101))
        value.header.stamp.nanosec = 3
        rejected(lambda: tracker.push(value, 100))
        check(tracker.push(value, 102), "second fresh sample not retained")
        value.name = ["J1", "J1"]
        rejected(lambda: tracker.project(value))
        value.name = ["J1", "foreign"]
        rejected(lambda: tracker.project(value))
        value.name, value.position = ["J1", "J2"], []
        rejected(lambda: tracker.project(value))

    functions = (encode, decode, optional, truncated,
                 lambda: rejected(lambda: JointState._decode(FIXED_WIRE + b"\0")),
                 nanoseconds, nonfinite, overflow, projection)
    check(len(functions) == len(CASE_IDS), "required guest case table is incomplete")
    results = []
    for name, function in zip(CASE_IDS, functions):
        print("SDK02_GUEST_CASE:" + json.dumps({
            "format": "sdk02-guest-case-event-v1", "phase": "start", "id": name,
        }), flush=True)
        result = {"id": name, "status": "PASS"}
        try:
            function()
        except Exception as error:
            result.update(status="FAIL", diagnostic=(type(error).__name__ + ": " + str(error))[:256])
        results.append(result)
        print("SDK02_GUEST_CASE:" + json.dumps({
            "format": "sdk02-guest-case-event-v1", "phase": "finish", **result,
        }), flush=True)
    failed = sum(value["status"] == "FAIL" for value in results)
    print("SDK02_GUEST_COMPONENT:" + json.dumps({
        "format": "sdk02-joint-feedback-guest-cases-v1", "scope": "canonical-codec-and-local-binding-only",
        "status": "FAIL" if failed else "PASS", "selected": len(CASE_IDS),
        "started": len(results), "executed": len(results), "passed": len(results) - failed,
        "failed": failed, "blocked": 0, "not_run": 0, "unfinished": 0, "skipped": 0,
        "cases": results, "ROS_native_or_official_simulation_qualified": False,
    }), flush=True)
    return failed == 0


def observe(configuration):
    import time
    import rclpy
    from rclpy.context import Context, AliasBinding
    from rclpy.node import Node
    from rclpy.qos import QoSProfile, ReliabilityPolicy, DurabilityPolicy, HistoryPolicy
    from roswasm import RosError

    if (not isinstance(configuration, dict)
            or configuration.get("format") != "sdk02-joint-feedback-execution-v1"
            or configuration.get("guest_profile") != "rclpy-jazzy-pubsub-v1"
            or configuration.get("position_unit") != "rad"
            or configuration.get("mode") not in ("observe", "deny")):
        raise ValueError("reviewed Jazzy guest API feedback configuration required")
    topic, alias = configuration["topic"], configuration["alias"]
    if (not isinstance(topic, str) or not topic.startswith("/") or "\0" in topic
            or len(topic.encode("utf-8")) > 1024
            or not isinstance(alias, str) or not alias or "\0" in alias
            or len(alias.encode("utf-8")) > 512):
        raise ValueError("explicit topic and independently granted alias required")
    polls = configuration["maximum_polls"]
    if type(polls) is not int or not 1 <= polls <= 2000:
        raise ValueError("finite poll bound required")
    profile = configuration["qos"]
    qos = QoSProfile(depth=profile["depth"], history=HistoryPolicy(profile["history"]),
                     reliability=ReliabilityPolicy(profile["reliability"]),
                     durability=DurabilityPolicy(profile["durability"]))
    tracker = FeedbackTracker(configuration["required_joint_names"],
                              configuration["allowed_extra_joint_names"], configuration["required_samples"])
    context = Context()
    context.configure({("topic_subscribe", topic, JointState._ROSWASM_TYPE): AliasBinding(alias, qos, MAX_WIRE)})
    node = None
    initialized = False
    primary = None
    try:
        rclpy.init(context=context)
        initialized = True
        node = Node("joint_feedback_component", context=context,
                    enable_rosout=False, start_parameter_services=False)

        def callback(message):
            tracker.push(message, time.monotonic_ns())

        try:
            node.create_subscription(JointState, topic, callback, qos)
        except RosError as error:
            if configuration["mode"] != "deny" or error.result.error != 13:
                raise
            print("SDK02_GUEST_FEEDBACK:" + json.dumps({"format": "sdk02-joint-feedback-receipt-v1",
                  "phase": "topic-subscribe-refused", "error": 13,
                  "scope": "guest-reported refusal; actual VM decision/no-native-effect audit still required"}), flush=True)
            return 13
        if configuration["mode"] == "deny":
            raise AssertionError("denied subscription was unexpectedly admitted")
        for _ in range(polls):
            rclpy.spin_once(node, timeout_sec=0)
            if len(tracker.receipts) >= tracker.required_samples:
                print("SDK02_GUEST_FEEDBACK:" + json.dumps({
                    "format": "sdk02-joint-feedback-receipt-v1", "phase": "fresh-guest-callbacks",
                    "samples": tracker.receipts, "scope": "read-only guest feedback component",
                    "post_goal_or_full_simulation_qualified": False,
                    "checksum_is_cryptographic_provenance": False,
                }), flush=True)
                return 0
            time.sleep(0.005)
        raise TimeoutError("no required fresh original JointState callbacks within finite poll budget")
    except BaseException as error:
        primary = error
        raise
    finally:
        failures = []
        if node is not None:
            try:
                node.destroy_node()
            except BaseException as error:
                failures.append(error)
        if initialized:
            try:
                rclpy.shutdown(context=context)
            except BaseException as error:
                failures.append(error)
        if failures:
            cleanup = RuntimeError("guest owner retirement failed: " + "; ".join(str(value) for value in failures))
            if primary is not None:
                raise cleanup from primary
            raise cleanup


def main():
    if sys.argv[1:] == ["--codec-selftest"]:
        return 0 if codec_selftest() else 1
    if len(sys.argv) == 3 and sys.argv[1] == "--feedback" and len(sys.argv[2].encode("utf-8")) <= MAX_WIRE:
        def invalid_constant(value):
            raise ValueError("nonfinite JSON constant: " + value)
        return observe(json.loads(sys.argv[2], parse_constant=invalid_constant))
    raise ValueError("use --codec-selftest or --feedback with one bounded reviewed execution JSON")


if __name__ == "__main__":
    sys.exit(main())
