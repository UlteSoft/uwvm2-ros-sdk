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


from roswasm_nvidia_isaac_sim.native_cube_subscriber import CubeSubscriber


def main(argv=None):
    """@brief Run the finite, explicitly enabled native cube subscriber example.

    @details Returns 13 before reading SDK paths or importing Kit/ROS/NumPy unless
    both simulation and simulation-command flags are present. Recreates the
    original 0.2 m red cube, ground, light intensity 3000, 1/60 s CPU physics,
    Empty callback and playback-reset sequence. Limits are independent of the
    original --test flag. Blocking native work still requires a finite outer
    process owner; these cooperative checks cannot preempt Kit/GPU work.
    @param[in] argv Optional immutable CLI list; None uses sys.argv. Required:
    physical SDK root, domain 0..232, private topic, frames 1..10000, lifetime
    1..10000 ms, event cap 1..1024 and a fresh evidence file. The operator must
    admit matching bundled rclpy/NumPy/Kit, rendering and loopback DDS explicitly.
    @return Primary status (0/5/13/22/90/95/110/125) after independent cleanup;
    enabled non-CPython3.12 execution returns95 before SDK access. Argparse
    may raise SystemExit. A successful return alone proves no Guest integration.
    @see CubeSubscriber
    @see xmake.lua
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--enable-native-simulation", action="store_true")
    parser.add_argument("--enable-sim-commands", action="store_true")
    parser.add_argument("--sdk-root", required=True)
    parser.add_argument("--domain", type=int, required=True)
    parser.add_argument("--topic", required=True)
    parser.add_argument("--frames", type=int, required=True)
    parser.add_argument("--lifetime-ms", type=int, required=True)
    parser.add_argument("--maximum-events", type=int, required=True)
    parser.add_argument("--evidence", required=True)
    args = parser.parse_args(argv)
    if not (args.enable_native_simulation and args.enable_sim_commands):
        return 13
    if sys.implementation.name != "cpython" or sys.version_info[:2] != (3, 12):
        return 95
    if not (
        0 <= args.domain <= 232
        and 1 <= args.frames <= 10000
        and 1 <= args.lifetime_ms <= 10000
        and 1 <= args.maximum_events <= 1024
    ):
        return 22
    if (
        len(args.topic) > 255
        or re.fullmatch(
            r"/(?:[A-Za-z_][A-Za-z0-9_]*)(?:/[A-Za-z_][A-Za-z0-9_]*)*", args.topic
        )
        is None
    ):
        return 22
    sdk = Path(args.sdk_root)
    evidence = Path(args.evidence)
    if (
        not sdk.is_absolute()
        or sdk.resolve(strict=True) != sdk
        or not sdk.is_dir()
        or not evidence.is_absolute()
        or evidence.exists()
        or evidence.parent.resolve(strict=True) != evidence.parent
    ):
        return 22
    if os.environ.get("UWVM_RESOURCE_RUN"):
        root = Path(os.environ["UWVM_RESOURCE_RUN"]).resolve(strict=True)
        if os.environ.get(
            "UWVM_RESOURCE_HEAVY_LOCK_HELD"
        ) != "1" or not evidence.is_relative_to(root / "work"):
            return 13
    for key in (
        "ROS_DISCOVERY_SERVER",
        "ROS_STATIC_PEERS",
        "CYCLONEDDS_URI",
        "FASTDDS_DEFAULT_PROFILES_FILE",
        "FASTRTPS_DEFAULT_PROFILES_FILE",
    ):
        if os.environ.get(key):
            return 22
    os.environ["ROS_DOMAIN_ID"] = str(args.domain)
    os.environ["ROS_LOCALHOST_ONLY"] = "1"
    os.environ["ROS_AUTOMATIC_DISCOVERY_RANGE"] = "LOCALHOST"
    # The explicitly selected SDK installation must supply the actual module.
    import isaacsim

    locations = [Path(value).resolve(strict=True) for value in isaacsim.__path__]
    if not locations or any(not path.is_relative_to(sdk) for path in locations):
        return 13
    from isaacsim import SimulationApp

    app = observer = app_utils = None
    cleanup = []
    primary = 0
    frames = 0
    deadline = time.monotonic_ns() + args.lifetime_ms * 1000000
    try:
        app = SimulationApp({"renderer": "RealTimePathTracing", "headless": True})
        import isaacsim.core.experimental.utils.app as app_utils
        import isaacsim.core.experimental.utils.stage as stage_utils
        from isaacsim.core.experimental.objects import Cube, DistantLight, GroundPlane
        from isaacsim.core.simulation_manager import SimulationManager

        app_utils.enable_extension("isaacsim.ros2.bridge")
        app.update()
        import numpy as np
        import rclpy

        stage_utils.set_stage_units(meters_per_unit=1.0)
        GroundPlane("/World/GroundPlane")
        DistantLight("/World/DistantLight").set_intensities(intensities=[3000])
        cube = Cube(
            paths="/cube", positions=np.array([[0, 0, 0.10]]), sizes=0.2, colors="red"
        )
        SimulationManager.setup_simulation(dt=1.0 / 60.0, device="cpu")
        observer = CubeSubscriber(
            rclpy, np, app_utils, cube, args.domain, args.topic, args.maximum_events
        )
        app_utils.play()
        app.update()
        reset_needed = False
        while frames < args.frames and app.is_running() and not observer.primary:
            if time.monotonic_ns() >= deadline:
                primary = 110
                break
            app.update()
            observer.poll()
            if not app_utils.is_playing() and not reset_needed:
                reset_needed = True
            if app_utils.is_playing():
                if reset_needed:
                    app_utils.stop()
                    app_utils.update_app(steps=5)
                    app_utils.play()
                    app_utils.update_app(steps=5)
                    reset_needed = False
                observer.apply()
            frames += 1
        if not primary:
            primary = observer.primary or (0 if frames == args.frames else 125)
    except KeyboardInterrupt:
        primary = 125
    except Exception as error:
        primary = 5
        cleanup.append({"resource": "application", "error": repr(error)})
    finally:
        if observer is not None:
            cleanup.extend(observer.close())
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
            "format": "uwvm-isaac-sim-cube-subscriber-v1",
            "primary": primary,
            "frames": frames,
            "domain": args.domain,
            "topic": args.topic,
            "positions_meters": observer.events if observer else [],
            "positive_callback_observed": bool(observer and observer.events),
            "cleanup": cleanup,
            "physical_robot_commands": 0,
            "guest_executions": 0,
        }
        with evidence.open("x") as stream:
            json.dump(result, stream, indent=2)
            stream.write("\n")
    return primary


if __name__ == "__main__":
    raise SystemExit(main())
