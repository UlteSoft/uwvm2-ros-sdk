#!/usr/bin/env python3
"""@file run.py
@brief Run compiled Wasm applications with explicit module-local native ROS policy.
@details One stopped worker is bound to independently configured gateway processes.
Only declared preloads are loaded; only explicit ROS and WASI grants are emitted.
Runtime, gateway, peers and native schema installation are deployment inputs.
"""

import argparse
from contextlib import ExitStack
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import tempfile
import time

# Load the adjacent public policy implementation even when a verification harness
# imports this launcher by filename rather than adding its directory to sys.path.
spec = importlib.util.spec_from_file_location(
    "uwvm_native_deployment", Path(__file__).with_name("deployment.py")
)
deployment = importlib.util.module_from_spec(spec)
spec.loader.exec_module(deployment)


def unique_object(pairs):
    """@brief Reject duplicate JSON keys instead of silently replacing policy."""
    result = {}
    for key, value in pairs:
        if key in result:
            raise ValueError("Duplicate deployment field: " + key)
        result[key] = value
    return result


def executable(base, value):
    """@brief Resolve one explicitly configured native infrastructure executable."""
    path = (base / value).resolve()
    if not path.is_file() or not os.access(path, os.X_OK):
        raise ValueError(
            "Configured infrastructure executable is unavailable: " + str(path)
        )
    return str(path)


def stop(process):
    """@brief Reap one owned process group, including a still-stopped worker."""
    if process is not None and process.poll() is None:
        try:
            os.killpg(process.pid, signal.SIGTERM)
            os.killpg(process.pid, signal.SIGCONT)
        except ProcessLookupError:
            # A child can exit between poll() and either signal. Reap it below;
            # disappearance is successful cleanup, never a reason to signal a
            # newly reused process identifier or mask the primary run result.
            pass
        try:
            process.wait(timeout=3)
        except subprocess.TimeoutExpired:
            os.killpg(process.pid, signal.SIGKILL)
            process.wait(timeout=3)


def wait_for(predicate, process, seconds, description):
    """@brief Await a bounded startup condition without hiding process failure."""
    deadline = time.monotonic() + seconds
    while time.monotonic() < deadline:
        if process.poll() is not None:
            raise RuntimeError(
                description + " failed; inspect the retained process logs"
            )
        if predicate():
            return
        time.sleep(0.01)
    raise TimeoutError(description + " exceeded its startup deadline")


def run(
    config_path,
    scenario,
    wasm,
    report_directory,
    target="wasm32-wasip1",
    expected_backend=None,
    expected_distribution=None,
):
    """@brief Execute one compiled command and retain exact process evidence.

    @param config_path Manually authored v2 deployment JSON.
    @param scenario Provider-owned scenario selected by the Xmake target.
    @param wasm Main compiled Core Wasm application.
    @param report_directory Private log directory outside deployable artifacts.
    @param target Exact Preview 1 build ABI.
    @param expected_backend Application's ROS import family.
    @param expected_distribution Application's selected native ROS distribution.
    @return Unchanged worker exit status; process startup errors raise.
    @details No operation is retried. Each enabled module receives a separate
    gateway policy with its actual worker PID, socket and complete grant set.
    Physical controllers and ROS peers are never started by this launcher.
    """
    if sys.platform != "linux":
        raise RuntimeError(
            "Native ROS deployment requires the selected Linux installation"
        )
    raw = config_path.read_bytes()
    config = json.loads(raw, object_pairs_hook=unique_object)
    backend = expected_backend or config.get("backend")
    distribution = expected_distribution or config.get("distribution")
    plan = deployment.prepare(
        config,
        scenario,
        wasm,
        config_path.resolve().parent,
        target,
        backend,
        distribution,
    )
    if os.environ.get("ROS_DISTRO", distribution) != distribution:
        raise ValueError("The sourced native ROS distribution differs from deployment")
    base = config_path.resolve().parent
    runtime = executable(base, config["runtime"])
    gateway = executable(base, config["gateway"])
    prefix = []
    if "runtime_loader" in config or "runtime_library_path" in config:
        loader = executable(base, config["runtime_loader"])
        libraries = (base / config["runtime_library_path"]).resolve(strict=True)
        if not libraries.is_dir():
            raise ValueError(
                "runtime_library_path must select a native library directory"
            )
        prefix = [loader, "--library-path", str(libraries)]
    report_directory.mkdir(parents=True, exist_ok=True)
    evidence = Path(
        tempfile.mkdtemp(prefix=scenario + "-", dir=report_directory.resolve())
    )
    worker, services = None, []
    result = {
        "format": "uwvm-native-ros-execution-v2",
        "status": "FAIL",
        "plan": plan,
        "deployment_sha256": hashlib.sha256(raw).hexdigest(),
        "runtime": runtime,
        "gateway": gateway,
        "runtime_sha256": hashlib.sha256(Path(runtime).read_bytes()).hexdigest(),
        "gateway_sha256": hashlib.sha256(Path(gateway).read_bytes()).hexdigest(),
        "gateway_pids": {},
    }
    # Socket names use bounded indices; arbitrary module names never become paths.
    with tempfile.TemporaryDirectory(prefix="uwvm-native-ros-") as temporary:
        sockets = {
            label: str(Path(temporary) / f"{index}.sock")
            for index, (label, module) in enumerate(plan["modules"].items())
            if module["ros_enabled"]
        }
        argv = deployment.command(plan, [*prefix, runtime], sockets, os.getuid())
        result["argv"] = argv
        try:
            with ExitStack() as files:
                stdout = files.enter_context((evidence / "worker.stdout").open("wb"))
                stderr = files.enter_context((evidence / "worker.stderr").open("wb"))
                worker = subprocess.Popen(
                    [
                        sys.executable,
                        "-B",
                        str(Path(__file__).resolve()),
                        "__worker__",
                        *argv,
                    ],
                    stdin=subprocess.DEVNULL,
                    stdout=stdout,
                    stderr=stderr,
                    start_new_session=True,
                )
                wait_for(
                    lambda: "\nState:\tT"
                    in Path(f"/proc/{worker.pid}/status").read_text(),
                    worker,
                    10,
                    "Stopped uwvm2-ros worker",
                )
                result["worker_pid"] = worker.pid
                for index, (label, module) in enumerate(plan["modules"].items()):
                    if not module["ros_enabled"]:
                        continue
                    folder = evidence / f"gateway-{index}"
                    folder.mkdir()
                    policy = folder / "gateway.conf"
                    policy.write_text(
                        deployment.gateway_policy(
                            backend, module, sockets[label], os.getuid(), worker.pid
                        )
                    )
                    policy.chmod(0o600)
                    output = files.enter_context((folder / "gateway.log").open("wb"))
                    service = subprocess.Popen(
                        [gateway, str(policy), *module["gateway_arguments"]],
                        stdin=subprocess.DEVNULL,
                        stdout=output,
                        stderr=subprocess.STDOUT,
                        start_new_session=True,
                    )
                    services.append(service)
                    result["gateway_pids"][label] = service.pid
                    wait_for(
                        lambda: Path(sockets[label]).is_socket(),
                        service,
                        15,
                        "Production " + backend.upper() + " gateway for " + label,
                    )
                os.kill(worker.pid, signal.SIGCONT)
                code = worker.wait(timeout=plan["deadline"])
                result.update(exit_code=code, status="PASS" if code == 0 else "FAIL")
                return code
        except BaseException as error:
            result["error"] = str(error)
            raise
        finally:
            # Reap every owned process even when another cleanup fails. Never
            # replace the original transport/startup result with a cleanup error.
            cleanup = []
            for process in [worker, *reversed(services)]:
                try:
                    stop(process)
                except (OSError, subprocess.TimeoutExpired) as error:
                    cleanup.append(str(error))
            if cleanup:
                result["cleanup_errors"] = cleanup
                result["status"] = "FAIL"
            (evidence / "execution.json").write_text(
                json.dumps(result, indent=2) + "\n"
            )
            for filename, output in (
                ("worker.stdout", sys.stdout),
                ("worker.stderr", sys.stderr),
            ):
                saved = evidence / filename
                if saved.exists():
                    output.write(saved.read_text(errors="replace"))
            print(
                "native ROS execution report: " + str(evidence / "execution.json"),
                file=sys.stderr,
            )


def main():
    """@brief Run the internal stopped-worker trampoline or a manual deployment."""
    if len(sys.argv) > 2 and sys.argv[1] == "__worker__":
        command = sys.argv[2:]
        signal.raise_signal(signal.SIGSTOP)
        os.execv(command[0], command)
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--config", required=True, type=Path)
    parser.add_argument("--backend", choices=("ros1", "ros2"), required=True)
    parser.add_argument("--distribution", required=True)
    parser.add_argument(
        "--target", choices=("wasm32-wasip1", "wasm64-wasip1"), default="wasm32-wasip1"
    )
    parser.add_argument("--scenario", required=True)
    parser.add_argument("--wasm", required=True, type=Path)
    parser.add_argument("--report-directory", required=True, type=Path)
    args = parser.parse_args()
    try:
        return run(
            args.config,
            args.scenario,
            args.wasm,
            args.report_directory,
            args.target,
            args.backend,
            args.distribution,
        )
    except (
        ValueError,
        KeyError,
        TypeError,
        OSError,
        RuntimeError,
        subprocess.TimeoutExpired,
    ) as error:
        print("native ROS run failed: " + str(error), file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
