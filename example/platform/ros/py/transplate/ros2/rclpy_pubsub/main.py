"""Qualification guest: ROS query/callback and WASI I/O all run in CPython/Wasm.

The supervisor must additionally validate the real VM/host audit and native
effects. Guest stdout alone does not establish permission or simulation PASS.
"""
import errno
import json
import time
import sys
import rclpy
from rclpy.context import Context, AliasBinding
from rclpy.node import Node
from rclpy.qos import QoSProfile
from roswasm import RosError, codecs
from std_msgs.msg import String


def record(event, **values):
    print(json.dumps({"format": "python-wasm-query-callback-fileio-v1",
                      "event": event, **values}, sort_keys=True), file=sys.stderr)


def digest(data):
    value = 0xcbf29ce484222325
    for byte in data:
        value = ((value ^ byte) * 0x100000001b3) & 0xffffffffffffffff
    return format(value, "016x")


def topic_rows(payload):
    # Raw ROS ABI v1 returns one canonical String containing sorted unique
    # name<TAB>type<LF> rows. This is guest decoding, not host graph processing.
    text = codecs.String.decode(payload)
    if text == "":
        return {}
    if not text.endswith("\n"):
        raise ValueError("graph rows must end with LF")
    topics = {}
    previous = None
    for row in text[:-1].split("\n"):
        if row.count("\t") != 1 or "\r" in row or "\0" in row:
            raise ValueError("malformed canonical graph row")
        name, native_type = row.split("\t")
        if not name.startswith("/") or not native_type:
            raise ValueError("graph topic/type identity missing")
        if any(character.isspace() for character in name + native_type):
            raise ValueError("graph names/types must not contain whitespace")
        key = row.encode("utf-8")
        if previous is not None and previous >= key:
            raise ValueError("graph rows are not sorted unique original rows")
        previous = key
        topics.setdefault(name, []).append(native_type)
    return topics


def main():
    context = Context()
    qos = QoSProfile(depth=10)
    topic = "/migration/echo"
    context.configure({
        ("topic_publish", topic, "std_msgs/msg/String"):
            AliasBinding("migration.string.publish", qos),
        ("topic_subscribe", topic, "std_msgs/msg/String"):
            AliasBinding("migration.string.subscribe", qos, 4096),
        # Presence in this local map allows a real capability_open attempt. It
        # does not grant the denied alias; the real runtime must refuse it.
        ("topic_publish", "/migration/denied", "std_msgs/msg/String"):
            AliasBinding("migration.denied.publish", qos),
    })
    rclpy.init(context=context)
    node = None
    primary = None
    completed = False
    try:
        node = Node("wasm_query_callback_fileio", context=context,
                    enable_rosout=False, start_parameter_services=False)
        nonce = "wasm-guest-" + str(time.monotonic_ns())
        expected = nonce.encode("ascii")
        received = []

        def callback(message):
            if message.data == nonce:
                received.append(message.data)

        try:
            node.create_publisher(String, "/migration/denied", qos)
        except RosError as error:
            if error.error != 13:
                raise
            record("ros_denial_observed", errno=error.error)
        else:
            raise RuntimeError("runtime admitted an intentionally ungranted ROS alias")

        accepted_denials = {errno.EACCES, errno.EPERM}
        not_capable = getattr(errno, "ENOTCAPABLE", None)
        if type(not_capable) is int:
            accepted_denials.add(not_capable)
        try:
            # The runtime must expose this preopen with read-only authority so
            # this reaches its checked path_open boundary. A missing preopen or
            # merely a native read-only filesystem cannot prove VM denial.
            with open("/readonly/denied.bin", "wb") as stream:
                stream.write(b"UNAUTHORIZED")
        except OSError as error:
            if error.errno not in accepted_denials:
                raise
            record("file_denial_observed", errno=error.errno)
        else:
            raise RuntimeError("runtime admitted an intentionally denied file write")

        subscription = node.create_subscription(String, topic, callback, qos)
        publisher = node.create_publisher(String, topic, qos)
        for _ in range(200):
            publisher.publish(String(data=nonce))
            rclpy.spin_once(node, timeout_sec=0)
            if received:
                break
            time.sleep(0.01)
        if not received:
            raise TimeoutError("required reverse native-to-Wasm callback missing")
        record("callback_observed", text=nonce, payload_hex=codecs.String.encode(received[0]).hex(),
               bytes=len(expected), fnv1a64=digest(expected))

        # Explicit SDK capability API extension, not a claim that the complete
        # upstream Node discovery API is ported. This invokes the same versioned
        # controlled ROS ABI inside this Wasm instance.
        graph = context.session.open("migration.graph.topics")
        result = graph.invoke("graph_list_topics", b"", 65536).checked()
        topics = topic_rows(result.data)
        if "std_msgs/msg/String" not in topics.get(topic, []):
            raise RuntimeError("real native graph query lacks the published topic/type")
        record("graph_query_observed", topic_count=len(topics),
               response_bytes=len(result.data), payload_hex=result.data.hex(), fnv1a64=digest(result.data))
        retired_handle = graph.handle
        graph.close().checked()
        # Deliberately reach the real Wasm import after close. Calling the
        # retired Python wrapper would only exercise its local guard.
        stale = context.session.backend.invoke(
            "graph_list_topics", retired_handle, b"", 65536)
        if stale.error != 9:
            raise RuntimeError("the real runtime did not reject a closed graph handle with EBADF")
        record("stale_handle_observed", errno=stale.error, retired_handle=retired_handle)

        path = "/workspace/python-wasm-roundtrip.bin"
        with open(path, "wb") as stream:
            count = stream.write(expected)
            if count != len(expected):
                raise OSError("short guest file write")
        with open(path, "rb") as stream:
            actual = stream.read(len(expected) + 1)
        if actual != expected:
            raise RuntimeError("guest file roundtrip differs")
        record("file_roundtrip_observed", payload_hex=actual.hex(),
               bytes=len(actual), fnv1a64=digest(actual))

        # Close real resources, then test both wrapper behavior and the raw
        # import. The latter must be audited independently for no forwarding.
        class ClosedCodecProbe:
            def __init__(self, original):
                self.original = original
                self.calls = 0

            def encode(self, message):
                self.calls += 1
                return self.original.encode(message)

        raw_publisher = publisher._resource
        probe = ClosedCodecProbe(raw_publisher.codec)
        raw_publisher.codec = probe
        retired_publisher = raw_publisher.owner.handle
        if not node.destroy_publisher(publisher):
            raise RuntimeError("the live publisher was not destroyed")
        try:
            publisher.publish(String(data="forbidden-after-close"))
        except RosError as error:
            if error.error != 9:
                raise
        else:
            raise RuntimeError("closed publisher did not refuse the operation")
        if probe.calls != 0:
            raise RuntimeError("closed publisher called an observable encoder")
        stale_publish = context.session.backend.invoke(
            "topic_publish", retired_publisher, codecs.String.encode(nonce))
        if stale_publish.error != 9:
            raise RuntimeError("the real runtime forwarded a closed publisher handle")
        record("closed_publisher_observed", errno=9, encoder_calls=probe.calls,
               retired_handle=retired_publisher)

        retired_subscription = subscription.owner.handle
        callback_count = len(received)
        if not node.destroy_subscription(subscription):
            raise RuntimeError("the live subscription was not destroyed")
        if subscription.poll_once().error != 9:
            raise RuntimeError("closed subscription did not refuse polling")
        stale_poll = context.session.backend.invoke(
            "event_poll", retired_subscription, b"", 4096)
        if stale_poll.error != 9 or len(received) != callback_count:
            raise RuntimeError("closed subscription polled natively or dispatched a callback")
        record("closed_subscription_observed", errno=9,
               callback_count=callback_count, retired_handle=retired_subscription)

        record("guest_steps_complete", native_audit_and_no_effect_oracle="REQUIRED",
               official_simulation_qualified=False)
        completed = True
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
            primary.roswasm_guest_cleanup = tuple(cleanup)
    if not completed:
        raise RuntimeError("required guest assertions did not complete")
    print(json.dumps({'format': 'uwvm-python-wasm-business-assertions-v1', 'status': 'GUEST_ASSERTIONS_COMPLETE', 'assertions': ['ros-denied-open13', 'wasip1-denied-write', 'fresh-string-publish-reverse-callback', 'canonical-native-graph-query', 'closed-handle-runtime-denial9', 'wasip1-file-roundtrip', 'closed-publisher-no-encode-or-publish', 'closed-subscription-no-poll-or-callback'], 'native_audit_required': True, 'official_ROS_and_isolation_qualified': False}, sort_keys=True))


if __name__ == "__main__":
    main()
