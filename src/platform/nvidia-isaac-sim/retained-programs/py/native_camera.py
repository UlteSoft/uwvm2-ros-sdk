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


from roswasm_nvidia_isaac_sim.native_camera import create_scene, create_graph, gate_paths, manual_gates, periodic_gates


def main(argv=None):
    """@brief Run the full finite native manual or periodic camera application.

    @details Both enable flags are required before SDK/asset reads or Kit imports.
    Preserves the fixed original scene/camera/exposure/render graph, 60 Hz CPU
    physics, quarter-degree-per-frame rotation and distinct gate algorithms. A
    caller-selected physical warehouse entry replaces ambient asset discovery;
    its original full dependency closure must remain frozen/admitted. Optional
    genuine NativeObserver retains complete Image/depth/CameraInfo CDR. An outer
    finite owner must preempt blocked native renderer/asset/ROS work. No physical
    camera, robot adapter, model or Wasm Guest is started.
    @param[in] argv Optional CLI list; None uses sys.argv. Explicit program is
    manual/periodic; domain 0..232; frames 1..10000; lifetime 1..120000 ms; physical
    SDK and warehouse paths/warehouse SHA; three private absolute topics; fresh
    absolute result path. Native CDR observation additionally requires its own
    flag and fresh absolute directory under the active finite owner's work root.
    @return Primary 0/5/13/22/90/95/110/125 after independent cleanup. Unsupported
    non-CPython3.12 execution returns95 before SDK/asset reads or native imports.
    Dependency imports before Kit acquisition may propagate. Absent native
    observations under requested observation return 110. A schedule-only success
    is not a native data exchange. Argparse may raise SystemExit.
    @see create_scene
    @see NativeObserver
    @see README.xmake.md
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--program", choices=("manual", "periodic"), required=True)
    parser.add_argument("--enable-native-simulation", action="store_true")
    parser.add_argument("--enable-native-sensors", action="store_true")
    parser.add_argument("--observe-native-loop", action="store_true")
    parser.add_argument("--native-evidence")
    parser.add_argument("--sdk-root", required=True)
    parser.add_argument("--warehouse-usd", required=True)
    parser.add_argument("--warehouse-sha256", required=True)
    parser.add_argument("--domain", type=int, required=True)
    for name in ("rgb-topic", "depth-topic", "info-topic"):
        parser.add_argument("--" + name, required=True)
    parser.add_argument("--frames", type=int, required=True)
    parser.add_argument("--lifetime-ms", type=int, required=True)
    parser.add_argument("--evidence", required=True)
    args = parser.parse_args(argv)
    if not (args.enable_native_simulation and args.enable_native_sensors):
        return 13
    if sys.implementation.name != "cpython" or sys.version_info[:2] != (3, 12):
        return 95
    if (
        bool(args.native_evidence) != args.observe_native_loop
        or not 0 <= args.domain <= 232
        or not 1 <= args.frames <= 10000
        or not 1 <= args.lifetime_ms <= 120000
        or re.fullmatch(r"[0-9a-f]{64}", args.warehouse_sha256) is None
    ):
        return 22
    topics = (args.rgb_topic, args.depth_topic, args.info_topic)
    if len(set(topics)) != 3 or any(
        len(topic) > 255
        or re.fullmatch(
            r"/(?:[A-Za-z_][A-Za-z0-9_]*)(?:/[A-Za-z_][A-Za-z0-9_]*)*", topic
        )
        is None
        for topic in topics
    ):
        return 22
    sdk, warehouse, evidence = map(
        Path, (args.sdk_root, args.warehouse_usd, args.evidence)
    )
    try:
        if (
            not sdk.is_absolute()
            or sdk.resolve(strict=True) != sdk
            or not sdk.is_dir()
            or not warehouse.is_absolute()
            or warehouse.resolve(strict=True) != warehouse
            or not warehouse.is_file()
            or not 0 < warehouse.stat().st_size <= 512 << 20
            or not evidence.is_absolute()
            or evidence.exists()
            or evidence.parent.resolve(strict=True) != evidence.parent
        ):
            return 22
        with warehouse.open("rb") as stream:
            if (
                hashlib.file_digest(stream, "sha256").hexdigest()
                != args.warehouse_sha256
            ):
                return 13
        if os.environ.get("UWVM_RESOURCE_RUN"):
            run = Path(os.environ["UWVM_RESOURCE_RUN"]).resolve(strict=True)
            if os.environ.get(
                "UWVM_RESOURCE_HEAVY_LOCK_HELD"
            ) != "1" or not evidence.is_relative_to(run / "work"):
                return 13
    except OSError:
        return 22
    if any(
        os.environ.get(key)
        for key in (
            "ROS_DISCOVERY_SERVER",
            "ROS_STATIC_PEERS",
            "CYCLONEDDS_URI",
            "FASTDDS_DEFAULT_PROFILES_FILE",
            "FASTRTPS_DEFAULT_PROFILES_FILE",
        )
    ):
        return 22
    os.environ["ROS_DOMAIN_ID"] = str(args.domain)
    os.environ["ROS_LOCALHOST_ONLY"] = "1"
    os.environ["ROS_AUTOMATIC_DISCOVERY_RANGE"] = "LOCALHOST"
    import isaacsim

    locations = [Path(value).resolve(strict=True) for value in isaacsim.__path__]
    if not locations or any(not path.is_relative_to(sdk) for path in locations):
        return 13
    from isaacsim import SimulationApp

    app = app_utils = observer = None
    cleanup, schedule, native = [], [], None
    primary = 0
    deadline = time.monotonic_ns() + args.lifetime_ms * 1000000
    try:
        app = SimulationApp({"renderer": "RealTimePathTracing", "headless": True})
        import isaacsim.core.experimental.utils.app as app_utils
        import omni.graph.core as og
        from isaacsim.core.simulation_manager import SimulationManager
        from pxr import UsdGeom

        app_utils.enable_extension("isaacsim.ros2.bridge")
        app.update()
        transform = create_scene(warehouse)
        app.update()
        product = create_graph(og, app, args.domain, topics)
        gates = gate_paths(product)
        if args.program == "periodic":
            periodic_gates(og, gates)
        if args.observe_native_loop:
            from roswasm_nvidia_isaac_sim.native_observer import NativeObserver

            observer = NativeObserver(
                args.native_evidence,
                args.domain,
                dict(zip(topics, ("camera_rgb", "camera_depth", "camera_info"))),
                maximum_messages=12,
                maximum_bytes=64 << 20,
            )
        SimulationManager.setup_simulation(dt=1.0 / 60.0, device="cpu")
        app_utils.play()
        app.update()
        frame = 0
        while frame < args.frames:
            if time.monotonic_ns() >= deadline:
                primary = 110
                break
            if not app.is_running():
                primary = 125
                break
            if args.program == "manual" and not app_utils.is_playing():
                primary = 125
                break
            app.update()
            if observer is not None:
                observer.poll()
                if observer.primary:
                    primary = observer.primary
                    break
            if app_utils.is_playing():
                angle = frame / 4.0  # Actual source expression: 0.25 degrees/frame.
                transform.SetRotate(
                    (90, 0, angle), UsdGeom.XformCommonAPI.RotationOrderXYZ
                )
                steps = (
                    manual_gates(og, gates, frame)
                    if args.program == "manual"
                    else (5, 60, 1)
                )
                schedule.append(
                    {"frame": frame, "rotation_z_degrees": angle, "gate_steps": steps}
                )
                frame += 1
        if (
            not primary
            and observer is not None
            and any(not count for count in observer.counts.values())
        ):
            primary = 110
    except KeyboardInterrupt:
        primary = 125
    except Exception as error:
        primary = 5
        cleanup.append({"resource": "application", "error": repr(error)})
    finally:
        if observer is not None:
            try:
                native = observer.close()
                primary = primary or native["primary"]
                if not primary and any(
                    type(value) is str for _, value in native["cleanup"]
                ):
                    primary = 5
            except Exception as error:
                primary = primary or observer.primary or 5
                cleanup.append({"resource": "native-observer", "error": repr(error)})
        for name, operation in (
            ("playback", app_utils.stop if app_utils else None),
            ("kit", app.close if app else None),
        ):
            if operation is not None:
                try:
                    operation()
                    cleanup.append({"resource": name, "result": True})
                except Exception as error:
                    cleanup.append({"resource": name, "error": repr(error)})
        if not primary and any("error" in row for row in cleanup):
            primary = 5
        result = {
            "format": "uwvm-isaac-sim-camera-v1",
            "primary": primary,
            "program": "sim-camera-" + args.program,
            "official_blob": "ee525e19f02d756a932d5e803eeea73910b05079"
            if args.program == "manual"
            else "568c80c7e65035e366126538bcf9c73d4633c151",
            "domain": args.domain,
            "topics": topics,
            "warehouse": str(warehouse),
            "warehouse_sha256": args.warehouse_sha256,
            "resolution": [1280, 720],
            "scheduling": "per-frame-toggle"
            if args.program == "manual"
            else "persistent-periods",
            "frames": schedule,
            "native_observer": native,
            "cleanup": cleanup,
            "native_data_all_topics_observed": bool(
                native and not native["missing_topics"]
            ),
            "guest_executions": 0,
            "physical_robot_commands": 0,
        }
        try:
            with evidence.open("x") as stream:
                json.dump(result, stream, indent=2, allow_nan=False)
                stream.write("\n")
        except OSError:
            primary = primary or 5
    return primary


if __name__ == "__main__":
    raise SystemExit(main())
