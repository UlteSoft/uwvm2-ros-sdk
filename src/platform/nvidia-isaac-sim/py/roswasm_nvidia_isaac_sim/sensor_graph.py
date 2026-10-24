"""Fixed87c95274 native Isaac Sim sensor graph inputs; no Kit imports.

This builds only the selected official node/port connections. A plan is not a
running simulator, sensor observation, ROS exchange or Guest capability. The
native owner supplies actual USD target objects after explicit admission.
"""

import json
import re


# @brief Literal absolute ROS topic grammar accepted by the native graph planner.
# @details Excludes remapping expressions and empty segments; length and uniqueness
# are independently checked by plan. @see plan
TOPIC = re.compile(r"/(?:[A-Za-z_][A-Za-z0-9_]*)(?:/[A-Za-z_][A-Za-z0-9_]*)*")
# @brief Literal absolute USD prim-path grammar for this selected sensor lane.
# @details This finite subset is not all legal USD syntax; omitted features fail
# rather than being reinterpreted. @see plan
PRIM = re.compile(r"/(?:[A-Za-z_][A-Za-z0-9_]*)(?:/[A-Za-z_][A-Za-z0-9_]*)*")
# @brief Exact CameraHelper type selectors for supported complete sensor kinds.
# @details RGB, depth and depth point cloud retain distinct native behavior.
# @see plan
CAMERAS = {
    "camera_rgb": "rgb",
    "camera_depth": "depth",
    "camera_depth_pointcloud": "depth_pcl",
}
# @brief Distinct genuine RTX lidar scan and point-cloud helper selectors.
# @details Camera depth data is never relabelled as RTX lidar data. @see plan
LIDARS = {"lidar_scan": "laser_scan", "lidar_pointcloud": "point_cloud"}


def require(ok, reason):
    """@brief Reject an invalid native graph configuration before Kit effects.

    @details Pure synchronous admission helper; does not allocate graph nodes,
    import Kit/ROS, or grant simulator/Guest authority. Immutable inputs permit
    independent concurrent planning calls.
    @param[in] ok Already evaluated condition.
    @param[in] reason English diagnostic describing the rejected full field.
    @return None; ValueError(reason) is raised when ok is false.
    @see plan
    """
    if not ok:
        raise ValueError(reason)


def unique_object(pairs):
    """@brief Decode one JSON object while rejecting duplicate field names.

    @details Retains every value without last-key-wins projection. Called by the
    standard JSON decoder; no file, native SDK, ROS or permission operation occurs.
    @param[in] pairs Ordered complete key/value pairs supplied by json.loads.
    @return New dictionary; ValueError rejects duplicate keys. Synchronous.
    @see decode
    """
    result = {}
    for key, value in pairs:
        require(key not in result, "duplicate configuration field")
        result[key] = value
    return result


def decode(raw):
    """@brief Decode complete JSON with duplicate/nonfinite constants refused.

    @details Does not construct a graph or validate the top-level sensor schema;
    plan performs that separate admission. The caller bounds raw byte length
    before decoding. Uses only CPython's standard JSON parser and grants no rights.
    @param[in] raw Stable complete JSON str/bytes accepted by json.loads.
    @return Decoded value; ValueError/JSONDecodeError/Unicode errors reject invalid
    source. Calls share no mutable planner state and allocate independent values.
    @see unique_object
    @see plan
    """

    def invalid_constant(value):
        raise ValueError("nonfinite JSON constant refused: " + value)

    return json.loads(
        raw, object_pairs_hook=unique_object, parse_constant=invalid_constant
    )


def plan(configuration):
    """@brief Construct a complete selected native sensor-node connection plan.

    @details Requires the exact uwvm-isaac-sim-native-sensors-v1 schema and 1..16
    complete sensor rows. Preserves explicit unique topics, QoS JSON, frame IDs,
    prim targets and RGB/depth/lidar/IMU/TF/clock distinctions. Render dimensions
    are 1..4096 and at most 4096*2160 pixels. No Kit/ROS import, graph execution,
    sensor sample, GPU access or permission grant occurs. This source plan is
    bound to the fixed 87c95274 node/port definitions, not an installed-version
    compatibility claim. Call with immutable configuration on CPython 3.12.
    @param[in] configuration Complete decoded native sensor configuration; extra,
    missing, duplicate, unbounded or unknown fields are rejected without narrowing.
    @return Owned node/value/link/target/topic inventory for the admitted native
    owner. ValueError rejects invalid schema/quotas; allocation failures propagate.
    @see decode
    @see native_graph.captured_config
    @see native_graph.main
    """
    require(
        type(configuration) is dict
        and set(configuration) == {"format", "sensors"}
        and configuration["format"] == "uwvm-isaac-sim-native-sensors-v1",
        "exact native sensor configuration required",
    )
    sensors = configuration["sensors"]
    require(
        type(sensors) is list and 1 <= len(sensors) <= 16,
        "finite explicit sensor inventory required",
    )
    nodes, values, links, targets = [], [], [], []
    topics = set()
    topic_kinds = {}
    for index, row in enumerate(sensors):
        require(type(row) is dict, "complete sensor row required")
        kind = row.get("kind")
        require(type(kind) is str, "literal sensor kind required")
        keys = {"kind", "topic", "qos"}
        if kind in CAMERAS or kind in LIDARS:
            keys |= {"prim", "frame_id", "width", "height"}
        elif kind == "imu":
            keys |= {"prim", "frame_id"}
        elif kind == "tf":
            keys |= {"prims"}
        else:
            require(kind == "clock", "unknown sensor kind")
        require(set(row) == keys, "full exact sensor fields required")
        topic = row["topic"]
        require(
            type(topic) is str
            and len(topic) <= 255
            and TOPIC.fullmatch(topic) is not None
            and topic not in topics,
            "unique absolute literal ROS topic required",
        )
        topics.add(topic)
        topic_kinds[topic] = kind
        qos = row["qos"]
        require(
            type(qos) is str
            and len(qos.encode("utf-8")) <= 2048
            and type(decode(qos)) is dict,
            "complete bounded native QoS JSON required",
        )
        prefix = "Sensor" + str(index)
        publish = prefix + "Publish"
        if kind in CAMERAS or kind in LIDARS or kind == "imu":
            require(
                type(row["prim"]) is str
                and len(row["prim"]) <= 1024
                and PRIM.fullmatch(row["prim"]) is not None,
                "absolute literal selected sensor prim required",
            )
            frame = row["frame_id"]
            require(
                type(frame) is str
                and 0 < len(frame.encode("utf-8")) <= 64
                and "\0" not in frame,
                "complete bounded sensor frame ID required",
            )
            values.append((publish + ".inputs:frameId", frame))
        if kind in CAMERAS or kind in LIDARS:
            for member in ("width", "height"):
                require(
                    type(row[member]) is int and 1 <= row[member] <= 4096,
                    "finite exact render dimensions required",
                )
            require(
                row["width"] * row["height"] <= 4096 * 2160,
                "render pixel quota exceeded",
            )
            render = prefix + "Render"
            nodes.append((render, "isaacsim.core.nodes.IsaacCreateRenderProduct"))
            values.extend(
                [
                    (render + ".inputs:width", row["width"]),
                    (render + ".inputs:height", row["height"]),
                ]
            )
            targets.append((render + ".inputs:cameraPrim", [row["prim"]]))
            helper = "ROS2CameraHelper" if kind in CAMERAS else "ROS2RtxLidarHelper"
            nodes.append((publish, "isaacsim.ros2.bridge." + helper))
            values.extend(
                [
                    (
                        publish + ".inputs:type",
                        (CAMERAS if kind in CAMERAS else LIDARS)[kind],
                    ),
                    (publish + ".inputs:useSystemTime", False),
                ]
            )
            links.extend(
                [
                    ("Tick.outputs:tick", render + ".inputs:execIn"),
                    (render + ".outputs:execOut", publish + ".inputs:execIn"),
                    (
                        render + ".outputs:renderProductPath",
                        publish + ".inputs:renderProductPath",
                    ),
                ]
            )
        elif kind == "imu":
            read = prefix + "Read"
            nodes.extend(
                [
                    (read, "isaacsim.sensors.physics.IsaacReadIMU"),
                    (publish, "isaacsim.ros2.bridge.ROS2PublishImu"),
                ]
            )
            targets.append((read + ".inputs:imuPrim", [row["prim"]]))
            links.extend(
                [
                    ("Tick.outputs:tick", read + ".inputs:execIn"),
                    (read + ".outputs:execOut", publish + ".inputs:execIn"),
                    (read + ".outputs:sensorTime", publish + ".inputs:timeStamp"),
                    (read + ".outputs:linAcc", publish + ".inputs:linearAcceleration"),
                    (read + ".outputs:angVel", publish + ".inputs:angularVelocity"),
                    (read + ".outputs:orientation", publish + ".inputs:orientation"),
                ]
            )
        elif kind == "tf":
            prims = row["prims"]
            require(
                type(prims) is list
                and 1 <= len(prims) <= 64
                and all(
                    type(p) is str and len(p) <= 1024 and PRIM.fullmatch(p) is not None
                    for p in prims
                )
                and len(set(prims)) == len(prims),
                "complete finite unique transform prim inventory required",
            )
            nodes.append((publish, "isaacsim.ros2.bridge.ROS2PublishTransformTree"))
            targets.append((publish + ".inputs:targetPrims", prims))
            values.append((publish + ".inputs:staticPublisher", False))
            links.extend(
                [
                    ("Tick.outputs:tick", publish + ".inputs:execIn"),
                    ("Time.outputs:simulationTime", publish + ".inputs:timeStamp"),
                ]
            )
        else:
            nodes.append((publish, "isaacsim.ros2.bridge.ROS2PublishClock"))
            links.extend(
                [
                    ("Tick.outputs:tick", publish + ".inputs:execIn"),
                    ("Time.outputs:simulationTime", publish + ".inputs:timeStamp"),
                ]
            )
        values.extend(
            [
                (publish + ".inputs:topicName", topic),
                (publish + ".inputs:qosProfile", qos),
                (publish + ".inputs:queueSize", 1),
            ]
        )
        links.append(("Context.outputs:context", publish + ".inputs:context"))
    return {
        "nodes": nodes,
        "values": values,
        "links": links,
        "targets": targets,
        "topics": sorted(topics),
        "topic_kinds": topic_kinds,
        "upstream_commit": "87c95274f50836068b44eeb030bf62aa2108bdf8",
        "simulator_started": False,
        "native_ros_exchanges": 0,
        "default_authority": [],
    }
