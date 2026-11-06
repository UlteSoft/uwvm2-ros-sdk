# SPDX-License-Identifier: Apache-2.0
"""Bounded VM/gateway supervision only; no ROS client or response implementation.

An independently running original demo_nodes_cpp server supplies real ROS.
All request construction, expected sums and refusal assertions are in Wasm.
The outer manual execution owner must first qualify its current cgroup/lease,
whole namespace lifecycle and exact source packet.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import resource
import secrets
import signal
import stat
import subprocess
import time

CASES = ("positive", "denied", "stale", "timeout")
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


def exec_runtime_gate(arguments):
    """Keep one PID alive until its gateway has pinned that process lifetime."""
    need(len(arguments) >= 3, 'Complete runtime executable, identity and arguments required')
    executable, expected, *tail = arguments
    need(Path(executable).is_absolute() and len(expected) == 64
         and all(c in '0123456789abcdef' for c in expected), 'Invalid runtime gate identity')
    need(os.read(0, 1) == b'E', 'Runtime execution was not released by the supervisor')
    need(digest(executable) == expected and os.access(executable, os.X_OK),
         'Runtime executable changed before exec')
    os.execv(executable, [executable, *tail])


def read_log(path):
    with Path(path).open("rb") as stream:
        result = stream.read(LOG_LIMIT + 1)
    need(len(result) <= LOG_LIMIT, "Bounded original log exceeded")
    return result.decode("utf-8")


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


def check_resource_boundary(row):
    """Match the actual supervisor leaf, without assuming one host's CPU IDs."""
    supervisor = process(os.getpid())
    fields = ("membership", "cgroup_inode", "cgroup_namespace", "cpuset.cpus.effective")
    need(all(row[field] == supervisor[field] for field in fields),
         "Actual actor left the admitted fixture supervisor resource boundary")
    need(row["memory.max"] == "68719476736" and row["memory.swap.max"] == "0",
         "Actual actor requires the 64 GiB, zero-swap cgroup")


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


def events(text, name, challenge):
    rows = [json.loads(line.split(":", 1)[1]) for line in text.splitlines()
            if line.startswith("SDK02_ROS_CASE:")]
    need(len(rows) <= 2, "Guest emitted duplicate events")
    for row in rows:
        need(row.get("format") == "sdk02-official-ros-guest-event-v1"
             and row.get("id") == name and row.get("challenge") == challenge,
             "Guest case/challenge identity differs")
    if rows:
        need(rows[0]["phase"] == "start" and rows[0]["status"] == "RUNNING",
             "Guest did not start this case")
    if len(rows) == 2:
        need(rows[1]["phase"] == "finish" and rows[1]["status"] in ("PASS", "FAIL"),
             "Guest finish does not match its start")
    return rows


def arguments(values, socket):
    need(type(values) is list and len(values) <= 512, "Supply a bounded explicit runtime argument array")
    need(all(type(value) is str and "\0" not in value for value in values), "Invalid runtime argument")
    need("--run" not in values and "-r" not in values, "The fixture appends the sole frozen application")
    need("--runtime-aot" in values or "-Raot" in values, "Select the native AOT runtime explicitly")
    need(all("unwind" not in value for value in values), "Use the default checked unwind contract")
    return [value.replace("@SDK02_GATEWAY_SOCKET@", str(socket)) for value in values]


def peer_identity(peer):
    need(peer["kind"] == "demo_nodes_cpp/add_two_ints_server", "Select the original official ROS demo peer")
    row = process(peer["pid"])
    need(row["birth"] == str(peer["birth"]) and row["executable_sha256"] == peer["sha256"],
         "Actual official peer birth/executable differs")
    need(Path(row["executable"]).resolve() == Path(peer["executable"]).resolve(), "Official peer path differs")
    own = Path("/proc/self/ns/net").readlink()
    need(Path("/proc", str(peer["pid"]), "ns/net").readlink() == own,
         "Official peer is outside this isolated network namespace")
    check_resource_boundary(row)
    return row


def audit_records(text):
    rows = []
    for line in text.splitlines():
        # A preceding verbose message may leave its SGR reset before the first
        # JSON audit record. Preserve the record and all semantic requirements.
        line = re.sub(r"\x1b\[[0-9;]*m", "", line)
        if line.startswith("{"):
            try:
                row = json.loads(line)
            except json.JSONDecodeError:
                continue
            if type(row) is dict and "event" in row and "error" in row:
                rows.append(row)
    need(len(rows) <= 1024, "VM audit record bound exceeded")
    return rows


def check_audit(rows, name, resource_name):
    need(rows and all(type(row.get("module")) is str and row["module"] for row in rows),
         "Actual VM module-correlated permission audit is missing")
    allowed = [row for row in rows if row.get("event") == "allow"
               and row.get("operation") == "service.call" and row.get("error") == 0]
    need(len(allowed) == {"positive": 2, "denied": 0, "stale": 0, "timeout": 1}[name],
         "VM authorized service-call count differs")
    if name == "positive":
        need(all(row.get("resource") == resource_name and type(row.get("instance")) is int
                 and row["instance"] > 0 for row in allowed), "VM result is not bound to the expected identity/resource")
        need(len({(row["module"], row["instance"]) for row in allowed}) == 1, "Responses cross runtime instances")
    if name in ("denied", "stale"):
        expected = 13 if name == "denied" else 9
        need(any(row.get("error") == expected for row in rows), "VM refusal audit is missing")
    if name == "timeout":
        need(any(row.get("event") == "gateway-error" and row.get("error") == 110 for row in rows),
             "VM bounded timeout audit is missing")


def run_case(config, wasm, output, name, seed):
    root = output / name
    root.mkdir(mode=0o700)
    socket = root / "g"
    need(len(str(socket).encode()) < 100, "Select a short output path for the bounded Unix socket")
    selected = config["cases"][name]
    template = selected["gateway_configuration"]
    need(type(template) is str and len(template.encode()) <= 1024**2, "Supply the complete explicit gateway policy")
    need(all(marker in template for marker in ("@SDK02_WORKER_PID@", "@SDK02_UID@", "@SDK02_GATEWAY_SOCKET@")),
         "Gateway policy must bind this exact observed worker and owned socket")
    argv = [str(Path(config["runtime"]).resolve()), *wasi_test_arguments(arguments(selected["runtime_arguments"], socket), selected.get("wasi_policy")),
            "--run", str(wasm), name, str(seed)]
    argv = authorize_test_imports(argv)
    row = {"id": name, "challenge": seed, "status": "BLOCKED", "guest_started": False,
           "guest_finished": False, "argv": argv, "started_ns": time.monotonic_ns()}
    vm = gateway = None
    owned = []
    peer_before = peer_identity(config["official_peer"])
    peer_log = Path(config["official_peer"]["request_log"])
    need(not peer_log.is_symlink() and stat.S_ISREG(peer_log.stat().st_mode), "Original peer log must be a regular file")
    peer_stat = peer_log.stat()
    initial = read_log(peer_log)
    try:
        with (root / "vm.stdout").open("xb") as out, (root / "vm.stderr").open("xb") as err:
            # Bind the gateway to this PID before the VM performs startup
            # preflight; exec preserves the pinned PID and process birth.
            vm = PipeLoggedProcess([sys.executable, "-B", str(Path(__file__).resolve()),
                "--exec-runtime-gate", config["runtime"], config["runtime_sha256"], *argv[1:]],
                stdin=subprocess.PIPE, stdout=out, stderr=err, start_new_session=True,
                nonblocking_stdin=False)
            owner = process(vm.pid)
            owned.append((vm, {vm.pid: owner["birth"]}))
            deadline = time.monotonic() + 60
            policy = template.replace("@SDK02_WORKER_PID@", str(vm.pid)).replace("@SDK02_UID@", str(os.getuid()))
            policy = policy.replace("@SDK02_GATEWAY_SOCKET@", str(socket))
            policy_path = root / "gateway.conf"
            policy_path.write_text(policy)
            policy_path.chmod(0o400)
            row["gateway_policy_sha256"] = digest(policy_path)
            with (root / "gateway.stdout").open("xb") as gout, (root / "gateway.stderr").open("xb") as gerr:
                gateway = subprocess.Popen([config["gateway"], str(policy_path)], stdin=subprocess.DEVNULL,
                    stdout=gout, stderr=gerr, start_new_session=True)
                gateway_owner = process(gateway.pid)
                owned.append((gateway, {gateway.pid: gateway_owner["birth"]}))
                while not socket.exists():
                    need(gateway.poll() is None and time.monotonic() < deadline, "Restricted native gateway did not create its bound socket")
                    time.sleep(0.01)
                actual_gateway = process(gateway.pid)
                need(actual_gateway["executable_sha256"] == config["gateway_sha256"], "Actual native gateway executable differs")
                row["actual_gateway"] = actual_gateway
                vm.stdin.write(b"E")
                vm.stdin.flush()
                while not events(read_log(root / "vm.stdout"), name, seed):
                    need(vm.poll() is None and time.monotonic() < deadline, "VM did not enter the real guest startup barrier")
                    time.sleep(0.01)
                actual_vm = process(vm.pid)
                need(actual_vm["birth"] == owner["birth"] and actual_vm["executable_sha256"] == config["runtime_sha256"], "Actual running VM birth/executable differs")
                check_resource_boundary(actual_vm)
                need(actual_vm["file_limit_soft"] == actual_vm["file_limit_hard"] == "134217728", "Actual VM file ceiling differs")
                row.update(guest_started=True, actual_VM=actual_vm)
                vm.stdin.write(b"R")
                vm.stdin.flush()
                while vm.poll() is None:
                    need(time.monotonic() < deadline and gateway.poll() is None, "VM operation exceeded its bounded lifetime or lost its native host")
                    for filename in ("vm.stdout", "vm.stderr", "gateway.stdout", "gateway.stderr"):
                        need((root / filename).stat().st_size <= LOG_LIMIT, "Original runtime log exceeded")
                    time.sleep(0.01)
            row["VM_exit"] = vm.returncode
            observed = events(read_log(root / "vm.stdout"), name, seed)
            row["guest_events"] = observed
            row["guest_finished"] = len(observed) == 2
            need(row["guest_finished"] and observed[1]["status"] == "PASS" and vm.returncode == 0,
                 "Real Wasm assertions did not pass")
            need(observed[1]["service_calls"] == {"positive": 2, "denied": 0, "stale": 1, "timeout": 1}[name],
                 "Guest executed a different number of service imports")
            audit = audit_records(read_log(root / "vm.stderr"))
            row["VM_audit"] = audit
            check_audit(audit, name, config["service_resource"])
            quiet_deadline = time.monotonic() + 0.5
            while time.monotonic() < quiet_deadline:
                peer_identity(config["official_peer"])
                time.sleep(0.02)
            final = read_log(peer_log)
            end_stat = peer_log.stat()
            need((peer_stat.st_dev, peer_stat.st_ino) == (end_stat.st_dev, end_stat.st_ino)
                 and final.startswith(initial), "Original official peer log was replaced or truncated")
            delta = final[len(initial):]
            requests = re.findall(r"Incoming request\s*\na: (-?[0-9]+) b: (-?[0-9]+)", delta)
            expected = [(str(seed), "17"), (str(seed + 97), "29")] if name == "positive" else []
            need(requests == expected and delta.count("Incoming request") == len(expected),
                 "Official peer causal request count/payload or no-effect observation differs")
            row.update(status="PASS", official_requests=requests, official_log_delta=delta,
                       official_peer_before=peer_before, official_peer_after=peer_identity(config["official_peer"]))
    except BaseException as error:
        row.update(status="FAIL" if row["guest_started"] else "BLOCKED", error=repr(error))
        if (root / "vm.stdout").exists():
            observed = events(read_log(root / "vm.stdout"), name, seed)
            row.update(guest_events=observed, guest_started=bool(observed), guest_finished=len(observed) == 2)
    finally:
        for child, known in reversed(owned):
            retire_session(child, known)
        row["finished_ns"] = time.monotonic_ns()
        row["raw_files"] = [{"path": p.name, "bytes": p.stat().st_size, "sha256": digest(p)}
                            for p in sorted(root.iterdir()) if p.is_file()]
        (root / "case.json").write_text(json.dumps(row, indent=2, sort_keys=True) + "\n")
    return row


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--wasm", type=Path, required=True)
    parser.add_argument("--config", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(mode=0o700)
    report = {"format": "sdk02-official-ros-communication-tests-v1", "status": "BLOCKED",
              "required": 4, "selected": 4, "executed": 0, "passed": 0, "failed": 0,
              "blocked": 4, "not_run": 4, "cases": [], "stage_B_groups_executed": 0}
    try:
        resource.setrlimit(resource.RLIMIT_CORE, (0, 0))
        resource.setrlimit(resource.RLIMIT_FSIZE, (134217728, 134217728))
        config = json.loads(args.config.read_text())
        need(config["format"] == "sdk02-official-ros-communication-run-v1", "Supply the explicit official ROS communication deployment")
        need(set(config["cases"]) == set(CASES), "All four required cases need explicit policies")
        wasm = args.wasm.resolve(strict=True)
        need(wasm.stat().st_size <= 67108864 and wasm.read_bytes()[:8] == b"\0asm\1\0\0\0", "A bounded genuine built Wasm module is required")
        report.update(wasm_sha256=digest(wasm), configuration_sha256=digest(args.config))
        for name in ("runtime", "gateway"):
            need(Path(config[name]).is_file() and os.access(config[name], os.X_OK)
                 and digest(config[name]) == config[name + "_sha256"], "Explicit native executable identity differs: " + name)
        for name in CASES:
            need(digest(wasm) == report["wasm_sha256"], "Frozen Wasm changed between cases")
            row = run_case(config, wasm, args.output.resolve(), name, secrets.randbelow(899999) + 1)
            report["cases"].append(row)
        report["executed"] = sum(row["guest_finished"] for row in report["cases"])
        report["passed"] = sum(row["status"] == "PASS" for row in report["cases"])
        report["failed"] = sum(row["guest_finished"] and row["status"] != "PASS" for row in report["cases"])
        report["not_run"] = 4 - sum(row["guest_started"] for row in report["cases"])
        report["blocked"] = 4 - report["executed"]
        report["status"] = "PASS_STAGE_A_FOUR_REAL_ROS_CASES" if report["passed"] == 4 else "FAIL_OR_BLOCKED"
    except BaseException as error:
        report["error"] = repr(error)
    finally:
        (args.output / "result.json").write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    return 0 if report["passed"] == 4 else 1


if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "--exec-runtime-gate":
        exec_runtime_gate(sys.argv[2:])
    else:
        raise SystemExit(main())


