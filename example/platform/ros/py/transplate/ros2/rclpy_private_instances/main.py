"""Real guest consumers for a two-instance candidate, never script isolation.

The role argument selects behavior only. The Runtime must instantiate the same
whole Wasm twice with private memories and actual independent grants. Existing
ROS2 typed copies are a transport candidate; they do not replace the unpublished
SDK01 concrete component/deployment/channel ABI or its native ownership proof.
"""
import json
import sys
import time
import rclpy
from rclpy.context import Context, AliasBinding
from rclpy.node import Node
from rclpy.qos import QoSProfile
from roswasm import RosError
from std_msgs.msg import String
from _roswasm_native import (
    private_memory_probe_snapshot, private_memory_probe_write,
    private_memory_probe_grow, private_memory_probe_fold,
)


def probe(role):
    pattern = bytes((49 if role == "reader" else 114,)) * 64
    private_memory_probe_write(pattern)
    offset, observed_pages, actual = private_memory_probe_snapshot()
    if actual != pattern:
        raise RuntimeError("real private Wasm sentinel write/read failed")
    delta = 1 if role == "reader" else 2
    old = private_memory_probe_grow(delta)
    next_offset, pages, actual = private_memory_probe_snapshot()
    if old < observed_pages or pages < old + delta or next_offset != offset or actual != pattern:
        raise RuntimeError("real memory.grow changed the private pointer/sentinel or failed")
    return {"offset":offset, "initial_pages":observed_pages,
            "grow_return":old, "pages":pages, "pattern":pattern}


def intact(local):
    offset, pages, actual = private_memory_probe_snapshot()
    if offset != local["offset"] or pages < local["pages"] or actual != local["pattern"]:
        raise RuntimeError("the peer's work changed this private sentinel/backing")


def decode(text, keys):
    if not isinstance(text, str) or len(text.encode("utf-8")) > 2048:
        raise ValueError("bounded copied application String required")
    def unique(pairs):
        result = {}
        for key, value in pairs:
            if key in result:
                raise ValueError("duplicate application message field")
            result[key] = value
        return result
    value = json.loads(text, object_pairs_hook=unique,
        parse_constant=lambda value: (_ for _ in ()).throw(ValueError(value)))
    if type(value) is not dict or set(value) != set(keys):
        raise ValueError("exact application fields required")
    if not isinstance(value["run"], str) or not 1 <= len(value["run"]) <= 64:
        raise ValueError("bounded fresh official-peer run token required")
    return value


def receive(node, rows, keys):
    for _ in range(200):
        rclpy.spin_once(node, timeout_sec=0)
        if rows:
            return decode(rows.pop(0), keys)
        time.sleep(0.01)
    raise TimeoutError("required actual typed ROS copy/feedback missing")


def emit(publisher, value):
    publisher.publish(String(data=json.dumps(value, sort_keys=True)))


def require_denied(operation):
    try:
        operation()
    except RosError as error:
        if error.error != 13:
            raise
    else:
        raise RuntimeError("the actual caller acquired the peer-only alias")


def business(role):
    context = Context()
    qos = QoSProfile(depth=10)
    prefix = "/migration/isolation/"
    configuration = {}
    def binding(operation, topic, alias):
        configuration[(operation, prefix + topic, "std_msgs/msg/String")] = AliasBinding(alias, qos, 4096)
    if role == "reader":
        binding("topic_subscribe", "input", "isolation.reader.input")
        binding("topic_publish", "intent", "isolation.reader.intent")
        binding("topic_subscribe", "ack", "isolation.reader.ack")
        binding("topic_publish", "command", "isolation.actuator.command")
    else:
        binding("topic_subscribe", "intent", "isolation.actuator.intent")
        binding("topic_publish", "command", "isolation.actuator.command")
        binding("topic_subscribe", "feedback", "isolation.actuator.feedback")
        binding("topic_publish", "ack", "isolation.actuator.ack")
        binding("topic_subscribe", "input", "isolation.reader.input")
    context.configure(configuration)
    rclpy.init(context=context)
    node = None
    primary = None
    try:
        # Deliberately identical logical node name. It must never merge grants.
        node = Node("wasm_shared_logical_node", context=context,
                    enable_rosout=False, start_parameter_services=False)
        local = probe(role)
        if role == "reader":
            require_denied(lambda: node.create_publisher(String, prefix + "command", qos))
            try:
                with open("/actuator-only/forbidden.bin", "wb") as stream:
                    stream.write(b"UNAUTHORIZED")
            except OSError as error:
                if error.errno not in (1, 13, 76):
                    raise
            else:
                raise RuntimeError("reader acquired the actuator-only file right")
            inputs, acknowledgements = [], []
            node.create_subscription(String, prefix + "input", lambda m: inputs.append(m.data), qos)
            node.create_subscription(String, prefix + "ack", lambda m: acknowledgements.append(m.data), qos)
            intent = node.create_publisher(String, prefix + "intent", qos)
            source = receive(node, inputs, ("run", "sample"))
            if type(source["sample"]) is not int or not 0 <= source["sample"] <= 100:
                raise ValueError("bounded sensor sample required")
            guest_nonce = source["run"] + ":" + str(time.monotonic_ns())
            # Ordinary bounded C pointer computation stays in this same heap.
            command = private_memory_probe_fold(bytes((source["sample"], 3, 1)))
            emit(intent, {"run":source["run"], "guest_nonce":guest_nonce,
                          "sample":source["sample"], "command":command,
                          "probe_offset":local["offset"]})
            ack = receive(node, acknowledgements, ("run", "guest_nonce", "applied", "probe_offset"))
            if (ack["run"] != source["run"] or ack["guest_nonce"] != guest_nonce
                or type(ack["applied"]) is not int or ack["applied"] != command
                or ack["probe_offset"] != local["offset"]):
                raise RuntimeError("fresh actuator feedback or identical-artifact layout differs")
        else:
            require_denied(lambda: node.create_subscription(String, prefix + "input", lambda m: None, qos))
            intents, feedbacks = [], []
            node.create_subscription(String, prefix + "intent", lambda m: intents.append(m.data), qos)
            node.create_subscription(String, prefix + "feedback", lambda m: feedbacks.append(m.data), qos)
            command_publisher = node.create_publisher(String, prefix + "command", qos)
            ack_publisher = node.create_publisher(String, prefix + "ack", qos)
            item = receive(node, intents, ("run", "guest_nonce", "sample", "command", "probe_offset"))
            if (type(item["sample"]) is not int or not 0 <= item["sample"] <= 100
                or type(item["command"]) is not int or item["command"] != item["sample"] + 9
                or not isinstance(item["guest_nonce"], str) or not 1 <= len(item["guest_nonce"]) <= 128
                or type(item["probe_offset"]) is not int or item["probe_offset"] != local["offset"]):
                raise ValueError("bounded authorized intent and same-artifact sentinel offset required")
            intact(local)
            emit(command_publisher, {"run":item["run"], "guest_nonce":item["guest_nonce"], "command":item["command"]})
            actual = receive(node, feedbacks, ("run", "guest_nonce", "applied"))
            if (actual["run"] != item["run"] or actual["guest_nonce"] != item["guest_nonce"]
                or type(actual["applied"]) is not int or actual["applied"] != item["command"]):
                raise RuntimeError("real official ROS result did not match this actual guest request")
            payload = json.dumps(actual, sort_keys=True).encode("utf-8")
            with open("/actuator-only/receipt.bin", "wb") as stream:
                if stream.write(payload) != len(payload):
                    raise OSError("short genuine guest receipt write")
            with open("/actuator-only/receipt.bin", "rb") as stream:
                if stream.read(len(payload) + 1) != payload:
                    raise RuntimeError("genuine actuator guest file roundtrip differs")
            intact(local)
            emit(ack_publisher, {"run":actual["run"], "guest_nonce":actual["guest_nonce"],
                                "applied":actual["applied"], "probe_offset":local["offset"]})
        intact(local)
        print(json.dumps({"event":"private_consumer_steps_observed", "behavior_role":role,
                          "behavior_role_is_authority":False, "private_probe_offset":local["offset"],
                          "grow_return":local["grow_return"], "pages":local["pages"],
                          "native_instance_backing_grants_audit_required":True}, sort_keys=True), file=sys.stderr)
    except BaseException as error:
        primary = error
        raise
    finally:
        cleanup = []
        try:
            if node is not None:
                node.destroy_node()
        except BaseException as error:
            cleanup.append(error)
        try:
            rclpy.shutdown(context=context)
        except BaseException as error:
            cleanup.append(error)
        if cleanup:
            if primary is None:
                raise cleanup[0]
            primary.private_consumer_cleanup = tuple(cleanup)
    print(json.dumps({"format":"uwvm-python-private-consumer-observation-v1",
                      "status":"GUEST_STEPS_COMPLETE", "behavior_role":role,
                      "runtime_isolation_qualified":False}, sort_keys=True))


def main():
    if len(sys.argv) != 2 or sys.argv[1] not in ("reader", "actuator", "probe-only"):
        raise ValueError("select one behavior for this separately instantiated actual Wasm")
    role = sys.argv[1]
    if role == "probe-only":
        local = probe("reader")
        if private_memory_probe_fold(bytes((7, 3, 1))) != 16:
            raise RuntimeError("ordinary private C pointer algorithm differs")
        intact(local)
        print(json.dumps({"format":"uwvm-python-private-memory-self-probe-v1",
                          "status":"GUEST_SELF_PROBE_COMPLETE",
                          "independent_instances_qualified":False}, sort_keys=True))
        return
    business(role)


if __name__ == "__main__":
    main()
