"""Explicit finite native Isaac Sim JointState graph, never a hardware driver.

The actual original node IDs and field links are selected from fixed87c95274.
All Isaac/Kit imports happen after explicit admission. Normal Sim update/model
loading can block: the operator must retain a finite whole-process owner. Local
steps/time caps do not claim preemptive GPU cancellation or physical stop.
"""

import argparse
import hashlib
import json
import os
from pathlib import Path
import stat
import time
from roswasm_nvidia_isaac_sim.sensor_graph import decode, plan, TOPIC, PRIM


from roswasm_nvidia_isaac_sim.native_graph import Refused, captured_config


def main(argv=None):
    """@brief Run the genuine finite native JointState and optional sensor graph.

    @details Default denial 13 precedes SDK/USD reads and Kit/ROS effects. The
    enabled owner selects actual physical SDK/USD, literal articulation/topics,
    domain 0..232, frames 1..64 and lifetime 1..10000 ms. Commands and extra
    sensors need separate opt-ins. Full actual joint fields, sensor timestamps,
    units and selected QoS are linked to the pinned nodes. Native observation
    uses complete CDR, not a Wasm transport substitute. Requires matching real
    CPython 3.12/Kit/ROS and outer finite process ownership; blocking native/GPU
    work is not preemptively cancelled by local deadline checks.
    @param[in] argv Immutable CLI argument list; None selects sys.argv.
    @return Numeric primary/cleanup result; argparse may raise SystemExit and
    ordinary setup exceptions follow the actual source's error path. No physical
    robot motion, Guest permission or installed SDK acceptance is inferred.
    @see captured_config
    @see native_observer.NativeObserver
    @see README.xmake.md
    """
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--enable-native-simulation", action="store_true")
    p.add_argument("--enable-sim-commands", action="store_true")
    p.add_argument("--enable-native-sensors", action="store_true")
    p.add_argument("--sensor-config")
    p.add_argument("--sensor-config-sha256")
    p.add_argument("--observe-native-loop", action="store_true")
    p.add_argument("--native-evidence")
    p.add_argument("--sdk-root", required=True)
    p.add_argument("--usd", required=True)
    p.add_argument("--articulation", required=True)
    p.add_argument("--domain", type=int, required=True)
    p.add_argument("--state-topic", required=True)
    p.add_argument("--command-topic", required=True)
    p.add_argument("--state-qos-json", required=True)
    p.add_argument("--command-qos-json", required=True)
    p.add_argument("--frames", type=int, required=True)
    p.add_argument("--lifetime-ms", type=int, required=True)
    a = p.parse_args(argv)
    if not a.enable_native_simulation:
        return 13
    if bool(a.native_evidence) != a.observe_native_loop:
        return 22
    if (
        not 0 <= a.domain <= 232
        or not 1 <= a.frames <= 64
        or not 1 <= a.lifetime_ms <= 10000
    ):
        return 22
    sdk = Path(a.sdk_root)
    usd = Path(a.usd)
    try:
        if not sdk.is_absolute() or sdk.resolve(strict=True) != sdk or not sdk.is_dir():
            return 22
        if (
            not usd.is_absolute()
            or usd.resolve(strict=True) != usd
            or not usd.is_file()
        ):
            return 22
    except OSError:
        return 22
    if (
        PRIM.fullmatch(a.articulation) is None
        or len(a.articulation) > 1024
        or any(
            len(topic) > 255 or TOPIC.fullmatch(topic) is None
            for topic in (a.state_topic, a.command_topic)
        )
        or a.state_topic == a.command_topic
    ):
        return 22
    if len(a.state_qos_json) > 2048 or len(a.command_qos_json) > 2048:
        return 90
    try:
        if (
            type(decode(a.state_qos_json)) is not dict
            or type(decode(a.command_qos_json)) is not dict
        ):
            return 22
    except ValueError:
        return 22
    extra = None
    if a.enable_native_sensors:
        if not a.sensor_config or not a.sensor_config_sha256:
            return 22
        try:
            extra = captured_config(a.sensor_config, a.sensor_config_sha256)
        except Refused as error:
            return error.code
        except (ValueError, OSError):
            return 22
        if any(topic in {a.state_topic, a.command_topic} for topic in extra["topics"]):
            return 22
    elif a.sensor_config or a.sensor_config_sha256:
        return 13
    # Root selected native ROS domain, not Guest authority or an ambient default.
    os.environ["ROS_DOMAIN_ID"] = str(a.domain)
    os.environ["ROS_LOCALHOST_ONLY"] = "1"
    os.environ["ROS_AUTOMATIC_DISCOVERY_RANGE"] = "LOCALHOST"
    until = time.monotonic_ns() + a.lifetime_ms * 1000000
    import isaacsim

    if not Path(isaacsim.__file__).resolve().is_relative_to(sdk):
        return 13
    from isaacsim import SimulationApp

    simulation = SimulationApp({"headless": True})
    cleanup = []
    primary = 0
    frames = 0
    app_utils = None
    observer = None
    observed = None
    try:
        import isaacsim.core.experimental.utils.app as app_utils
        import isaacsim.core.experimental.utils.stage as stage_utils
        from isaacsim.core.simulation_manager import SimulationManager
        import omni.graph.core as og
        import usdrt.Sdf

        app_utils.enable_extension("isaacsim.ros2.bridge")
        simulation.update()
        success, stage = stage_utils.open_stage(str(usd))
        if not success or stage is None:
            raise Refused(5)
        if not stage.GetPrimAtPath(a.articulation).IsValid():
            raise Refused(22)
        if time.monotonic_ns() >= until:
            raise Refused(110)
        nodes = [
            ("Tick", "omni.graph.action.OnPlaybackTick"),
            ("Context", "isaacsim.ros2.bridge.ROS2Context"),
            ("Read", "isaacsim.sensors.physics.IsaacReadJointState"),
            ("Publish", "isaacsim.ros2.bridge.ROS2PublishJointState"),
            ("Time", "isaacsim.core.nodes.IsaacReadSimulationTime"),
        ]
        values = [
            ("Read.inputs:prim", [usdrt.Sdf.Path(a.articulation)]),
            ("Context.inputs:domain_id", a.domain),
            ("Context.inputs:useDomainIDEnvVar", False),
            ("Publish.inputs:topicName", a.state_topic),
            ("Publish.inputs:qosProfile", a.state_qos_json),
        ]
        links = [
            ("Tick.outputs:tick", "Read.inputs:execIn"),
            ("Read.outputs:execOut", "Publish.inputs:execIn"),
            ("Context.outputs:context", "Publish.inputs:context"),
            ("Time.outputs:simulationTime", "Publish.inputs:timeStamp"),
        ]
        for member in [
            "jointNames",
            "jointPositions",
            "jointVelocities",
            "jointEfforts",
            "jointDofTypes",
            "stageMetersPerUnit",
            "sensorTime",
        ]:
            links.append(("Read.outputs:" + member, "Publish.inputs:" + member))
        if a.enable_sim_commands:
            # Only this explicitly enabled branch creates an actual ROS command
            # subscriber. Each real execOut drives the controller, preserving
            # genuine Sim semantics. No fake per-message counter is claimed.
            nodes += [
                ("Subscribe", "isaacsim.ros2.bridge.ROS2SubscribeJointState"),
                ("Control", "isaacsim.core.nodes.IsaacArticulationController"),
            ]
            values += [
                ("Subscribe.inputs:topicName", a.command_topic),
                ("Subscribe.inputs:qosProfile", a.command_qos_json),
                ("Control.inputs:robotPath", a.articulation),
            ]
            links += [
                ("Tick.outputs:tick", "Subscribe.inputs:execIn"),
                ("Subscribe.outputs:execOut", "Control.inputs:execIn"),
            ]
            links.append(("Context.outputs:context", "Subscribe.inputs:context"))
            for member in [
                "jointNames",
                "positionCommand",
                "velocityCommand",
                "effortCommand",
            ]:
                links.append(
                    ("Subscribe.outputs:" + member, "Control.inputs:" + member)
                )
        if extra is not None:
            for _port, paths in extra["targets"]:
                if any(not stage.GetPrimAtPath(path).IsValid() for path in paths):
                    raise Refused(22)
            nodes += extra["nodes"]
            values += extra["values"]
            links += extra["links"]
            values += [
                (port, [usdrt.Sdf.Path(path) for path in paths])
                for port, paths in extra["targets"]
            ]
        if stage.GetPrimAtPath("/UWVM_NVIDIA_ExplicitGraph").IsValid():
            raise Refused(17)
        og.Controller.edit(
            {"graph_path": "/UWVM_NVIDIA_ExplicitGraph", "evaluator_name": "execution"},
            {
                og.Controller.Keys.CREATE_NODES: nodes,
                og.Controller.Keys.SET_VALUES: values,
                og.Controller.Keys.CONNECT: links,
            },
        )
        if a.observe_native_loop:
            from roswasm_nvidia_isaac_sim.native_observer import NativeObserver

            topics = {a.state_topic: "joint_state"}
            if a.enable_sim_commands:
                topics[a.command_topic] = "joint_command"
            if extra is not None:
                # Only the captured validated plan supplies observer inputs.
                topics.update(extra["topic_kinds"])
            observer = NativeObserver(a.native_evidence, a.domain, topics)
        SimulationManager.setup_simulation(dt=1.0 / 60.0, device="cpu")
        app_utils.play()
        while (
            simulation.is_running()
            and frames < a.frames
            and time.monotonic_ns() < until
        ):
            simulation.update()
            frames += 1
            if observer is not None:
                for _ in range(16):
                    observer.poll()
        if time.monotonic_ns() >= until:
            primary = 110
        elif frames < a.frames:
            primary = 125
    except Refused as error:
        primary = error.code
    except Exception:
        primary = 5
    finally:
        if observer is not None:
            try:
                observed = observer.close()
                cleanup.append(
                    (
                        "observer",
                        0
                        if all(
                            value is not False and not isinstance(value, str)
                            for _, value in observed["cleanup"]
                        )
                        else 5,
                    )
                )
                if not primary:
                    primary = observed["primary"] or (
                        11 if observed["missing_topics"] else 0
                    )
            except Exception as error:
                cleanup.append(("observer", error))
        if app_utils is not None:
            try:
                app_utils.stop()
                cleanup.append(("timeline", 0))
            except Exception as error:
                cleanup.append(("timeline", error))
        try:
            simulation.close()
            cleanup.append(("application", 0))
        except Exception as error:
            cleanup.append(("application", error))
        main.last = {
            "primary": primary,
            "cleanup": cleanup,
            "actual_frames": frames,
            "commands_enabled": a.enable_sim_commands,
            "configured_sensor_topics": extra["topics"] if extra is not None else [],
            "sensor_messages_observed": observed["counts"] if observed else None,
            "guest_executions": 0,
        }
        print(
            json.dumps(
                {
                    "format": "uwvm-isaac-sim-native-owner-v1",
                    "primary": primary,
                    "cleanup": [
                        (name, repr(value) if isinstance(value, Exception) else value)
                        for name, value in cleanup
                    ],
                    "actual_frames": frames,
                    "commands_enabled": a.enable_sim_commands,
                    "configured_sensor_topics": extra["topics"]
                    if extra is not None
                    else [],
                    "sensor_messages_observed": observed["counts"]
                    if observed
                    else None,
                    "guest_executions": 0,
                },
                sort_keys=True,
            )
        )
    return primary or (
        5 if any(isinstance(v, Exception) or v != 0 for _, v in cleanup) else 0
    )


if __name__ == "__main__":
    raise SystemExit(main())
