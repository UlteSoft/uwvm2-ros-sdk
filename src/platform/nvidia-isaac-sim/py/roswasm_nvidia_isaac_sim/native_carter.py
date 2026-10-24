# SPDX-FileCopyrightText: Copyright (c) 2020-2026 NVIDIA CORPORATION & AFFILIATES. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
# Modifications: physical asset selection, private ROS, finite ownership/evidence.
"""Actual native multi-Carter navigation and stereo application candidates.

Source: IsaacSim87c95274, blobs263932ff and e312d1c5. Hospital/office are
navigation variants. Stereo is a separate original program with four camera
render products, sixty warmup updates and a real full Twist publisher.
"""

import argparse
import hashlib
import json
import os
from pathlib import Path
import sys
import time


def bind_scene_contexts(stage, og, domain):
    """@brief Select the finite native domain on every authored scene Context.

    @details Inspects actual USD node:type attributes and changes only the real
    ROS2Context domain_id/useDomainIDEnvVar inputs. Other stage data, camera
    calibration, robot graphs and full messages remain owned by the genuine USD
    and SDK. The selected domain environment is set before stage loading too.
    Assignment is configuration evidence, not proof of a live writer's domain;
    native matching/identity must be independently observed during acceptance.
    @param[in] stage Loaded genuine USD stage, retained through playback teardown.
    @param[in] og Actual omni.graph.core from this admitted Kit installation.
    @param[in] domain Prevalidated integer ROS domain0..232, loopback-only outside.
    @return List of all0..32 actual Context prim paths, owned by value. More than
    32 fails OverflowError; native schema/attribute errors propagate without a
    guessed graph path or silent fallback. Simulation thread only.
    @see main
    """
    paths = []
    for prim in stage.Traverse():
        attribute = prim.GetAttribute("node:type")
        if attribute and attribute.Get() == "isaacsim.ros2.bridge.ROS2Context":
            paths.append(str(prim.GetPath()))
    if len(paths) > 32:
        raise OverflowError("complete scene exceeds the32-Context admission cap")
    for path in paths:
        og.Controller.set(og.Controller.attribute(path + ".inputs:domain_id"), domain)
        og.Controller.set(
            og.Controller.attribute(path + ".inputs:useDomainIDEnvVar"), False
        )
    return paths


def enable_stereo(og):
    """@brief Enable all four original Carter stereo render products.

    @details Uses the exact pinned Nova_Carter_ROS front_hawk paths: left/right
    RGB and the separate left/right CameraInfo graph render products. The actual
    SDK supplies pixels, calibration, storage and publication; no CPU substitute
    or generated camera data is supplied. Call before playback, on the Kit thread.
    @param[in] og Genuine retained omni.graph.core module for the loaded scenario.
    @return Four complete enabled attribute paths by value. Missing real nodes or
    ports fail through the native API; no partial success is reported by main.
    @see main
    """
    root = "/World/Nova_Carter_ROS/chassis_link/sensors/front_hawk"
    paths = [
        root + "/left/ROS_Camera_Left/left_camera_render_product.inputs:enabled",
        root + "/right/ROS_Camera_Right/right_camera_render_product.inputs:enabled",
        root + "/ROS_Camera_Info/left_camera_render_product.inputs:enabled",
        root + "/ROS_Camera_Info/right_camera_render_product.inputs:enabled",
    ]
    for path in paths:
        og.Controller.set(og.Controller.attribute(path), True)
    return paths


class StereoPublisher:
    """@brief Own the original real native Carter Twist publisher and its Context.

    @details Uses the genuine bundled rclpy/geometry_msgs and original /cmd_vel
    topic at depth10. A separately admitted private loopback domain and actual
    frozen simulation scenario are mandatory. Publication does not prove motion
    or delivery. No executor, physical adapter or Wasm authority is created.
    Serialized constructing-thread calls only; main owns Kit/playback separately.
    @see publish
    @see close

    Attributes:
        attempts: Owned complete six-field Twist attempt records and source frame;
            main's1024-frame cap bounds the list to512. A false publish_returned
            records effect uncertainty, and that attempt is never retried.
        closed_result: None while open, then the cached independent cleanup list.
    """

    def __init__(self, rclpy, domain):
        """@brief Create the real private Context/node and depth-ten publisher.

        @details Initializes only the selected Context. Keeps the original
        carter_stereo node name and absolute /cmd_vel equivalent of its root
        relative topic. Construction failures attempt every acquired resource's
        cleanup before propagating; no Twist is sent during construction.
        @param[in] rclpy Actual bundled ROS module imported after Kit starts.
        @param[in] domain Prevalidated native simulation domain0..232.
        @return New native owner; dependency/allocation/ROS errors propagate.
        @see publish
        @see main
        """
        from geometry_msgs.msg import Twist
        from rclpy.context import Context

        self.attempts = []
        self.closed_result = None
        self._context = self._node = self._publisher = None
        self._twist = Twist
        try:
            self._context = Context()
            rclpy.init(context=self._context, domain_id=domain)
            self._node = rclpy.create_node("carter_stereo", context=self._context)
            self._publisher = self._node.create_publisher(Twist, "/cmd_vel", 10)
        except BaseException:
            self.close()
            raise

    def publish(self, frame):
        """@brief Publish the original complete spin-in-place Twist once.

        @details Sets all linear XYZ and angular XY to0, angular Z to0.5rad/s.
        Retains every field and records the attempt before the real publish call.
        A returned call proves no delivery or motion; an exception leaves effect
        uncertainty and main terminates without replay. No physical driver is
        selected. Requires explicit simulation-command and sensor admission.
        @param[in] frame Actual even source frame in0..1023, validated here.
        @return None. Bad/closed calls raise ValueError before publication; native
        errors propagate. Message lifetime is retained through synchronous return.
        @see close
        @see main
        """
        if (
            self.closed_result is not None
            or type(frame) is not int
            or not 0 <= frame < 1024
            or frame % 2
        ):
            raise ValueError(
                "an open owner and actual even simulation frame are required"
            )
        message = self._twist()
        message.linear.x = message.linear.y = message.linear.z = 0.0
        message.angular.x = message.angular.y = 0.0
        message.angular.z = 0.5
        attempt = {
            "frame": frame,
            "linear_meters_per_second": [0.0, 0.0, 0.0],
            "angular_radians_per_second": [0.0, 0.0, 0.5],
            "publish_returned": False,
        }
        self.attempts.append(attempt)
        self._publisher.publish(message)
        attempt["publish_returned"] = True

    def close(self):
        """@brief Independently retire publisher/node/private Context once.

        @details Caches the same cleanup list after first close, retaining ordinary
        errors and attempting remaining resources. Does not send an additional
        zero Twist or shut down process-global rclpy. Resource destruction is no
        physical stop guarantee; main separately stops the actual simulation.
        @return Owned cleanup results; no delivery, motion or Guest proof follows.
        Serialized owner thread only; no concurrent publish/close is permitted.
        @see main
        """
        if self.closed_result is not None:
            return self.closed_result
        self.closed_result = []
        operations = []
        if self._publisher is not None:
            operations.append(
                ("publisher", lambda: self._node.destroy_publisher(self._publisher))
            )
        if self._node is not None:
            operations.append(("node", self._node.destroy_node))
        if self._context is not None:
            operations.append(
                (
                    "context",
                    lambda: self._context.shutdown() if self._context.ok() else None,
                )
            )
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
