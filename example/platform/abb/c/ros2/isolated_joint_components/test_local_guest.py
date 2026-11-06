# SPDX-License-Identifier: Apache-2.0
"""Supervise real Wasm business checks; perform no planner/actuator business.

This narrow test has no common component ABI, ROS peer or memory-isolation pass.
The separately required integration test remains blocked until SDK01 is wired.
Manual execution requires the enclosing qualified cgroup/lease/guardian job.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import resource
import signal
import subprocess
import time

LOG_LIMIT = 8 * 1024**2


import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[6] / "tools/shared/python"))
from wasi_policy import test_arguments as wasi_test_arguments
from host_interfaces import authorize_test_imports
from pipe_capture import PipeLoggedProcess


def need(condition, message):
    if not condition:
        raise RuntimeError(message)


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def read_log(path):
    with Path(path).open("rb") as stream:
        content = stream.read(LOG_LIMIT + 1)
    need(len(content) <= LOG_LIMIT, "Bounded original guest log exceeded")
    return content.decode("utf-8")


def process(pid):
    root = Path("/proc") / str(pid)
    first = (root / "stat").read_text().rsplit(") ", 1)[1].split()
    membership = (root / "cgroup").read_text().strip()
    need(membership.startswith("0::/") and "\n" not in membership, "unified actual cgroup required")
    group = Path("/sys/fs/cgroup") / membership[3:].lstrip("/")
    limits = {name: (group / name).read_text().strip()
              for name in ("memory.max", "memory.swap.max", "cpuset.cpus.effective")}
    executable = root / "exe"
    before = executable.stat()
    sha = digest(executable)
    after = executable.stat()
    file_limit = next(line for line in (root / "limits").read_text().splitlines()
                      if line.startswith("Max file size"))
    match = re.fullmatch(r"Max file size\s+(\S+)\s+(\S+)\s+bytes\s*", file_limit)
    need(match is not None, "actual regular-file limit record absent")
    second = (root / "stat").read_text().rsplit(") ", 1)[1].split()
    need(first[19] == second[19] and (before.st_dev, before.st_ino) == (after.st_dev, after.st_ino),
         "process identity changed during observation")
    return {"pid": pid, "birth": first[19], "session": int(first[3]),
            "observed_monotonic_ns": time.monotonic_ns(), "membership": membership,
            "cgroup_inode": group.stat().st_ino, "cgroup_namespace": str((root / "ns/cgroup").readlink()),
            "executable": str(executable.resolve()), "executable_sha256": sha,
            "file_limit_soft": match[1], "file_limit_hard": match[2], **limits}


def session_members(session):
    rows = []
    for root in Path("/proc").iterdir():
        if not root.name.isdecimal():
            continue
        try:
            fields = (root / "stat").read_text().rsplit(") ", 1)[1].split()
            if int(fields[3]) == session:
                need(root.stat().st_uid == os.getuid(), "unexpected owner in the created runtime session")
                rows.append({"pid": int(root.name), "birth": fields[19]})
        except (FileNotFoundError, ProcessLookupError):
            pass
    return rows


def retire_session(child, known):
    """Signal only birth-verified members of this newly created session."""
    session = child.pid
    deadline = time.monotonic() + 10
    while True:
        rows = session_members(session)
        if child.poll() is None:
            leader = next((row for row in rows if row["pid"] == child.pid), None)
            need(leader is not None and known.get(child.pid) == leader["birth"],
                 "original runtime session leader identity is unavailable")
            for row in rows:
                known[row["pid"]] = row["birth"]
        need(all(known.get(row["pid"]) == row["birth"] for row in rows),
             "unobserved/replaced session member requires outer guardian retirement")
        child.poll()  # Reap our direct child; never wait on a zombie we own.
        rows = session_members(session)
        need(all(known.get(row["pid"]) == row["birth"] for row in rows),
             "session membership changed after leader retirement")
        if not rows:
            return
        for row in rows:
            try:
                descriptor = os.pidfd_open(row["pid"], 0)
            except ProcessLookupError:
                continue
            try:
                stat = (Path("/proc") / str(row["pid"]) / "stat").read_text().rsplit(") ", 1)[1].split()
                need(stat[19] == row["birth"] == known.get(row["pid"]) and int(stat[3]) == session,
                     "refuse a replaced or foreign process")
                signal.pidfd_send_signal(descriptor, signal.SIGKILL)
            except (FileNotFoundError, ProcessLookupError):
                pass
            finally:
                os.close(descriptor)
        need(time.monotonic() < deadline, "runtime session retirement did not complete")
        time.sleep(0.02)


CASES = {
    "reader_planner": (
        "initial_feedback_state", "stale_feedback_no_state_change", "future_feedback_refused",
        "private_pointer_algorithm_atomic_error", "static_pointer_step", "backpressure_preserves_pending_command",
        "wrong_causal_result_refused", "old_feedback_cannot_complete_result", "fresh_reverse_result_commits",
        "late_duplicate_result_refused", "local_abort_is_not_native_cancel", "small_step_cannot_claim_motion",
    ),
    "actuator": (
        "initial_state_and_feedback", "oversized_command_no_partial_commit", "bounded_command_prepared",
        "unsubmitted_command_has_no_result", "submission_state_and_duplicate_refusal", "wrong_correlation_cookie_refused",
        "terminal_state_needs_fresh_feedback", "replayed_feedback_refused", "fresh_but_unmoved_state_cannot_pass",
        "fresh_target_state_returns_local_receipt", "completed_command_replay_refused",
        "abort_refuses_late_terminal_state",
    ),
}


def guest_events(text, role):
    selected = CASES[role]
    starts, finishes = [], []
    active = terminal = None
    for line in text.splitlines():
        if line.startswith("SDK02_COMPONENT_CASE:"):
            need(terminal is None and len(line) <= 2048, "Guest event after final result or oversized")
            row = json.loads(line.split(":", 1)[1])
            need(row.get("role") == role and type(row.get("assertions")) is int, "Guest component identity/count differs")
            if row["phase"] == "start":
                need(active is None and len(starts) < len(selected) and row["id"] == selected[len(starts)]
                     and row["status"] == "RUNNING", "Out-of-order or duplicate real guest start")
                starts.append(row["id"])
                active = row["id"]
            else:
                need(row["phase"] == "finish" and active == row["id"]
                     and row["status"] in ("PASS", "FAIL"), "Guest finish lacks matching start")
                finishes.append({"id": row["id"], "status": row["status"], "assertions": row["assertions"]})
                active = None
        elif line.startswith("SDK02_COMPONENT_LOCAL:{"):
            need(terminal is None, "Duplicate guest local summary")
            terminal = json.loads(line.split(":", 1)[1])
    counts = {"required": len(selected), "selected": len(selected), "started": len(starts),
              "executed": len(finishes), "passed": sum(row["status"] == "PASS" for row in finishes),
              "failed": sum(row["status"] == "FAIL" for row in finishes),
              "not_run": len(selected) - len(starts), "blocked": len(selected) - len(finishes),
              "unfinished": len(starts) - len(finishes), "skipped": 0}
    if terminal is not None:
        need(active is None and terminal.get("role") == role
             and terminal.get("scope") == "guest-local-business-only-no-ROS-or-isolation"
             and all(terminal.get(key) == counts[key] for key in ("selected", "executed", "passed"))
             and counts["executed"] == len(selected) and counts["passed"] == len(selected),
             "Guest summary contradicts actual case events")
    return counts, finishes, terminal


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--role", choices=tuple(CASES), required=True)
    parser.add_argument("--wasm", type=Path, required=True)
    parser.add_argument("--config", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(mode=0o700)
    report = {"format": "sdk02-executing-wasm-local-component-business-v1", "status": "BLOCKED",
              "role": args.role, "required": 12, "selected": 12, "executed": 0, "passed": 0,
              "failed": 0, "blocked": 12, "not_run": 12,
              "Stage_A_communication_pass": False, "Stage_B_simulation_pass": False,
              "component_memory_or_channel_isolation_pass": False}
    child = None
    known = {}
    try:
        resource.setrlimit(resource.RLIMIT_CORE, (0, 0))
        resource.setrlimit(resource.RLIMIT_FSIZE, (134217728, 134217728))
        configuration = json.loads(args.config.read_text())
        need(configuration.get("format") == "uwvm-ros-command-run-v1"
             and configuration.get("target") == "wasm32-wasip1" and configuration.get("backend") == "ros2"
             and configuration.get("distribution") == "jazzy", "Supply the existing explicit SDK command-run contract")
        runtime = Path(configuration["runtime"]).resolve(strict=True)
        wasm = args.wasm.resolve(strict=True)
        need(runtime.is_file() and os.access(runtime, os.X_OK), "Explicit installed runtime is unavailable")
        runtime_sha256 = configuration.get("runtime_sha256")
        source_identity = configuration.get("runtime_source_identity")
        need(type(runtime_sha256) is str and re.fullmatch(r"[0-9a-f]{64}", runtime_sha256)
             and digest(runtime) == runtime_sha256, "Pin the installed runtime's complete SHA-256")
        need(type(source_identity) is str and re.fullmatch(r"sha256:[0-9a-f]{64}", source_identity),
             "Supply the installed runtime's recorded source identity")
        with wasm.open("rb") as stream:
            need(wasm.stat().st_size <= 67108864 and stream.read(8) == b"\0asm\1\0\0\0", "A bounded genuine built Wasm is required")
        values = configuration["runtime_arguments"]
        need(type(values) is list and len(values) <= 512
             and all(type(value) is str and "\0" not in value for value in values), "Supply bounded exact runtime arguments")
        need(all(value not in ("--run", "-r") and "unwind" not in value for value in values), "Use the sole app operand and default checked unwind")
        need("--runtime-aot" in values or "-Raot" in values, "Select native AOT explicitly")
        need(configuration.get("application_arguments") in ([], ["--local-business-checks"]), "This test selects only the guest business checks")
        report.update(runtime_sha256=runtime_sha256, runtime_source_identity=source_identity,
                      wasm_sha256=digest(wasm), configuration_sha256=digest(args.config),
                      argv=[str(runtime), *wasi_test_arguments(values, configuration.get("wasi_policy")), "--run", str(wasm), "--local-business-checks"])
        report["argv"] = authorize_test_imports(report["argv"])
        stdout, stderr = args.output / "vm.stdout", args.output / "vm.stderr"
        with stdout.open("xb") as out, stderr.open("xb") as err:
            # The guest waits in fd_read until its actual VM identity is checked.
            # Preserve blocking pipe semantics during that startup barrier.
            child = PipeLoggedProcess(report["argv"], stdin=subprocess.PIPE, stdout=out, stderr=err,
                                      start_new_session=True, nonblocking_stdin=False)
            before = process(child.pid)
            known[child.pid] = before["birth"]
            deadline = time.monotonic() + 150
            marker = "SDK02_COMPONENT_READY:" + args.role + ":local-business\n"
            while marker not in read_log(stdout):
                need(child.poll() is None and time.monotonic() < deadline, "Actual Wasm did not reach its startup barrier")
                time.sleep(0.01)
            actual = process(child.pid)
            need(actual["birth"] == known[child.pid] and actual["executable_sha256"] == report["runtime_sha256"], "Actual VM birth/executable differs")
            supervisor = process(os.getpid())
            need(all(actual[field] == supervisor[field] for field in
                     ("membership", "cgroup_inode", "cgroup_namespace", "cpuset.cpus.effective")),
                 "Actual VM left the fixture supervisor resource boundary")
            need(actual["memory.max"] == "68719476736" and actual["memory.swap.max"] == "0",
                 "Actual manual VM cgroup limits differ")
            need(actual["file_limit_soft"] == actual["file_limit_hard"] == "134217728", "Actual VM regular-file ceiling differs")
            report["actual_VM_at_guest_barrier"] = actual
            child.stdin.write(b"R")
            child.stdin.flush()
            while child.poll() is None:
                need(time.monotonic() < deadline, "Bounded actual guest deadline")
                need(stdout.stat().st_size <= LOG_LIMIT and stderr.stat().st_size <= LOG_LIMIT, "Bounded VM log ceiling")
                time.sleep(0.01)
            report["VM_exit"] = child.returncode
        counts, rows, terminal = guest_events(read_log(stdout), args.role)
        report.update(counts)
        report.update(guest_cases=rows, guest_summary=terminal)
        need(child.returncode == 0 and terminal is not None and counts["passed"] == 12, "Actual guest business assertions failed or did not execute all cases")
        diagnostic = re.sub(r"\x1b\[[0-?]*[ -/]*[@-~]", "", read_log(stderr))
        markers = re.findall(r"\[unwind-check\] status=(ok|failed) elapsed_ns=([0-9]+) native_target_ns=10000000 provider=paired-llvm23", diagnostic)
        need(len(markers) == 1 and markers[0][0] == "ok" and int(markers[0][1]) > 0,
             "Actual checked paired-LLVM unwind result is missing or failed")
        need("mode=full_compile, compiler=llvm_jit_only, uwvm-int-translation=disabled, llvm-jit-ir-translation=enabled"
             in diagnostic and "body-fallback=yes" not in diagnostic,
             "Actual LLVM-only full compilation must exclude interpreter fallback")
        main_alias = "main"
        for index, value in enumerate(values):
            if value in ("--wasm-set-main-module-name", "-Wname"):
                main_alias = values[index + 1]
        need('LLVM JIT materialization for module "' + main_alias + '" done.' in diagnostic,
             "Actual guest module must finish native materialization")
        report["checked_unwind"] = {"status": "ok", "elapsed_ns": int(markers[0][1]),
                                    "native_target_ns": 10000000, "provider": "paired-llvm23"}
        report["body_fallback"] = False
        need(digest(wasm) == report["wasm_sha256"], "Frozen application changed during execution")
        report["status"] = "PASS_EXECUTING_GUEST_LOCAL_BUSINESS_ONLY"
    except BaseException as error:
        report["error"] = repr(error)
        stdout = args.output / "vm.stdout"
        if stdout.exists():
            counts, rows, terminal = guest_events(read_log(stdout), args.role)
            report.update(counts)
            report.update(guest_cases=rows, guest_summary=terminal)
    finally:
        if child is not None:
            try:
                retire_session(child, known)
                if child.stdin is not None: child.stdin.close()
            except BaseException as error:
                report.update(status="FAIL_RETIREMENT_REQUIRES_OUTER_GUARDIAN", retirement_error=repr(error))
        report["raw_files"] = [{"path": p.name, "bytes": p.stat().st_size, "sha256": digest(p)}
                               for p in sorted(args.output.iterdir()) if p.is_file()]
        (args.output / "result.json").write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    return 0 if report["status"] == "PASS_EXECUTING_GUEST_LOCAL_BUSINESS_ONLY" else 1


if __name__ == "__main__":
    raise SystemExit(main())


