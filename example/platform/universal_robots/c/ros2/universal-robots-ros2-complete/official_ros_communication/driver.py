"""Official ROS environment orchestration and evidence, never SDK business code.

The unchanged C Wasm issues commands and validates result/fresh state. This file
starts official software and the VM-owned restricted Host, and reads their
bounded records. It imports no native ROS client and never constructs a goal,
state reply, permission grant, or live VM admission.
"""
import json
import os
from pathlib import Path
import signal
import stat
import time

from guest_feedback import stream_rows
from runtime_boundary import Blocked, digest, process_birth, read_document, readonly

API_VERSION = 1
FROZEN = "c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043"
KNOWN_MISSING_UNWIND = "623de8c3ffee2df67932c4313aee574297d8537341b4acc29018fab1f1107ecc"
LAUNCH = ["launch", "ur_robot_driver", "ur_control.launch.py", "ur_type:=ur5e",
          "robot_ip:=127.0.0.1", "use_mock_hardware:=true", "launch_rviz:=false",
          "initial_joint_controller:=joint_trajectory_controller", "activate_joint_controller:=true"]


def need(condition, message):
    if not condition:
        raise RuntimeError(message)


def context_document(context, pin):
    path = context.boundary.context_file(pin["path"])
    document, actual = read_document(path)
    need(actual == pin["sha256"], "VM-owned context input identity changed")
    return path, document


def configuration(context):
    if hasattr(context, "_ur_communication"):
        return context._ur_communication
    selector = os.environ.get("UWVM_UR_STAGE_A_CONTEXT")
    if not selector:
        context.block("BLOCKED_VM_OWNED_UR_STAGE_A_CONTEXT_REQUIRED")
    # The producer label below is descriptive. Authority comes from the actual
    # LiveBoundary, its immutable context and every runtime import check.
    path = context.boundary.context_file(selector)
    config, config_sha = read_document(path)
    need(config.get("format") == "uwvm-sdk03-ur-stage-a-context-v1" and
         config.get("producer") == "uwvm2-ros/guardian" and
         config["boundary_nonce"] == context.boundary.nonce,
         "Fresh VM-owned vendor context is required")
    need(config["profile"] == context.manifest["profile"]["id"] and
         config["execution_class"] == "software_simulation", "Wrong communication environment")
    facts_path = Path(__file__).with_name("profile.json")
    readonly(facts_path)
    facts, _ = read_document(facts_path)
    need(facts["id"] == config["profile"] and facts["model"] == "ur5e" and
         facts["release"] == "jazzy", "Public UR profile differs")
    runtime = context.deployment["runtime"]
    if runtime["sha256"] == KNOWN_MISSING_UNWIND:
        context.block("BLOCKED_KNOWN_RUNTIME_MISSING_REQUIRED_UNWIND_WITNESS")
    need(config["runtime_sha256"] == runtime["sha256"] and digest(context.wasm) == FROZEN,
         "VM or complete canonical Wasm identity differs")
    paired = {(str(Path(row["path"]).resolve()), row["sha256"])
              for row in runtime["paired_providers"]}
    native = config["native"]
    need((str(Path(native["path"]).resolve()), native["sha256"]) in paired and
         digest(native["path"]) == native["sha256"], "Actual paired restricted Host is required")
    readonly(native["path"])
    providers = {(str(Path(row["path"]).resolve()), row["sha256"])
                 for row in context.deployment["official_provider_files"]}
    critical = config["critical_official_images"]
    need(len(critical) == 3 and {row["role"] for row in critical} ==
         {"controller-manager", "mock-system", "joint-controller"}, "Exact official image roles required")
    for item in [config["python"], config["ros2_cli"], *critical]:
        need((str(Path(item["path"]).resolve()), item["sha256"]) in providers and
             digest(item["path"]) == item["sha256"], "Official launch input missing from deployment pins")
        readonly(item["path"])
    environment = config["environment"]
    allowed = {"PATH", "LD_LIBRARY_PATH", "PYTHONPATH", "AMENT_PREFIX_PATH", "CMAKE_PREFIX_PATH",
               "COLCON_PREFIX_PATH", "PKG_CONFIG_PATH", "ROS_DISTRO", "ROS_VERSION",
               "ROS_PYTHON_VERSION", "ROS_DOMAIN_ID", "ROS_LOCALHOST_ONLY", "RMW_IMPLEMENTATION",
               "HOME", "TMPDIR", "PYTHONDONTWRITEBYTECODE", "RCUTILS_LOGGING_USE_STDOUT"}
    need(set(environment).issubset(allowed) and all(type(v) is str for v in environment.values()) and
         environment.get("ROS_LOCALHOST_ONLY") == "1" and environment.get("ROS_DISTRO") == "jazzy" and
         environment.get("RMW_IMPLEMENTATION") == "rmw_fastrtps_cpp", "Unreviewed ROS launch environment")
    need(not os.environ.get("LD_PRELOAD") and not os.environ.get("PYTHONSTARTUP"),
         "Injected executable environment is not allowed")
    directory = Path(config["endpoint_directory"])
    info = directory.lstat()
    need(directory.is_absolute() and directory.resolve() == directory and
         directory.name == "ur-stage-a-" + context.boundary.nonce and
         stat.S_ISDIR(info.st_mode) and info.st_uid == os.getuid() and
         stat.S_IMODE(info.st_mode) == 0o700, "Invocation-owned private endpoint directory required")
    state = {"config": config, "config_sha256": config_sha, "facts": facts, "environment": environment,
             "endpoint_directory": directory, "official": None}
    context._ur_communication = state
    return state


def binding(context, state, specification):
    adapter_path, adapter = context_document(context, specification["adapter"])
    policy_path, policy = context_document(context, specification["policy"])
    provenance_path, provenance = context_document(context, specification["provenance"])
    profile = context.manifest["profile"]
    facts = state["facts"]
    need(adapter["format"] == "uwvm-portable-robot-adapter-v1" and
         adapter["execution_class"] == "software_simulation" and
         adapter["policy_sha256"] == digest(policy_path) and adapter["ros"]["release"] == "jazzy",
         "Exact software communication adapter required")
    need(adapter["joints"] == facts["joints"] and adapter["resources"] == facts["resources"] and
         adapter["frame"] == "joint_space" and adapter["ros"]["rmw"] == "rmw_fastrtps_cpp" and
         all(adapter["official_source"][key] == facts["official_source"][key]
             for key in ("repository", "commit", "mode")), "UR source, joint mapping or controller differs")
    need(policy["format"] == "uwvm-portable-robot-grant-v1" and policy["module"] == "main" and
         policy["alias"] == "robot" and policy["wasm_sha256"] == FROZEN and
         policy["capability"] == adapter["capability"] == "joint.position.bounded.v1" and
         policy["rights"] == 15 and policy["resources"] == facts["resources"],
         "Narrow genuine portable grant is required")
    need(policy["native"]["executable_sha256"] == state["config"]["native"]["sha256"] and
         policy["native"]["provenance_sha256"] == digest(provenance_path) and
         policy["native"]["uid"] == os.getuid(), "Native provenance/identity differs")
    need(provenance["format"] == "uwvm-portable-native-provenance-v1" and
         provenance["execution_class"] == "software_simulation" and
         provenance["official_repository"] == adapter["official_source"]["repository"] and
         provenance["official_commit"] == adapter["official_source"]["commit"] and
         provenance["official_mode"] == profile["official_mode"], "Official source provenance differs")
    endpoint = Path(policy["native"]["socket"])
    need(endpoint.is_absolute() and len(os.fsencode(endpoint)) < 108 and
         endpoint.parent == state["endpoint_directory"] and endpoint.suffix == ".sock" and
         not endpoint.exists(), "Endpoint must be fresh and invocation-owned")
    return {"adapter": adapter_path, "policy": policy_path, "provenance": provenance_path,
            "adapter_document": adapter, "policy_document": policy, "socket": endpoint}


def until(context, predicate, seconds, message):
    deadline = time.monotonic() + seconds
    while time.monotonic() < deadline:
        context.sample()
        result = predicate()
        if result:
            return result
        time.sleep(0.02)
    raise RuntimeError(message)


def official_peer(context, state):
    if state["official"] is not None:
        return state["official"]
    config = state["config"]
    actor = context.spawn("simulator", [config["python"]["path"], "-B", config["ros2_cli"]["path"], *LAUNCH],
                          state["environment"], config["python"]["sha256"])
    def ready():
        need(actor["process"].poll() is None, "Official ROS launch exited")
        raw = actor["stdout"].read_bytes()
        return (b"Configured and activated joint_state_broadcaster" in raw and
                b"Configured and activated joint_trajectory_controller" in raw)
    until(context, ready, 90, "Official controller activation deadline")
    state["official"] = actor
    return actor


def graph_witness(context, state):
    context.sample()
    config = state["config"]
    pins = {str(Path(item["path"]).resolve()): item for item in config["critical_official_images"]}
    need({item["role"] for item in pins.values()} == {"controller-manager", "mock-system", "joint-controller"},
         "Exact three critical official image roles required")
    observed = {}
    for pid, start in context.descendants:
        root = Path("/proc") / str(pid)
        try:
            if process_birth(root) != start:
                continue
            for line in (root / "maps").read_text().splitlines():
                fields = line.split(maxsplit=5)
                if len(fields) != 6 or "x" not in fields[1] or not fields[5].startswith("/"):
                    continue
                path = str(Path(fields[5]).resolve())
                if path not in pins:
                    continue
                readonly(path)
                need(digest(path) == pins[path]["sha256"], "Actual official mapped image differs")
                observed[pins[path]["role"]] = {"pid": pid, "birth": start, **pins[path]}
        except (FileNotFoundError, ProcessLookupError):
            continue
    need(set(observed) == {"controller-manager", "mock-system", "joint-controller"},
         "Actual official controller mappings absent")
    return observed


def native_host(context, state, selected):
    item = state["config"]["native"]
    actor = context.spawn("native", [item["path"], str(selected["adapter"]), digest(selected["adapter"]),
        str(selected["policy"]), digest(selected["policy"]), str(selected["provenance"]),
        context.deployment["runtime"]["sha256"], "--portable-robot-audit-run", context.run_id],
        state["environment"], item["sha256"])
    def listening():
        need(actor["process"].poll() is None, "Restricted Host refused startup")
        try:
            info = selected["socket"].lstat()
            need(stat.S_ISSOCK(info.st_mode) and info.st_uid == os.getuid() and not info.st_mode & 7,
                 "Restricted Host endpoint ownership differs")
            return info
        except FileNotFoundError:
            return None
    info = until(context, listening, 15, "Restricted Host listener deadline")
    actor["endpoint_identity"] = [info.st_dev, info.st_ino]
    return actor


def no_command_events(context, vm, native):
    vm_rows, _ = stream_rows(vm, context.run_id)
    native_rows, _ = stream_rows(native, context.run_id)
    need(not any(row.get("event") in ("vm_goal_accepted", "vm_terminal", "native_terminal") or
                 row.get("phase") == "native-goal-accepted" for row in vm_rows + native_rows),
         "A rejected request emitted a native operation receipt")
    need(not any(row.get("format") == "uwvm-sdk-simulation-state-delivery-v1" for row in vm_rows),
         "Rejected open cannot claim a guest state copy")
    return {"actual_error_consumed_by_frozen_guest": True,
            "complete_Wasm_sha256": digest(context.wasm), "guest_exit": vm["process"].returncode,
            "native_operation_receipts": 0, "guest_state_copies": 0,
            "scope": "Negative open/binding path only; not successful fresh-state processing"}


def save_scopes(context, records):
    cases = list(records.values())
    started = sum(bool(row.get("actual_VM_started")) for row in cases)
    selected = len(context.manifest["scenarios"])
    report = {"format": "sdk03-communication-stage-accounting-v1", "run_id": context.run_id,
        "Stage_A": {"required": 4, "selected": selected, "attempted_cases": len(cases),
                    "executed": started, "passed": sum(row.get("passed", False) for row in cases),
                    "failed": sum(row["status"] == "FAIL" for row in cases),
                    "blocked": sum(row["status"] == "BLOCKED" for row in cases),
                    "incomplete": sum(row["status"] == "INCOMPLETE" for row in cases),
                    "not_run": 4-started, "not_selected": 4-selected,
                    "unattempted_selected": selected-len(cases), "recorded_cases": cases,
                    "executed_definition": "Actual after-exec VM identity observed; case attempt is not VM execution",
                    "not_run_includes_cases_blocked_or_failed_before_actual_VM": True,
                    "final_public_acceptance_requires_shared_suite_and_retirement_verdict": True},
        "Stage_B": {"mandatory": True, "selected": 0, "executed": 0, "passed": 0, "failed": 0,
                    "blocked": 0, "not_run_required": True,
                    "required_denominator": None, "scope": "Full original vendor/model/provider matrix remains required"},
        "component_memory_isolation": {"required": True, "selected": 0, "executed": 0, "passed": 0,
                                       "failed": 0, "not_run_required": True}, "full_assignment_acceptance": False}
    (context.output / "qualification-scopes.json").write_text(json.dumps(report, indent=2) + "\n")


def guest(context, scenario, selected, record):
    before = {id(actor) for actor in context.actors}
    record["VM_launch_attempted"] = True
    try:
        return context.run_vm(scenario, selected["adapter"], selected["policy"])
    finally:
        actors = [actor for actor in context.actors if id(actor) not in before and actor["role"] == "vm"]
        record["actual_VM_started"] = any(actor.get("actual_exec_receipt") for actor in actors)
        record["unverified_VM_launches"] = sum(not bool(actor.get("actual_exec_receipt")) for actor in actors)
        record["actual_VM_exits"] = [actor["process"].returncode for actor in actors
                                    if actor.get("actual_exec_receipt") and actor["process"].poll() is not None]


def run_case(context, scenario):
    if not hasattr(context, "_ur_case_records"):
        context._ur_case_records = {}
    records = context._ur_case_records
    need(scenario["id"] not in records, "A case cannot be retried or counted twice")
    current = {"id": scenario["id"], "status": "INCOMPLETE", "passed": False, "actual_VM_started": False}
    records[scenario["id"]] = current
    try:
        context.guard()
        state = configuration(context)
        selected = binding(context, state, state["config"]["cases"][scenario["id"]]["vm"])
        if scenario["kind"] == "denied":
            need(not context.actors and not context.descendants and not selected["socket"].exists(),
                 "Default denial must precede every official/Host endpoint")
            vm = guest(context, scenario, selected, current)
            context.complete_denied_case(scenario, vm)
        else:
            official_peer(context, state)
            native_selected = selected
            if scenario["kind"] == "stale_reference":
                native_selected = binding(context, state, state["config"]["cases"][scenario["id"]]["native"])
                old, new = selected["policy_document"], native_selected["policy_document"]
                need(old["native"]["socket"] == new["native"]["socket"] and
                     old["native"]["generation"] != new["native"]["generation"] and
                     old["policy_epoch"] != new["policy_epoch"], "Actual stale generation mismatch required")
            native = native_host(context, state, native_selected)
            graph = graph_witness(context, state)
            if scenario["kind"] == "disconnect":
                context.guard()
                need(native["process"].poll() is None and process_birth(Path('/proc')/str(native["pid"])) == native["birth"],
                     "Owned Host identity changed before deliberate disconnect")
                os.kill(native["pid"], signal.SIGKILL)
                need(context.wait(native, 5) == -signal.SIGKILL, "Controlled Host disconnect did not retire")
                info = selected["socket"].lstat()
                need([info.st_dev, info.st_ino] == native["endpoint_identity"], "Disconnected socket was replaced")
            vm = guest(context, scenario, selected, current)
            if scenario["kind"] == "joint":
                need(context.wait(native, 10) == 0, "Restricted Host did not complete/drain")
                feedback = context.guest_feedback.verify(context.run_id, vm, native,
                    selected["adapter_document"], vm["binding_inputs"])
                rows, _ = stream_rows(native, context.run_id)
                terminals = [row for row in rows if row.get("event") == "native_terminal"]
                need(len(terminals) == 1 and terminals[0]["fresh_state_confirmed"] is True and
                     terminals[0]["native_status"] == 0, "Actual native successful/fresh terminal absent")
                terminal = terminals[0]
                witness = {"goal_uuid": terminal["goal_uuid"], "native_result_success": True,
                    "fresh_state": {"sequence": terminal["observed_sequence"], "native_observed_ns": terminal["native_observed_ns"]},
                    "position_matches": feedback["passed"], "native_graph_verified": bool(graph),
                    "actual_official_images": graph, "actual_native_terminal": terminal,
                    "scope": "Official ROS UR5e GenericSystem communication; no physical simulation acceptance"}
                context.complete_joint_case(scenario, vm, native, witness)
            else:
                if scenario["kind"] == "stale_reference":
                    need(context.wait(native, 10) == 1 and
                         "native peer/provenance/binding changed" in native["stderr"].read_text(),
                         "Expected pre-submit stale binding rejection absent")
                witness = no_command_events(context, vm, native)
                witness["actual_official_images"] = graph
                # Existing shared entry intentionally rejects unsupported negative
                # feedback profiles. Do not write context.completed to bypass it.
                context.complete_operation_case(scenario, vm, native, witness)
        current["passed"] = True
        current["status"] = "PASS"
    except Exception as error:
        current["status"] = "BLOCKED" if isinstance(error, Blocked) else "FAIL"
        current["diagnostic"] = str(error)[:1024]
        raise
    finally:
        save_scopes(context, records)
