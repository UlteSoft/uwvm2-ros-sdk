"""One bounded child-project lifecycle; parallel scheduling belongs to main Xmake.

This program never schedules another project, downloads a toolchain, runs a
native ROS client, grants permissions, or accepts historical test receipts.
"""
from pathlib import Path
import argparse
import hashlib
import json
import os
import re
import resource
import shutil
import signal
import subprocess
import sys
import time

LIMIT = 8 * 1024 * 1024
SUBJECT_FILE_LIMIT = 2 * 1024 * 1024 * 1024
GENERATED = {".git", ".xmake", ".uwvm-ros", ".tmp", "build", "__pycache__"}


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def save(path, value):
    path = Path(path)
    temporary = path.with_name(path.name + ".new")
    with temporary.open("x") as stream:
        json.dump(value, stream, indent=2)
        stream.write("\n")
    os.replace(temporary, path)


def birth(pid):
    try:
        return (Path("/proc") / str(pid) / "stat").read_text().rsplit(") ", 1)[1].split()[19]
    except (FileNotFoundError, ProcessLookupError):
        return None


def identity(pid):
    root = Path("/proc") / str(pid)
    fields = (root / "stat").read_text().rsplit(") ", 1)[1].split()
    return {"pid": pid, "birth": fields[19], "parent_pid": int(fields[1]),
            "process_group": int(fields[2]), "session": int(fields[3]),
            "argv": [x.decode(errors="strict") for x in (root / "cmdline").read_bytes().split(b"\0") if x],
            "executable": str((root / "exe").resolve()), "executable_sha256": digest(root / "exe"),
            "cgroup": (root / "cgroup").read_text().strip()}


def machine():
    membership = (Path("/proc/self/cgroup")).read_text().strip()
    group = Path("/sys/fs/cgroup") / membership[3:].lstrip("/") if membership.startswith("0::") else None
    row = {"controller": identity(os.getpid()), "boot_id": Path("/proc/sys/kernel/random/boot_id").read_text().strip(),
           "cpu_affinity": sorted(os.sched_getaffinity(0)), "free_bytes": shutil.disk_usage(Path.cwd()).free,
           "meminfo": Path("/proc/meminfo").read_text(), "swaps": Path("/proc/swaps").read_text()}
    if group:
        row["cgroup_values"] = {name: (group / name).read_text().strip() for name in
                                ("memory.max", "memory.swap.max", "memory.current") if (group / name).exists()}
    return row


def execution_guard():
    if sys.platform != "linux":
        raise RuntimeError("BLOCKED_LINUX_ONLY")
    measured = machine()
    if (os.environ.get("GITHUB_ACTIONS") == "true" and os.environ.get("GITHUB_RUN_ID", "").isdigit()
        and os.environ.get("GITHUB_SERVER_URL") == "https://github.com"
        and os.environ.get("GITHUB_REPOSITORY") == "UlteSoft/uwvm2-ros-sdk"):
        measured["environment"] = "GITHUB_HOSTED_LINUX_MEASURED_SEPARATE_FROM_MANUAL_64GIB"
        # Hosted CI has its separately measured runner budget. It does not
        # establish compliance of an SSH/manual run or admit a simulator.
        return measured, None
    from simulation_example import Context, read_json
    selected = os.environ.get("UWVM_ROS_SIMULATION_ADMISSION")
    if not selected:
        raise RuntimeError("BLOCKED_VM_OWNED_PUBLIC_MANUAL_EXECUTION_ADMISSION")
    admission = read_json(selected)
    if admission.get("format") not in ("uwvm-sdk-simulation-admission-v1", "uwvm-sdk-simulation-admission-v2", "uwvm-sdk-simulation-admission-v3"):
        raise RuntimeError("BLOCKED_VM_OWNED_PUBLIC_MANUAL_EXECUTION_ADMISSION_VERSIONED")
    guard = Context.__new__(Context)
    guard.admission = admission
    guard.actual_group_paths = {}
    measured["live_admission"] = guard.guard()
    measured["actual_actor"] = guard.actor_identity(os.getpid())
    shared = Path(admission["shared_ancestor_view"])
    measured["shared_values"] = {name: (shared / name).read_text().strip()
                                 for name in ("memory.max", "memory.swap.max", "memory.current")}
    measured["environment"] = "MANUAL_VM_ADMISSION_64GIB_ZERO_SWAP_CANONICAL_LEASE"
    return measured, guard


def project_sources(project):
    return sorted([{"path": str(p.relative_to(project)), "bytes": p.stat().st_size, "sha256": digest(p)}
                   for p in project.rglob("*") if p.is_file() and not p.is_symlink()
                   and not any(part in GENERATED for part in p.relative_to(project).parts)], key=lambda x: x["path"])



def suite_files(project, output):
    """Find named public suite outputs without treating old receipts as fresh."""
    for kind in ("guest-tests", "simulation-tests"):
        # Retain legacy source state for unchanged owner-specific drivers while
        # common drivers use the scheduler's writable per-invocation root.
        for directory in (project / ".uwvm-ros" / kind, output / "test-evidence" / kind):
            for suite in sorted(directory.rglob("suite.json")):
                yield kind, suite


def suites_before(project, output):
    return {str(p): digest(p) for _, p in suite_files(project, output)
            if p.is_file() and not p.is_symlink()}


def retain_fresh_suites(project, output, before):
    """Retain this invocation's structured counts and raw files, excluding caches."""
    retained, total = [], 0
    for kind, suite in suite_files(project, output):
        if suite.is_symlink() or not suite.is_file():
            raise RuntimeError("BLOCKED_STRUCTURED_SUITE_FILE_TYPE")
        if str(suite) in before:
            if digest(suite) != before[str(suite)]:
                raise RuntimeError("BLOCKED_HISTORICAL_SUITE_CHANGED")
            continue
        raw = suite.read_bytes()
        if len(raw) > LIMIT:
            raise RuntimeError("BLOCKED_STRUCTURED_SUITE_EXTENT")
        report = json.loads(raw)
        destination = output / "evidence" / ("suite-%04d" % (len(retained) + 1))
        destination.mkdir(parents=True)
        files = []
        for source in sorted(suite.parent.rglob("*")):
            if source.is_symlink():
                raise RuntimeError("BLOCKED_STRUCTURED_RAW_SYMLINK")
            if not source.is_file():
                continue
            size = source.stat().st_size
            total += size
            if size > LIMIT or total > 2 * LIMIT:
                raise RuntimeError("BLOCKED_STRUCTURED_RAW_EVIDENCE_BOUND")
            relative = source.relative_to(suite.parent)
            target = destination / relative
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(source, target)
            files.append({"path": str(target.relative_to(output)), "bytes": size, "sha256": digest(target)})
        retained.append({"kind": kind, "source": str(suite), "report": report,
                         "report_path": str((destination / "suite.json").relative_to(output)),
                         "report_sha256": digest(suite), "files": files})
    return retained


def structured_cases_pass(suites):
    from case_accounting import simulation_cases_pass
    for suite in suites:
        row = suite["report"]
        if (row.get("format") == "uwvm-sdk-simulation-result-v1" and
            not simulation_cases_pass(row)):
            return False
        if (row.get("status") != "PASS" or row.get("selected", 0) <= 0
            or row.get("selected") != row.get("executed") or row.get("selected") != row.get("passed")
            or any(row.get(k) != 0 for k in ("failed", "blocked", "skipped"))
            or row.get("wasm_sha256_before") != row.get("wasm_sha256_after")):
            return False
    return bool(suites)


def child_command(request, phase, project, output, env, guard):
    name = phase
    # Use Xmake's supported config action to select the private build directory.
    # Build/test themselves remain real native actions in the public source cwd.
    if phase == "configure":
        argv = [request["xmake"], "f", "-y", "-P", str(project), "-o", str(output / "build")]
    elif phase in ("build", "test"):
        argv = [request["xmake"]] + ([] if phase == "build" else ["test"]) + ["-P", str(project), "-j1"]
    else:
        raise ValueError("Unknown child command phase")
    row = {"phase": phase, "argv": argv, "cwd": str(project), "pwd": env["PWD"], "executed": False,
           "status": "BLOCKED", "exit_code": None, "executed_tests": None, "actors": []}
    out, err = output / (name + ".stdout"), output / (name + ".stderr")
    if guard:
        guard.guard()
    if shutil.disk_usage(output).free < 536870912:
        row["diagnostic"] = "BLOCKED_LINUX_OUTPUT_RESERVE"
        return row
    started = time.monotonic_ns()
    observed = {}
    child = None
    lifecycle = None
    inherited_file_limits = resource.getrlimit(resource.RLIMIT_FSIZE)
    hard_limit = inherited_file_limits[1]
    file_limit = SUBJECT_FILE_LIMIT if hard_limit == resource.RLIM_INFINITY else min(SUBJECT_FILE_LIMIT, hard_limit)
    row["resource_limits"] = {"inherited_file_bytes": inherited_file_limits,
                              "subject_file_bytes": file_limit, "separate_log_bound_bytes": LIMIT}
    def limits():
        # The log bound cannot cap compiler/tool payload files at 8MiB.
        # Preserve a stricter inherited hard cap and report its actual value.
        resource.setrlimit(resource.RLIMIT_FSIZE, (file_limit, file_limit))
        resource.setrlimit(resource.RLIMIT_CORE, (0, 0))
    try:
        from owned_processes import OwnedProcesses
        # Establish adoption before birth: a fast-exiting leader can otherwise
        # leave unsampled setsid/double-fork descendants outside our census.
        lifecycle = OwnedProcesses()
        with out.open("xb") as stdout, err.open("xb") as stderr:
            child = subprocess.Popen(argv, cwd=project, env=env, stdin=subprocess.DEVNULL,
                                     stdout=stdout, stderr=stderr, start_new_session=True, preexec_fn=limits)
            row.update(executed=True, pid=child.pid, birth=birth(child.pid))
            deadline = time.monotonic() + request["timeout_seconds"]
            while child.poll() is None:
                if time.monotonic() > deadline:
                    raise TimeoutError("BLOCKED_CHILD_PROJECT_DEADLINE")
                if out.stat().st_size + err.stat().st_size > LIMIT:
                    raise RuntimeError("BLOCKED_CHILD_LOG_BOUND")
                if guard:
                    guard.guard()
                for process in lifecycle.observe():
                    try:
                        if process["state"] in ("Z", "X"):
                            continue
                        pid = process["pid"]
                        actual = identity(pid)
                        if actual["birth"] != process["birth"]:
                            continue
                        if guard:
                            actual["admitted_actor"] = guard.actor_identity(pid)
                        if actual["cgroup"] != request["controller_cgroup"]:
                            raise RuntimeError("BLOCKED_CHILD_CGROUP_CHANGED")
                        observed[(pid, actual["birth"], actual["executable_sha256"], tuple(actual["argv"]))] = actual
                    except (FileNotFoundError, ProcessLookupError):
                        continue
                time.sleep(0.005)
            row["exit_code"] = child.returncode
            if child.returncode < 0:
                row["termination_signal"] = signal.Signals(-child.returncode).name
        text = re.sub(r"\x1b\[[0-9;]*m", "", out.read_text() + err.read_text())
        if phase == "test":
            totals = re.findall(r"\d+% tests passed,\s*\d+ test\(s\) failed out of\s*(\d+)", text)
            row["executed_tests"] = int(totals[-1]) if totals else 0
        row["status"] = "PASS" if row["exit_code"] == 0 else ("BLOCKED" if "BLOCKED" in text else "FAIL")
        if phase == "test" and not row["executed_tests"]:
            row.update(status="BLOCKED", diagnostic="BLOCKED_ZERO_OR_UNPROVEN_EXECUTED_TEST_CASES")
        if not any(a["pid"] == child.pid and a["executable_sha256"] == request["xmake_sha256"] for a in observed.values()):
            row.update(status="BLOCKED", diagnostic="BLOCKED_ACTUAL_CHILD_XMAKE_EXEC_IDENTITY_NOT_OBSERVED")
    except BaseException as error:
        row.update(status="BLOCKED" if "BLOCKED" in str(error) else "FAIL", diagnostic=repr(error))
    finally:
        if lifecycle is not None:
            actors = [] if child is None else [{"pid": child.pid, "birth": row.get("birth"), "process": child}]
            try:
                row["retirement"] = lifecycle.retire(actors)
                if row["retirement"]["status"] != "RETIRED":
                    row.update(status="FAIL", retirement_diagnostic="OWNED_CHILD_ACTOR_RETIREMENT_INCOMPLETE")
            except BaseException as error:
                # Preserve the original execution diagnostic independently.
                row.update(status="FAIL", retirement_diagnostic=repr(error))
        row["actors"] = list(observed.values())
        row["started_monotonic_ns"], row["finished_monotonic_ns"] = started, time.monotonic_ns()
        row["logs"] = [{"path": str(p), "bytes": p.stat().st_size, "sha256": digest(p)} for p in (out, err) if p.exists()]
    return row


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--request")
    parser.add_argument("--preflight", action="store_true")
    args = parser.parse_args()
    if args.preflight:
        try:
            measured, _ = execution_guard()
            print(json.dumps({"status": "ADMITTED", "measurement": measured}))
            return 0
        except Exception as error:
            print(json.dumps({"status": "BLOCKED", "diagnostic": repr(error)}))
            return 1
    if args.request is None:
        parser.error("--request is required for one child lifecycle")
    request = json.loads(Path(args.request).read_text())
    output = Path(request["output"])
    output.mkdir(parents=True, exist_ok=False)
    report = {"format": "uwvm-sdk-example-project-result-v2", "entry": request["entry"], "status": "BLOCKED",
              "output_root": str(output / "build"), "configure": {"status": "NOT_RUN", "executed": False},
              "build": {"status": "NOT_RUN", "executed": False}, "test": {"status": "NOT_RUN", "executed": False}}
    try:
        measured, guard = execution_guard()
        report["machine"] = measured
        request["controller_cgroup"] = measured["controller"]["cgroup"]
        root = Path(request["sdk_root"]).resolve()
        project = (root / request["entry"]["path"]).resolve()
        if not project.is_relative_to(root / "example"):
            raise RuntimeError("BLOCKED_NONPUBLIC_PROJECT_PATH")
        before = project_sources(project)
        if before != request["entry"]["source_files"]:
            raise RuntimeError("BLOCKED_EXAMPLE_SOURCE_CATALOG_DRIFT")
        report["source_files"] = before
        if digest(request["xmake"]) != request["xmake_sha256"]:
            raise RuntimeError("BLOCKED_MAIN_CHILD_XMAKE_BINARY_IDENTITY")
        env = dict(os.environ, PWD=str(project), UWVM_ROS_SDK_ROOT=str(root), XMAKE_STATS="false",
                   XMAKE_CONFIGDIR=str(output / "configuration"), XMAKE_GLOBALDIR=str(output / "global"),
                   XDG_CACHE_HOME=str(output / "cache"), TMPDIR=str(output / "tmp"), HOME=str(output / "home"),
                   UWVM_ROS_XMAKE_OUTPUT_ROOT=str(output / "build"),
                   UWVM_ROS_TEST_EVIDENCE_ROOT=str(output / "test-evidence"),
                   PYTHONDONTWRITEBYTECODE="1", LC_ALL="C", TZ="UTC")
        for name in ("XMAKE_CONFIGDIR", "XMAKE_GLOBALDIR", "XDG_CACHE_HOME", "TMPDIR", "HOME"):
            Path(env[name]).mkdir(parents=True)
        # The main Xmake phase prepares toolchains sequentially. Private cache
        # names prevent a missing/repairing toolchain from racing another child.
        prepared = Path(request["prepared_cache"])
        if prepared.exists():
            shutil.copytree(prepared, Path(env["XDG_CACHE_HOME"]), dirs_exist_ok=True, copy_function=os.link, symlinks=True)
        prior_suites = suites_before(project, output)
        report["configure"] = child_command(request, "configure", project, output, env, guard)
        # Preserve an original configuration failure and still invoke each public
        # build/test command for its independent diagnostic and case accounting.
        report["build"] = child_command(request, "build", project, output, env, guard)
        # Always issue the independent public test command, even after build failure.
        if request["entry"]["scheduling_lane"] == "SERIAL_OFFICIAL_ENVIRONMENT" and guard is None:
            report["test"] = {"status": "BLOCKED", "executed": False, "exit_code": None,
                              "argv": [request["xmake"], "test", "-P", str(project), "-j1"], "cwd": str(project), "pwd": str(project),
                              "executed_tests": 0,
                              "diagnostic": "BLOCKED_OFFICIAL_VM_ADMISSION_PROVIDER_FULL_LIFECYCLE_LEASE"}
        else:
            report["test"] = child_command(request, "test", project, output, env, guard)
        report["structured_suites"] = retain_fresh_suites(project, output, prior_suites)
        if request["entry"].get("structured_guest_cases_required") and not structured_cases_pass(report["structured_suites"]):
            report["test"].update(status="BLOCKED", diagnostic="BLOCKED_MISSING_OR_UNSUCCESSFUL_FRESH_REQUIRED_GUEST_CASES")
        report["guest_cases"] = {k: sum(s["report"].get(k, 0) for s in report["structured_suites"])
                                 for k in ("required", "selected", "attempted", "executed", "passed",
                                           "failed", "blocked", "not_run", "not_executed",
                                           "suite_failures", "skipped")}
        report["full_framework_simulation_qualified"] = False
        report["wasm"] = [{"root": label, "path": str(p.relative_to(directory)),
                           "bytes": p.stat().st_size, "sha256": digest(p)}
                          for label, directory in (("public-project", project), ("isolated-build", output / "build"))
                          for p in directory.rglob("*.wasm") if p.is_file() and not p.is_symlink()]
        if project_sources(project) != before:
            raise RuntimeError("PUBLIC_PROJECT_SOURCE_CHANGED_DURING_BUILD_TEST")
        report["status"] = "PASS" if all(report[p]["status"] == "PASS" for p in ("configure", "build", "test")) else "BLOCKED_OR_FAILED"
    except BaseException as error:
        report["diagnostic"] = repr(error)
    finally:
        if "prior_suites" in locals() and "structured_suites" not in report:
            try:
                report["structured_suites"] = retain_fresh_suites(project, output, prior_suites)
            except Exception as evidence_error:
                report["evidence_retention_error"] = repr(evidence_error)
        save(output / "result.json", report)
    return 0 if report["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
