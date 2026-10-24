# SPDX-FileCopyrightText: Copyright (c) 2020-2026 NVIDIA CORPORATION & AFFILIATES.
# SPDX-License-Identifier: Apache-2.0
# Modifications: explicit local asset/admission, finite loop and CDR evidence.
"""Complete native manual and periodic camera programs at fixed87c95274.

The two entry selections share the actual warehouse, calibrated USD camera and
RGB/depth/CameraInfo pipeline. Manual frame gates and persistent periodic gates
remain separate algorithms. Only the genuine renderer produces image data.
"""

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import sys
import time


def create_scene(warehouse):
    """@brief Create the original warehouse and fully configured USD camera.

    @details Requires a live admitted Kit stage. References the explicit local
    warehouse USD at /background; transitive asset/resolver rights are separately
    admitted. Preserves translation (-1,5,1) meters, XYZ rotation (90,0,0) degrees,
    apertures 21/16, perspective, focal length 24, focus distance 400 and all three
    authored exposure attributes 0.02/1.10267/5.0. USD camera optical units retain
    the source's native convention; they are not reinterpreted as SI distances.
    @param[in] warehouse Physical frozen original warehouse USD path selected and
    SHA-256 checked by main; the caller retains its full asset dependency closure.
    @return Actual UsdGeom.XformCommonAPI borrowing this stage's /Camera prim.
    No ROS endpoint is created here. Native stage/asset exceptions propagate.
    @see create_graph
    @see main
    """
    import isaacsim.core.experimental.utils.stage as stage_utils
    import omni.usd
    from pxr import Gf, Sdf, UsdGeom

    stage_utils.set_stage_units(meters_per_unit=1.0)
    stage_utils.add_reference_to_stage(str(warehouse), "/background")
    camera = UsdGeom.Camera(
        omni.usd.get_context().get_stage().DefinePrim("/Camera", "Camera")
    )
    transform = UsdGeom.XformCommonAPI(camera)
    transform.SetTranslate(Gf.Vec3d(-1, 5, 1))
    transform.SetRotate((90, 0, 0), UsdGeom.XformCommonAPI.RotationOrderXYZ)
    camera.GetHorizontalApertureAttr().Set(21)
    camera.GetVerticalApertureAttr().Set(16)
    camera.GetProjectionAttr().Set("perspective")
    camera.GetFocalLengthAttr().Set(24)
    camera.GetFocusDistanceAttr().Set(400)
    for name, value in (("time", 0.02), ("responsivity", 1.10267), ("fStop", 5.0)):
        camera.GetPrim().CreateAttribute(
            "exposure:" + name, Sdf.ValueTypeNames.Float
        ).Set(value)
    return transform


def create_graph(og, app, domain, topics):
    """@brief Build and synchronously evaluate the real on-demand camera graph.

    @details Uses IsaacCreateRenderProduct at 1280x720 and original RGB, depth and
    CameraInfo helpers, each with frameId sim_camera. An explicit native context
    binds all three writers to the admitted domain. Complete native messages and
    GPU/storage ownership are implemented by the actual SDK, never a CPU stub.
    Graph evaluation initializes its real SDGPipeline publisher/gate nodes.
    @param[in] og Genuine omni.graph.core module from the active Kit installation.
    @param[in] app Actual retained SimulationApp; one post-evaluation update
    initializes the generated render product before its output path is read.
    @param[in] domain Prevalidated exact ROS domain 0..232.
    @param[in] topics Three distinct prevalidated absolute names in RGB/depth/info
    order; native publication rights were independently admitted by main's owner.
    @return Actual render-product path for gate lookup. Graph/renderer errors
    propagate; the caller retains Kit/stage until all publishers are retired.
    @see gate_paths
    @see main
    """
    import usdrt.Sdf

    nodes = [
        ("Context", "isaacsim.ros2.bridge.ROS2Context"),
        ("OnTick", "omni.graph.action.OnTick"),
        ("createRenderProduct", "isaacsim.core.nodes.IsaacCreateRenderProduct"),
        ("cameraHelperRgb", "isaacsim.ros2.bridge.ROS2CameraHelper"),
        ("cameraHelperInfo", "isaacsim.ros2.bridge.ROS2CameraInfoHelper"),
        ("cameraHelperDepth", "isaacsim.ros2.bridge.ROS2CameraHelper"),
    ]
    links = [("OnTick.outputs:tick", "createRenderProduct.inputs:execIn")]
    for name in ("cameraHelperRgb", "cameraHelperInfo", "cameraHelperDepth"):
        links.extend(
            [
                ("Context.outputs:context", name + ".inputs:context"),
                ("createRenderProduct.outputs:execOut", name + ".inputs:execIn"),
                (
                    "createRenderProduct.outputs:renderProductPath",
                    name + ".inputs:renderProductPath",
                ),
            ]
        )
    values = [
        ("Context.inputs:domain_id", domain),
        ("Context.inputs:useDomainIDEnvVar", False),
        ("createRenderProduct.inputs:cameraPrim", [usdrt.Sdf.Path("/Camera")]),
        ("createRenderProduct.inputs:width", 1280),
        ("createRenderProduct.inputs:height", 720),
        ("cameraHelperRgb.inputs:type", "rgb"),
        ("cameraHelperDepth.inputs:type", "depth"),
    ]
    for name, topic in zip(
        ("cameraHelperRgb", "cameraHelperDepth", "cameraHelperInfo"), topics
    ):
        values.extend(
            [
                (name + ".inputs:frameId", "sim_camera"),
                (name + ".inputs:topicName", topic),
            ]
        )
    graph, _, _, _ = og.Controller.edit(
        {
            "graph_path": "/UwvmCameraGraph",
            "evaluator_name": "push",
            "pipeline_stage": og.GraphPipelineStage.GRAPH_PIPELINE_STAGE_ONDEMAND,
        },
        {
            og.Controller.Keys.CREATE_NODES: nodes,
            og.Controller.Keys.CONNECT: links,
            og.Controller.Keys.SET_VALUES: values,
        },
    )
    og.Controller.evaluate_sync(graph)
    app.update()
    return og.Controller.attribute(
        "/UwvmCameraGraph/createRenderProduct.outputs:renderProductPath"
    ).get()


def gate_paths(render_product):
    """@brief Locate the actual RGB, depth and CameraInfo simulation gates.

    @details Resolves original Rgb and DistanceToImagePlane render variables and
    PostProcessDispatch through the genuine SyntheticData API. These are nodes
    generated by create_graph, not a fabricated scheduling model or local timer.
    @param[in] render_product Actual initialized render-product path, borrowed
    from the retained Kit graph; it must remain live until the camera loop ends.
    @return Three actual SDGPipeline gate paths in RGB/depth/info order. Native
    lookup errors propagate; no gate, topic or permission is created here.
    @see manual_gates
    @see periodic_gates
    """
    import omni.syntheticdata
    import omni.syntheticdata._syntheticdata as sd

    data = omni.syntheticdata.SyntheticData
    rgb = data.convert_sensor_type_to_rendervar(sd.SensorType.Rgb.name)
    depth = data.convert_sensor_type_to_rendervar(
        sd.SensorType.DistanceToImagePlane.name
    )
    return tuple(
        data._get_node_path(name + "IsaacSimulationGate", render_product)
        for name in (rgb, depth, "PostProcessDispatch")
    )


def manual_gates(og, gates, frame):
    """@brief Apply the original per-frame camera publication toggles.

    @details First sets all three real gate step inputs to zero, then enables
    RGB on frame modulo 5, depth on modulo 60 and info on every frame. Called
    after this frame's app.update and camera rotation, preserving source order;
    selected steps affect the genuine next pipeline execution. No pixels are
    synthesized and no observed publication is inferred from a gate assignment.
    @param[in] og Actual retained omni.graph.core module; simulation thread only.
    @param[in] gates Three live gate paths from gate_paths, in RGB/depth/info order.
    @param[in] frame Nonnegative phase-local frame count selected by main.
    @return The three assigned integer steps by value, for scheduling evidence.
    Native graph errors propagate before further loop work; no retry occurs.
    @see periodic_gates
    @see main
    """
    for path in gates:
        og.Controller.attribute(path + ".inputs:step").set(0)
    steps = (int(frame % 5 == 0), int(frame % 60 == 0), 1)
    for path, step in zip(gates, steps):
        if step:
            og.Controller.attribute(path + ".inputs:step").set(step)
    return steps


def periodic_gates(og, gates):
    """@brief Configure the original persistent camera periods once.

    @details Sets genuine RGB/depth/info gate steps to 5/60/1 before playback.
    The SDK owns each gate's internal phase; main does not toggle these per frame
    or replace its scheduler with modulo-based manual publishing. Configuration
    alone proves no native image, callback, observed cadence or Gateway binding.
    @param[in] og Actual omni.graph.core module from the retained Kit process.
    @param[in] gates Three live gate paths, RGB/depth/info order; same thread only.
    @return Three configured frame periods by value. Native assignment errors
    propagate without retry or a fallback scheduler.
    @see manual_gates
    @see main
    """
    periods = (5, 60, 1)
    for path, period in zip(gates, periods):
        og.Controller.attribute(path + ".inputs:step").set(period)
    return periods
