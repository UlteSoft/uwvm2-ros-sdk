"""Stage A public driver: guest control first, independent ROS oracle afterward.

The sole ROS query outside Wasm is a fixed official CLI observation after the
actual guest-feedback verifier passes. It never sends a goal or supplies guest
input. The staged requirement explicitly permits this independent test oracle.
"""
from pathlib import Path
import hashlib
import math
import os
import stat
import time
import xml.etree.ElementTree as ET

API_VERSION = 1


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def require(condition, diagnostic):
    if not condition:
        raise RuntimeError(diagnostic)


def installed(context):
    profile = context.deployment.get("nvidia_ros_communication_v1")
    if not isinstance(profile, dict):
        context.block("BLOCKED_VM_DEPLOYED_STAGE_A_OFFICIAL_PEER_AND_RESTRICTED_HOST_BINDINGS")
    require(profile.get("stage") == "A" and profile.get("physics") is False,
            "Stage A must remain communication-only")
    providers = {row["path"]: row["sha256"] for row in context.deployment["official_provider_files"]}
    for role in ("python", "controller_manager", "robot_state_publisher", "controller_spawner", "ros2_cli"):
        item = profile["programs"][role]
        require(providers.get(item["path"]) == item["sha256"] == digest(item["path"]),
                "Official peer/oracle program is outside the VM-pinned provider closure: " + role)
    native = profile["native_host"]
    approved = context.deployment["runtime"].get("controlled_native_host")
    if not isinstance(approved, dict):
        context.block("BLOCKED_VM_PUBLISHED_RESTRICTED_JOINT_HOST_COMPONENT")
    require(approved.get("kind") == "uwvm2-ros-restricted-ros2-joint-host-v1"
            and approved.get("source_identity") and native == approved,
            "Only the deployed VM-owned restricted joint host is permitted")
    require(digest(native["path"]) == native["sha256"], "Restricted native host bytes changed")
    environment = profile["environment"]
    require(environment.get("ROS_LOCALHOST_ONLY") == "1"
            and environment.get("RMW_IMPLEMENTATION") == "rmw_fastrtps_cpp"
            and str(environment.get("ROS_DOMAIN_ID", "")).isdecimal()
            and 0 <= int(environment["ROS_DOMAIN_ID"]) <= 232,
            "Isolated fixed ROS communication environment is required")
    require(sorted(os.listdir("/sys/class/net")) == ["lo"],
            "Stage A requires its admitted isolated loopback network")
    return profile, environment


def inputs(context, profile, scenario):
    selected = profile["scenarios"][scenario["id"]]
    for role in ("adapter", "policy"):
        require(digest(selected[role]["path"]) == selected[role]["sha256"],
                "VM-deployed Stage A input changed: " + role)
    return Path(selected["adapter"]["path"]), Path(selected["policy"]["path"]), selected


def scene_description(scene, adapter):
    # This validates external configuration; it performs no ROS observation.
    description = (scene / "robot.urdf").read_text()
    require(len(description.encode()) <= 8192, "Bounded Stage A URDF exceeded")
    model = ET.fromstring(description)
    require([item.text.strip() for item in model.findall("./ros2_control/hardware/plugin")]
            == ["mock_components/GenericSystem"], "Only the official software hardware peer is allowed")
    expected = [row["native_joint"] for row in adapter["joints"]]
    joints = model.findall("./joint")
    require([joint.get("name") for joint in joints] == expected
            and [joint.get("name") for joint in model.findall("./ros2_control/joint")] == expected,
            "External peer and adapter joint rosters differ")
    for joint in joints:
        limit = joint.find("limit")
        require(joint.get("type") == "revolute" and limit is not None
                and (limit.get("lower"), limit.get("upper")) == ("-1", "1"),
                "Fixed bounded Stage A joint model required")
    return description


def run_case(context, scenario):
    if scenario["id"] == "independent-memory-and-authority":
        context.block("BLOCKED_REQUIRED_COMPONENT_INSTANCE_AND_COPY_CHANNEL_ABI: VM/SDK01 must publish real separate memories, caller grants and typed generation-bound transfer")
    if scenario["id"] in ("stale-reference-or-feedback", "bounded-disconnect-timeout"):
        context.block("BLOCKED_REQUIRED_STAGE_A_NEGATIVE_GUEST_FEEDBACK_PROFILE: VM/SDK01 must publish the exact fault and in-guest rejection contract")
    profile, environment = installed(context)
    adapter, policy, selected = inputs(context, profile, scenario)
    if scenario["kind"] == "denied":
        vm = context.run_vm(scenario, adapter, policy)
        context.complete_denied_case(scenario, vm)
        context.completed[scenario["id"]]["stage"] = "A"
        return

    import json
    import yaml
    programs = profile["programs"]
    python = programs["python"]
    cm, rsp = programs["controller_manager"], programs["robot_state_publisher"]
    scene = context.example / "scene"
    adapter_data = json.loads(adapter.read_text())
    require([row["native_joint"] for row in adapter_data["joints"]] == ["stage_a_joint1", "stage_a_joint2"],
            "Stage A mapping does not match the fixed external peer configuration")
    require(adapter_data["resources"]["joint_state_topic"] == "/joint_states"
            and adapter_data["resources"]["position_action"] == "/portable_position_controller/follow_joint_trajectory",
            "Stage A resource names differ")
    description = scene_description(scene, adapter_data)
    provenance = selected["native_provenance"]
    require(digest(provenance["path"]) == provenance["sha256"], "Native provenance input changed")
    endpoint = Path(adapter_data["native"]["socket"])
    require(not endpoint.exists() and not endpoint.is_symlink(),
            "A pre-existing native endpoint cannot establish a fresh Stage A session")
    # Launch each actual ROS executable through the public stopped after-exec
    # gate; no SDK supervisor starts unobserved native ROS children.
    rsp_actor = context.spawn("official-robot-state-publisher", [rsp["path"], "--ros-args",
        "-p", "robot_description:=" + description], env=environment, expected_sha256=rsp["sha256"])
    cm_actor = context.spawn("simulator", [cm["path"], "--ros-args", "--params-file",
        str(scene / "controllers.yaml"), "-r", "robot_description:=/robot_description"],
        env=environment, expected_sha256=cm["sha256"])
    peers = [rsp_actor, cm_actor]
    spawner = context.spawn("official-controller-setup", [python["path"], "-B",
        programs["controller_spawner"]["path"], "joint_state_broadcaster", "portable_position_controller",
        "--controller-manager", "/controller_manager", "--param-file", str(scene / "controllers.yaml")],
        env=environment, expected_sha256=python["sha256"])
    require(context.wait(spawner, 30) == 0, "Official controller configuration/activation failed")
    require(all(actor["process"].poll() is None for actor in peers),
            "An official ROS peer exited during controller setup")
    native_spec = profile["native_host"]
    native = context.spawn("restricted-native-host", [native_spec["path"], str(adapter), digest(adapter),
        str(policy), digest(policy), provenance["path"], context.deployment["runtime"]["sha256"],
        "--portable-robot-audit-run", context.run_id], env=environment,
        expected_sha256=native_spec["sha256"])
    deadline = time.monotonic() + 10
    while True:
        context.sample()
        require(native["process"].poll() is None, "Restricted host exited before readiness")
        try:
            info = endpoint.lstat()
            if stat.S_ISSOCK(info.st_mode) and info.st_uid == os.getuid() and not info.st_mode & 0o007:
                break
        except FileNotFoundError:
            pass
        require(time.monotonic() < deadline, "Restricted official ROS host readiness timed out")
        time.sleep(0.02)
    vm = context.run_vm(scenario, adapter, policy)
    require(context.wait(native, 5) == 0, "Restricted host did not finish its owned session")
    # This must succeed before any native oracle is allowed to inspect state.
    feedback = context.guest_feedback.verify(context.run_id, vm, native, adapter_data, vm["binding_inputs"])
    require(feedback["guest_processing_verified"] is True, "Fresh ROS feedback was not asserted inside Wasm")
    terminal = [row for row in context.events(native) if row.get("event") == "native_terminal"]
    require(len(terminal) == 1 and terminal[0].get("fresh_state_confirmed") is True
            and terminal[0].get("outcome") == 2 and terminal[0].get("native_status") == 0,
            "Actual restricted-host terminal result is missing")
    require(all(actor["process"].poll() is None for actor in peers),
            "An official ROS peer exited during the actual guest round trip")
    before_wall = time.time_ns()
    oracle = context.spawn("official-ros-post-guest-oracle", [python["path"], "-B",
        programs["ros2_cli"]["path"], "topic", "echo", "/joint_states", "--once"],
        env=environment, expected_sha256=python["sha256"])
    require(context.wait(oracle, 10) == 0, "Official post-guest observation timed out")
    after_wall = time.time_ns()
    require(all(actor["process"].poll() is None for actor in peers),
            "An official ROS peer exited during independent post-guest observation")
    raw = oracle["stdout"].read_bytes()
    require(len(raw) <= 8192, "Bounded two-joint independent oracle output exceeded")
    documents = [row for row in yaml.safe_load_all(raw.decode()) if row is not None]
    require(len(documents) == 1, "Independent official ROS oracle did not return exactly one state")
    state = documents[0]
    stamp = state["header"]["stamp"]
    require(type(stamp["sec"]) is int and type(stamp["nanosec"]) is int
            and 0 <= stamp["nanosec"] < 1_000_000_000, "Invalid ROS timestamp")
    observed_wall = stamp["sec"] * 1_000_000_000 + stamp["nanosec"]
    require(before_wall - 250_000_000 <= observed_wall <= after_wall,
            "Stale independent post-guest ROS state")
    require(len(state["name"]) == len(state["position"]) == 2 and len(set(state["name"])) == 2,
            "Independent joint roster differs")
    positions = dict(zip(state["name"], state["position"]))
    for joint, check in zip(adapter_data["joints"], feedback["joints"]):
        value = positions[joint["native_joint"]]
        require(type(value) in (int, float) and math.isfinite(value)
                and abs(value * 1_000_000 - check["target_microrad"]) <= check["tolerance_microrad"],
                "Independent official ROS state differs from the guest-checked target")
    witness = {"stage": "A", "scope": "Official ROS GenericSystem/JTC communication only; no physics",
        "fresh_state": True, "native_graph_verified": True,
        "goal_uuid": terminal[0]["goal_uuid"], "native_result_success": True,
        "position_matches": True, "official_spawner_exit": spawner["process"].returncode,
        "oracle_stdout_sha256": hashlib.sha256(raw).hexdigest(),
        "oracle_observed_after_guest_feedback_verified": True,
        "oracle_supplied_guest_input_or_goal": False,
        "official_peers_direct_public_exec_gate": True,
        "official_peer_actual_exec_receipt_sha256": [actor["actual_exec_receipt_sha256"] for actor in peers],
        "oracle_actual_exec_receipt_sha256": oracle["actual_exec_receipt_sha256"]}
    context.complete_joint_case(scenario, vm, native, witness)
