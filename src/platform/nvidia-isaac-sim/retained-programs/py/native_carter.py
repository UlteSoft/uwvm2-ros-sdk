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


from roswasm_nvidia_isaac_sim.native_carter import bind_scene_contexts, enable_stereo, StereoPublisher


def main(argv=None):
    """@brief Run the real finite multi-Carter navigation or stereo application.

    @details Requires native simulation, command and sensor opt-ins before SDK/USD
    access: the genuine navigation scenario includes its own sensor graphs too.
    Positively enabled non-CPython3.12
    returns95 before native imports. Loads the complete explicitly selected actual
    scenario, performs the original two loading updates and waits for full stage
    loading under the deadline, then uses1/60s CPU physics and actual playback.
    Navigation retains hospital/office variants. Stereo enables four original
    render products, warms up exactly60 updates, then sends the complete actual
    Twist on every even frame. No codec, fake scene or model substitutes the SDK.
    Native work needs an outer finite process owner; local checks cannot preempt
    blocked Kit/assets/driver calls. Physical robot execution is not admitted.
    @param[in] argv Optional CLI list; None uses sys.argv. Explicit program is
    navigation/stereo. Navigation requires environment hospital/office. Select
    physical SDK/scenario paths, exact lowercase scenario SHA-256, domain0..232,
    frames1..1024, lifetime1..120000ms and a fresh absolute evidence file. The
    operator freezes and admits the entire genuine scenario/asset/ROS dependency set.
    @return Primary0/5/13/22/90/95/110/125 after independent native cleanup; argparse
    may raise SystemExit. Dependency imports before Kit acquisition may propagate.
    Status0 means bounded source execution, not navigation success, stereo image
    observation, physical motion, native identity binding or Wasm Guest execution.
    @see StereoPublisher
    @see enable_stereo
    @see NATIVE-PROGRAMS.md
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--program", choices=("navigation", "stereo"), required=True)
    parser.add_argument("--environment", choices=("hospital", "office"))
    parser.add_argument("--enable-native-simulation", action="store_true")
    parser.add_argument("--enable-sim-commands", action="store_true")
    parser.add_argument("--enable-native-sensors", action="store_true")
    parser.add_argument("--sdk-root", required=True)
    parser.add_argument("--scenario-usd", required=True)
    parser.add_argument("--scenario-sha256", required=True)
    parser.add_argument("--domain", type=int, required=True)
    parser.add_argument("--frames", type=int, required=True)
    parser.add_argument("--lifetime-ms", type=int, required=True)
    parser.add_argument("--evidence", required=True)
    args = parser.parse_args(argv)
    if not (
        args.enable_native_simulation
        and args.enable_sim_commands
        and args.enable_native_sensors
    ):
        return 13
    if sys.implementation.name != "cpython" or sys.version_info[:2] != (3, 12):
        return 95
    if (
        (args.program == "navigation") != bool(args.environment)
        or not 0 <= args.domain <= 232
        or not 1 <= args.frames <= 1024
        or not 1 <= args.lifetime_ms <= 120000
        or len(args.scenario_sha256) != 64
        or any(c not in "0123456789abcdef" for c in args.scenario_sha256)
    ):
        return 22
    sdk, scene, evidence = map(Path, (args.sdk_root, args.scenario_usd, args.evidence))
    name = (
        "multiple_robot_carter_" + args.environment + "_navigation.usd"
        if args.program == "navigation"
        else "carter_warehouse_navigation.usd"
    )
    try:
        if (
            not sdk.is_absolute()
            or sdk.resolve(strict=True) != sdk
            or not sdk.is_dir()
            or not scene.is_absolute()
            or scene.resolve(strict=True) != scene
            or not scene.is_file()
            or scene.name != name
            or not 0 < scene.stat().st_size <= 512 << 20
            or not evidence.is_absolute()
            or evidence.exists()
            or evidence.parent.resolve(strict=True) != evidence.parent
        ):
            return 22
        if os.environ.get("UWVM_RESOURCE_RUN"):
            run = Path(os.environ["UWVM_RESOURCE_RUN"]).resolve(strict=True)
            if os.environ.get(
                "UWVM_RESOURCE_HEAVY_LOCK_HELD"
            ) != "1" or not evidence.is_relative_to(run / "work"):
                return 13
        with scene.open("rb") as stream:
            if (
                hashlib.file_digest(stream, "sha256").hexdigest()
                != args.scenario_sha256
            ):
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

    app = app_utils = publisher = None
    cleanup, contexts, stereo_attributes = [], [], []
    updates = {"initial": 0, "loading": 0, "setup": 0, "warmup": 0, "run": 0}
    primary = 0
    deadline = time.monotonic_ns() + args.lifetime_ms * 1000000

    def update(phase):
        if time.monotonic_ns() >= deadline:
            raise TimeoutError("finite native Carter lifetime expired")
        if not app.is_running():
            raise InterruptedError("actual Kit application stopped")
        app.update()
        updates[phase] += 1

    try:
        app = SimulationApp({"renderer": "RealTimePathTracing", "headless": True})
        import isaacsim.core.experimental.utils.app as app_utils
        import omni.graph.core as og
        import omni.usd
        from isaacsim.core.experimental.utils.stage import is_stage_loading
        from isaacsim.core.simulation_manager import SimulationManager

        app_utils.enable_extension("isaacsim.ros2.bridge")
        update("initial")
        omni.usd.get_context().open_stage(str(scene), None)
        update("loading")
        update("loading")
        while is_stage_loading():
            update("loading")
        stage = omni.usd.get_context().get_stage()
        if (
            stage is None
            or Path(stage.GetRootLayer().realPath).resolve(strict=True) != scene
        ):
            raise ValueError("the complete selected physical scenario was not loaded")
        contexts = bind_scene_contexts(stage, og, args.domain)
        SimulationManager.setup_simulation(dt=1.0 / 60.0, device="cpu")
        if args.program == "stereo":
            stereo_attributes = enable_stereo(og)
        else:
            update("setup")
        app_utils.play()
        update("setup")
        if args.program == "stereo":
            for _ in range(60):
                update("warmup")
            import rclpy

            publisher = StereoPublisher(rclpy, args.domain)
        for frame in range(args.frames):
            update("run")
            if publisher is not None and frame % 2 == 0:
                publisher.publish(frame)
    except TimeoutError as error:
        primary = 110
        cleanup.append({"resource": "application", "error": repr(error)})
    except (KeyboardInterrupt, InterruptedError):
        primary = 125
    except OverflowError as error:
        primary = 90
        cleanup.append({"resource": "application", "error": repr(error)})
    except Exception as error:
        primary = 5
        cleanup.append({"resource": "application", "error": repr(error)})
    finally:
        if publisher is not None:
            cleanup.extend(publisher.close())
        for resource, operation in (
            ("playback", app_utils.stop if app_utils else None),
            ("kit", app.close if app else None),
        ):
            if operation is not None:
                try:
                    operation()
                    cleanup.append({"resource": resource, "result": True})
                except Exception as error:
                    cleanup.append({"resource": resource, "error": repr(error)})
        if not primary and any("error" in row for row in cleanup):
            primary = 5
        result = {
            "format": "uwvm-isaac-sim-carter-v1",
            "primary": primary,
            "program": "sim-carter-multiple-navigation"
            if args.program == "navigation"
            else "sim-carter-stereo",
            "official_blob": "263932ffdecc1fc23b3a4cfa255da3fbf8d0446b"
            if args.program == "navigation"
            else "e312d1c589480ef3db2737b767b1a1fbb1c47285",
            "environment": args.environment,
            "scenario_usd": str(scene),
            "scenario_sha256": args.scenario_sha256,
            "domain": args.domain,
            "context_prim_assignments": contexts,
            "stereo_attribute_assignments": stereo_attributes,
            "app_updates": updates,
            "physics_dt_seconds": 1.0 / 60.0,
            "twist_publish_attempts": publisher.attempts if publisher else [],
            "cleanup": cleanup,
            "native_motion_observed": False,
            "stereo_images_observed": False,
            "physical_robot_commands": 0,
            "guest_executions": 0,
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
