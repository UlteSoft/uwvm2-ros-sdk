"""Explicit finite local guest tests, separate from official simulation admission.

This profile enables base WASIp1 linkage and optionally one explicit ROS namespace,
without granting ROS resources. It accepts a
reviewed WASI operation policy, runs the
pinned executable through a verified descriptor, observes the actual cgroup and
owns finite child cleanup. Its receipts cannot qualify a simulator or producer.
"""
from pathlib import Path
import ctypes
import fcntl
import hashlib
import json
import os
import resource
import signal
import stat
import subprocess
import sys
import time
import uuid
from owned_processes import OwnedProcesses, process
from pipe_capture import PipeLoggedProcess
from wasi_policy import test_arguments as wasi_test_arguments

FORMAT = "uwvm-sdk-local-finite-wasi-test-v1"
MAX_IMAGE = 64 * 1024 * 1024

# A version's explicit base grant exposes its complete registered function ABI.
# This inspection never adds runtime grants or authorizes a resource.
ROS_NAMESPACE_FAMILIES = {
    "uwvm_ros1_v1": ("uwvm_ros1_v1", "uwvm_ros1_client_v1"),
    "uwvm_ros2_v1": ("uwvm_ros2_v1", "uwvm_ros2_client_v1", "uwvm_ros2_rmw_v1",
                     "uwvm_ros2_rmw_sub_v1", "uwvm_ros2_rmw_srv_v1", "uwvm_portable_robot_v1"),
}


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def wasm_imports(path, ros_namespace=None, module_names=()):
    """Bounded import inspection is a restriction, never a grant generator."""
    if ros_namespace is not None and ros_namespace not in ROS_NAMESPACE_FAMILIES:
        raise ValueError("Select one registered ROS version for import inspection")
    namespaces = ("wasi_snapshot_preview1", *ROS_NAMESPACE_FAMILIES.get(ros_namespace, ()), *module_names)
    with Path(path).open("rb") as stream:
        raw = stream.read(MAX_IMAGE + 1)
    if not 8 <= len(raw) <= MAX_IMAGE or raw[:8] != b"\0asm\1\0\0\0":
        raise ValueError("Local WASI test requires a bounded core Wasm module")
    def u32(data, offset):
        value = 0
        for shift in range(0, 35, 7):
            if offset == len(data):
                raise ValueError("Truncated Wasm integer")
            byte = data[offset]; offset += 1
            if shift == 28 and byte & 0xf0:
                raise ValueError("Oversized Wasm integer")
            value |= (byte & 127) << shift
            if not byte & 128:
                return value, offset
        raise ValueError("Invalid Wasm integer")
    def name(data, offset):
        length, offset = u32(data, offset)
        if length > 128 or length > len(data) - offset:
            raise ValueError("Invalid Wasm import name")
        return data[offset:offset + length].decode("utf-8"), offset + length
    offset = 8; imports = []; found = False
    while offset != len(raw):
        section = raw[offset]; offset += 1
        length, offset = u32(raw, offset)
        if length > len(raw) - offset:
            raise ValueError("Truncated Wasm section")
        payload = raw[offset:offset + length]; offset += length
        if section != 2:
            continue
        if found:
            raise ValueError("Duplicate Wasm import section")
        found = True; count, pos = u32(payload, 0)
        # Each function import needs two name lengths, a kind and a type index.
        # Bound the walk by actual module bytes instead of an arbitrary count.
        if count > (len(payload) - pos) // 4:
            raise ValueError("Truncated local guest import vector")
        for _ in range(count):
            namespace, pos = name(payload, pos); function, pos = name(payload, pos)
            if namespace not in namespaces or pos == len(payload) or payload[pos] != 0:
                raise ValueError("Local guest imports must match the explicitly selected host namespaces and function kind")
            pos += 1; _, pos = u32(payload, pos)
            imports.append({"namespace": namespace, "function": function})
        if pos != len(payload):
            raise ValueError("Trailing Wasm import data")
    return imports


class LocalWasiTest:
    def __init__(self, args, manifest, deployment):
        ros_local = deployment.get("format") == "uwvm-sdk-local-finite-ros-test-v1"
        expected = {"format", "runtime", "limits", "wasi_policy"}
        if ros_local:
            expected.add("ros_namespace")
            if "ros_modules" in deployment:
                expected.add("ros_modules")
        if sys.platform != "linux" or set(deployment) != expected or (not ros_local and deployment["format"] != FORMAT):
            raise ValueError("Select an explicit Linux local finite guest deployment")
        backend = deployment.get("ros_namespace")
        if ros_local and backend not in ("ros1", "ros2"):
            raise ValueError("Select one explicit ROS namespace; this profile grants no ROS resources")
        self.ros_namespace = ("uwvm_" + backend + "_v1") if ros_local else None
        runtime = deployment["runtime"]
        if (not isinstance(runtime, dict) or not {"executable", "sha256", "source_identity"} <= set(runtime)
                or set(runtime) - {"executable", "sha256", "source_identity", "llvm_jit_policy"}
                or not isinstance(runtime["source_identity"], str) or not 1 <= len(runtime["source_identity"]) <= 256):
            raise ValueError("Local tests require exact runtime identity")
        compiler_policy = runtime.get("llvm_jit_policy", "fast-compile")
        if compiler_policy not in ("debug", "default", "fast-compile", "balanced", "max"):
            raise ValueError("Select an existing LLVM AOT optimization policy")
        self.executable = Path(runtime["executable"])
        if not self.executable.is_absolute() or self.executable.resolve(strict=True) != self.executable or digest(self.executable) != runtime["sha256"]:
            raise ValueError("Pinned local VM executable differs")
        limits = deployment["limits"]
        if (not isinstance(limits, dict) or set(limits) != {"memory_bytes", "swap_bytes", "timeout_seconds", "output_bytes"}
                or type(limits["memory_bytes"]) is not int or limits["memory_bytes"] != 64 * 1024**3
                or type(limits["swap_bytes"]) is not int or limits["swap_bytes"] != 0
                or type(limits["timeout_seconds"]) is not int or not 1 <= limits["timeout_seconds"] <= 3600
                or type(limits["output_bytes"]) is not int or not 1024 <= limits["output_bytes"] <= 2 * 1024**2):
            raise ValueError("Local tests require 64 GiB/zero swap, <=3600 seconds and <=2 MiB output")
        self.timeout = limits["timeout_seconds"]
        self.actor_output_limit = limits["output_bytes"]
        self.wasm = Path(args.wasm).resolve(strict=True)
        # A preload is admitted only from the current Xmake artifact graph and
        # the exact module list named by the public component manifest. This
        # supplies executable bytes, never resource grants.
        self.module_inputs = []
        self.preloads = []
        names = manifest.get("preload_modules", [])
        graph_path = getattr(args, "module_graph", None)
        if not isinstance(names, list) or any(not isinstance(n, str) or not n or "\0" in n for n in names):
            raise ValueError("Preload module names must be explicit nonempty strings")
        if len(set(names)) != len(names) or "main" in names:
            raise ValueError("Preload module names must be distinct from main")
        # Interface exposure is explicit for each actual module; neither imports
        # nor another module's rights can authorize a ROS provider here.
        self.ros_modules = deployment.get("ros_modules", ["main"] if ros_local else [])
        required_ros = manifest.get("ros_modules", ["main"] if ros_local else [])
        if (not isinstance(self.ros_modules, list)
                or any(not isinstance(n, str) or n not in {"main", *names} for n in self.ros_modules)
                or len(set(self.ros_modules)) != len(self.ros_modules)
                or not isinstance(required_ros, list) or required_ros != self.ros_modules
                or (self.ros_modules and not ros_local)):
            raise ValueError("Explicit ROS module authority differs from the built test graph")
        if bool(names) != bool(graph_path):
            raise ValueError("A declared preload test requires its actual Xmake module graph")
        if names:
            from wasi_component import read_json
            graph_path = Path(graph_path).resolve(strict=True)
            graph = read_json(graph_path)
            if (graph.get("format") != "uwvm-sdk-target-artifacts-v1"
                    or graph.get("kind") != "binary"
                    or Path(graph.get("artifact", "")).resolve(strict=True) != self.wasm
                    or graph.get("sha256") != digest(self.wasm)):
                raise ValueError("Current command does not match the built module graph")
            rows = graph.get("preload", [])
            if len(rows) != len(names) or {row.get("module") for row in rows} != set(names):
                raise ValueError("Built preloads differ from the declared exact module set")
            self.module_inputs.append({"path": str(graph_path), "sha256": digest(graph_path)})
            for row in rows:
                path = Path(row["artifact"])
                if (row.get("artifact_model") != "core-preload" or not path.is_absolute()
                        or path.resolve(strict=True) != path or path == self.wasm
                        or digest(path) != row.get("sha256")):
                    raise ValueError("Preload artifact identity or model differs")
                self.module_inputs.append({"path": str(path), "sha256": row["sha256"]})
                self.preloads.append({"module": row["module"], "artifact": str(path),
                                      "sha256": row["sha256"],
                                      "imports": wasm_imports(path, self.ros_namespace if row["module"] in self.ros_modules else None, names)})
        self.imports = wasm_imports(self.wasm, self.ros_namespace if "main" in self.ros_modules else None, names)
        policy = deployment["wasi_policy"]
        if policy is not None and (not isinstance(policy, dict) or set(policy.get("modules", {})) - {"main", *names}):
            raise ValueError("Local policy names a module outside the built graph")
        runtime_arguments = ["-Raot", "--log-verbose", "--runtime-compile-threads", "1",
                             "--runtime-llvm-jit-policy", compiler_policy]
        for row in self.preloads:
            runtime_arguments += ["--wasm-preload-library", row["artifact"], row["module"]]
        self.runtime_arguments = wasi_test_arguments(runtime_arguments, policy)
        for module in self.ros_modules:
            self.runtime_arguments += ["--" + backend + "-single-create", module,
                                       "--" + backend + "-single-enable", module]
        architecture = getattr(args, "architecture", None) or manifest.get("architecture", "wasm32")
        if "architecture" in manifest and manifest["architecture"] != architecture:
            raise ValueError("Component manifest and built target architectures differ")
        if architecture not in ("wasm32", "wasm64"):
            raise ValueError("Local WASI component architecture must be explicit wasm32 or wasm64")
        if architecture == "wasm64":
            self.runtime_arguments[0:0] = ["--wasm-feature-enable-memory64", "--wasm-feature-enable-table64"]
        exception_profile = getattr(args, "exception_profile", None) or manifest.get("exception_profile", "noeh")
        if "exception_profile" in manifest and manifest["exception_profile"] != exception_profile:
            raise ValueError("Component manifest and built exception ABIs differ")
        if exception_profile not in ("noeh", "eh"):
            raise ValueError("Select the component's actual exception ABI")
        if exception_profile == "eh":
            self.runtime_arguments.insert(0, "--wasm-feature-enable-exceptions")
        self.runtime = runtime
        self.output = Path(args.output).resolve() / "local-actors"
        self.output.mkdir(parents=True, exist_ok=False)
        self.run_id = uuid.uuid4().hex
        self.membership = Path("/proc/self/cgroup").read_text().strip()
        if not self.membership.startswith("0::/") or "\n" in self.membership:
            raise ValueError("Unified local test cgroup required")
        self.group = Path("/sys/fs/cgroup") / self.membership[3:].lstrip("/")
        identity = self.group.stat(); self.group_identity = identity.st_dev, identity.st_ino
        self.actors = []
        self.guard()
        self.lifecycle = OwnedProcesses()
        self.execution = {"profile": "local_functional", "simulation_qualified": False,
                          "production_admission": False, "cgroup": self.membership,
                          "kernel_resources": self.resources(), "imports": self.imports,
                          "ros_namespace": self.ros_namespace, "ros_modules": self.ros_modules, "ros_resource_grants": [],
                          "preloads": self.preloads,
                          "executable_binding": "verified-open-fd-exec", "guardian_qualification": False}

    def resources(self):
        return {name: (self.group / name).read_text().strip() for name in
                ("memory.max", "memory.swap.max", "memory.current", "memory.peak", "memory.events")}

    def guard(self):
        identity = self.group.stat()
        if (Path("/proc/self/cgroup").read_text().strip() != self.membership
                or (identity.st_dev, identity.st_ino) != self.group_identity
                or (self.group / "memory.max").read_text().strip() != str(64 * 1024**3)
                or (self.group / "memory.swap.max").read_text().strip() != "0"):
            raise RuntimeError("Local test kernel resource boundary changed")

    def verify_module_artifacts(self):
        """Keep all executed module identities fixed across the complete suite."""
        for row in self.module_inputs:
            if digest(row["path"]) != row["sha256"]:
                raise RuntimeError("Preload graph or artifact changed during execution")

    def spawn(self, role, argv, expected_sha256, stdin_bytes=b""):
        self.guard()
        self.verify_module_artifacts()
        if role != "vm" or argv[0] != str(self.executable) or expected_sha256 != self.runtime["sha256"]:
            raise ValueError("Local profile can start only its pinned VM")
        index = len(self.actors); stdout = self.output / f"{index}.stdout"; stderr = self.output / f"{index}.stderr"
        if not isinstance(stdin_bytes, bytes) or len(stdin_bytes) > self.actor_output_limit:
            raise ValueError("Local test input exceeds its explicit finite stream bound")
        stdin_path = self.output / f"{index}.stdin"
        with stdin_path.open("xb") as stream:
            stream.write(stdin_bytes)
        input_read, input_write = os.pipe2(os.O_NONBLOCK | os.O_CLOEXEC)
        try:
            if len(stdin_bytes) > fcntl.fcntl(input_read, fcntl.F_GETPIPE_SZ):
                raise ValueError("Finite test input must fit the actual kernel pipe capacity")
            if os.write(input_write, stdin_bytes) != len(stdin_bytes):
                raise RuntimeError("Finite test input was not fully staged")
        except BaseException:
            os.close(input_read)
            raise
        finally:
            os.close(input_write)
        try:
            descriptor = os.open(self.executable, os.O_RDONLY | os.O_CLOEXEC | os.O_NOFOLLOW)
        except BaseException:
            os.close(input_read)
            raise
        try:
            info = os.fstat(descriptor)
            with os.fdopen(os.dup(descriptor), "rb") as stream:
                observed_sha = hashlib.file_digest(stream, "sha256").hexdigest()
            if not stat.S_ISREG(info.st_mode) or observed_sha != expected_sha256:
                raise RuntimeError("VM descriptor identity changed before execution")
            parent = os.getpid(); deadline = self.timeout
            def child_limits():
                libc = ctypes.CDLL(None, use_errno=True)
                if libc.prctl(1, signal.SIGKILL, 0, 0, 0) != 0 or os.getppid() != parent:
                    os._exit(125)
                if libc.prctl(38, 1, 0, 0, 0) != 0:
                    os._exit(125)
                resource.setrlimit(resource.RLIMIT_CORE, (0, 0))
                # The VM owns compilation and helper threads. CPU seconds aggregate across
                # them; the monotonic supervisor enforces the requested wall deadline.
                resource.setrlimit(resource.RLIMIT_CPU, (2 * deadline + 1, 2 * deadline + 1))
                fcntl.fcntl(descriptor, fcntl.F_SETFD, fcntl.FD_CLOEXEC)
            with stdout.open("xb") as out, stderr.open("xb") as err:
                child = PipeLoggedProcess(argv, executable=f"/proc/self/fd/{descriptor}",
                    pass_fds=(descriptor,), preexec_fn=child_limits, start_new_session=True,
                    env={"PATH": os.defpath, "LANG": "C.UTF-8", "LC_ALL": "C.UTF-8"},
                    stdin=input_read, stdout=out, stderr=err, output_limit=self.actor_output_limit)
        finally:
            os.close(descriptor)
            os.close(input_read)
        identity = process(child.pid)
        if identity is None:
            child.wait(timeout=5)
            raise RuntimeError("Local VM birth was not observed")
        actor = {"role": "vm", "process": child, "pid": child.pid, "birth": identity["birth"],
                 "argv": argv, "stdout": stdout, "stderr": stderr, "actual_vm_observed": False,
                 "started_ns": time.monotonic_ns()}
        self.actors.append(actor); self.lifecycle.observe()
        actual = Path("/proc") / str(child.pid)
        try:
            with (actual / "exe").open("rb") as stream:
                executable_info = os.fstat(stream.fileno())
                actor["actual_vm_observed"] = (executable_info.st_dev, executable_info.st_ino) == (info.st_dev, info.st_ino)
        except (FileNotFoundError, ProcessLookupError):
            pass
        receipt = {"format": "uwvm-sdk-local-pinned-fd-exec-v1", "pid": child.pid, "birth": identity["birth"],
                   "argv": argv, "executable_sha256": observed_sha, "device": info.st_dev, "inode": info.st_ino,
                   "procfs_exec_observed": actor["actual_vm_observed"], "profile": "local_functional",
                   "production_admission": False, "simulation_qualified": False,
                   "exec_success_from_kernel_error_pipe": True, "cgroup": self.membership,
                   "stdin_sha256": digest(stdin_path), "stdin_bytes": len(stdin_bytes)}
        receipt_path = self.output / f"{index}.exec.json"
        receipt_path.write_text(json.dumps(receipt, indent=2) + "\n")
        actor.update(actual_exec_receipt=str(receipt_path), actual_exec_receipt_sha256=digest(receipt_path))
        return actor

    def wait(self, actor, seconds):
        deadline = time.monotonic() + min(seconds, self.timeout)
        while actor["process"].poll() is None:
            self.guard(); self.lifecycle.observe()
            if (Path("/proc") / str(actor["pid"]) / "cgroup").read_text().strip() != self.membership:
                raise RuntimeError("Local VM left its measured cgroup")
            if time.monotonic() >= deadline:
                raise TimeoutError("Finite local WASI deadline exceeded")
            time.sleep(.005)
        actor["finished_ns"] = time.monotonic_ns()
        self.guard()
        return actor["process"].returncode

    def retire(self):
        self.retirement = self.lifecycle.retire(self.actors, grace_seconds=1, kill_seconds=2)
        self.retirement["scope"] = "Local finite functional cleanup only; no official admission or independent guardian claim"
        self.retirement["profile"] = "local_functional"
        if self.retirement["status"] != "RETIRED":
            raise RuntimeError("Local WASI child retirement incomplete")

    def actor_summary(self):
        return [{**{key: value for key, value in actor.items() if key not in {"process", "stdout", "stderr"}},
                 "stdout": str(actor["stdout"]), "stderr": str(actor["stderr"])} for actor in self.actors]
