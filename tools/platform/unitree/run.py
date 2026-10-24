#!/usr/bin/env python3
"""@brief Run one standalone Unitree Wasm through the real uwvm2-ros gateway.

@details The trusted deployment selects executable paths, exact native type
identities, bounded ROS grants, and explicit WASI permissions. This process
manager starts a stopped worker, binds the production gateway to its real PID,
and then execs uwvm2-ros in that same worker. It implements no Wasm imports and
never executes the guest in a host language interpreter. Logs and control files
are separate from the application's sole distributable .wasm artifact.
"""

import argparse
import hashlib
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import tempfile
import time

ROS2_SCENARIOS = {
    "motion_state": ("topic.subscribe", "unitree_go/msg/SportModeState"),
    "low_state": ("topic.subscribe", "unitree_go/msg/LowState"),
    "wireless_controller": ("topic.subscribe", "unitree_go/msg/WirelessController"),
}
ROS1_SCENARIOS = {
    "motion_state": ("topic.subscribe", "unitree_legged_msgs/HighState"),
    "low_state": ("topic.subscribe", "unitree_legged_msgs/LowState"),
    "motor_state": ("topic.subscribe", "unitree_legged_msgs/MotorState"),
}


def token(value):
    """@brief Validate a single production gateway configuration token.

    @param value Explicit deployment token; whitespace cannot alter line syntax.
    @return The original nonempty string.
    @details The production runtime and gateway independently validate its
    semantic meaning. This check only preserves the serialized token boundary.
    """
    if (
        not isinstance(value, str)
        or not value
        or any(c.isspace() or ord(c) < 32 for c in value)
    ):
        raise ValueError(
            "Gateway fields must be nonempty tokens without whitespace or controls"
        )
    return value


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


def memory_width(data):
    """@brief Inspect the actual single unshared defined memory without substituting an ABI.

    @param data Complete core Wasm bytes, retained unchanged by the launcher.
    @return Actual memory pointer width, 32 or 64.
    @details Unitree qualification uses one defined unshared memory. The runtime
    still performs complete validation. This check only binds the selected CLI
    target to the artifact before starting a worker or native gateway.
    """
    if data[:8] != b"\0asm\x01\0\0\0":
        raise ValueError("Expected one compiled core WebAssembly command")

    def unsigned(cursor, limit):
        """@brief Read a bounded unsigned memory64-capable LEB without overreading."""
        value = 0
        for shift in range(0, 70, 7):
            if cursor >= limit:
                raise ValueError("Truncated WebAssembly section or memory extent")
            byte = data[cursor]
            cursor += 1
            value |= (byte & 127) << shift
            if byte < 128:
                if value > 0xFFFFFFFFFFFFFFFF:
                    raise ValueError("WebAssembly memory extent exceeds unsigned i64")
                return value, cursor
        raise ValueError("Invalid WebAssembly unsigned memory extent")

    cursor, found = 8, None
    while cursor < len(data):
        section = data[cursor]
        extent, body = unsigned(cursor + 1, len(data))
        end = body + extent
        if end > len(data):
            raise ValueError("Truncated WebAssembly section payload")
        if section == 5:
            count, body = unsigned(body, end)
            if found is not None or count != 1:
                raise ValueError("Unitree requires exactly one defined memory")
            flags, body = unsigned(body, end)
            if flags & ~5:
                raise ValueError(
                    "Unitree requires an unshared memory32 or memory64 type"
                )
            minimum, body = unsigned(body, end)
            if flags & 1:
                maximum, body = unsigned(body, end)
                if maximum < minimum:
                    raise ValueError("Invalid WebAssembly memory limits")
            if body != end:
                raise ValueError("Unexpected bytes after the WebAssembly memory type")
            found = 64 if flags & 4 else 32
        cursor = end
    if found is None:
        raise ValueError("Unitree requires one defined application memory")
    return found


def run(
    config_path,
    scenario,
    wasm,
    report_directory,
    distribution=None,
    backend=None,
    target="wasm32-wasip1",
):
    """@brief Execute one exact read-only Unitree deployment and preserve its evidence.

    @param config_path Trusted JSON deployment, prepared by the application owner.
    @param scenario Exact named observation; grants are restricted to this entry.
    @param wasm Complete Wasm command containing all guest application code.
    @param report_directory Directory for runtime logs, outside build artifacts.
    @param distribution Optional exact Xmake ROS distribution; must match deployment and sourced native ROS environment.
    @param backend Optional exact Xmake native backend; must match the deployment.
    @param target Exact selected pointer ABI; the memory64 variant uses Uwvm's explicit extension.
    @return The real uwvm2-ros process exit status; startup failures raise.
    @details No service request is retried. Gateway and worker share the current
    Linux PID and mount namespaces. The caller must source its ROS environment.
    Source interpreters, ROS peers, and physical controllers are not started.
    """
    if sys.platform != "linux":
        raise RuntimeError(
            "Run this deployment on Linux with the selected ROS installation"
        )
    if target not in ("wasm32-wasip1", "wasm64-wasip1"):
        raise ValueError("Select an exact qualified Unitree WASI P1 target")
    raw = config_path.read_bytes()
    config = json.loads(raw)
    if config.get("format") != "uwvm-unitree-run-v1":
        raise ValueError("Expected deployment format uwvm-unitree-run-v1")
    runtime_features = config.get("runtime_features", [])
    if (
        not isinstance(runtime_features, list)
        or not all(
            type(feature) is str and feature == "exceptions"
            for feature in runtime_features
        )
        or len(set(runtime_features)) != len(runtime_features)
    ):
        raise ValueError(
            "runtime_features permits only an unrepeated exceptions feature"
        )
    configured_backend = config.get("backend", "ros2")
    if configured_backend not in ("ros1", "ros2"):
        raise ValueError("Select the actual native ros1 or ros2 backend")
    if backend is not None and backend != configured_backend:
        raise ValueError("The Xmake native backend does not match this deployment")
    backend = configured_backend
    scenarios = ROS1_SCENARIOS if backend == "ros1" else ROS2_SCENARIOS
    distributions = (
        ("melodic", "noetic") if backend == "ros1" else ("foxy", "humble", "jazzy")
    )
    selected_distribution = config.get("native_ros_distribution")
    if selected_distribution not in distributions:
        raise ValueError(
            "Declare the exact native_ros_distribution in the trusted deployment"
        )
    if distribution is not None and distribution != selected_distribution:
        raise ValueError(
            "The declared Xmake ROS distribution does not match this native deployment"
        )
    if os.getenv("ROS_DISTRO") != selected_distribution:
        raise ValueError(
            "Source the exact selected native ROS distribution before running"
        )
    artifact = wasm.resolve(strict=True)
    if artifact.suffix != ".wasm":
        raise ValueError(
            "The application must be one compiled core WebAssembly .wasm command"
        )
    address_bits = memory_width(artifact.read_bytes())
    if address_bits != (64 if target == "wasm64-wasip1" else 32):
        raise ValueError(
            "The selected Unitree target does not match the actual Wasm memory pointer width"
        )
    if target == "wasm64-wasip1" and runtime_features:
        raise ValueError(
            "Unitree C/C++ memory64 qualification requires the noeh profile"
        )
    effective_features = runtime_features + (
        ["memory64", "table64"] if address_bits == 64 else []
    )
    base = config_path.resolve().parent
    runtime = executable(base, config["runtime"])
    gateway = executable(base, config["gateway"])
    runtime_prefix = []
    if "runtime_loader" in config or "runtime_library_path" in config:
        loader = executable(base, config["runtime_loader"])
        libraries = (base / config["runtime_library_path"]).resolve(strict=True)
        if not libraries.is_dir():
            raise ValueError(
                "runtime_library_path must select an existing native library directory"
            )
        runtime_prefix = [loader, "--library-path", str(libraries)]
    selection = config["examples"][scenario]
    operation, native_type = scenarios[scenario]
    grant = [token(selection[key]) for key in ("alias", "resource", "identity")]
    alias, resource, identity = grant
    guest_arguments = selection["arguments"]
    if (
        not isinstance(guest_arguments, list)
        or not all(isinstance(v, str) and "\0" not in v for v in guest_arguments)
        or len(guest_arguments) != 1
        or guest_arguments[0] != alias
    ):
        raise ValueError(
            "Explicit guest arguments must contain exactly the selected alias"
        )
    connection = {token(k): token(v) for k, v in config["connection"].items()}
    limits = {token(k): token(v) for k, v in selection["limits"].items()}
    wasi_grants = config["wasi_grants"]
    if not isinstance(wasi_grants, list) or not all(
        isinstance(v, str) for v in wasi_grants
    ):
        raise ValueError("Explicit wasi_grants must be a string array")
    deadline = config.get("execution_timeout_seconds", 30)
    if type(deadline) is not int or not 1 <= deadline <= 300:
        raise ValueError(
            "Execution deadline must be an integer from 1 through 300 seconds"
        )
    report_directory.mkdir(parents=True, exist_ok=True)
    evidence = Path(
        tempfile.mkdtemp(prefix=scenario + "-", dir=report_directory.resolve())
    )
    worker = service = None
    result = {
        "format": "uwvm-unitree-execution-v1",
        "status": "FAIL",
        "scenario": scenario,
        "backend": backend,
        "native_ros_distribution": selected_distribution,
        "target": target,
        "artifact_address_bits": address_bits,
        "artifact": str(artifact),
        "artifact_sha256": hashlib.sha256(artifact.read_bytes()).hexdigest(),
        "deployment_sha256": hashlib.sha256(raw).hexdigest(),
        "runtime_features": effective_features,
        "runtime": runtime,
        "gateway": gateway,
        "runtime_sha256": hashlib.sha256(Path(runtime).read_bytes()).hexdigest(),
        "gateway_sha256": hashlib.sha256(Path(gateway).read_bytes()).hexdigest(),
    }
    # A short private directory keeps Unix socket paths below the kernel limit.
    with tempfile.TemporaryDirectory(prefix="uwvm-unitree-") as temporary:
        socket = str(Path(temporary) / (backend + ".sock"))
        argv = [*runtime_prefix, runtime, "--" + backend + "-global-enable"]
        if "exceptions" in runtime_features:
            argv.append("--wasm-feature-enable-exceptions")
        if address_bits == 64:
            argv += ["--wasm-feature-enable-memory64", "--wasm-feature-enable-table64"]
        for key, value in {
            **connection,
            "gateway-socket": socket,
            "gateway-uid": str(os.getuid()),
            "connect-timeout-ms": "5000",
            "audit-deny-max-rate-hz": "100",
            "audit-deny-burst": "100",
            "audit-deny-max-records": "10000",
            "audit-deny-max-bytes": "1048576",
        }.items():
            argv += ["--" + backend + "-global-" + key, value]
        fields = [alias, operation, resource, native_type, identity]
        argv += ["--" + backend + "-global-grant", *fields]
        for key, value in limits.items():
            argv += ["--" + backend + "-global-set", alias, key, value]
        argv += ["--wasip1-global-noinherit-system-environment"]
        for value in wasi_grants:
            argv += ["--wasip1-global-grant", token(value)]
        argv += ["--run", str(artifact), *guest_arguments]
        result["argv"] = argv
        try:
            with (evidence / "worker.stdout").open("wb") as stdout, (
                evidence / "worker.stderr"
            ).open("wb") as stderr, (evidence / "gateway.log").open(
                "wb"
            ) as gateway_log:
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
                lines = [
                    "backend " + backend,
                    f"worker-uid {os.getuid()}",
                    f"worker-pid {worker.pid}",
                    f"socket {socket}",
                    "timeout-ms 10000",
                    "max-sessions 16",
                    "audit-max-records-per-second 100",
                    "audit-max-records 10000",
                    "audit-max-bytes 1048576",
                ]
                lines += [
                    f"connection {key} {value}" for key, value in connection.items()
                ]
                lines += ["grant " + " ".join(fields)]
                lines += [f"set {alias} {key} {value}" for key, value in limits.items()]
                policy = evidence / "gateway.conf"
                policy.write_text("\n".join(lines) + "\n")
                policy.chmod(0o600)
                service = subprocess.Popen(
                    [gateway, str(policy)],
                    stdin=subprocess.DEVNULL,
                    stdout=gateway_log,
                    stderr=subprocess.STDOUT,
                    start_new_session=True,
                )
                result.update(worker_pid=worker.pid, gateway_pid=service.pid)
                wait_for(
                    lambda: Path(socket).is_socket(),
                    service,
                    15,
                    "Production " + backend + " gateway",
                )
                os.kill(worker.pid, signal.SIGCONT)
                code = worker.wait(timeout=deadline)
                result.update(exit_code=code, status="PASS" if code == 0 else "FAIL")
                return code
        except BaseException as error:
            result["error"] = str(error)
            raise
        finally:
            stop(worker)
            stop(service)
            (evidence / "execution.json").write_text(
                json.dumps(result, indent=2) + "\n"
            )
            for name, output in (
                ("worker.stdout", sys.stdout),
                ("worker.stderr", sys.stderr),
            ):
                saved = evidence / name
                if saved.exists():
                    output.write(saved.read_text(errors="replace"))
            print(
                "Unitree execution report: " + str(evidence / "execution.json"),
                file=sys.stderr,
            )


def main():
    """@brief Dispatch the internal stopped-worker trampoline or explicit CLI run."""
    if len(sys.argv) > 2 and sys.argv[1] == "__worker__":
        command = sys.argv[2:]
        signal.raise_signal(signal.SIGSTOP)
        os.execv(command[0], command)
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--config", required=True, type=Path)
    parser.add_argument(
        "--target", choices=("wasm32-wasip1", "wasm64-wasip1"), default="wasm32-wasip1"
    )
    parser.add_argument(
        "--scenario",
        choices=sorted(set(ROS1_SCENARIOS) | set(ROS2_SCENARIOS)),
        required=True,
    )
    parser.add_argument("--backend", choices=("ros1", "ros2"))
    parser.add_argument(
        "--distribution", choices=("melodic", "noetic", "foxy", "humble", "jazzy")
    )
    parser.add_argument("--wasm", required=True, type=Path)
    parser.add_argument("--report-directory", required=True, type=Path)
    args = parser.parse_args()
    try:
        return run(
            args.config,
            args.scenario,
            args.wasm,
            args.report_directory,
            args.distribution,
            args.backend,
            args.target,
        )
    except (
        ValueError,
        KeyError,
        OSError,
        RuntimeError,
        subprocess.TimeoutExpired,
    ) as error:
        print("Unitree run failed: " + str(error), file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
