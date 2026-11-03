"""All ROS1 migration business executes in the genuine Python Wasm instance."""
import json
import sys
import time
import rospy
from rospy import AliasBinding, ROSCapabilityError
from std_msgs.msg import String


def main():
    topic = "/migration/echo"
    rospy.configure({
        ("topic_publish", topic, "std_msgs/String"): AliasBinding("migration.string.publish", capacity=4096),
        ("topic_subscribe", topic, "std_msgs/String"): AliasBinding("migration.string.subscribe", capacity=4096),
        ("topic_publish", "/migration/denied", "std_msgs/String"): AliasBinding("migration.denied.publish"),
        ("graph_list_topics", "/", "builtin/graph-list-v1"): AliasBinding("migration.graph.topics", capacity=65536),
    })
    rospy.init_node("wasm_noetic_echo", disable_rostime=True,
                    disable_rosout=True, disable_signals=True)
    from rospy._state import state
    primary = None
    shutdown = []
    rospy.on_shutdown(lambda: shutdown.append("once"))
    try:
        try:
            rospy.Publisher("/migration/denied", String, queue_size=10)
        except ROSCapabilityError as error:
            if error.error != 13:
                raise
        else:
            raise RuntimeError("the actual ROS1 runtime admitted the ungranted alias")
        nonce = "rospy-wasm-" + str(time.monotonic_ns())
        received = []

        def callback(message):
            if message.data == nonce:
                received.append(message.data)

        subscriber = rospy.Subscriber(topic, String, callback, queue_size=10, buff_size=4096)
        publisher = rospy.Publisher(topic, String, queue_size=10)
        for _ in range(200):
            publisher.publish(String(nonce))
            rospy.spin_once()
            if received:
                break
            time.sleep(0.01)
        if not received:
            raise TimeoutError("the genuine ROS1 reverse callback did not arrive")
        if [topic, "std_msgs/String"] not in rospy.get_published_topics():
            raise RuntimeError("the native ROS1 graph did not return the exact topic/type")
        old_publish = publisher._resource.owner.handle
        old_subscription = subscriber._resource.owner.handle
        publisher.unregister()
        subscriber.unregister()
        try:
            publisher.publish(String("unauthorized-after-close"))
        except rospy.ROSException:
            pass
        else:
            raise RuntimeError("closed rospy publisher did not refuse")
        if state.session.backend.invoke("topic_publish", old_publish,
                String._encode(String(nonce))).error != 9:
            raise RuntimeError("the real ROS1 import accepted a closed publish handle")
        if state.session.backend.invoke("event_poll", old_subscription, b"", 4096).error != 9:
            raise RuntimeError("the real ROS1 import accepted a closed subscription handle")
        if len(received) != 1:
            raise RuntimeError("a closed or duplicate callback changed the guest result")
        print(json.dumps({"event":"rospy_callback_and_graph", "text":nonce,
                          "payload_hex":String._encode(String(nonce)).hex(),
                          "native_audit_required":True}, sort_keys=True), file=sys.stderr)
    except BaseException as error:
        primary = error
        raise
    finally:
        try:
            rospy.signal_shutdown("genuine guest finished")
        except BaseException as cleanup:
            if primary is None:
                raise
            primary.rospy_cleanup = cleanup
    rospy.signal_shutdown("second call must not replay retirement")
    if shutdown != ["once"] or not rospy.is_shutdown():
        raise RuntimeError("guest shutdown callback/lifetime differs")
    print(json.dumps({"format":"uwvm-rospy-wasm-assertions-v1",
                      "status":"GUEST_ASSERTIONS_COMPLETE",
                      "backend":1, "native_audit_required":True,
                      "official_ROS_and_isolation_qualified":False}, sort_keys=True))


if __name__ == "__main__":
    main()
