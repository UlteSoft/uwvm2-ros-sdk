# SPDX-License-Identifier: Apache-2.0
"""Bounded process/assertion fixture only; every codec assertion runs in Wasm.

This fixture imports no ROS client and performs no robot query or callback.
Manual qualification still requires the outer admitted cgroup/guardian/lease.
Hosted CI records its actual resources. Neither route is official simulation.
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
import sys
import time

RESOURCE_FILE = Path(__file__).with_name("component.resources.json")


CASE_IDS = (
    "canonical_encode", "canonical_decode", "optional_vectors", "reject_truncated",
    "reject_trailing", "reject_nanosecond_range", "reject_nonfinite",
    "reject_count_overflow", "named_projection_freshness",
)


import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[6] / "tools/shared/python"))
from wasi_policy import test_arguments as wasi_test_arguments
from host_interfaces import authorize_test_imports
from pipe_capture import PipeLoggedProcess


def need(value, message):
    if not value:
        raise RuntimeError(message)


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()



def bounded_stdout(path, limit):
    """Read at most the declared bytes even after a fast VM exit."""
    with path.open("rb") as stream:
        raw = stream.read(limit + 1)
    need(len(raw) <= limit, "bounded original command stdout exceeded")
    return raw.decode("utf-8")


def bounded_log_size(path, limit):
    need(path.stat().st_size <= limit, "bounded original command log exceeded")


def guest_case_evidence(stdout):
    """Count only complete, ordered guest events; never infer nine failures."""
    starts, finishes, active, terminal = [], [], None, None
    for line in stdout.splitlines():
        if line.startswith("SDK02_GUEST_CASE:"):
            need(terminal is None and len(line.encode("utf-8")) <= 2048, "guest event after final result or oversized event")
            event = json.loads(line.split(":", 1)[1])
            need(event.get("format") == "sdk02-guest-case-event-v1", "guest event format differs")
            name, phase = event.get("id"), event.get("phase")
            if phase == "start":
                need(active is None and len(starts) < len(CASE_IDS)
                     and name == CASE_IDS[len(starts)], "duplicate/out-of-order guest case start")
                starts.append(name)
                active = name
            elif phase == "finish":
                need(active is not None and len(finishes) < len(CASE_IDS)
                     and active == name and name == CASE_IDS[len(finishes)]
                     and event.get("status") in ("PASS", "FAIL"), "unmatched/invalid guest case finish")
                finishes.append({"id": name, "status": event["status"]})
                active = None
            else:
                raise RuntimeError("unknown guest case phase")
        elif line.startswith("SDK02_GUEST_COMPONENT:"):
            need(terminal is None and active is None and len(finishes) == len(CASE_IDS)
                 and len(line.encode("utf-8")) <= 16384, "guest final result is duplicate/incomplete/oversized")
            terminal = json.loads(line.split(":", 1)[1])
    passed = sum(item["status"] == "PASS" for item in finishes)
    failed = len(finishes) - passed
    counts = {"selected": len(CASE_IDS), "started": len(starts), "executed": len(finishes),
              "passed": passed, "failed": failed, "blocked": len(CASE_IDS) - len(starts),
              "not_run": len(CASE_IDS) - len(starts), "unfinished": len(starts) - len(finishes),
              "skipped": 0}
    if terminal is not None:
        need(terminal.get("format") == "sdk02-joint-feedback-guest-cases-v1"
             and all(type(terminal.get(key)) is int and terminal[key] == value
                     for key, value in counts.items())
             and terminal.get("status") == ("FAIL" if failed else "PASS")
             and [{"id": item.get("id"), "status": item.get("status")}
                  for item in terminal.get("cases", [])] == finishes,
             "guest final counts disagree with its actual start/finish stream")
    return counts, terminal


def process(pid):
    root = Path("/proc") / str(pid)
    first = (root / "stat").read_text().rsplit(") ", 1)[1].split()
    membership = (root / "cgroup").read_text().strip()
    need(membership.startswith("0::/") and "\n" not in membership, "unified actual cgroup required")
    group = Path("/sys/fs/cgroup") / membership[3:].lstrip("/")
    limits = {name: (group / name).read_text().strip()
              for name in ("memory.max", "memory.swap.max")}
    cpuset = group / "cpuset.cpus.effective"
    limits["cpuset.cpus.effective"] = cpuset.read_text().strip() if cpuset.exists() else None
    limits["cpu_affinity"] = sorted(os.sched_getaffinity(pid))
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


def limits(file_limit):
    resource.setrlimit(resource.RLIMIT_CORE, (0, 0))
    resource.setrlimit(resource.RLIMIT_FSIZE, (file_limit, file_limit))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--wasm", required=True)
    parser.add_argument("--config", required=True)
    parser.add_argument("--output", required=True)
    args = parser.parse_args()
    need(sys.platform == "linux", "BLOCKED_REQUIRED_LINUX_EXECUTION")
    need(hasattr(os, "pidfd_open") and hasattr(signal, "pidfd_send_signal"),
         "BLOCKED_BIRTH_SAFE_PROCESS_RETIREMENT_REQUIRED")
    output = Path(args.output)
    output.mkdir(parents=True, exist_ok=False)
    report = {"format": "sdk02-guest-component-test-v1", "status": "FAIL",
              "scope": "Wasm codec/local-binding component; no ROS or official simulation acceptance",
              "selected": len(CASE_IDS), "started": 0, "executed": 0, "passed": 0, "failed": 0,
              "blocked": len(CASE_IDS), "not_run": len(CASE_IDS), "unfinished": 0, "skipped": 0,
              "case_count_rule": "executed counts verified finishes; started-without-finish is unfinished; blocked/not_run overlap",
              "case_counts_verified": True, "actors": [], "started_ns": time.monotonic_ns()}
    child = None
    known = {}
    try:
        config_file = Path(args.config)
        need(config_file.is_file(), "BLOCKED_REQUIRED_PUBLIC_UWVM_ROS_RUN_CONFIG")
        with config_file.open("rb") as stream:
            config_bytes = stream.read(65537)
        need(len(config_bytes) <= 65536, "BLOCKED_BOUNDED_RUN_CONFIGURATION_REQUIRED")
        config_sha256 = hashlib.sha256(config_bytes).hexdigest()
        config = json.loads(config_bytes)
        resource_bytes = RESOURCE_FILE.read_bytes()
        need(len(resource_bytes) <= 65536, "BLOCKED_BOUNDED_RESOURCE_CONTRACT_REQUIRED")
        resource_sha256 = hashlib.sha256(resource_bytes).hexdigest()
        resource_contract = json.loads(resource_bytes)
        need(resource_contract.get("format") == "sdk02-guest-component-resource-contract-v1",
             "BLOCKED_REQUIRED_COMPONENT_RESOURCE_CONTRACT")
        runtime_limits = resource_contract["runtime"]
        need(runtime_limits["regular_file_limit_bytes"] == 128 * 1024 * 1024
             and runtime_limits["maximum_log_stream_bytes"] == 8 * 1024 * 1024
             and runtime_limits["maximum_seconds"] == 300
             and runtime_limits["maximum_application_wasm_bytes"] == 64 * 1024 * 1024,
             "BLOCKED_COMPONENT_RESOURCE_LIMITS_CHANGED")
        report["resource_contract_sha256"] = resource_sha256
        need(config.get("format") == "uwvm-ros-command-run-v1"
             and config.get("target") == "wasm32-wasip1"
             and config.get("backend") == "ros2" and config.get("distribution") == "jazzy",
             "BLOCKED_EXACT_PYTHON_GUEST_RUN_CONFIGURATION")
        need(config.get("application_arguments") in ([], ["--codec-selftest"]),
             "component tests cannot substitute another application command")
        runtime = Path(config["runtime"])
        need(runtime.is_absolute() and runtime.is_file() and not runtime.is_symlink()
             and os.access(runtime, os.X_OK), "BLOCKED_PINNED_ABSOLUTE_RUNTIME_EXECUTABLE")
        wanted = config.get("runtime_sha256", "")
        need(re.fullmatch("[0-9a-f]{64}", wanted) and digest(runtime) == wanted,
             "BLOCKED_EXACT_RUNTIME_WHOLE_SHA256")
        runtime_args = config["runtime_arguments"]
        need(isinstance(runtime_args, list) and all(isinstance(x, str) and "\0" not in x for x in runtime_args),
             "explicit runtime argument array required")
        need(runtime_args == runtime_limits["arguments"]
             == ["--runtime-aot", "--runtime-llvm-jit-cache-path", "disable", "--runtime-llvm-jit-policy", "debug", "--log-verbose"],
             "BLOCKED_COMPONENT_REQUIRES_AOT_AND_EXPLICITLY_DISABLED_PERSISTENT_CACHE")
        wasm = Path(args.wasm)
        need(wasm.is_file() and not wasm.is_symlink(), "BLOCKED_BUILD_REQUIRED")
        need(0 < wasm.stat().st_size <= runtime_limits["maximum_application_wasm_bytes"],
             "BLOCKED_COMPONENT_WASM_FILE_BOUND")
        before = digest(wasm)
        need(config.get("ros_namespace_enabled") is True,
             "explicit ROS2 import namespace permission is required; no resources are granted")
        argv = [str(runtime), *wasi_test_arguments(runtime_args, config.get("wasi_policy")),
                "--ros2-single-create", "main", "--ros2-single-enable", "main",
                "--run", str(wasm.resolve()), "--codec-selftest"]
        argv = authorize_test_imports(argv)
        report.update(command={"argv": argv, "cwd": str(Path.cwd()), "config_sha256": config_sha256},
                      wasm_sha256_before=before, runtime_sha256=wanted, fixture_actor=process(os.getpid()))
        need(report["fixture_actor"]["memory.max"] == "68719476736"
             and report["fixture_actor"]["memory.swap.max"] == "0",
             "keep the actual 64 GiB, zero-swap test cgroup")
        stdout, stderr = output / "vm.stdout", output / "vm.stderr"
        with stdout.open("wb") as out, stderr.open("wb") as err:
            child = PipeLoggedProcess(argv, stdin=subprocess.DEVNULL, stdout=out, stderr=err,
                                     start_new_session=True,
                                     preexec_fn=lambda: limits(runtime_limits["regular_file_limit_bytes"]))
            fields = (Path("/proc") / str(child.pid) / "stat").read_text().rsplit(") ", 1)[1].split()
            need(int(fields[3]) == child.pid, "runtime did not create its owned process session")
            known[child.pid] = fields[19]
            deadline, sample_at = time.monotonic() + runtime_limits["maximum_seconds"], 0
            while child.poll() is None:
                need(time.monotonic() < deadline, "bounded component runtime deadline")
                need(stdout.stat().st_size <= runtime_limits["maximum_log_stream_bytes"]
                     and stderr.stat().st_size <= runtime_limits["maximum_log_stream_bytes"],
                     "bounded original command log exceeded")
                if time.monotonic() >= sample_at:
                    try:
                        actor = process(child.pid)
                    except (FileNotFoundError, ProcessLookupError) as observation_error:
                        # /proc/exe disappears during exit before waitpid necessarily
                        # reports completion. Require a verified bounded exit; a
                        # still-running or unobserved actor remains a failure.
                        try:
                            child.wait(timeout=min(1.0, max(0.0, deadline - time.monotonic())))
                        except subprocess.TimeoutExpired:
                            raise observation_error
                        break
                    parent = report["fixture_actor"]
                    need(actor["membership"] == parent["membership"]
                         and actor["cgroup_inode"] == parent["cgroup_inode"]
                         and actor["cgroup_namespace"] == parent["cgroup_namespace"],
                         "actual runtime escaped fixture cgroup ownership")
                    need(actor["executable_sha256"] == wanted, "actual executing runtime image differs")
                    need(actor["file_limit_soft"] == actor["file_limit_hard"]
                         == str(runtime_limits["regular_file_limit_bytes"]),
                         "actual runtime regular-file hard/soft limit differs")
                    need(all(row["pid"] == child.pid for row in session_members(child.pid)),
                         "unexpected runtime helper in codec-only process session")
                    report["actors"].append(actor)
                    sample_at = time.monotonic() + 1
                time.sleep(0.02)
        bounded_log_size(stderr, runtime_limits["maximum_log_stream_bytes"])
        captured_stdout = bounded_stdout(stdout, runtime_limits["maximum_log_stream_bytes"])
        counts, guest = guest_case_evidence(captured_stdout)
        report.update(counts)
        report["case_counts_verified"] = True
        if guest is not None:
            report["guest"] = guest
        need(child.returncode == 0 and report["actors"], "actual Wasm command failed or actor evidence absent")
        need(not session_members(child.pid), "runtime command left a live session member")
        text = captured_stdout + bounded_stdout(stderr, runtime_limits["maximum_log_stream_bytes"])
        diagnostic = re.sub(r"\x1b\[[0-?]*[ -/]*[@-~]", "", text)
        ordinary_aot = ("Resolved runtime configuration: mode=full_compile, compiler=llvm_jit_only, "
                        "uwvm-int-translation=disabled, llvm-jit-ir-translation=enabled." in diagnostic)
        # Ordinary AOT and debug/update publications expose different evidence.
        # Require the actual compiler configuration when the private publication
        # marker is absent; neither path may report a body fallback.
        need("[unwind-check] status=ok" in diagnostic
             and ("body-fallback=no" in diagnostic or ordinary_aot)
             and "body-fallback=yes" not in diagnostic,
             "actual mandatory checked unwind/no-fallback evidence absent")
        report.update(native_unwind_checked=True, interpreter_fallback=False)
        need(guest is not None, "exactly one fresh executing-guest final result required")
        need(guest.get("format") == "sdk02-joint-feedback-guest-cases-v1"
             and guest.get("status") == "PASS" and guest.get("selected") == len(CASE_IDS)
             and guest.get("executed") == guest.get("passed") == len(CASE_IDS)
             and all(guest.get(k) == 0 for k in ("failed", "blocked", "skipped"))
             and [case.get("id") for case in guest.get("cases", [])] == list(CASE_IDS)
             and all(case.get("status") == "PASS" for case in guest["cases"]),
             "required guest assertions did not all execute and pass")
        need(digest(wasm) == before, "application Wasm changed during tests")
        need(digest(config_file) == config_sha256 and digest(RESOURCE_FILE) == resource_sha256,
             "run configuration or resource contract changed during tests")
        report.update(status="PASS", executed=len(CASE_IDS), passed=len(CASE_IDS), guest=guest,
                      wasm_sha256_after=digest(wasm), vm_exit_code=child.returncode,
                      stdout_sha256=digest(stdout), stderr_sha256=digest(stderr))
    except BaseException as error:
        blocked = child is None or "BLOCKED_" in str(error)
        report.update(status="BLOCKED" if blocked else "FAIL", diagnostic=repr(error), traceback=__import__("traceback").format_exc(),
                      fixture_or_command_failed=True)
    finally:
        if child is not None:
            try:
                if child.poll() is None or session_members(child.pid):
                    retire_session(child, known)
                child.wait(timeout=10)
                need(not session_members(child.pid), "owned runtime session still live")
                report["owned_runtime_session_retired"] = True
            except BaseException as error:
                report.update(status="FAIL", retirement_error=repr(error))
        stdout_file, stderr_file = output / "vm.stdout", output / "vm.stderr"
        if stdout_file.is_file():
            try:
                counts, guest = guest_case_evidence(bounded_stdout(stdout_file, 8 * 1024 * 1024))
                report.update(counts)
                report["case_counts_verified"] = True
                if guest is not None:
                    report["guest"] = guest
            except BaseException as error:
                report.update(status="FAIL", case_counts_verified=False,
                              case_evidence_error=repr(error), actual_case_counts_unknown=True)
                for key in ("started", "executed", "passed", "failed", "blocked", "not_run", "unfinished"):
                    report[key] = None
            report["stdout_sha256"] = digest(stdout_file)
        if stderr_file.is_file():
            try:
                bounded_log_size(stderr_file, 8 * 1024 * 1024)
            except BaseException as error:
                report.update(status="FAIL", stderr_bound_error=repr(error))
            report["stderr_sha256"] = digest(stderr_file)
        if child is not None:
            report["vm_exit_code"] = child.returncode
        report["finished_ns"] = time.monotonic_ns()
        (output / "result.json").write_text(json.dumps(report, indent=2) + "\n")
        print(json.dumps({k: v for k, v in report.items() if k not in ("actors", "guest")}), flush=True)
    return 0 if report["status"] == "PASS" else 1


if __name__ == "__main__":
    def interrupted(number, frame):
        raise InterruptedError("owned component fixture interrupted: " + str(number))
    for number in (signal.SIGTERM, signal.SIGINT, signal.SIGHUP):
        signal.signal(number, interrupted)
    sys.exit(main())
