# SPDX-License-Identifier: Apache-2.0
"""Run finite real Wasm library graphs; the host supplies only process supervision.

The enclosing manual job must hold its qualified cgroup/lease/guardian boundary.
No ROS authority, concurrent snapshot, or complete integration claim is made.
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
sys.path.insert(0, str(Path(__file__).resolve().parents[4] / "tools/shared/python"))
from wasi_policy import test_arguments as wasi_test_arguments
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
              for name in ("memory.max", "memory.swap.max")}
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
        running = child.poll() is None
        rows = session_members(session)
        if not rows:
            need(not running, "live runtime session leader is unavailable")
            return
        if running:
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
    "static": ("main", ()),
    "shared-channel": ("main", ("memory-channel", "offset-dynamic", "private-copy")),
    "dynamic-two": ("memory-channel", ("offset-dynamic",)),
    "independent-two": ("memory-channel", ("private-copy",)),
    "independent-three": ("memory-channel", ("left", "right")),
}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--case", choices=CASES, required=True)
    parser.add_argument("--wasm", type=Path, required=True)
    parser.add_argument("--config", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    report = {"format": "uwvm-sdk-finite-library-test-v1", "case": args.case,
              "status": "BLOCKED", "required": 1, "selected": 1, "executed": 0,
              "started_ns": time.monotonic_ns(),
              "passed": 0, "failed": 0, "blocked": 1, "not_run": 1,
              "guest_started": False, "guest_finished": False,
              "ROS_Stage_A_passed": False, "simulator_Stage_B_passed": False,
              "runtime_caller_grants_qualified": False,
              "adversarial_concurrent_snapshot_qualified": False,
              "physical_backing_receipt_qualified": False}
    child = None
    known = {}
    pins = []
    try:
        resource.setrlimit(resource.RLIMIT_CORE, (0, 0))
        resource.setrlimit(resource.RLIMIT_FSIZE, (134217728, 134217728))
        config_bytes = args.config.read_bytes()
        need(len(config_bytes) <= 2097152, "Bounded explicit runtime configuration required")
        config = json.loads(config_bytes)
        configuration_sha = hashlib.sha256(config_bytes).hexdigest()
        need(config.get("format") == "uwvm-sdk-four-kind-command-v1" and set(config["cases"]) == set(CASES),
             "Pin the runtime and all five finite deployments explicitly")
        runtime = Path(config["runtime"]).resolve(strict=True)
        runtime_sha = config["runtime_sha256"]
        source_identity = config["runtime_source_identity"]
        need(re.fullmatch(r"[0-9a-f]{64}", runtime_sha) and digest(runtime) == runtime_sha
             and os.access(runtime, os.X_OK), "Installed runtime full identity differs")
        need(re.fullmatch(r"sha256:[0-9a-f]{64}", source_identity), "Runtime source identity required")
        installation = Path(config["installation_manifest"]).resolve(strict=True)
        producer = Path(config["producer_receipt"]).resolve(strict=True)
        deployment_pins = [(installation, config["installation_manifest_sha256"]),
                           (producer, config["producer_receipt_sha256"])]
        for path, expected in deployment_pins:
            need(re.fullmatch(r"[0-9a-f]{64}", expected) and path.stat().st_size <= 2097152
                 and digest(path) == expected, "Explicit installed deployment metadata differs")
        installed, produced = json.loads(installation.read_text()), json.loads(producer.read_text())
        need(installed.get("format") == "uwvm2-ros-runtime-installation-v1"
             and installed["runtime_sha256"] == runtime_sha
             and installed["runtime_bytes"] == runtime.stat().st_size
             and installed["source_identity"] == source_identity
             and (installation.parent / installed["runtime"]).resolve(strict=True) == runtime
             and (installation.parent / installed["producer_receipt"]).resolve(strict=True) == producer
             and installed["producer_receipt_sha256"] == config["producer_receipt_sha256"]
             and produced["artifact"]["sha256"] == runtime_sha
             and produced["artifact"]["bytes"] == runtime.stat().st_size
             and produced["source_identity"] == source_identity,
             "Public installation and producer records must bind the actual runtime")
        cpus = config["cpu_affinity"]
        need(type(cpus) is list and cpus and all(type(cpu) is int and cpu >= 0 for cpu in cpus)
             and cpus == sorted(set(cpus)), "Supply a nonempty exact CPU affinity set")
        need(set(cpus) <= os.sched_getaffinity(0), "Configured CPUs are outside the enclosing job")
        os.sched_setaffinity(0, cpus)
        need(sorted(os.sched_getaffinity(0)) == cpus, "CPU affinity was not applied")
        arguments = config["runtime_arguments"]
        need(type(arguments) is list and 0 < len(arguments) <= 128
             and all(type(v) is str and "\0" not in v for v in arguments), "Bounded explicit runtime arguments required")
        need("--runtime-aot" in arguments or "-Raot" in arguments, "Select actual native AOT")
        need(not any(value.startswith("--wasip1-global-") for value in arguments),
             "Removed Global WASI options are not accepted; use explicit per-module policy")
        need("-WFE-multi-memory" in arguments, "Explicit multi-memory feature selection required")
        need(not any(v in ("--run", "-r", "--wasm-preload-library", "--wasm-set-main-module-name")
                     or "unwind" in v or v.startswith("--ros") for v in arguments),
             "Use the selected finite graph, default checked unwind and no ROS authority")
        selected = config["cases"][args.case]
        main_alias, aliases = CASES[args.case]
        need(selected["main_module"] == main_alias
             and [v["module"] for v in selected["preloads"]] == list(aliases), "Explicit instance graph differs")
        wasm = args.wasm.resolve(strict=True)
        need(wasm == Path(selected["main"]).resolve(strict=True), "Frozen main artifact path differs")
        pins = [(wasm, selected["main_sha256"])]
        argv = [str(runtime), *arguments, "--wasm-set-main-module-name", main_alias]
        for row in selected["preloads"]:
            path = Path(row["path"]).resolve(strict=True)
            pins.append((path, row["sha256"]))
            argv += ["--wasm-preload-library", str(path), row["module"]]
        for path, expected in pins:
            need(re.fullmatch(r"[0-9a-f]{64}", expected) and path.stat().st_size <= 67108864
                 and digest(path) == expected, "Frozen bounded Wasm input differs")
            with path.open("rb") as stream:
                need(stream.read(8) == b"\0asm\1\0\0\0", "A genuine built Wasm input is required")
        if args.case == "independent-three":
            need(pins[1][1] == pins[2][1], "Both independent peers must use the identical complete Wasm SHA")
        argv = [argv[0], *wasi_test_arguments(argv[1:], selected.get("wasi_policy")), "--run", str(wasm)]
        need(digest(args.config) == configuration_sha, "Explicit runtime configuration changed before launch")
        report.update(runtime_sha256=runtime_sha, runtime_source_identity=source_identity,
                      configuration_sha256=configuration_sha, argv=argv,
                      installed_deployment=[{"path": str(q), "sha256": h} for q, h in deployment_pins],
                      configured_instance_count=1 + len(aliases),
                      frozen_modules=[{"path": str(q), "sha256": h} for q, h in pins])
        stdout, stderr = args.output / "vm.stdout", args.output / "vm.stderr"
        with stdout.open("xb") as out, stderr.open("xb") as err:
            # These WAT graphs intentionally block in fd_read until admission is
            # observed. A nonblocking read would return EAGAIN and trap before
            # the supervisor can verify the barrier process.
            child = PipeLoggedProcess(argv, stdin=subprocess.PIPE, stdout=out, stderr=err,
                                      start_new_session=True, nonblocking_stdin=False)
            known[child.pid] = process(child.pid)["birth"]
            deadline = time.monotonic() + 150
            ready = "SDK_LIBRARY_READY:" + args.case + "\n"
            passed = "SDK_LIBRARY_PASS:" + args.case + "\n"
            while read_log(stdout) != ready:
                need(child.poll() is None and time.monotonic() < deadline, "Actual Wasm startup barrier missing")
                time.sleep(.01)
            actual = process(child.pid)
            need(actual["birth"] == known[child.pid] and actual["executable_sha256"] == runtime_sha,
                 "Actual VM process identity differs")
            need(actual["memory.max"] == "68719476736" and actual["memory.swap.max"] == "0"
                 and actual["cpu_affinity"] == cpus, "Actual manual VM resource limits differ")
            need(actual["file_limit_soft"] == actual["file_limit_hard"] == "134217728",
                 "Actual regular-file ceiling differs")
            report.update(actual_VM_at_guest_barrier=actual, guest_started=True,
                          executed=1, not_run=0, blocked=0, business_credit_ns=time.monotonic_ns())
            child.stdin.write(b"R"); child.stdin.flush(); child.stdin.close()
            while child.poll() is None:
                need(time.monotonic() < deadline, "Bounded actual guest deadline")
                read_log(stdout); read_log(stderr)
                time.sleep(.01)
            report["VM_exit"] = child.returncode
            report["runtime_finished_ns"] = time.monotonic_ns()
        report["guest_finished"] = read_log(stdout) == ready + passed
        need(child.returncode == 0 and report["guest_finished"], "Real Wasm graph assertions failed")
        diagnostic = re.sub(r"\x1b\[[0-?]*[ -/]*[@-~]", "", read_log(stderr))
        markers = re.findall(r"\[unwind-check\] status=(ok|failed) elapsed_ns=([0-9]+) native_target_ns=10000000 provider=paired-llvm23", diagnostic)
        need(len(markers) == 1 and markers[0][0] == "ok" and int(markers[0][1]) > 0,
             "Actual checked paired-LLVM unwind result missing or failed")
        need("mode=full_compile, compiler=llvm_jit_only, uwvm-int-translation=disabled, llvm-jit-ir-translation=enabled"
             in diagnostic and "body-fallback=yes" not in diagnostic,
             "Actual LLVM-only full compilation must exclude interpreter fallback")
        for module in (main_alias, *aliases):
            need('LLVM JIT materialization for module "' + module + '" done.' in diagnostic,
                 "Every selected module must finish actual native materialization")
        need(all(digest(path) == expected for path, expected in pins), "Frozen graph changed during execution")
        need(digest(runtime) == runtime_sha and digest(args.config) == configuration_sha
             and all(digest(path) == expected for path, expected in deployment_pins),
             "Pinned runtime, installation or explicit configuration changed during execution")
        report.update(status="PASS_FINITE_SERIAL_WASM_LIBRARY_GRAPH", passed=1,
                      checked_unwind={"status": "ok", "elapsed_ns": int(markers[0][1]), "provider": "paired-llvm23"},
                      body_fallback=False)
    except BaseException as error:
        report.update(status="FAIL" if report["executed"] else "BLOCKED",
                      error=repr(error), error_detail=str(error), failed=report["executed"], passed=0)
    finally:
        if child is not None:
            try:
                retire_session(child, known)
                if child.stdin is not None and not child.stdin.closed: child.stdin.close()
                report["session_retired"] = True
                report["session_retired_ns"] = time.monotonic_ns()
            except BaseException as error:
                report.update(status="FAIL_RETIREMENT_REQUIRES_OUTER_GUARDIAN", retirement_error=repr(error),
                              session_retired=False, passed=0, failed=report["executed"])
        else:
            report.update(session_created=False, session_retired=True, session_retired_ns=time.monotonic_ns())
        report["finished_ns"] = time.monotonic_ns()
        report["raw_files"] = [{"path": q.name, "bytes": q.stat().st_size, "sha256": digest(q)}
                               for q in sorted(args.output.iterdir()) if q.is_file()]
        (args.output / "result.json").write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    return 0 if report["status"] == "PASS_FINITE_SERIAL_WASM_LIBRARY_GRAPH" else 1


if __name__ == "__main__":
    raise SystemExit(main())
