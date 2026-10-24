# SPDX-FileCopyrightText: Copyright (c) 2020-2026 NVIDIA CORPORATION & AFFILIATES.
# SPDX-License-Identifier: Apache-2.0
# Modifications: private ROS ownership, finite admission and complete evidence.
"""Native equivalent of fixed IsaacSim clock.py, blob dd1bca7d73530104.

Uses the actual Kit graph and two genuine rosgraph_msgs/Clock subscriptions.
The two original twenty-frame phases have different impulse update schedules.
Neither a local clock codec nor a host timer supplies simulation timestamps.
"""

import argparse
import json
import os
from pathlib import Path
import re
import sys
import time


def configure_graph(og, domain, topics, graph_path):
    """@brief Create the original automatic/impulse clock graph in actual Kit.

    @details Shared by the native original-program entry and the language SDK's
    allowlisted native backend. Uses genuine nodes/ports and one selected native
    Context; it never fabricates a clock or advances simulation. Call only after
    explicit native/command admission with matching real Kit/ROS dependencies.
    @param[in] og Actual retained omni.graph.core module, on the simulation thread.
    @param[in] domain Prevalidated native ROS domain0..232.
    @param[in] topics Two distinct prevalidated absolute automatic/manual topics.
    @param[in] graph_path Preselected absolute graph path owned by this program.
    @return None; actual graph/native allocation errors propagate without fallback.
    @see ClockSubscribers
    @see main
    """
    og.Controller.edit(
        {"graph_path": graph_path, "evaluator_name": "execution"},
        {
            og.Controller.Keys.CREATE_NODES: [
                ("Context", "isaacsim.ros2.bridge.ROS2Context"),
                ("ReadSimTime", "isaacsim.core.nodes.IsaacReadSimulationTime"),
                ("OnPlaybackTick", "omni.graph.action.OnPlaybackTick"),
                ("PublishClock", "isaacsim.ros2.bridge.ROS2PublishClock"),
                ("OnImpulseEvent", "omni.graph.action.OnImpulseEvent"),
                ("PublishManualClock", "isaacsim.ros2.bridge.ROS2PublishClock"),
            ],
            og.Controller.Keys.CONNECT: [
                ("Context.outputs:context", "PublishClock.inputs:context"),
                ("Context.outputs:context", "PublishManualClock.inputs:context"),
                ("OnPlaybackTick.outputs:tick", "PublishClock.inputs:execIn"),
                ("OnImpulseEvent.outputs:execOut", "PublishManualClock.inputs:execIn"),
                ("ReadSimTime.outputs:simulationTime", "PublishClock.inputs:timeStamp"),
                (
                    "ReadSimTime.outputs:simulationTime",
                    "PublishManualClock.inputs:timeStamp",
                ),
            ],
            og.Controller.Keys.SET_VALUES: [
                ("Context.inputs:domain_id", domain),
                ("Context.inputs:useDomainIDEnvVar", False),
                ("PublishClock.inputs:topicName", topics[0]),
                ("PublishManualClock.inputs:topicName", topics[1]),
            ],
        },
    )


class ClockSubscribers:
    """@brief Own the original automatic and manual native Clock callbacks.

    @details Requires the admitted Isaac Sim bundled rclpy. Calls, callbacks and
    close are serialized on the constructing thread. All observed Clock fields
    are retained; depth-one readers may drop messages and do not prove delivery
    of every publication. No simulation step or physical command is issued here.
    @see main
    @see receive_automatic
    @see receive_manual

    Attributes:
        events: Owned list of complete sec/nanosec values and dispatch locations;
            cap 1..256 is shared by both callbacks. It is never silently truncated.
        phase: Current source phase, -1 before stepping, then 0 or 1.
        frame: Current source frame, -1 before stepping, then 0..19.
        primary: First callback failure, 0, invalid value 22 or quota 90.
        context: Private native rclpy Context; retained through close.
        node: Native node in that Context; never the process global default node.
        executor: Private SingleThreadedExecutor; poll dispatches at most one task.
        subscriptions: Actual two native readers, owned until independent cleanup.
        closed_result: None while open; cached cleanup list after the first close.
        maximum_events: Caller-selected total event cap, validated by main.
    """

    def __init__(self, rclpy, domain, automatic_topic, manual_topic, maximum_events):
        """@brief Create the two original depth-one Clock subscriptions.

        @details Initializes a private Context in the explicitly selected domain.
        The enclosing native owner has already admitted loopback DDS. Allocation
        or ROS errors attempt every acquired resource's cleanup before escaping.
        Construction imports genuine bundled Clock; it supplies no replacement.
        @param[in] rclpy Actual module imported after Kit enables its ROS bridge.
        @param[in] domain Prevalidated integer ROS domain 0..232.
        @param[in] automatic_topic Distinct absolute native automatic clock topic.
        @param[in] manual_topic Distinct absolute native impulse clock topic.
        @param[in] maximum_events Total retained callback count in 1..256.
        @return New native owner; ordinary native/dependency errors propagate.
        @see close
        @see main
        """
        self.events = []
        self.phase = self.frame = -1
        self.primary = 0
        self.context = self.node = self.executor = None
        self.subscriptions = []
        self.closed_result = None
        self.maximum_events = maximum_events
        from rclpy.context import Context
        from rclpy.executors import SingleThreadedExecutor
        from rosgraph_msgs.msg import Clock

        try:
            self.context = Context()
            rclpy.init(context=self.context, domain_id=domain)
            self.node = rclpy.create_node("uwvm_sim_clock", context=self.context)
            self.executor = SingleThreadedExecutor(context=self.context)
            self.executor.add_node(self.node)
            for topic, callback in (
                (automatic_topic, self.receive_automatic),
                (manual_topic, self.receive_manual),
            ):
                self.subscriptions.append(
                    self.node.create_subscription(Clock, topic, callback, 1)
                )
        except BaseException:
            self.close()
            raise

    def _receive(self, kind, message):
        """Retain every field of one real callback without inventing timestamps."""
        if self.closed_result is not None or self.primary:
            return
        if len(self.events) >= self.maximum_events:
            self.primary = 90
            return
        sec, nanosec = message.clock.sec, message.clock.nanosec
        if (
            type(sec) is not int
            or not -(1 << 31) <= sec < 1 << 31
            or type(nanosec) is not int
            or not 0 <= nanosec < 1000000000
        ):
            self.primary = 22
            return
        self.events.append(
            {
                "callback": kind,
                "phase": self.phase,
                "frame": self.frame,
                "sec": sec,
                "nanosec": nanosec,
            }
        )
        print(
            "sim time:" if kind == "automatic" else "manual stepped sim time:",
            message.clock,
        )

    def receive_automatic(self, message):
        """@brief Observe the actual playback-tick Clock message.

        @details Preserves signed seconds and normalized nanoseconds by value,
        plus current dispatch phase/frame. The reader owns message until callback
        return. No wall clock, synthetic sample or manual value is substituted.
        @param[in] message Genuine rosgraph_msgs/Clock delivered by native rclpy.
        @return None; bad fields set primary 22, exhausted history sets 90. Calls
        after close or the first failure have no effect. Serialized executor only.
        @see receive_manual
        @see poll
        """
        self._receive("automatic", message)

    def receive_manual(self, message):
        """@brief Observe the actual impulse-driven Clock message.

        @details Retains both complete native Time fields and dispatch location.
        Receipt demonstrates a real callback, not that every impulse was delivered
        or that a particular publisher identity was authenticated by the Gateway.
        @param[in] message Genuine rosgraph_msgs/Clock borrowed until return.
        @return None; first invalid value/quota error sets primary 22/90. No ROS
        publication, simulation update, timer or permission grant is performed.
        @see receive_automatic
        @see main
        """
        self._receive("manual", message)

    def poll(self, phase, frame):
        """@brief Dispatch one native callback at the original loop position.

        @details Sets the dispatch location then calls spin_once(timeout_sec=0).
        This matches the source's one spin per frame; a reader may drop traffic.
        Native work is synchronous and still needs the external process deadline.
        @param[in] phase Source stepping phase 0 or 1, selected by main.
        @param[in] frame Source phase-local frame number 0..19.
        @return None; actual ROS/callback errors propagate. Closed owner is inert.
        @see receive_automatic
        @see close
        """
        if self.closed_result is None:
            self.phase, self.frame = phase, frame
            self.executor.spin_once(timeout_sec=0.0)

    def close(self):
        """@brief Independently retire both readers, executor, node and Context.

        @details Caches the same cleanup list for repeated serialized calls. Each
        ordinary exception or false cleanup result is retained as an error and
        remaining resources are attempted. No
        process-global rclpy shutdown, Kit close or playback stop occurs here.
        @return Owned cleanup result list. Destruction proves neither message
        delivery nor native/Gateway/Guest qualification; main preserves failures.
        @see main
        """
        if self.closed_result is not None:
            return self.closed_result
        self.closed_result = []
        operations = []
        for index, subscription in enumerate(self.subscriptions):
            operations.append(
                (
                    "subscription-" + str(index),
                    lambda selected=subscription: self.node.destroy_subscription(
                        selected
                    ),
                )
            )
        if self.executor is not None:
            if self.node is not None:
                operations.append(
                    ("executor-remove", lambda: self.executor.remove_node(self.node))
                )
            operations.append(
                ("executor-shutdown", lambda: self.executor.shutdown(timeout_sec=0.5))
            )
        if self.node is not None:
            operations.append(("node", self.node.destroy_node))
        if self.context is not None:
            operations.append(("context", self.context.try_shutdown))
        for name, operation in operations:
            try:
                value = operation()
                row = {"resource": name, "result": value}
                if value is False:
                    row["error"] = "native cleanup returned false"
                self.closed_result.append(row)
            except Exception as error:
                self.closed_result.append({"resource": name, "error": repr(error)})
        return self.closed_result
