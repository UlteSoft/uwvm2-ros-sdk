"""Installed same-PID gate. It records self facts and execs one pinned actor.

No admission or authority is created. Both stops and the parent after-exec
capture are functional instrumentation, never performance evidence.
"""
from pathlib import Path
import argparse
import hashlib
import json
import os
import signal
import sys
import time

sys.path.insert(0, str(Path(__file__).resolve().parent))
from runtime_boundary import LiveBoundary, read_json, require, digest
from simulation_example import process_identity, actor_self_namespace


def save(path, value):
    temporary = path.with_name(path.name + ".new")
    with temporary.open("x") as stream:
        json.dump(value, stream, indent=2)
        stream.write("\n")
    os.replace(temporary, path)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--request", required=True)
    parser.add_argument("--request-sha256", required=True)
    args = parser.parse_args()
    request_path = Path(args.request).absolute()
    require(digest(request_path) == args.request_sha256, "GATE_REQUEST_BYTES")
    request = read_json(request_path)
    require(request.get("format") == "uwvm-sdk-actor-exec-request-v1", "GATE_REQUEST_FORMAT")
    admission_path = Path(request["admission_path"])
    require(digest(admission_path) == request["admission_sha256"], "GATE_LIVE_ADMISSION_BYTES")
    boundary = LiveBoundary(admission_path, read_json(admission_path), process_identity, actor_self_namespace)
    require(boundary.nonce == request["boundary_nonce"], "GATE_CURRENT_CONTEXT_NONCE")
    target = Path(request["executable"])
    require(target.is_absolute() and target.is_file() and digest(target) == request["executable_sha256"], "GATE_PINNED_EXECUTABLE")
    argv = request["argv"]
    require(type(argv) is list and argv and argv[0] == str(target)
            and all(type(value) is str and "\0" not in value for value in argv), "GATE_EXPLICIT_ARGUMENT_VECTOR")
    output = request_path.parent
    entry = {"format": "uwvm-sdk-actor-gate-entry-v1", "pid": os.getpid(),
             "nonce": request["nonce"], "request_sha256": args.request_sha256,
             "target_executable_sha256": request["executable_sha256"],
             "admission": boundary.guard(), "self_namespace": actor_self_namespace(boundary.admission["host_proc_view"]),
             "monotonic_ns": time.monotonic_ns(), "self_claim_is_authorization": False}
    save(output / "gate-entry.json", entry)
    os.kill(os.getpid(), signal.SIGSTOP)
    require(digest(request_path) == args.request_sha256 and digest(target) == request["executable_sha256"], "GATE_INPUTS_BEFORE_EXEC")
    final = {"format": "uwvm-sdk-actor-immediate-exec-v1", "pid": os.getpid(), "nonce": request["nonce"],
             "request_sha256": args.request_sha256, "argv": argv, "admission": boundary.guard(),
             "self_namespace": actor_self_namespace(boundary.admission["host_proc_view"]),
             "monotonic_ns": time.monotonic_ns(), "target_executable_sha256": digest(target),
             "self_claim_is_authorization": False}
    save(output / "immediate-exec.json", final)
    os.execve(target, argv, dict(os.environ))


if __name__ == "__main__":
    main()
