"""Bounded native ROS evidence from a genuinely running Isaac Sim graph.

This observer never publishes a command. Complete original native CDR messages
are retained, not projected observations or claimed canonical/Wasm messages.
All rclpy imports happen in the explicitly enabled native owner after Kit starts.
"""

import hashlib
import importlib
import json
import os
from pathlib import Path
from roswasm_nvidia_isaac_sim.sensor_graph import TOPIC


# @brief Exact native ROS message classes for each authored sensor kind.
# @details These are native CDR observations, not a canonical Wasm type binding.
# @see NativeObserver.receive
TYPES = {
    "camera_rgb": "sensor_msgs.msg:Image",
    "camera_depth": "sensor_msgs.msg:Image",
    "camera_info": "sensor_msgs.msg:CameraInfo",
    "camera_depth_pointcloud": "sensor_msgs.msg:PointCloud2",
    "lidar_scan": "sensor_msgs.msg:LaserScan",
    "lidar_pointcloud": "sensor_msgs.msg:PointCloud2",
    "imu": "sensor_msgs.msg:Imu",
    "tf": "tf2_msgs.msg:TFMessage",
    "clock": "rosgraph_msgs.msg:Clock",
    "joint_state": "sensor_msgs.msg:JointState",
    "joint_command": "sensor_msgs.msg:JointState",
}


class NativeObserver:
    """@brief Collect complete native ROS CDR evidence from a running Sim graph.

    @details Owns a private rclpy Context, node, single-thread executor and
    subscriptions. Never publishes commands. Call all methods on the constructing
    thread; poll may execute one synchronous serialization/file callback. Actual
    pinned CPython 3.12/Isaac Sim and matching ROS packages are prerequisites;
    this class does not supply them or infer Guest permissions from native access.
    @see native_graph.main
    @see close
    """

    def __init__(
        self, directory, domain, topics, maximum_messages=64, maximum_bytes=64 << 20
    ):
        """@brief Create bounded subscriptions and a fresh evidence directory.

        @details The trusted native owner explicitly admits loopback DDS and file
        creation under its finite work root. The observer uses best-effort,
        volatile, depth-1 readers; actual writer matching is a separate proof.
        Constructor failures attempt independent endpoint/context cleanup before
        propagating. Importing this module alone initializes no ROS resources.
        @param[in] directory Fresh absolute physical directory under the active
        finite owner's work root; existing paths and symlink ancestors are refused.
        @param[in] domain Exact ROS domain in [0,232].
        @param[in] topics Stable mapping of 1..18 distinct absolute topic names
        to keys in TYPES; retained as a private count inventory.
        @param[in] maximum_messages Total messages in [1,64]; each topic also
        receives a fair finite share of this cap.
        @param[in] maximum_bytes Total complete CDR bytes in [1,67108864].
        @return A native observer; ValueError/OSError/dependency/ROS exceptions
        propagate without claiming any Guest or canonical-transport acceptance.
        @see receive
        @see poll
        """
        if (
            type(domain) is not int
            or not 0 <= domain <= 232
            or type(maximum_messages) is not int
            or not 1 <= maximum_messages <= 64
            or type(maximum_bytes) is not int
            or not 1 <= maximum_bytes <= 64 << 20
            or type(topics) is not dict
            or not 1 <= len(topics) <= 18
            or any(
                type(topic) is not str
                or len(topic) > 255
                or TOPIC.fullmatch(topic) is None
                or type(kind) is not str
                or kind not in TYPES
                for topic, kind in topics.items()
            )
        ):
            raise ValueError(
                "explicit finite domain, topic and complete-CDR quotas required"
            )
        self.context = self.node = self.executor = None
        self.closed_result = None
        self.subscriptions = []
        self.samples = []
        self.counts = {topic: 0 for topic in topics}
        self.total_bytes = 0
        self.primary = 0
        self.maximum_messages = maximum_messages
        self.maximum_bytes = maximum_bytes
        self.directory = Path(directory)
        run = Path(os.environ["UWVM_RESOURCE_RUN"]).resolve(strict=True)
        if (
            os.environ.get("UWVM_RESOURCE_HEAVY_LOCK_HELD") != "1"
            or not self.directory.is_absolute()
            or not self.directory.is_relative_to(run / "work")
            or self.directory.exists()
            or self.directory.parent.resolve(strict=True) != self.directory.parent
        ):
            raise ValueError(
                "new physical evidence directory inside the shared finite owner required"
            )
        self.directory.mkdir()
        import rclpy
        from rclpy.context import Context
        from rclpy.executors import SingleThreadedExecutor
        from rclpy.qos import (
            QoSProfile,
            HistoryPolicy,
            ReliabilityPolicy,
            DurabilityPolicy,
        )
        from rclpy.serialization import serialize_message

        self.serialize = serialize_message
        self.context = Context()
        try:
            rclpy.init(context=self.context, domain_id=domain)
            self.node = rclpy.create_node(
                "uwvm_actual_isaac_sim_observer", context=self.context
            )
            self.executor = SingleThreadedExecutor(context=self.context)
            self.executor.add_node(self.node)
            # A best-effort volatile reader can observe both reliable and
            # best-effort live writers. Record actual matching separately;
            # this is not a substitute for Gateway's exact selected QoS proof.
            qos = QoSProfile(
                depth=1,
                history=HistoryPolicy.KEEP_LAST,
                reliability=ReliabilityPolicy.BEST_EFFORT,
                durability=DurabilityPolicy.VOLATILE,
            )
            for topic, kind in topics.items():
                module, name = TYPES[kind].split(":")
                message_type = getattr(importlib.import_module(module), name)
                self.subscriptions.append(
                    self.node.create_subscription(
                        message_type,
                        topic,
                        lambda message,
                        selected=topic,
                        identity=TYPES[kind]: self.receive(selected, identity, message),
                        qos,
                    )
                )
        except BaseException as error:
            self.primary = 12 if isinstance(error, MemoryError) else 5
            self.close()
            raise

    def receive(self, topic, identity, message):
        """@brief Serialize one entire received message and retain its exact bytes.

        @details Called only by this owner's executor with the registered topic
        and native type identity. Writes a fresh .cdr file and records full type
        fields, size and SHA-256; never projects message members. Existing limits
        stop collection, while an oversized complete message records status 90.
        Filesystem/serialization faults become primary 5, allocation faults 12.
        @param[in] topic Previously registered topic; no new subscription occurs.
        @param[in] identity Exact TYPES identity selected during construction.
        @param[in] message Actual generated native message, retained by rclpy for
        callback duration. Serialized bytes own their storage before return.
        @return None. Requires prior native file/DDS admission, runs synchronously
        on the owner thread, and never publishes, retries or grants Guest rights.
        @see poll
        @see close
        """
        per_topic = max(1, self.maximum_messages // len(self.counts))
        if (
            self.primary
            or len(self.samples) >= self.maximum_messages
            or self.counts[topic] >= per_topic
        ):
            return
        try:
            raw = self.serialize(message)
            if len(raw) > self.maximum_bytes - self.total_bytes:
                self.primary = 90
                return
            name = "message-" + str(len(self.samples)).zfill(4) + ".cdr"
            with (self.directory / name).open("xb") as stream:
                stream.write(raw)
            self.counts[topic] += 1
            self.total_bytes += len(raw)
            self.samples.append(
                {
                    "topic": topic,
                    "native_python_type": identity,
                    "python_fields": message.get_fields_and_field_types(),
                    "cdr_file": name,
                    "bytes": len(raw),
                    "sha256": hashlib.sha256(raw).hexdigest(),
                }
            )
        except MemoryError:
            self.primary = 12
        except Exception:
            self.primary = 5

    def poll(self):
        """@brief Offer one nonblocking spin of the private native ROS executor.

        @details timeout_sec=0 avoids waiting for a new callback. A callback that
        does run can still block in native serialization or file I/O; the outer
        finite process owner remains responsible for its deadline. Call only from
        the constructing thread and never concurrently with close/receive.
        @return None; native executor exceptions propagate. After close, no work
        is performed. No command or permission change is issued.
        @see receive
        @see native_graph.main
        """
        if self.executor is not None:
            self.executor.spin_once(timeout_sec=0.0)

    def close(self):
        """@brief Retire each native resource and write one complete observation receipt.

        @details Separately removes/shuts down executor, destroys every
        subscription/node and shuts down the private Context, retaining each
        cleanup error. False native cleanup results set primary5 unless a prior
        failure already exists. Uses a fresh native-observer.json, never overwriting prior
        evidence. Repeated close returns the retained result without a second
        write. Call on the serialized owner thread after polling stops.
        @return Retained result mapping with full samples, missing topics,
        primary status and independent cleanup results. Treat it as immutable.
        Final evidence-write errors propagate; endpoints have already been
        retired and a later close does not claim that a failed write succeeded.
        No GPU/robot action, Guest execution or transport identity is inferred.
        @see receive
        @see native_graph.main
        """
        if self.closed_result is not None:
            return self.closed_result
        cleanup = []
        if self.executor is not None:
            try:
                if self.node is not None:
                    self.executor.remove_node(self.node)
                cleanup.append(("executor", self.executor.shutdown(timeout_sec=0.5)))
            except Exception as error:
                cleanup.append(("executor", repr(error)))
            self.executor = None
        if self.node is not None:
            for subscription in self.subscriptions:
                try:
                    cleanup.append(
                        ("subscription", self.node.destroy_subscription(subscription))
                    )
                except Exception as error:
                    cleanup.append(("subscription", repr(error)))
            self.subscriptions = []
            try:
                cleanup.append(("node", self.node.destroy_node()))
            except Exception as error:
                cleanup.append(("node", repr(error)))
            self.node = None
        if self.context is not None:
            try:
                if self.context.ok():
                    self.context.shutdown()
                cleanup.append(("context", True))
            except Exception as error:
                cleanup.append(("context", repr(error)))
            self.context = None
        if not self.primary and any(
            value is False or type(value) is str for _, value in cleanup
        ):
            self.primary = 5
        result = {
            "format": "uwvm-actual-isaac-sim-native-cdr-v1",
            "primary": self.primary,
            "counts": self.counts,
            "samples": self.samples,
            "bytes": self.total_bytes,
            "missing_topics": [
                topic for topic, count in self.counts.items() if not count
            ],
            "cleanup": cleanup,
            "commands_published": 0,
            "guest_executions": 0,
            "canonical_wasm_transport_verified": False,
            "native_type_identity_export_verified": False,
        }
        self.closed_result = result
        if self.directory.is_dir():
            try:
                with (self.directory / "native-observer.json").open("x") as stream:
                    json.dump(result, stream, indent=2, sort_keys=True)
                    stream.write("\n")
            except BaseException as error:
                result["evidence_write_error"] = repr(error)
                self.primary = result["primary"] = self.primary or 5
                raise
        return result
