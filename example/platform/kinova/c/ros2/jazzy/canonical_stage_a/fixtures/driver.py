# SPDX-License-Identifier: Apache-2.0
"""Public API v1 candidate for four finite, real frozen-C0 Kinova cases.

Configuration files below are ordinary SDK04 scene inputs. They cannot grant a
live VM lease, change a host generation, or replace the installed shared guard.
"""
import hashlib
import json
import os
from pathlib import Path
import signal
import stat
import struct
import time

API_VERSION = 1


def need(value, reason):
    if not value:
        raise RuntimeError(reason)


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def save(context, path, value):
    context.guard()
    with Path(path).open("x") as stream:
        json.dump(value, stream, indent=2)
        stream.write("\n")


def wait_until(context, predicate, seconds, reason):
    deadline = time.monotonic() + seconds
    while True:
        context.sample()
        value = predicate()
        if value:
            return value
        need(time.monotonic() < deadline, reason)
        time.sleep(0.025)


def environment_inputs(context):
    context.guard()
    selected = os.environ.get("SDK04_KINOVA_ENVIRONMENT_INPUTS")
    if not selected:
        context.block("BLOCKED_SDK04_KINOVA_PINNED_ENVIRONMENT_INPUTS_REQUIRED")
    providers = context.deployment["official_provider_files"] + context.deployment["runtime"]["paired_providers"]
    pins = {str(Path(row["path"]).resolve()): row["sha256"] for row in providers}
    def pinned(path):
        actual = Path(path).resolve(strict=True)
        need(pins.get(str(actual)) == digest(actual), "Scene input is absent from actual VM deployment provider pins: " + str(actual))
        return actual
    path = pinned(selected)
    value = json.loads(path.read_text())
    if value.get("format") != "sdk04-kinova-official-mock-inputs-v1":
        context.block("BLOCKED_SDK04_KINOVA_ENVIRONMENT_INPUT_FORMAT")
    identities = json.loads((context.example / "profiles/input-identities.json").read_text())
    runtime = context.deployment["runtime"]
    need(runtime["sha256"] == identities["runtime"]["sha256"] and
         runtime["source_identity"] == identities["runtime"]["source_identity"], "Exact R12 public candidate identity differs")
    need(set(value["programs"]) == {"python", "controller_manager", "robot_state_publisher", "controller_spawner", "native_joint"},
         "Complete explicit official programs and VM native boundary required")
    for name, row in value["programs"].items():
        row["path"] = str(pinned(row["path"]))
        need(row["sha256"] == digest(row["path"]), "Actual scene program changed: " + name)
    native = value["programs"]["native_joint"]
    need(native["sha256"] == identities["native"]["sha256"] and native["source_identity"] == identities["native"]["source_identity"] and
         Path(native["path"]).stat().st_size == identities["native"]["bytes"], "Exact VM-owned native450 boundary differs")
    origin = value["native_provenance"]
    origin["path"] = str(pinned(origin["path"]))
    need(origin["sha256"] == digest(origin["path"]), "Native provenance pin differs")
    document = json.loads(Path(origin["path"]).read_text())
    need(document["format"] == "uwvm-portable-native-provenance-v1" and
         document["execution_class"] == "software_simulation" and
         document["official_repository"] == "https://github.com/Kinovarobotics/ros2_kortex" and
         document["official_commit"] == "462dab9aa4732d733be55e1846530dd920c7c7d3", "Official native provenance differs")
    for row in document["images"]:
        need(str(pinned(row["path"])) == row["path"] and digest(row["path"]) == row["sha256"], "Actual native mapped image pin differs")
    allowed_env = {"PATH", "AMENT_PREFIX_PATH", "PYTHONPATH", "LD_LIBRARY_PATH", "RMW_IMPLEMENTATION"}
    need(set(value["environment"]) <= allowed_env and value["environment"].get("RMW_IMPLEMENTATION") == "rmw_fastrtps_cpp",
         "Unexpected environment input or RMW")
    env = dict(value["environment"])
    vendor = str(context.example / "vendor-prefix")
    env["AMENT_PREFIX_PATH"] = vendor + ":" + env.get("AMENT_PREFIX_PATH", "")
    env.update(ROS_LOCALHOST_ONLY="1", ROS2CLI_NO_DAEMON="1", ROS_DOMAIN_ID=str(20 + int(context.run_id[:8], 16) % 180),
               PYTHONDONTWRITEBYTECODE="1", LD_PRELOAD="", HOME=str(context.output / "home"),
               ROS_LOG_DIR=str(context.output / "ros-logs"))
    for name in ("home", "ros-logs"):
        (context.output / name).mkdir(exist_ok=True)
    value["actual_environment"] = env
    value["actual_provider_pins"] = pins
    return value


def deployment(context, folder, socket, environment, generation):
    facts = json.loads((context.example / "profiles/model-facts.json").read_text())
    policy = {"format": "uwvm-portable-robot-grant-v1", "alias": "robot", "module": "main",
              "capability": "joint.position.bounded.v1", "wasm_sha256": context.before,
              "policy_epoch": generation, "rights": 15,
              "native": {"socket": str(socket), "uid": os.getuid(),
                         "executable_sha256": environment["programs"]["native_joint"]["sha256"],
                         "provenance_sha256": environment["native_provenance"]["sha256"], "generation": generation},
              "resources": facts["resources"]}
    folder.mkdir(exist_ok=False)
    policy_path = folder / "policy.json"
    save(context, policy_path, policy)
    adapter = {"format": "uwvm-portable-robot-adapter-v1", "contract_version": "0.1.0",
               "platform_id": facts["platform_id"], "execution_class": "software_simulation",
               "capability": "joint.position.bounded.v1",
               "official_source": {**{key: facts["official_source"][key] for key in ("repository", "commit", "mode", "scope")}, "license": "BSD"},
               "ros": {"release": "jazzy", "os_abi": "ubuntu24.04-linux-x86_64", "rmw": "rmw_fastrtps_cpp",
                       "transport": "isolated-container-localhost", "security": "explicit-local-UID-and-image-pins"},
               "frame": "joint_space", "resources": facts["resources"], "joints": facts["joints"],
               "policy_sha256": digest(policy_path), "mapping_epoch": 1}
    adapter_path = folder / "adapter.json"
    save(context, adapter_path, adapter)
    return {"adapter": adapter_path, "policy": policy_path}


def native_arguments(context, environment, bound):
    return [environment["programs"]["native_joint"]["path"], str(bound["adapter"]), digest(bound["adapter"]),
            str(bound["policy"]), digest(bound["policy"]), environment["native_provenance"]["path"],
            context.deployment["runtime"]["sha256"], "--portable-robot-audit-run", context.run_id]


def spawn(context, environment, role, key, tail):
    program = environment["programs"][key]
    return context.spawn(role, [program["path"], *map(str, tail)], env=environment["actual_environment"], expected_sha256=program["sha256"])


def graph_images(context, environment, manager):
    context.sample()
    need(manager["process"].poll() is None, "Official controller manager exited")
    required = {"libcontroller_manager.so", "libmock_components.so", "libjoint_state_broadcaster.so", "libjoint_trajectory_controller.so"}
    actual = {}
    for line in (Path("/proc") / str(manager["pid"]) / "maps").read_text().splitlines():
        fields = line.split(maxsplit=5)
        if len(fields) != 6 or "x" not in fields[1] or Path(fields[5]).name not in required:
            continue
        path = Path(fields[5])
        need(path.is_absolute() and " (deleted)" not in str(path), "Invalid actual controller mapping")
        sha256 = digest(path)
        need(environment["actual_provider_pins"].get(str(path.resolve())) == sha256, "Actual controller/plugin image is not pinned by deployment")
        actual[str(path)] = sha256
    need(required == {Path(name).name for name in actual}, "Actual official CM/mock/JSB/JTC mappings incomplete")
    return {"pid": manager["pid"], "birth": manager["birth"], "observed_ns": time.monotonic_ns(), "actual_mapped_images": actual}


def positive_witness(context, vm, native, graph):
    rows = context.events(vm)
    terminal = [row for row in context.events(native) if row.get("event") == "native_terminal"]
    state = [row for row in rows if row.get("format") == "uwvm-sdk-simulation-state-delivery-v1"]
    need(len(terminal) == 1 and len(state) == 2, "Actual native result and two real guest state copies required")
    result = terminal[0]
    need(result["outcome"] == 2 and result["native_status"] == 0 and result["fresh_state_confirmed"], "Actual native result/fresh-state failure")
    facts = json.loads((context.example / "profiles/model-facts.json").read_text())
    values = []
    for row in state:
        wire = bytes.fromhex(row["payload_hex"])
        need(len(wire) == 176 and row["guest_memory_written"] and row["output_bytes"] == 176 and
             hashlib.sha256(wire).hexdigest() == row["payload_sha256"] and
             struct.unpack_from("<4sHHII", wire) == (b"URP1", 1, 2, 176, 7), "Real seven-joint guest state frame differs")
        joints = []
        for i, mapped in enumerate(facts["joints"]):
            slot, flags, value = struct.unpack_from("<IIq", wire, 64 + 16 * i)
            need(slot == i == mapped["slot"] and flags == 1 and mapped["lower_microrad"] <= value <= mapped["upper_microrad"], "Actual joint slot/limit differs")
            joints.append(value)
        values.append(joints)
    errors = []
    for i, joint in enumerate(facts["joints"]):
        first, last = values[0][i], values[1][i]
        room = joint["upper_microrad"] - first
        target = first + min(room, joint["max_step_microrad"]) if room else first - min(first - joint["lower_microrad"], joint["max_step_microrad"])
        need(abs(last - target) <= joint["tolerance_microrad"], "Guest-copied final position misses frozen source target")
        errors.append({"slot": i, "target": target, "actual": last, "error_microrad": abs(last - target)})
    need(state[-1]["native_operation_id"] == result["goal_uuid"], "Native UUID differs from actual final copy")
    return {"fresh_state": True, "native_graph_verified": True, "native_result_success": True,
            "position_matches": True, "goal_uuid": result["goal_uuid"], "actual_graph": graph,
            "actual_native_terminal": result, "joints": errors,
            "guest_processing_acceptance": "Installed common exact-C0 verifier must independently pass"}


def retire_case(context, actors):
    for actor in reversed(actors):
        if actor["process"].poll() is None:
            actual = context.actor_identity(actor["pid"])
            need(actual["birth"] == actor["birth"], "Owned actor birth changed before scene retirement")
            os.killpg(actor["pid"], signal.SIGTERM)
    deadline = time.monotonic() + 3
    while any(actor["process"].poll() is None for actor in actors) and time.monotonic() < deadline:
        context.sample()
        time.sleep(0.025)
    for actor in reversed(actors):
        if actor["process"].poll() is None:
            need(context.actor_identity(actor["pid"])["birth"] == actor["birth"], "Owned actor birth changed before kill")
            os.killpg(actor["pid"], signal.SIGKILL)
        context.wait(actor, 5)


def run_case(context, scenario):
    context.guard()
    environment = environment_inputs(context)
    expected_mode = json.loads((context.example / "profiles/runtime-arguments.json").read_text())["scenarios"][scenario["id"]]
    need(context.deployment["scenarios"][scenario["id"]]["runtime_arguments"] == expected_mode["runtime_arguments"],
         "Actual VM-owned deployment arguments differ from the exact R12 candidate")
    (context.output / ("vm-cache-" + scenario["id"])).mkdir(exist_ok=False)
    root = context.output / scenario["id"]
    root.mkdir(exist_ok=False)
    socket_dir = Path("/tmp") / ("sdk04-kinova-" + context.run_id)
    if not socket_dir.exists():
        socket_dir.mkdir(mode=0o700)
    info = socket_dir.lstat()
    need(stat.S_ISDIR(info.st_mode) and info.st_uid == os.getuid() and stat.S_IMODE(info.st_mode) == 0o700,
         "Actual private scene socket directory differs")
    socket = socket_dir / (str(context.manifest["scenarios"].index(scenario)) + ".sock")
    old = deployment(context, root / "old-reference", socket, environment, 2)
    if scenario["kind"] == "denied":
        vm = context.run_vm(scenario, old["adapter"], old["policy"])
        context.complete_operation_case(scenario, vm, None, {})
        return
    index = len(context.actors)
    try:
        model = root / "model"
        program = spawn(context, environment, "environment", "python", ["-B", context.example / "fixtures/prepare_model.py",
            "--sdk-root", context.sdk, "--output", model, "--facts", context.example / "profiles/model-facts.json",
            "--vendor-prefix", context.example / "vendor-prefix"])
        need(context.wait(program, 30) == 0, "Actual official model expansion failed")
        manager = spawn(context, environment, "simulator", "controller_manager", ["--ros-args", "--params-file",
            context.example / "fixtures/controllers.yaml", "--remap", "~/robot_description:=/robot_description"])
        spawn(context, environment, "environment", "robot_state_publisher", ["--ros-args", "--params-file", model / "robot-description.params.yaml"])
        for name in ("joint_state_broadcaster", "joint_trajectory_controller"):
            actor = spawn(context, environment, "environment", "python", ["-B", environment["programs"]["controller_spawner"]["path"],
                name, "--controller-manager", "/controller_manager", "--controller-manager-timeout", "30", "--switch-timeout", "10",
                "--param-file", context.example / "fixtures/controllers.yaml"])
            need(context.wait(actor, 45) == 0, "Actual official controller spawner failed")
            need(("Configured and activated " + name).encode() in actor["stdout"].read_bytes() + actor["stderr"].read_bytes(),
                 "Actual official controller activation marker absent")
        peer = deployment(context, root / "changed-native-reference", socket, environment, 3) if scenario["id"] == "stale_authority_reference" else old
        native = context.spawn("native", native_arguments(context, environment, peer), env=environment["actual_environment"],
                               expected_sha256=environment["programs"]["native_joint"]["sha256"])
        def ready():
            need(native["process"].poll() is None, "Native peer refused actual graph/fresh-state startup")
            return socket.exists() and stat.S_ISSOCK(socket.lstat().st_mode)
        wait_until(context, ready, 30, "Actual native peer readiness deadline")
        graph = graph_images(context, environment, manager)
        if scenario["id"] == "native_disconnected_before_guest":
            need(context.actor_identity(native["pid"])["birth"] == native["birth"], "Actual native birth changed before disconnection")
            os.killpg(native["pid"], signal.SIGKILL)
            need(context.wait(native, 5) == -signal.SIGKILL and socket.exists(), "Real peer disappearance and original socket retention required")
            need(not (Path("/proc") / str(native["pid"])).exists(), "Disconnected native PID still present before guest")
        vm = context.run_vm(scenario, old["adapter"], old["policy"])
        if scenario["expected_vm_exit"] == 0:
            need(context.wait(native, 10) == 0, "Real native success exit required")
            context.complete_operation_case(scenario, vm, native, positive_witness(context, vm, native, graph))
        else:
            expected_native = 1 if scenario["id"] == "stale_authority_reference" else -signal.SIGKILL
            need(context.wait(native, 10) == expected_native, "Actual negative native exit differs")
            rows = context.events(vm)
            need(not any(row.get("format") in ("uwvm-portable-robot-audit-v1", "uwvm-sdk-simulation-state-delivery-v1") or
                         row.get("native_operation_id") for row in rows), "Rejected reference produced an operation or guest state")
            need(not native["stdout"].read_bytes(), "Rejected native emitted an operation/result")
            if scenario["id"] == "stale_authority_reference":
                need("native peer/provenance/binding changed" in native["stderr"].read_text(), "Actual pre-operation native binding guard did not reject")
            observation = {"actual_vm_exit": vm["process"].returncode, "actual_native_exit": native["process"].returncode,
                           "native_goals": 0, "guest_state_copies": 0, "actual_graph": graph,
                           "scope": "Four original finite cases only; no expired guest-handle or individual wire-field proof"}
            save(context, root / "negative-observation.json", observation)
            context.complete_operation_case(scenario, vm, native, observation)
    finally:
        retire_case(context, context.actors[index:])
