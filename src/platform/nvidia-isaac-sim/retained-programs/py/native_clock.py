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


from roswasm_nvidia_isaac_sim.native_clock import configure_graph, ClockSubscribers


def main(argv=None):
    """@brief Run both original twenty-frame clock phases in actual Isaac Sim.

    @details Returns 13 before SDK reads or Kit/ROS import unless native simulation
    and simulation-step commands are both enabled. Builds the original automatic
    and impulse graph with one explicit native ROS2Context, 1/60 s CPU physics,
    discovery wait and 0.1 s pacing. Phase 0 performs an extra app.update after
    each frame-0/10 impulse; phase 1 sets the impulse then performs its one normal
    update. Actual callbacks retain every Clock field. No physical robot adapter
    or Wasm Guest runs. The outer finite owner bounds blocked native work.
    @param[in] argv Optional CLI list; None uses sys.argv. Required values select
    physical SDK root, domain 0..232, distinct absolute topics, lifetime 1..120000
    ms, event cap 1..256 and a fresh absolute physical evidence path. Loopback DDS,
    actual Kit renderer/ROS Python and file rights need independent admission.
    @return Primary 0/5/13/22/90/95/110/125 after independent cleanup. Unsupported
    non-CPython3.12 execution returns95 before SDK reads/imports. Dependency import
    errors before Kit acquisition may propagate. Missing either
    callback in either completed phase returns 110 rather than claiming positive
    exchange. Argparse may raise SystemExit. No Python 3.12 build is implied.
    @see ClockSubscribers
    @see README.xmake.md
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--enable-native-simulation", action="store_true")
    parser.add_argument("--enable-sim-commands", action="store_true")
    parser.add_argument("--sdk-root", required=True)
    parser.add_argument("--domain", type=int, required=True)
    parser.add_argument("--automatic-topic", required=True)
    parser.add_argument("--manual-topic", required=True)
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
        and 1 <= args.lifetime_ms <= 120000
        and 1 <= args.maximum_events <= 256
    ):
        return 22
    topics = (args.automatic_topic, args.manual_topic)
    if topics[0] == topics[1] or any(
        len(topic) > 255
        or re.fullmatch(
            r"/(?:[A-Za-z_][A-Za-z0-9_]*)(?:/[A-Za-z_][A-Za-z0-9_]*)*", topic
        )
        is None
        for topic in topics
    ):
        return 22
    sdk, evidence = Path(args.sdk_root), Path(args.evidence)
    try:
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

    app = observer = app_utils = None
    cleanup, steps = [], []
    primary = 0
    deadline = time.monotonic_ns() + args.lifetime_ms * 1000000

    def check_deadline():
        if time.monotonic_ns() >= deadline:
            raise TimeoutError("finite native clock lifetime expired")

    def pause(seconds):
        check_deadline()
        if time.monotonic_ns() + int(seconds * 1000000000) > deadline:
            raise TimeoutError("source pacing exceeds remaining native lifetime")
        time.sleep(seconds)
        check_deadline()

    try:
        app = SimulationApp({"renderer": "RealTimePathTracing", "headless": True})
        import isaacsim.core.experimental.utils.app as app_utils
        import isaacsim.core.experimental.utils.stage as stage_utils
        import omni.graph.core as og
        from isaacsim.core.simulation_manager import SimulationManager

        app_utils.enable_extension("isaacsim.ros2.bridge")
        app.update()
        import rclpy

        check_deadline()
        graph = "/UwvmClockGraph"
        configure_graph(og, args.domain, topics, graph)
        app.update()
        app.update()
        observer = ClockSubscribers(rclpy, args.domain, *topics, args.maximum_events)
        pause(1.0)
        stage_utils.set_stage_units(meters_per_unit=1.0)
        SimulationManager.setup_simulation(dt=1.0 / 60.0, device="cpu")
        app_utils.play()
        app.update()
        for phase in range(2):
            for frame in range(20):
                check_deadline()
                if not app.is_running():
                    primary = 125
                    break
                impulse = frame % 10 == 0
                if impulse:
                    og.Controller.set(
                        og.Controller.attribute(
                            graph + "/OnImpulseEvent.state:enableImpulse"
                        ),
                        True,
                    )
                    if phase == 0:
                        app.update()
                app.update()
                observer.poll(phase, frame)
                steps.append(
                    {
                        "phase": phase,
                        "frame": frame,
                        "impulse": impulse,
                        "source_app_updates": 2 if phase == 0 and impulse else 1,
                    }
                )
                if observer.primary:
                    primary = observer.primary
                    break
                pause(0.1)
            if primary:
                break
        if not primary and not all(
            any(
                event["phase"] == phase and event["callback"] == kind
                for event in observer.events
            )
            for phase in range(2)
            for kind in ("automatic", "manual")
        ):
            primary = 110
    except TimeoutError as error:
        primary = 110
        cleanup.append({"resource": "application", "error": repr(error)})
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
        events = observer.events if observer else []
        result = {
            "format": "uwvm-isaac-sim-clock-v1",
            "primary": primary,
            "official_blob": "dd1bca7d73530104e5f9b21a69c94e1d88cdd796",
            "domain": args.domain,
            "automatic_topic": topics[0],
            "manual_topic": topics[1],
            "physics_dt_seconds": 1.0 / 60.0,
            "steps": steps,
            "clock_callbacks": events,
            "both_callbacks_observed_each_phase": all(
                any(
                    event["phase"] == phase and event["callback"] == kind
                    for event in events
                )
                for phase in range(2)
                for kind in ("automatic", "manual")
            ),
            "cleanup": cleanup,
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
