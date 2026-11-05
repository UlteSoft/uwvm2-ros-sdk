"""Version 1 official-simulation example lifecycle and assertion support.

This module consumes a VM-owned execution admission; it never creates an
admission, grants authority, implements a VM host, or accepts historical test
receipts. Platform code exports run_case(context, scenario).
"""
from pathlib import Path
import argparse
import hashlib
import importlib.util
import json
import math
import os
import re
import shutil
import signal
import subprocess
import sys
import time
import traceback
import uuid

API_VERSION = 1


from runtime_boundary import Blocked, LiveBoundary
from guest_feedback import JointFeedback, stream_rows, STATE_FORMAT
from case_accounting import CaseAccounting, EXECUTION_FORMAT, simulation_cases_pass


def digest(path):
    """@brief Hash complete installed bytes without loading executable code."""
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def read_json(path):
    """@brief Read bounded UTF-8 JSON, rejecting duplicate keys and nonfinite values."""
    with Path(path).open("rb") as stream:
        raw = stream.read(1_048_577)
    if len(raw) > 1048576:
        raise ValueError("Configuration exceeds one MiB")
    def pairs(items):
        result = {}
        for key, value in items:
            if key in result:
                raise ValueError("Duplicate configuration key: " + key)
            result[key] = value
        return result
    return json.loads(raw.decode("utf-8"), object_pairs_hook=pairs,
                      parse_constant=lambda value: (_ for _ in ()).throw(ValueError(value)))


FAILURE_FORMAT = "uwvm-sdk-simulation-failure-v1"
FAILURE_TRACEBACK_BYTES = 32768
FAILURE_FIELD_BYTES = 4096


def bounded_failure_text(value, limit=FAILURE_FIELD_BYTES):
    """Bound diagnostic bytes while leaving complete ordinary values intact."""
    raw = value.encode("utf-8", "backslashreplace")
    return {"text": raw[:limit].decode("utf-8", "replace"),
            "bytes": len(raw), "truncated": len(raw) > limit}


def original_failure(context, report, error, phase):
    """Retain the original exception before retirement or report finalization."""
    stage = getattr(context, "diagnostic_stage", "unknown")
    trace = traceback.TracebackException(
        type(error), error, error.__traceback__, limit=-64,
        lookup_lines=False, capture_locals=False, compact=True,
        max_group_width=4, max_group_depth=2)
    raw = bytearray()
    truncated = False
    for part in trace.format(chain=True):
        encoded = part.encode("utf-8", "backslashreplace")
        remaining = FAILURE_TRACEBACK_BYTES - len(raw)
        raw.extend(encoded[:remaining])
        if len(encoded) > remaining:
            truncated = True
            break
    detail = {"format": FAILURE_FORMAT, "phase": phase, "stage": stage,
              "run_id": context.run_id, "pid": os.getpid(),
              "monotonic_ns": time.monotonic_ns(),
              "scenario_id": (context.active_scenario or {}).get("id"),
              "exception_type": type(error).__name__,
              "exception_module": type(error).__module__,
              "exception_repr": bounded_failure_text(repr(error)),
              "errno": error.errno if isinstance(error, OSError) else None,
              "filename": None, "filename2": None,
              "traceback": bytes(raw).decode("utf-8", "replace"),
              "traceback_bytes": len(raw),
              "traceback_sha256": hashlib.sha256(raw).hexdigest(),
              "traceback_truncated": truncated,
              "traceback_frame_limit": 64}
    for name in ("filename", "filename2"):
        value = getattr(error, name, None)
        if isinstance(value, bytes):
            detail[name] = {"encoding": "bytes-hex",
                            **bounded_failure_text(value.hex(), 2 * FAILURE_FIELD_BYTES)}
        elif isinstance(value, str):
            detail[name] = {"encoding": "unicode", **bounded_failure_text(value)}
    failures = report.setdefault("failures", [])
    name = "failure-%02d-%s-%s" % (len(failures) + 1, phase, uuid.uuid4().hex)
    try:
        trace_path = context.output / (name + ".traceback.txt")
        with trace_path.open("xb") as stream:
            stream.write(raw)
        artifact = json.dumps(detail, indent=2).encode("utf-8") + b"\n"
        path = context.output / (name + ".json")
        with path.open("xb") as stream:
            stream.write(artifact)
        detail["original_files"] = [
            {"path": str(trace_path), "bytes": len(raw),
             "sha256": hashlib.sha256(raw).hexdigest()},
            {"path": str(path), "bytes": len(artifact),
             "sha256": hashlib.sha256(artifact).hexdigest()}]
    except OSError as retention_error:
        detail["original_retention_error"] = {
            "type": type(retention_error).__name__, "errno": retention_error.errno,
            "filename_repr": bounded_failure_text(repr(retention_error.filename))}
    failures.append(detail)
    # Outer public-command stderr retains the exception even if output writes fail.
    try:
        print(json.dumps(detail), file=sys.stderr, flush=True)
    except OSError as stderr_error:
        detail["stderr_retention_error"] = {
            "type": type(stderr_error).__name__, "errno": stderr_error.errno}
    return detail


def birth(pid):
    """@brief Read the kernel process birth counter, or return None after exit."""
    try:
        return (Path("/proc") / str(pid) / "stat").read_text().rsplit(") ", 1)[1].split()[19]
    except (FileNotFoundError, ProcessLookupError):
        return None


def process_identity(pid):
    """@brief Read actual PID/birth/exec/cgroup facts from procfs and cgroup2."""
    proc = Path("/proc") / str(pid)
    membership = (proc / "cgroup").read_text().strip()
    if not membership.startswith("0::"):
        raise Blocked("BLOCKED_CGROUP2_REQUIRED")
    group = Path("/sys/fs/cgroup") / membership[3:].lstrip("/")
    values = {name: (group / name).read_text().strip()
              for name in ("memory.max", "memory.swap.max")}
    # The shared ancestor is verified separately by LiveBoundary.guard().
    # An actor may reserve a smaller finite leaf inside that exact 64GiB pool.
    memory = values["memory.max"]
    if (not re.fullmatch(r"[1-9][0-9]{0,10}", memory)
            or int(memory) > 68719476736 or values["memory.swap.max"] != "0"):
        raise Blocked("BLOCKED_ACTUAL_ACTOR_BOUNDED_MEMORY_ZERO_SWAP")
    status = dict(line.split(":", 1) for line in (proc / "status").read_text().splitlines()
                  if ":" in line)
    if any(int(status[key].strip(), 16) for key in
           ("CapEff", "CapPrm", "CapInh", "CapBnd", "CapAmb")):
        raise Blocked("BLOCKED_ACTOR_CAPABILITIES")
    if status["NoNewPrivs"].strip() != "1" or status["Seccomp"].strip() != "2":
        raise Blocked("BLOCKED_ACTOR_SECURITY_PROFILE")
    if any(int(value) != 1000 for key in ("Uid", "Gid") for value in status[key].split()):
        raise Blocked("BLOCKED_ACTOR_EXACT_UID_GID_1000")
    executable = proc / "exe"
    return {"pid": pid, "birth": birth(pid), "executable": str(executable.resolve()),
            "executable_sha256": digest(executable), "membership": membership,
            "command_line": [x.decode() for x in (proc / "cmdline").read_bytes().split(b"\0") if x],
            "cgroup_device": group.stat().st_dev, "cgroup_inode": group.stat().st_ino,
            "cgroup_view": str(group), **values}


def actor_self_namespace(hostproc):
    """Consume the VM owner's v1 self-mapping contract; this grants no authority."""
    local = Path("/proc/self")
    hostproc = Path(hostproc)
    link = os.readlink(hostproc / "self")
    if not re.fullmatch(r"[1-9][0-9]*", link):
        raise Blocked("BLOCKED_KERNEL_HOST_PROC_SELF_LINK")
    host_pid = int(link)
    host = hostproc / link
    own_status = dict(line.split(":", 1) for line in (local / "status").read_text().splitlines() if ":" in line)
    host_status = dict(line.split(":", 1) for line in (host / "status").read_text().splitlines() if ":" in line)
    own_nspid = [int(x) for x in own_status["NSpid"].split()]
    host_nspid = [int(x) for x in host_status["NSpid"].split()]
    if (not own_nspid or not host_nspid or own_nspid[-1] != os.getpid()
        or host_nspid[0] != host_pid or host_nspid[-len(own_nspid):] != own_nspid):
        raise Blocked("BLOCKED_ACTUAL_SELF_NSPID_ENDPOINTS")
    own_birth = (local / "stat").read_text().rsplit(") ", 1)[1].split()[19]
    host_birth = (host / "stat").read_text().rsplit(") ", 1)[1].split()[19]
    if own_birth != host_birth or own_birth != birth(os.getpid()):
        raise Blocked("BLOCKED_ACTUAL_SELF_HOST_LOCAL_BIRTH")
    namespaces = {}
    for name in ("pid", "mnt", "user", "cgroup"):
        left, right = local / "ns" / name, host / "ns" / name
        a, b = left.stat(), right.stat()
        if (a.st_dev, a.st_ino, os.readlink(left)) != (b.st_dev, b.st_ino, os.readlink(right)):
            raise Blocked("BLOCKED_ACTUAL_SELF_NAMESPACE_PAIR: " + name)
        namespaces[name] = {"device": a.st_dev, "inode": a.st_ino, "link": os.readlink(left)}
    if any(own_status[name].split() != host_status[name].split() for name in ("Uid", "Gid")):
        raise Blocked("BLOCKED_ACTUAL_SELF_CREDENTIAL_PAIR")
    return {"schema": "uwvm-executing-actor-self-namespace-v1", "pid": os.getpid(), "host_pid": host_pid,
            "birth": own_birth, "local_NSpid": own_nspid, "host_NSpid": host_nspid, "namespaces": namespaces,
            "contract_sha256": "0189d1d1537dde10d87b9deccf8aa83191c45470f3f570b19fc89e7c2ef50b03",
            "scope": "Actual same-PID kernel mapping only; not authorization or an after-exec receipt",
            "self_claim_is_authorization": False}


class Context:
    """@brief One fresh, bounded official-simulation suite context."""

    def __init__(self, args, manifest):
        """@brief Bind public inputs and create an unused run identity."""
        self.args = args
        self.manifest = manifest
        self.example = Path(args.manifest).resolve().parent
        self.sdk = Path(args.sdk_root).resolve()
        self.wasm = Path(args.wasm).resolve()
        self.run_id = uuid.uuid4().hex
        self.output = Path(args.output).resolve() / self.run_id
        self.output.mkdir(parents=True, exist_ok=False)
        self.started_ns = time.monotonic_ns()
        self.actors = []
        self.descendants = {}
        self.actual_group_paths = {}
        self.completed = {}
        self.case_accounting = (
            CaseAccounting(manifest["scenarios"])
            if manifest.get("format") == "uwvm-sdk-simulation-example-v1"
            else None)
        self.before = digest(self.wasm)
        self.deployment = None
        self.admission = None
        self.boundary = None
        self.guest_feedback = None
        self.required_denied_ids = [row["id"] for row in manifest.get("scenarios", []) if row["kind"] == "denied"]
        self.active_scenario = None
        self.actor_output_limit = 8 * 1024 * 1024
        self.diagnostic_stage = "context.created"
        self.lifecycle = None
        self.retiring = False
        self.received_signals = []

    def interrupt(self, signum, frame):
        """Convert supervisor cancellation into retained failure and local cleanup.

        This is process supervision. It never claims a native ROS goal cancel.
        Repeated termination signals are recorded while bounded cleanup drains.
        """
        self.received_signals.append({"signal": signum, "monotonic_ns": time.monotonic_ns()})
        if not self.retiring:
            raise InterruptedError("Simulation supervisor interrupted by signal " + str(signum))

    def block(self, diagnostic):
        """@brief Let platform drivers report a required missing capability as BLOCKED."""
        raise Blocked(diagnostic)

    def prepare(self):
        """@brief Fail closed before starting scenes if a mandatory input is absent."""
        self.diagnostic_stage = "prepare.platform"
        if sys.platform != "linux":
            raise Blocked("BLOCKED_SUPPORTED_LINUX_ENVIRONMENT_REQUIRED")
        self.diagnostic_stage = "prepare.controller.identity"
        self.controller = process_identity(os.getpid())
        self.diagnostic_stage = "prepare.public-inputs"
        self.public_inputs = []
        for row in self.manifest.get("public_inputs", []):
            root = self.sdk if row["scope"] == "sdk" else self.example
            relative = Path(row["path"])
            if relative.is_absolute() or ".." in relative.parts or ".tmp" in relative.parts:
                raise Blocked("BLOCKED_NONPUBLIC_INPUT_PATH")
            actual = root / relative
            if digest(actual) != row["sha256"]:
                raise Blocked("BLOCKED_PUBLIC_EXAMPLE_INPUT_IDENTITY: " + row["path"])
            self.public_inputs.append({**row, "actual_path": str(actual)})
        self.diagnostic_stage = "prepare.frozen-wasm"
        frozen = self.manifest["frozen_wasm"]
        installed = self.sdk / frozen["sdk_path"]
        if self.before != frozen["sha256"] or digest(installed) != self.before:
            raise Blocked("BLOCKED_FROZEN_WASM_IDENTITY: build/install bytes must match")
        self.diagnostic_stage = "prepare.required-implementation"
        missing = self.manifest.get("required_implementation")
        if missing is not None:
            if (not isinstance(missing, dict) or missing.get("status") != "BLOCKED"
                or not isinstance(missing.get("diagnostic"), str)
                or not missing["diagnostic"].startswith("BLOCKED_")
                or not isinstance(missing.get("requirements"), list) or not missing["requirements"]
                or self.args.driver is not None):
                raise Blocked("BLOCKED_INVALID_REQUIRED_IMPLEMENTATION_DECLARATION")
            raise Blocked(missing["diagnostic"] + ": " + "; ".join(missing["requirements"]))
        if self.args.driver is None:
            raise Blocked("BLOCKED_REQUIRED_PUBLIC_WASM_SCENARIO_DRIVER")
        self.diagnostic_stage = "prepare.prerequisites"
        blockers = []
        for package in self.manifest.get("python_dependencies", []):
            try:
                if importlib.util.find_spec(package) is None:
                    blockers.append("Python dependency " + package)
            except ModuleNotFoundError:
                blockers.append("Python dependency " + package)
        for variable in ("UWVM_ROS_SIMULATION_ADMISSION", "UWVM_ROS_SIMULATION_DEPLOYMENT"):
            if not os.environ.get(variable):
                blockers.append("public VM-owned " + variable)
        if blockers:
            raise Blocked("BLOCKED_REQUIRED_PREREQUISITES: " + "; ".join(blockers))
        self.diagnostic_stage = "prepare.admission.read"
        self.admission = read_json(os.environ["UWVM_ROS_SIMULATION_ADMISSION"])
        self.diagnostic_stage = "prepare.deployment.read"
        self.deployment = read_json(os.environ["UWVM_ROS_SIMULATION_DEPLOYMENT"])
        self.diagnostic_stage = "prepare.deployment.contract"
        if self.admission.get("format") not in ("uwvm-sdk-simulation-admission-v1", "uwvm-sdk-simulation-admission-v2", "uwvm-sdk-simulation-admission-v3"):
            raise Blocked("BLOCKED_PUBLIC_VM_ADMISSION_VERSIONED_CONTRACT")
        if self.deployment.get("format") != "uwvm-sdk-simulation-deployment-v1":
            raise Blocked("BLOCKED_PUBLIC_PORTABLE_DEPLOYMENT_CONTRACT_V1")
        if self.deployment.get("profile") != self.manifest["profile"]["id"]:
            raise Blocked("BLOCKED_INSTALLED_OFFICIAL_PROFILE_MISMATCH")
        self.diagnostic_stage = "prepare.runtime.identity"
        runtime = self.deployment["runtime"]
        if digest(runtime["executable"]) != runtime["sha256"]:
            raise Blocked("BLOCKED_RUNTIME_EXECUTABLE_IDENTITY")
        if not runtime.get("source_identity") or not runtime.get("paired_providers"):
            raise Blocked("BLOCKED_RUNTIME_SOURCE_AND_PAIRED_PROVIDERS")
        self.diagnostic_stage = "prepare.paired-provider.identity"
        for provider in runtime["paired_providers"]:
            if digest(provider["path"]) != provider["sha256"]:
                raise Blocked("BLOCKED_PAIRED_PROVIDER_IDENTITY")
        if not self.deployment.get("official_provider_files"):
            raise Blocked("BLOCKED_OFFICIAL_PROVIDER_PIN_SET")
        self.diagnostic_stage = "prepare.official-provider.identity"
        for provider in self.deployment["official_provider_files"]:
            if digest(provider["path"]) != provider["sha256"]:
                raise Blocked("BLOCKED_OFFICIAL_PROVIDER_BYTES")
        self.guard()
        self.diagnostic_stage = "prepare.controller.namespace-identity"
        self.controller = self.actor_identity(os.getpid())
        self.diagnostic_stage = "prepare.observation-contracts"
        contracts = runtime.get("observation_contracts", [])
        if (type(contracts) is not list or not all(type(value) is str for value in contracts)
            or not {"uwvm-sdk-simulation-command-binding-v1", "uwvm-sdk-simulation-state-delivery-v1"}.issubset(contracts)):
            raise Blocked("BLOCKED_INSTALLED_VM_COMMAND_AND_STATE_DELIVERY_PRODUCERS_V1")
        # This verifier supports the exact frozen joint-step source/guest only.
        # Other callback/sensor/guest profiles remain mandatory explicit gaps.
        self.diagnostic_stage = "prepare.guest-feedback"
        self.guest_feedback = JointFeedback(self.sdk, self.wasm)
        self.diagnostic_stage = "prepare.complete"

    def actor_identity(self, pid):
        """@brief Bind actual local actor identity to the admitted host cgroup ancestry."""
        row = process_identity(pid)
        hostproc = Path(self.admission["host_proc_view"])
        namespace = (Path("/proc") / str(pid) / "ns/pid").stat().st_ino
        # procfs self identifies this actual process in the proc mount's PID
        # namespace. Walk only its owned descendants, never unrelated host PIDs
        # whose namespace links may correctly be inaccessible under ptrace rules.
        self_mapping = actor_self_namespace(hostproc)
        host_self_pid = self_mapping["host_pid"]
        self_entry = hostproc / str(host_self_pid)
        if (self_entry / "stat").read_text().rsplit(") ", 1)[1].split()[19] != birth(os.getpid()):
            raise Blocked("BLOCKED_HOST_PROC_SELF_BIRTH_IDENTITY")
        if (self_entry / "ns/pid").stat().st_ino != (Path("/proc/self/ns/pid")).stat().st_ino:
            raise Blocked("BLOCKED_HOST_PROC_SELF_NAMESPACE_IDENTITY")
        candidates, queue, visited = [], [host_self_pid], set()
        while queue:
            candidate = queue.pop(0)
            if candidate in visited:
                continue
            visited.add(candidate)
            if len(visited) > 4096:
                raise Blocked("BLOCKED_OWNED_HOST_ACTOR_OBSERVATION_BOUND")
            entry = hostproc / str(candidate)
            candidates.append(entry)
            if pid == os.getpid():
                break
            try:
                for task in (entry / "task").iterdir():
                    if task.name.isdecimal():
                        queue.extend(int(value) for value in (task / "children").read_text().split())
            except (FileNotFoundError, ProcessLookupError):
                continue
            except PermissionError as error:
                raise Blocked("BLOCKED_OWNED_HOST_PROCESS_METADATA_ACCESS: " + str(entry)) from error
        found = []
        for entry in candidates:
            try:
                status = dict(line.split(":", 1) for line in (entry / "status").read_text().splitlines()
                              if ":" in line)
                nspids = status.get("NSpid", "").split()
                if not nspids or int(nspids[-1]) != pid:
                    continue
                if (entry / "ns/pid").stat().st_ino != namespace:
                    continue
                if (entry / "stat").read_text().rsplit(") ", 1)[1].split()[19] != row["birth"]:
                    continue
                group = (entry / "cgroup").read_text().strip()
                # procfs cgroup paths are relative to the reader's cgroup
                # namespace, even through a host-proc bind. Verify ancestry
                # using actual cgroup2 VFS device/inode below the shared view.
                shared = Path(self.admission["shared_ancestor_view"])
                if shared.stat().st_dev != row["cgroup_device"]:
                    raise Blocked("BLOCKED_ACTUAL_ACTOR_CGROUP2_FILESYSTEM")
                key = (row["cgroup_device"], row["cgroup_inode"])
                leaf = self.actual_group_paths.get(key)
                if leaf is None:
                    visited = 0
                    for directory, children, files in os.walk(shared, followlinks=False):
                        visited += 1
                        if visited > 8192 or len(Path(directory).relative_to(shared).parts) > 32:
                            raise Blocked("BLOCKED_CGROUP_ANCESTRY_OBSERVATION_BOUND")
                        value = Path(directory).stat()
                        if (value.st_dev, value.st_ino) == key:
                            leaf = Path(directory)
                            self.actual_group_paths[key] = leaf
                            break
                    if leaf is None:
                        raise Blocked("BLOCKED_ACTUAL_ACTOR_OUTSIDE_SHARED_ANCESTOR")
                check = leaf.stat()
                if leaf.is_symlink() or (check.st_dev, check.st_ino) != key:
                    raise Blocked("BLOCKED_ACTUAL_ACTOR_CGROUP_IDENTITY_CHANGED")
                row["actual_shared_relative_leaf"] = str(leaf.relative_to(shared))
                found.append({"host_pid": int(entry.name), "host_membership": group,
                              "pid_namespace_inode": namespace})
            except (FileNotFoundError, ProcessLookupError):
                pass
            except PermissionError as error:
                raise Blocked("BLOCKED_OWNED_HOST_ACTOR_IDENTITY_ACCESS: " + str(entry)) from error
        if len(found) != 1:
            raise Blocked("BLOCKED_UNAMBIGUOUS_ACTUAL_HOST_ACTOR_IDENTITY")
        if pid == os.getpid():
            row["actual_self_namespace"] = self_mapping
        return {**row, **found[0]}

    def guard(self):
        """Consume a live producer plus direct kernel checks; never create authority."""
        self.diagnostic_stage = "guard.admission-presence"
        selected = os.environ.get("UWVM_ROS_SIMULATION_ADMISSION")
        if not selected or self.admission is None:
            raise Blocked("BLOCKED_LIVE_VM_EXECUTION_ADMISSION")
        if getattr(self, "boundary", None) is None:
            self.diagnostic_stage = "guard.live-boundary.construct"
            self.boundary = LiveBoundary(selected, self.admission, process_identity, actor_self_namespace)
        self.diagnostic_stage = "guard.live-boundary.verify"
        return self.boundary.guard()

    def spawn(self, role, argv, env=None, expected_sha256=None):
        """Use installed same-PID gating and actual stopped after-exec evidence."""
        from actor_control import launch
        pending = set(getattr(self, "required_denied_ids", ())) - set(self.completed)
        if pending and (role != "vm" or (getattr(self, "active_scenario", None) or {}).get("kind") != "denied"):
            raise Blocked("BLOCKED_REQUIRED_DENY_BEFORE_ENDPOINT_LAUNCH")
        # Establish orphan adoption before the first actor can fork. This is
        # local cleanup infrastructure; launch still consumes live VM authority.
        self.guard()
        if self.lifecycle is None:
            from owned_processes import OwnedProcesses
            self.lifecycle = OwnedProcesses()
        return launch(self, role, argv, env, expected_sha256)

    def sample(self):
        """@brief Recheck the lease, current actors and bounded output during waits."""
        self.guard()
        for actor in self.actors:
            capture = actor.get("_output_capture")
            if capture is not None:
                capture.drain()
            if actor["stdout"].stat().st_size + actor["stderr"].stat().st_size > self.actor_output_limit:
                raise RuntimeError("Actor output bound exceeded")
            if actor["process"].poll() is None:
                observation = self.actor_identity(actor["pid"])
                if observation["executable_sha256"] != actor["approved_executable_sha256"]:
                    raise RuntimeError("Actual actor executable changed after admission")
                if observation != actor["observations"][-1]:
                    actor["observations"].append(observation)
                actor["last_observed_monotonic_ns"] = time.monotonic_ns()
        if self.lifecycle is not None:
            roots = {(actor["pid"], actor["birth"]) for actor in self.actors}
            for row in self.lifecycle.observe():
                key = (row["pid"], row["birth"])
                if key in roots:
                    continue
                try:
                    actual = self.actor_identity(row["pid"])
                    if actual["birth"] != row["birth"]:
                        continue
                    self.descendants[key] = actual
                except (FileNotFoundError, ProcessLookupError):
                    # The lifecycle ledger still retains its pinned birth and
                    # requires kernel disappearance/reap before retirement.
                    continue

    def events(self, actor):
        """@brief Read only this invocation's live, run-bound JSON event stream."""
        self.sample()
        if not any(candidate is actor for candidate in self.actors):
            raise RuntimeError("Observation actor is not owned by this invocation")
        result = []
        with actor["stdout"].open("rb") as stream:
            raw = stream.read(self.actor_output_limit + 1)
        if len(raw) > self.actor_output_limit:
            raise RuntimeError("Actor output bound exceeded while reading events")
        lines = raw.splitlines()
        if raw and not raw.endswith(b"\n"):
            lines = lines[:-1]
        def unique(pairs):
            value = {}
            for key, item in pairs:
                if key in value:
                    raise RuntimeError("Duplicate observation JSON key")
                value[key] = item
            return value
        def nonfinite(value):
            raise RuntimeError("Nonfinite observation JSON number: " + value)
        def finite_float(value):
            result = float(value)
            if not math.isfinite(result):
                return nonfinite(value)
            return result
        end_ns = actor.get("finished_ns", time.monotonic_ns())
        previous_ns = actor["started_ns"]
        for line in lines:
            if not line.startswith(b"{"):
                continue
            if len(line) > 65536:
                raise RuntimeError("Observation JSON record bound exceeded")
            row = json.loads(line.decode("utf-8", errors="strict"),
                object_pairs_hook=unique, parse_float=finite_float,
                parse_constant=nonfinite)
            if (type(row) is not dict or row.get("run_id") != self.run_id
                    or type(row.get("pid")) is not int or row["pid"] != actor["pid"]):
                raise RuntimeError("Foreign or replayed observation")
            stamp = row.get("monotonic_ns")
            if (type(stamp) is not int or not previous_ns <= stamp <= end_ns):
                raise RuntimeError("Stale, future or backward actor observation")
            previous_ns = stamp
            result.append(row)
        return result

    def wait(self, actor, seconds):
        """@brief Wait with continuous live admission and actor observations."""
        if (type(seconds) not in (int, float) or not math.isfinite(seconds)
                or not 0 < seconds <= 3600):
            raise ValueError("Owned actor deadline must be finite and between zero and one hour")
        deadline = time.monotonic() + seconds
        while actor["process"].poll() is None:
            self.sample()
            if time.monotonic() >= deadline:
                raise RuntimeError("Owned actor deadline: " + actor["role"])
            time.sleep(0.05)
        self.sample()
        actor["finished_ns"] = time.monotonic_ns()
        return actor["process"].returncode

    def run_vm(self, scenario, adapter, policy):
        """@brief Execute unchanged Wasm using only explicit installed VM arguments."""
        if scenario != self.active_scenario:
            raise Blocked("BLOCKED_VM_ARGUMENTS_MUST_MATCH_ACTIVE_REQUIRED_SCENARIO")
        runtime = self.deployment["runtime"]
        if "uwvm-sdk-simulation-command-binding-v1" not in runtime.get("observation_contracts", []):
            raise Blocked("BLOCKED_VM_COMMAND_SESSION_NATIVE_UUID_PRODUCER_V1")
        mode = self.deployment["scenarios"][scenario["id"]]
        from portable_contract import validate_joint_inputs
        input_contract = validate_joint_inputs(adapter, policy, self.before)
        adapter_sha256 = input_contract["adapter_sha256"]
        policy_sha256 = input_contract["policy_sha256"]
        variables = {"session_dir": str(self.output), "adapter": str(adapter),
                     "policy": str(policy), "run_id": self.run_id,
                     "adapter_sha256": adapter_sha256, "policy_sha256": policy_sha256}
        from wasi_policy import test_arguments as wasi_test_arguments
        arguments = [value.format_map(variables) for value in mode["runtime_arguments"]]
        arguments = wasi_test_arguments(arguments, mode.get("wasi_policy"))
        allow = [i for i, value in enumerate(arguments) if value == "--portable-robot"]
        observe = [i for i, value in enumerate(arguments) if value == "--portable-robot-audit-inputs"]
        if allow:
            if len(allow) != 1 or observe or arguments[allow[0] + 1:allow[0] + 5] != [str(adapter), adapter_sha256, str(policy), policy_sha256]:
                raise Blocked("BLOCKED_TRUSTED_PORTABLE_HOST_FOUR_EXACT_PINS_REQUIRED")
        elif scenario["kind"] == "denied" and len(observe) == 1:
            if arguments[observe[0] + 1:observe[0] + 3] != [str(adapter), str(policy)]:
                raise Blocked("BLOCKED_DENY_OBSERVATION_INPUT_IDENTITY")
        else:
            raise Blocked("BLOCKED_TRUSTED_PORTABLE_HOST_ARGUMENTS_REQUIRED")
        audit = [i for i, value in enumerate(arguments) if value == "--portable-robot-audit-run"]
        if len(audit) != 1 or arguments[audit[0] + 1:audit[0] + 2] != [self.run_id]:
            raise Blocked("BLOCKED_FRESH_RUNTIME_AUDIT_RUN_ARGUMENTS")
        if any(value in ("--run", "-r") or "unwind" in value or value == "--runtime-interpreter"
               for value in arguments):
            raise RuntimeError("Run ownership, default checked unwind and AOT policy must be preserved")
        if not any(value in ("--runtime-aot", "-Raot") for value in arguments):
            raise Blocked("BLOCKED_EXPLICIT_NATIVE_AOT_RUNTIME")
        actor = self.spawn("vm", [runtime["executable"], *arguments, "--run", str(self.wasm)],
                           expected_sha256=runtime["sha256"])
        actor["scenario_id"], actor["scenario_kind"] = scenario["id"], scenario["kind"]
        actor["portable_input_contract"] = input_contract
        actor["binding_inputs"] = {"adapter_sha256": adapter_sha256, "policy_sha256": policy_sha256}
        actor["adapter_path"], actor["policy_path"] = str(adapter), str(policy)
        code = self.wait(actor, scenario.get("deadline_seconds", 30))
        text = actor["stdout"].read_text() + actor["stderr"].read_text()
        # An after-exec VM process alone does not prove the frozen guest ran.
        # Preserve actual imported-call evidence even if a later assertion fails.
        self.command_binding(actor, scenario)
        if "[unwind-check] status=ok" not in text or "body-fallback=no" not in text:
            raise RuntimeError("Original native generated-chain unwind/no-fallback evidence absent")
        if code != scenario["expected_vm_exit"]:
            raise RuntimeError("Actual VM exit differs")
        if actor["binding_inputs"] != {"adapter_sha256": digest(adapter), "policy_sha256": digest(policy)}:
            raise RuntimeError("External adapter or grant changed during the command")
        return actor

    def command_binding(self, vm, scenario):
        """@brief Require the actual pinned VM's fresh session-to-native event.

        The observer's UUID is never copied into VM evidence. A missing runtime
        production-side event blocks, even if native execution actually passed.
        """
        actual, raw_sha256 = stream_rows(vm, self.run_id)
        vm["binding_stdout_sha256"] = raw_sha256
        rows = [row for row in actual if row.get("format") == "uwvm-sdk-simulation-command-binding-v1"]
        decision = "DENY" if scenario["kind"] == "denied" else "ALLOW"
        matches = []
        for row in rows:
            if row.get("producer") != "uwvm2-ros/runtime/portable-host":
                continue
            if row.get("module_sha256") != self.before or row.get("decision") != decision:
                continue
            if any(row.get(key) != value for key, value in vm["binding_inputs"].items()):
                continue
            if not row.get("module_instance") or not row.get("permission_session"):
                continue
            if not isinstance(row.get("call_sequence"), int) or row["call_sequence"] <= 0:
                continue
            if decision == "ALLOW":
                if not re.fullmatch(r"[0-9a-f]{64}", row.get("guest_command_sha256", "")):
                    continue
                if not re.fullmatch(r"[0-9a-f]{32}", row.get("native_operation_id", "")):
                    continue
                if row.get("phase") != "native-goal-accepted" or row.get("portable_call") != "submit":
                    continue
            elif (row.get("native_operation_id") is not None or row.get("phase") != "permission-denied"
                  or row.get("error_code") != 13):
                continue
            matches.append(row)
        if len(matches) != 1:
            raise Blocked("BLOCKED_VM_COMMAND_SESSION_NATIVE_UUID_EVENT_V1: expected one actual runtime event")
        self.record_case_execution(vm, scenario, matches[0], raw_sha256)
        return matches[0]

    def record_case_execution(self, vm, scenario, binding, stdout_sha256):
        """Count a real, source-bound import observation, never driver entry."""
        if (scenario != self.active_scenario or vm not in self.actors or
            vm.get("scenario_id") != scenario["id"] or
            vm.get("scenario_kind") != scenario["kind"] or
            vm.get("approved_executable_sha256") !=
                self.deployment["runtime"]["sha256"]):
            raise RuntimeError("Actual VM execution differs from selected case")
        receipt_path = vm.get("actual_exec_receipt")
        if (not receipt_path or digest(receipt_path) !=
                vm.get("actual_exec_receipt_sha256")):
            raise RuntimeError("Actual after-exec receipt changed")
        receipt = read_json(receipt_path)
        if (receipt.get("format") != "uwvm-sdk-actual-actor-exec-v1" or
            receipt.get("pid") != vm["pid"] or receipt.get("birth") != vm["birth"] or
            receipt["actual_executable_descriptor"]["sha256"] !=
                vm["approved_executable_sha256"]):
            raise RuntimeError("Actual after-exec receipt differs from VM actor")
        evidence = {
            "format": EXECUTION_FORMAT, "pid": vm["pid"], "birth": vm["birth"],
            "executable_sha256": vm["approved_executable_sha256"],
            "module_sha256": self.before, "stdout_sha256": stdout_sha256,
            "actual_exec_receipt_sha256": vm["actual_exec_receipt_sha256"],
            "module_instance": binding["module_instance"],
            "runtime_generation": binding["runtime_generation"],
            "permission_session": binding["permission_session"],
            "call_sequence": binding["call_sequence"],
            "monotonic_ns": binding["monotonic_ns"],
            "actor_started_ns": vm["started_ns"],
            "actor_finished_ns": vm["finished_ns"]}
        self.case_accounting.execution(scenario["id"], evidence)

    def complete_denied_case(self, scenario, vm):
        """Verify actual permission denial before launching native endpoints."""
        self.sample()
        if scenario["kind"] != "denied" or scenario["expected_vm_exit"] != 13 or vm["process"].returncode != 13:
            raise RuntimeError("The required denied open must actually exit with permission error 13")
        if (not vm.get("actual_exec_receipt") or not vm["observations"]
            or any(actor["role"] != "vm" or actor.get("scenario_kind") != "denied" for actor in self.actors)
            or self.descendants):
            raise RuntimeError("Denied open requires actual VM identity and no launched native endpoint or child")
        rows, raw_sha256 = stream_rows(vm, self.run_id)
        binding = self.command_binding(vm, scenario)
        if (rows != [binding] or binding.get("portable_call") != "open"
            or type(binding.get("call_sequence")) is not int or binding["call_sequence"] != 1
            or binding.get("native_operation_id") is not None or "guest_command_sha256" in binding):
            raise RuntimeError("Denied open emitted unexpected state, operation or additional runtime audit")
        if any(type(binding.get(key)) is not int or binding[key] <= 0
               for key in ("module_instance", "runtime_generation", "permission_session")):
            raise RuntimeError("Denied open lacks its actual runtime/module/permission session")
        if digest(self.wasm) != self.before:
            raise RuntimeError("Denied execution changed frozen Wasm bytes")
        self.completed[scenario["id"]] = {"runtime_command_binding": binding,
            "vm_stdout_sha256": raw_sha256, "actual_permission_denied": True,
            "denial_verified_before_endpoint_launch": True, "native_endpoints_launched": 0,
            "guest_state_copies": 0, "scope": "Denied open only; no positive simulator or guest feedback acceptance"}

    def complete_joint_case(self, scenario, vm, native, witness):
        """Admit correlated actual operation/result and fresh guest state checks."""
        if scenario["kind"] == "denied":
            return self.complete_denied_case(scenario, vm)
        self.sample()
        binding = self.command_binding(vm, scenario)
        if not vm["observations"] or native is None or not native["observations"]:
            raise RuntimeError("Actual VM/native actor identities are required")
        if scenario["expected_vm_exit"] != 0:
            raise Blocked("BLOCKED_REQUIRED_GUEST_FAILURE_FEEDBACK_PROFILE_NOT_QUALIFIED")
        if self.guest_feedback is None:
            raise Blocked("BLOCKED_REQUIRED_GUEST_FEEDBACK_PROFILE")
        if (digest(vm["adapter_path"]) != vm["binding_inputs"]["adapter_sha256"]
            or digest(vm["policy_path"]) != vm["binding_inputs"]["policy_sha256"]):
            raise RuntimeError("Adapter/policy changed before feedback verification")
        feedback = self.guest_feedback.verify(self.run_id, vm, native, read_json(vm["adapter_path"]), vm["binding_inputs"])
        if not any(a["role"] == "simulator" and a["observations"] for a in self.actors):
            raise RuntimeError("An actual official simulator actor is required")
        if (witness.get("fresh_state") is not True
                or witness.get("native_graph_verified") is not True):
            raise RuntimeError("Fresh independent native witness missing")
        if not re.fullmatch(r"[0-9a-f]{32}", witness.get("goal_uuid", "")):
            raise RuntimeError("Native goal UUID is required")
        if (witness.get("native_result_success") is not True
                or witness.get("position_matches") is not True):
            raise RuntimeError("Actual native result and post-result state differ")
        if binding["native_operation_id"] != witness["goal_uuid"]:
            raise Blocked("BLOCKED_PUBLIC_VM_NATIVE_UUID_CORRELATION")
        if digest(self.wasm) != self.before:
            raise RuntimeError("Simulation changed the frozen Wasm bytes")
        self.completed[scenario["id"]] = {**witness, "runtime_command_binding": binding,
                                          "actual_guest_feedback": feedback}

    def complete_operation_case(self, scenario, vm, native, witness):
        """Require an implemented exact guest feedback profile for every case."""
        if scenario["kind"] in ("joint", "denied"):
            return self.complete_joint_case(scenario, vm, native, witness)
        raise Blocked("BLOCKED_REQUIRED_GENERIC_CALLBACK_SENSOR_OR_OPERATION_FEEDBACK_PROFILE")

    def retire(self):
        """Retire and reap all locally owned actors, including adopted orphans."""
        if self.lifecycle is None:
            if self.actors:
                self.retirement = {"status": "FAIL", "diagnostic": "Actor lacks owned lifecycle ledger"}
                raise RuntimeError("Actor was launched without local orphan adoption")
            self.retirement = {"status": "NO_ACTORS_STARTED", "recorded_actors": 0,
                               "same_birth_remaining": [], "monotonic_ns": time.monotonic_ns()}
            return
        try:
            self.retirement = self.lifecycle.retire(self.actors)
        finally:
            captures = [actor.pop("_output_capture", None) for actor in self.actors]
            failure = None
            for capture in captures:
                if capture is not None:
                    try:
                        capture.close()
                    except BaseException as error:
                        failure = failure or error
            if failure is not None:
                raise failure
        if self.retirement["status"] != "RETIRED":
            raise RuntimeError("Owned actor/descendant retirement incomplete; original cleanup receipt retained")

    def actor_summary(self):
        """@brief Return bounded actual execution facts without subprocess objects."""
        return ([{**{key: value for key, value in actor.items()
                  if key not in ("process", "stdout", "stderr", "_output_capture")},
                  "stdout": str(actor["stdout"]), "stderr": str(actor["stderr"]),
                  "stdout_sha256": digest(actor["stdout"]), "stderr_sha256": digest(actor["stderr"]),
                  "exit_code": actor["process"].returncode} for actor in self.actors]
                + [{"role": "owned-descendant", **value} for value in self.descendants.values()])


def main():
    """@brief Execute all required public scenarios; missing prerequisites never skip."""
    parser = argparse.ArgumentParser()
    for name in ("sdk-root", "manifest", "wasm", "output"):
        parser.add_argument("--" + name, required=True)
    parser.add_argument("--driver")
    args = parser.parse_args()
    manifest = read_json(args.manifest)
    scenarios = manifest.get("scenarios", [])
    if manifest.get("format") != "uwvm-sdk-simulation-example-v1" or not scenarios:
        raise RuntimeError("BLOCKED_ZERO_REQUIRED_SIMULATION_SCENARIOS")
    if len({s["id"] for s in scenarios}) != len(scenarios):
        raise RuntimeError("Duplicate mandatory simulation scenario")
    context = Context(args, manifest)
    execution_order = [row for row in scenarios if row["kind"] == "denied"] + [row for row in scenarios if row["kind"] != "denied"]
    report = {"format": "uwvm-sdk-simulation-result-v1", "api_version": API_VERSION,
              "run_id": context.run_id, "profile": manifest["profile"],
              "status": "FAIL", "selected": len(scenarios), "executed": 0,
              "passed": 0, "failed": 0, "blocked": 0, "skipped": 0,
              "required": len(scenarios), "suite_failures": 0,
              "wasm_sha256_before": context.before, "cases": [],
              "declared_order": [row["id"] for row in scenarios],
              "execution_order": [row["id"] for row in execution_order],
              "full_wasm_guest_feedback_verified": False,
              "functional_instrumentation_not_performance": True,
              "command": {"argv": sys.argv, "cwd": str(Path.cwd()), "pwd": os.environ.get("PWD")},
              "input_files": [{"path": str(Path(p).resolve()), "sha256": digest(p)}
                              for p in (args.manifest, args.driver, __file__, context.wasm) if p is not None]}
    previous_handlers = {}
    try:
        for number in (signal.SIGINT, signal.SIGTERM, signal.SIGHUP):
            previous_handlers[number] = signal.signal(number, context.interrupt)
        context.diagnostic_stage = "prepare.begin"
        context.prepare()
        context.diagnostic_stage = "driver.load"
        spec = importlib.util.spec_from_file_location("uwvm_public_simulation_driver", args.driver)
        driver = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(driver)
        if getattr(driver, "API_VERSION", None) != API_VERSION:
            raise Blocked("BLOCKED_PLATFORM_DRIVER_API_VERSION")
        for scenario in execution_order:
            context.active_scenario = scenario
            context.case_accounting.attempt(scenario["id"])
            context.diagnostic_stage = "scenario.driver"
            driver.run_case(context, scenario)
            if scenario["id"] not in context.completed:
                raise RuntimeError("Driver returned without actual simulation assertions")
            context.case_accounting.passed(
                scenario["id"], context.completed[scenario["id"]])
            context.active_scenario = None
        positive = [row for row in scenarios if row["kind"] != "denied"]
        report["full_wasm_guest_feedback_verified"] = bool(positive) and all(
            context.completed[row["id"]].get("actual_guest_feedback", {}).get("guest_processing_verified") is True for row in positive)
        report["status"] = "PASS"
    except Blocked as error:
        report.update(status="BLOCKED", diagnostic=str(error))
        active = context.active_scenario
        context.case_accounting.stop(active["id"] if active else None,
                                     False, str(error))
        original_failure(context, report, error, "primary")
    except Exception as error:
        report.update(status="FAIL", diagnostic=repr(error))
        report["suite_failures"] += 1
        active = context.active_scenario
        context.case_accounting.stop(active["id"] if active else None,
                                     True, repr(error))
        original_failure(context, report, error, "primary")
    finally:
        context.retiring = True
        try:
            context.diagnostic_stage = "retirement"
            context.retire()
        except Exception as error:
            report.update(status="FAIL", retirement_error=repr(error))
            report["suite_failures"] += 1
            original_failure(context, report, error, "retirement")
        # The handler suppresses repeated signals only during bounded local
        # retirement. Restore the caller's handlers before final report work.
        for number, handler in previous_handlers.items():
            signal.signal(number, handler)
        if context.received_signals:
            if report["status"] != "FAIL":
                report["suite_failures"] += 1
            report.update(status="FAIL", supervisor_interrupted=True,
                          received_signals=context.received_signals)
        report["public_inputs"] = getattr(context, "public_inputs", [])
        try:
            report["actors"] = context.actor_summary()
        except Exception as error:
            report.update(status="FAIL", actor_summary_error=repr(error))
            report["suite_failures"] += 1
            original_failure(context, report, error, "actor-summary")
        report["retirement"] = getattr(context, "retirement", {"status": "NO_ACTORS_STARTED"})
        try:
            report["wasm_sha256_after"] = digest(context.wasm)
        except Exception as error:
            report.update(status="FAIL", wasm_sha256_after=None)
            report["suite_failures"] += 1
            original_failure(context, report, error, "final-wasm-identity")
        if (report["wasm_sha256_after"] is not None
                and report["wasm_sha256_after"] != context.before):
            report.update(status="FAIL", diagnostic="Frozen Wasm changed")
            report["suite_failures"] += 1
        report.update(context.case_accounting.snapshot(report["suite_failures"]))
        report["vm_processes_started"] = sum(
            actor["role"] == "vm" and bool(actor.get("actual_exec_receipt"))
            for actor in context.actors)
        if report["status"] == "PASS" and not simulation_cases_pass(report):
            report.update(status="FAIL",
                          diagnostic="Incomplete actual simulation case accounting")
            report["suite_failures"] += 1
        Path(args.output).mkdir(parents=True, exist_ok=True)
        # Each destination is attempted independently. Failure of the private
        # run path must not suppress the public suite summary or stderr receipt.
        for destination in (context.output / "suite.json", Path(args.output) / "suite.json"):
            try:
                destination.write_text(json.dumps(report, indent=2) + "\n")
            except Exception as error:
                report["status"] = "FAIL"
                report["suite_failures"] += 1
                original_failure(context, report, error, "suite-report")
        print(json.dumps({key: value for key, value in report.items() if key not in ("actors", "cases")}))
    return 0 if report["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
