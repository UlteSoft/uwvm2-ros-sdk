# SPDX-FileCopyrightText: Copyright (c) 2020-2026 NVIDIA CORPORATION & AFFILIATES.
# SPDX-License-Identifier: Apache-2.0
# Modifications: explicit admission, finite ownership, private ROS and evidence.
"""Finite native equivalent of the pinned Isaac Sim ROS2 cube subscriber.

Original: isaac-sim/IsaacSim, commit 87c95274f50836068b44eeb030bf62aa2108bdf8,
source/standalone_examples/api/isaacsim.ros2.bridge/subscriber.py,
Git blob 7428ee33902642eed7c33fd5f3e7fbc5d9ffb00a (Apache-2.0).
This application preserves its actual Empty callback, random cube placement,
scene, simulation cadence, playback reset and per-frame pose application.
Explicit finite bounds and private ROS ownership replace the unbounded demo loop.
No physical robot, shared ROS context or Wasm execution is involved.
"""

import argparse
import json
import os
from pathlib import Path
import re
import sys
import time


class CubeSubscriber:
    """@brief Own the real Empty subscription and complete simulated cube state.

    @details The admitted native application constructs a genuine rclpy Context,
    node and SingleThreadedExecutor. All calls run on the constructing thread;
    callbacks never mutate a real robot. Requires the pinned Isaac Sim Python
    APIs and matching bundled rclpy on CPython 3.12. Permissions are admitted by
    main before construction; this class cannot grant Guest or native authority.
    @see main
    @see receive
    """

    def __init__(self, rclpy, np, app_utils, cube, domain, topic, maximum_events):
        """@brief Create the private native subscription and initial cube pose.

        @details Keeps the cube at (0,0,0.10) meters initially. The actual ROS
        std_msgs/Empty subscription uses depth 10, matching the original program.
        Retain admitted modules, stage and cube until close; no concurrent calls.
        @param[in] rclpy Genuine admitted bundled ROS Python module.
        @param[in] np Genuine NumPy module used by the native Sim installation.
        @param[in] app_utils Actual pinned experimental playback utilities.
        @param[in] cube Actual Cube prim wrapper created by main in this stage.
        @param[in] domain Prevalidated ROS domain 0..232, loopback admitted outside.
        @param[in] topic Explicit private absolute topic with Empty message type.
        @param[in] maximum_events Prevalidated complete event-history cap 1..1024.
        @return New owner; dependency/ROS allocation exceptions propagate after
        independent cleanup. This constructor performs no simulation update.
        @see poll
        @see close
        """
        self.np, self.app_utils, self.cube = np, app_utils, cube
        self.context = self.node = self.executor = self.subscription = None
        self.position = np.array([[0.0, 0.0, 0.10]])
        self.maximum_events = maximum_events
        self.events = []
        self.primary = 0
        self.closed = False
        self._cleanup_result = []
        from rclpy.context import Context
        from rclpy.executors import SingleThreadedExecutor
        from std_msgs.msg import Empty

        try:
            self.context = Context()
            rclpy.init(context=self.context, domain_id=domain)
            self.node = rclpy.create_node(
                "uwvm_sim_cube_subscriber", context=self.context
            )
            self.executor = SingleThreadedExecutor(context=self.context)
            self.executor.add_node(self.node)
            self.subscription = self.node.create_subscription(
                Empty, topic, self.receive, 10
            )
        except BaseException:
            self.close()
            raise

    def receive(self, message):
        """@brief Apply the original Empty callback's full random-position update.

        @details While playback is active, draws independent x/y coordinates
        uniformly from [0,0.40) meters with NumPy and keeps z=0.10 meters. The
        original callback defers actual prim mutation to the simulation thread's
        subsequent apply call. Every accepted complete Empty event is recorded.
        @param[in] message Genuine rclpy std_msgs/Empty value; its complete payload
        is empty by definition. Ownership remains with rclpy until callback return.
        @return None. Cap exhaustion records status 90 before another position
        update. Requires prior simulation command admission; serialized calls only.
        @see apply
        @see main
        """
        del message
        if self.closed or self.primary or not self.app_utils.is_playing():
            return
        if len(self.events) >= self.maximum_events:
            self.primary = 90
            return
        self.position = self.np.array(
            [[self.np.random.rand() * 0.40, self.np.random.rand() * 0.40, 0.10]]
        )
        self.events.append(self.position[0].tolist())

    def poll(self):
        """@brief Dispatch at most one ready callback without waiting for traffic.

        @details Uses timeout_sec=0 on the private executor. Native callback work
        remains synchronous and needs the outer finite process owner. This method
        creates no endpoint or permission, and is a no-op after close.
        @return None; actual rclpy exceptions propagate to main's primary status.
        @see receive
        @see close
        """
        if not self.closed:
            self.executor.spin_once(timeout_sec=0.0)

    def apply(self):
        """@brief Set the actual simulated prim to the complete retained XYZ pose.

        @details Uses Cube.set_world_poses on the simulation thread, matching the
        original per-frame update. Calls only while playback is active and after
        separately admitted simulation commands. No physical driver is accessed.
        @return None; native stage/prim errors propagate. The caller retains the
        actual stage, cube and admitted native modules until close.
        @see receive
        @see main
        """
        if not self.closed:
            self.cube.set_world_poses(positions=self.position)

    def close(self):
        """@brief Retire subscription, node, executor and Context independently.

        @details Idempotent on the serialized constructing thread. Records every
        ordinary exception or false cleanup return as an error and attempts
        remaining resources. Repeated close returns the cached result. Does not close
        Kit or stop playback; main owns those separate lifetimes.
        @return Cleanup result list; no native success or physical stop is inferred
        from resource destruction. No shared global rclpy shutdown is performed.
        @see main
        """
        if self.closed:
            return self._cleanup_result
        self.closed = True
        results = self._cleanup_result
        operations = []
        if self.executor is not None:
            if self.node is not None:
                operations.append(
                    ("executor-remove", lambda: self.executor.remove_node(self.node))
                )
            operations.append(
                ("executor-shutdown", lambda: self.executor.shutdown(timeout_sec=0.5))
            )
        if self.subscription is not None:
            operations.append(
                (
                    "subscription",
                    lambda: self.node.destroy_subscription(self.subscription),
                )
            )
        if self.node is not None:
            operations.append(("node", self.node.destroy_node))
        if self.context is not None and self.context.ok():
            operations.append(("context", self.context.shutdown))
        for name, operation in operations:
            try:
                value = operation()
                row = {"resource": name, "result": value}
                if value is False:
                    row["error"] = "native cleanup returned false"
                results.append(row)
            except Exception as error:
                results.append({"resource": name, "error": repr(error)})
        return results
