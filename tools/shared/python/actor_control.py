"""SDK parent-side stopped-gate and actual after-exec evidence capture.

Own-child signals only. Permission failures, fast unobserved exits and changed
births fail closed; an intended executable path or a self JSON is not exec proof.
"""
from pathlib import Path
import hashlib
import json
import os
import re
import shutil
import signal
import subprocess
import sys
import time
import uuid
from runtime_boundary import Blocked, digest, read_json, require, process_birth


def save(path, value):
    temporary = path.with_name(path.name + ".new")
    with temporary.open("x") as stream:
        json.dump(value, stream, indent=2)
        stream.write("\n")
    os.replace(temporary, path)


def stopped(pid, birth):
    root = Path("/proc") / str(pid)
    fields = (root / "stat").read_text().rsplit(") ", 1)[1].split()
    require(fields[19] == birth, "ACTOR_GATE_BIRTH_CHANGED")
    return fields[0] in ("T", "t")


def namespace(pid):
    result = {}
    for name in ("pid", "mnt", "user", "cgroup"):
        path = Path("/proc") / str(pid) / "ns" / name
        info = path.stat()
        result[name] = {"device": info.st_dev, "inode": info.st_ino, "link": os.readlink(path)}
    return result


def launch(context, role, argv, environment=None, expected_sha256=None):
    context.guard()
    require(type(role) is str and re.fullmatch("[a-z][a-z0-9_-]{0,63}", role), "ACTOR_ROLE")
    require(type(argv) is list and argv and all(type(value) is str and "\0" not in value for value in argv), "ACTOR_ARGUMENT_VECTOR")
    selected = shutil.which(argv[0]) if "/" not in argv[0] else argv[0]
    require(selected is not None, "REQUIRED_ACTOR_EXECUTABLE")
    program = Path(selected).resolve()
    actual_sha256 = digest(program)
    require(expected_sha256 is None or actual_sha256 == expected_sha256, "ACTOR_PINNED_EXECUTABLE")
    index = len(context.actors)
    folder = context.output / (str(index) + "-" + role + "-exec")
    folder.mkdir(exist_ok=False)
    request = {"format": "uwvm-sdk-actor-exec-request-v1", "nonce": uuid.uuid4().hex,
               "boundary_nonce": context.boundary.nonce, "admission_path": str(context.boundary.path),
               "admission_sha256": context.boundary.sha256, "executable": str(program),
               "executable_sha256": actual_sha256, "argv": [str(program), *argv[1:]],
               "functional_instrumentation_not_performance": True}
    request_path = folder / "request.json"
    save(request_path, request)
    gate = Path(__file__).resolve().parent / "actor_gate.py"
    gate_arguments = [sys.executable, "-I", "-B", str(gate), "--request", str(request_path),
                      "--request-sha256", digest(request_path)]
    stdout, stderr = context.output / (str(index) + "-" + role + ".stdout"), context.output / (str(index) + "-" + role + ".stderr")
    env = dict(os.environ, ROS_LOCALHOST_ONLY="1", ROS2CLI_NO_DAEMON="1", UWVM_ROS_SIMULATION_RUN_ID=context.run_id)
    env.update(environment or {})
    started_ns = time.monotonic_ns()
    capture = None
    if role == "vm":
        from pipe_capture import PipeCapture
        capture = PipeCapture(stdout, stderr, context.actor_output_limit)
        try:
            child = subprocess.Popen(gate_arguments, cwd=context.example, env=env, stdin=subprocess.DEVNULL,
                                     stdout=subprocess.PIPE, stderr=subprocess.PIPE, start_new_session=True)
            capture.attach(child)
        except BaseException:
            capture.close()
            raise
    else:
        with stdout.open("xb") as out, stderr.open("xb") as err:
            child = subprocess.Popen(gate_arguments, cwd=context.example, env=env, stdin=subprocess.DEVNULL,
                                     stdout=out, stderr=err, start_new_session=True)
    root = Path("/proc") / str(child.pid)
    try:
        birth = process_birth(root)
    except (FileNotFoundError, ProcessLookupError) as error:
        child.wait(timeout=5)
        if capture is not None:
            capture.close()
        save(folder / "failure.json", {"status": "BLOCKED", "diagnostic": repr(error), "pid": child.pid,
             "reason": "No verified birth before gate exit", "exit_code": child.returncode})
        raise Blocked("BLOCKED_ACTOR_GATE_EXIT_BEFORE_BIRTH_OBSERVATION") from error
    actor = {"role": role, "process": child, "pid": child.pid, "birth": birth,
             "argv": request["argv"], "stdout": stdout, "stderr": stderr, "observations": [],
             "started_ns": started_ns, "gate_arguments": gate_arguments,
             "request_path": str(request_path), "request_sha256": digest(request_path),
             "functional_instrumentation_not_performance": True}
    if capture is not None:
        actor["_output_capture"] = capture
        actor["output_provider"] = "bounded-host-pipe"
    context.actors.append(actor)
    try:
        deadline = time.monotonic() + 10
        while not stopped(child.pid, birth):
            if capture is not None:
                capture.drain()
            require(child.poll() is None and time.monotonic() < deadline, "ACTOR_GATE_STOP_NOT_OBSERVED")
            context.guard()
            time.sleep(0.002)
        entry_path = folder / "gate-entry.json"
        entry = read_json(entry_path)
        require(entry["pid"] == child.pid and entry["nonce"] == request["nonce"]
                and entry["self_namespace"]["birth"] == birth, "ACTOR_GATE_ENTRY_IDENTITY")
        require(digest(root / "exe") == digest(sys.executable), "ACTOR_GATE_INTERPRETER_IMAGE")
        require(namespace(child.pid) == entry["self_namespace"]["namespaces"], "ACTOR_GATE_ALL_NAMESPACE_IDENTITIES")
        os.kill(child.pid, signal.SIGCONT)
        target_info = program.stat()
        deadline = time.monotonic() + 10
        while True:
            if capture is not None:
                capture.drain()
            require(child.poll() is None and time.monotonic() < deadline, "ACTUAL_EXEC_IMAGE_UNOBSERVED_FAST_EXIT")
            require(process_birth(root) == birth, "ACTUAL_EXEC_PID_REUSE")
            context.guard()
            observed = (root / "exe").stat()
            command_line = [value.decode() for value in (root / "cmdline").read_bytes().split(bytes(1)) if value]
            if ((observed.st_dev, observed.st_ino) == (target_info.st_dev, target_info.st_ino)
                and command_line == request["argv"] and (folder / "immediate-exec.json").is_file()):
                os.kill(child.pid, signal.SIGSTOP)
                break
            time.sleep(0.001)
        deadline = time.monotonic() + 5
        while not stopped(child.pid, birth):
            if capture is not None:
                capture.drain()
            require(child.poll() is None and time.monotonic() < deadline, "ACTUAL_EXEC_STOP_NOT_OBSERVED")
            time.sleep(0.001)
        # Open and hash the actual procfs executable descriptor while stopped.
        with (root / "exe").open("rb") as stream:
            info = os.fstat(stream.fileno())
            require((info.st_dev, info.st_ino) == (target_info.st_dev, target_info.st_ino), "ACTUAL_EXEC_DESCRIPTOR_INODE")
            executed_sha256 = hashlib.file_digest(stream, "sha256").hexdigest()
        require(executed_sha256 == actual_sha256, "ACTUAL_EXEC_WHOLE_IMAGE_SHA256")
        immediate_path = folder / "immediate-exec.json"
        immediate = read_json(immediate_path)
        require(immediate["nonce"] == request["nonce"] and immediate["pid"] == child.pid
                and immediate["self_namespace"]["birth"] == birth
                and immediate["target_executable_sha256"] == actual_sha256, "ACTUAL_EXEC_SAME_PID_IMMEDIATE_RECEIPT")
        require(namespace(child.pid) == immediate["self_namespace"]["namespaces"] == entry["self_namespace"]["namespaces"], "ACTUAL_EXEC_ALL_NAMESPACE_IDENTITIES")
        actual = context.actor_identity(child.pid)
        require(actual["birth"] == birth and actual["executable_sha256"] == actual_sha256
                and actual["command_line"] == request["argv"], "ACTUAL_EXEC_KERNEL_ARGV_IDENTITY")
        receipt = {"format": "uwvm-sdk-actual-actor-exec-v1", "pid": child.pid, "birth": birth,
                   "nonce": request["nonce"], "request_sha256": digest(request_path),
                   "gate_entry_sha256": digest(entry_path), "immediate_exec_sha256": digest(immediate_path),
                   "actual_after_exec": actual, "all_namespaces": namespace(child.pid),
                   "actual_executable_descriptor": {"device": info.st_dev, "inode": info.st_ino,
                       "bytes": info.st_size, "sha256": executed_sha256},
                   "capture_finished_ns": time.monotonic_ns(), "self_claim_is_authorization": False,
                   "functional_instrumentation_not_performance": True}
        receipt_path = folder / "actual-exec.json"
        save(receipt_path, receipt)
        actor.update(actual_exec_receipt=str(receipt_path), actual_exec_receipt_sha256=digest(receipt_path),
                     approved_executable_sha256=executed_sha256)
        actor["observations"].append(actual)
        context.guard()
        actor["exec_resume_ns"] = time.monotonic_ns()
        os.kill(child.pid, signal.SIGCONT)
        return actor
    except BaseException as error:
        actor["exec_observation_failure"] = repr(error)
        failure = {"status": "BLOCKED", "diagnostic": repr(error), "pid": child.pid,
                   "birth": birth, "nonce": request["nonce"], "exit_code": child.returncode}
        # A full or unavailable evidence disk must not skip owned cleanup or
        # replace the original launch failure. Keep both phases in the actor
        # ledger and independent files rather than rewriting the first error.
        actor["original_exec_failure"] = dict(failure)
        try:
            save(folder / "failure.json", failure)
        except BaseException as retention_error:
            actor["original_exec_failure_retention_error"] = repr(retention_error)
        try:
            if child.poll() is None and process_birth(root) == birth:
                os.kill(child.pid, signal.SIGKILL)
            child.wait(timeout=5)
        except BaseException as cleanup_error:
            failure["retirement_error"] = repr(cleanup_error)
        actor["finished_ns"] = time.monotonic_ns()
        failure["exit_code"] = child.returncode
        actor["exec_failure_after_retirement"] = dict(failure)
        try:
            save(folder / "failure-retirement.json", failure)
        except BaseException as retention_error:
            actor["exec_failure_retirement_retention_error"] = repr(retention_error)
        raise
