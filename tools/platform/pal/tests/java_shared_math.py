"""Run fresh uwvm2-ros processes for a managed shared-module component.

This runner selects no ROS permission and starts no ROS client or simulator.
It never executes a Java application in a host JVM. The pinned VM consumes the
two Wasm files produced by the current public Xmake build.
"""
from __future__ import annotations

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

CASES = ("guest-contract-normal", "guest-contract-denied",
         "guest-contract-invalid-input", "guest-contract-cleanup")
NORMAL = {"shared_math": True, "math_counts": 4294967299,
          "peer_counts": 1, "math_initializations": 1, "peer_initializations": 1}
SGR = re.compile(r"\x1b\[[0-9;]*m")


import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3] / "shared/python"))
from wasi_policy import test_arguments as wasi_test_arguments
from pipe_capture import PipeLoggedProcess


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def digest(path):
    value = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            value.update(block)
    return value.hexdigest()


def save(path, value):
    Path(path).write_text(json.dumps(value, indent=2, sort_keys=True) + "\n")


def birth(pid):
    return Path("/proc", str(pid), "stat").read_text().rsplit(") ", 1)[1].split()[19]


def identity(pid, expected_birth, executable_sha256):
    root = Path("/proc", str(pid))
    require(birth(pid) == expected_birth, "VM PID birth changed")
    status = dict(line.split(":", 1) for line in (root / "status").read_text().splitlines() if ":" in line)
    actual = digest(root / "exe")
    require(actual == executable_sha256, "Executed VM bytes differ from the selected runtime")
    membership = (root / "cgroup").read_text().strip()
    group = Path("/sys/fs/cgroup") / membership.split("::", 1)[1].lstrip("/")
    resources = {key: (group / key).read_text().strip() for key in
                 ("memory.max", "memory.swap.max", "memory.events")}
    maps = (root / "maps").read_text()
    libraries = []
    for name in sorted({line.split(maxsplit=5)[5] for line in maps.splitlines()
                        if len(line.split(maxsplit=5)) == 6 and line.split(maxsplit=5)[5].startswith("/")}):
        path = Path(name)
        require(path.is_file() and not name.endswith(" (deleted)"), "Mapped native file vanished: " + name)
        libraries.append({"path": name, "bytes": path.stat().st_size, "sha256": digest(path)})
    require(birth(pid) == expected_birth, "VM retired while observing its identity")
    return {"pid": pid, "birth": expected_birth, "exe": os.readlink(root / "exe"),
            "exe_sha256": actual, "cgroup": membership, "kernel_resources": resources, "maps": maps, "mapped_files": libraries,
            "security": {key: status[key].strip() for key in
                         ("Uid", "Gid", "Seccomp", "NoNewPrivs", "CapInh", "CapPrm", "CapEff", "CapBnd", "CapAmb")}}


def guest_json(data, key):
    found = []
    for line in data.decode("utf-8", errors="replace").splitlines():
        # Native diagnostic colors can leave a reset prefix before a guest
        # stderr record. Preserve raw bytes; normalize only SGR decoration.
        line = SGR.sub("", line)
        if line.startswith("{"):
            try:
                item = json.loads(line)
            except json.JSONDecodeError:
                continue
            if isinstance(item, dict) and key in item:
                found.append(item)
    require(len(found) == 1, "Expected exactly one fresh guest record: " + key)
    return found[0]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--main", type=Path, required=True)
    parser.add_argument("--library", type=Path, required=True)
    parser.add_argument("--metadata", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--producer-language", choices=("java", "kotlin"), default="java")
    args = parser.parse_args()
    require(sys.platform == "linux", "Linux execution is required")
    require(args.output.is_dir() and not any(args.output.glob("suite.json")), "Select a fresh output directory")
    report = {"format": "uwvm-managed-shared-math-component-v2", "passed": False,
              "producer_language": args.producer_language, "consumer_language": "java",
              "required": len(CASES), "selected": list(CASES), "executed": 0,
              "passed_count": 0, "failed": 0, "blocked": 0, "not_run": len(CASES), "cases": [],
              "scope": "Managed AOT/Core preload/WASI component only; no ROS or official simulation acceptance",
              "started_ns": time.monotonic_ns()}
    shared = Path(__file__).resolve().parents[3] / "shared/python"
    sources = [Path(__file__).resolve(), Path(__file__).resolve().parents[1] / "xmake/java_shared_math_tests.lua",
               shared / "wasi_policy.py", shared / "pipe_capture.py"]
    report["source_inputs"] = [{"path": str(p), "sha256": digest(p)} for p in sources]
    try:
        selection = os.environ.get("UWVM_ROS_JAVA_GUEST_TEST_CONFIG")
        require(selection, "BLOCKED_REQUIRED_RUNTIME: set UWVM_ROS_JAVA_GUEST_TEST_CONFIG to an installed VM identity JSON")
        config_path = Path(selection)
        require(config_path.is_absolute(), "Select an absolute runtime configuration")
        config = json.loads(config_path.read_text())
        require(config["format"] == "uwvm-java-component-runtime-v1", "Unsupported runtime selection format")
        runtime = Path(config["runtime"])
        require(runtime.is_absolute() and runtime.is_file(), "Select the actual uwvm2-ros executable")
        require(re.fullmatch("[0-9a-f]{64}", config["sha256"]) is not None, "Pin the complete VM executable SHA256")
        require(digest(runtime) == config["sha256"], "Runtime SHA256 differs")
        require(re.fullmatch("sha256:[0-9a-f]{64}", config["source_identity"]) is not None, "Pin the paired VM source identity")
        require(config["arguments"] in (["--runtime-aot"], ["-Raot", "--log-verbose", "--runtime-compile-threads", "1", "--runtime-llvm-jit-policy", "debug"]),
                "Select the ordinary or explicitly traced AOT runtime")
        env = config.get("environment", {})
        require(isinstance(env, dict) and set(env) <= {"LD_LIBRARY_PATH"}
                and all(isinstance(v, str) for v in env.values()), "Only an explicit native library path may be selected")
        modules = {"main": {"path": str(args.main.resolve()), "sha256": digest(args.main)},
                   "math": {"path": str(args.library.resolve()), "sha256": digest(args.library)}}
        metadata = json.loads(args.metadata.read_text())
        require(metadata["main"]["sha256"] == modules["main"]["sha256"]
                and metadata["math"]["sha256"] == modules["math"]["sha256"], "Built module metadata identity differs")
        for name, language, kind in (("main", "java", "binary"), ("math", args.producer_language, "shared")):
            selected = metadata[name]["compiler_receipt"]
            receipt_path = Path(selected["path"])
            require(receipt_path.is_absolute() and digest(receipt_path) == selected["sha256"], "Compiler receipt bytes differ")
            receipt = json.loads(receipt_path.read_text())
            require(receipt["artifact_sha256"] == modules[name]["sha256"] and receipt["language"] == language
                    and receipt["target_kind"] == kind and receipt["target"] == "wasm32-wasip1"
                    and receipt["mode"] == "TeaVM WEBASSEMBLY_WASI", "Compiler receipt does not describe this real module/frontend")
            modules[name]["compiler_receipt"] = {"path": str(receipt_path), "sha256": selected["sha256"], "language": language}
        report.update(runtime={"path": str(runtime), "sha256": config["sha256"],
                               "source_identity": config["source_identity"]},
                      config={"path": str(config_path), "sha256": digest(config_path)},
                      modules=modules, module_metadata=metadata,
                      boot_id=Path("/proc/sys/kernel/random/boot_id").read_text().strip())
        require("main" in (config.get("wasi_policy") or {}).get("modules", {}),
                "Select the explicit main WASI namespace/operation policy for traced command tests")
        for case in CASES:
            row = {"case": case, "passed": False, "started_ns": time.monotonic_ns()}
            report["cases"].append(row)
            directory = args.output / case
            directory.mkdir()
            argv = [str(runtime), *config["arguments"],
                    "--wasm-set-main-module-name", "main",
                    "--wasm-preload-library", str(args.library.resolve()), "math",
                    "--wasm-preload-library", str(args.library.resolve()), "math_peer"]
            argv = [argv[0], *wasi_test_arguments(argv[1:], config.get("wasi_policy")),
                    "--run", str(args.main.resolve())]
            expected_exit = 0
            if case == "guest-contract-denied":
                argv.append("deny-stdout")
                expected_exit = 76
            elif case == "guest-contract-invalid-input":
                argv.append("invalid-argument")
                expected_exit = 22
            row.update(argv=argv, expected_exit=expected_exit)
            child = None
            try:
                environment = dict(os.environ)
                environment.update(env)
                with (directory / "stdout").open("xb") as out, (directory / "stderr").open("xb") as err:
                    child = PipeLoggedProcess(argv, stdin=subprocess.DEVNULL, stdout=out, stderr=err,
                                             env=environment, start_new_session=True,
                                             preexec_fn=lambda: resource.setrlimit(resource.RLIMIT_FSIZE, (4 * 1024**2, 4 * 1024**2)))
                    report["executed"] += 1
                    report["not_run"] -= 1
                    ticks = birth(child.pid)
                    row.update(pid=child.pid, birth=ticks)
                    row["actor"] = identity(child.pid, ticks, config["sha256"])
                    child.wait(timeout=60)
                row["exit"] = child.returncode
                out = (directory / "stdout").read_bytes()
                err = (directory / "stderr").read_bytes()
                diagnostic = SGR.sub("", err.decode("utf-8", errors="replace"))
                row["native_unwind_checked"] = "[unwind-check] status=ok" in diagnostic
                row["interpreter_fallback"] = "fallback=enabled" in diagnostic or "uwvm-int-translation=enabled" in diagnostic
                if "--log-verbose" in config["arguments"]:
                    require(row["native_unwind_checked"]
                            and "compiler=llvm_jit_only" in diagnostic and not row["interpreter_fallback"],
                            "Actual native compiler/unwind observation differs")
                require(child.returncode == expected_exit, "Actual VM exit differs")
                require(b"SDK09_UNAUTHORIZED_STDOUT" not in out, "A denied stdout write had an effect")
                if case == "guest-contract-denied":
                    row["guest"] = guest_json(err, "sdk09_shared_math_denied")
                    require(row["guest"] == {"sdk09_shared_math_denied": True, "reduce_errno": 0, "errno": 76, "restore_errno": 76}, "Guest denied result differs")
                    imports = {(item["module"], item["name"]) for item in metadata["main"]["metadata"]["imports"]}
                    require({("wasi_snapshot_preview1", "fd_fdstat_set_rights"),
                             ("wasi_snapshot_preview1", "fd_write")} <= imports,
                            "The actual built main module must use the original WASI rights/write imports")
                    row["rights_checks"] = {"reduce_errno": row["guest"]["reduce_errno"],
                                            "write_errno": row["guest"]["errno"],
                                            "restore_errno": row["guest"]["restore_errno"],
                                            "unauthorized_output_bytes": 0}
                    require(b'"shared_math":true' not in out, "Denied case produced the normal guest output")
                elif case == "guest-contract-invalid-input":
                    row["guest"] = guest_json(err, "sdk09_shared_math_invalid")
                    require(row["guest"] == {"sdk09_shared_math_invalid": True, "errno": 22}, "Guest invalid-input result differs")
                    require(b'"shared_math":true' not in out, "Invalid input produced normal guest output")
                else:
                    row["guest"] = guest_json(out, "shared_math")
                    require(row["guest"] == NORMAL, "Actual arithmetic, initialization or catch/finally counts differ")
                row["passed"] = True
                report["passed_count"] += 1
            except Exception as error:
                row["error"] = repr(error)
                report["failed"] += 1
            finally:
                if child is not None and child.poll() is None:
                    # The Popen child has not been reaped, so its process group
                    # cannot be reused before this bounded cleanup completes.
                    os.killpg(child.pid, signal.SIGKILL)
                    child.wait(timeout=10)
                if child is not None:
                    row["exit"] = child.returncode
                if child is not None and "birth" in row:
                    try:
                        row["same_birth_retired"] = birth(child.pid) != row["birth"]
                    except FileNotFoundError:
                        row["same_birth_retired"] = True
                row["finished_ns"] = time.monotonic_ns()
                row["raw"] = [{"path": str(p.relative_to(args.output)), "bytes": p.stat().st_size, "sha256": digest(p)}
                              for p in sorted(directory.iterdir()) if p.is_file()]
                save(args.output / "suite.json", report)
        require(digest(runtime) == config["sha256"] and digest(args.main) == modules["main"]["sha256"]
                and digest(args.library) == modules["math"]["sha256"], "Runtime or modules changed during execution")
        pids = [(r["actor"]["pid"], r["actor"]["birth"]) for r in report["cases"] if "actor" in r]
        require(len(pids) == 4 and len(set(pids)) == 4, "Four fresh VM identities are required")
        report["passed"] = report["executed"] == len(CASES) and report["passed_count"] == len(CASES) and report["failed"] == 0
    except Exception as error:
        report["error"] = repr(error)
        report["blocked"] = report["not_run"]
    report["finished_ns"] = time.monotonic_ns()
    save(args.output / "suite.json", report)
    print(json.dumps({k: report[k] for k in ("passed", "required", "selected", "executed", "passed_count", "failed", "blocked", "not_run")}))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
