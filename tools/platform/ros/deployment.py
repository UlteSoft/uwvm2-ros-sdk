"""@file deployment.py
@brief Validate explicit native ROS deployments and construct module policies.
@details Platform names do not determine authority. Each loaded Wasm module has
an explicit ROS enable choice, an exact capability list and independent WASI
permissions. The production runtime and gateway validate native type identities,
operation schemas, quotas and wire formats. This module creates no ROS peers.
"""

import hashlib
from pathlib import Path
import re

FORMAT = "uwvm-native-ros-run-v2"
FEATURES = {
    "multi-value",
    "reference-types",
    "table-instructions",
    "multiple-tables",
    "bulk-memory",
    "sign-extension",
    "nontrapping-float-to-int",
    "simd",
    "extended-const",
    "table-initializer",
    "relaxed-simd",
    "multi-memory",
    "threads",
    "tail-call",
    "memory64",
    "table64",
    "function-references",
    "gc",
    "exceptions",
}
WASI_PERMISSIONS = {
    "realtime-clock",
    "monotonic-clock",
    "process-clock",
    "thread-clock",
    "random",
    "proc-raise",
    "sched-yield",
    "stdio-full-rights",
}
CONNECTION_KEYS = {
    "ros1": {"master-uri", "node-name", "namespace", "advertise-host", "transport"},
    "ros2": {
        "node-name",
        "namespace",
        "domain-id",
        "rmw-implementation",
        "security-mode",
        "keystore",
        "enclave",
    },
}
WORKER_LIMITS = {
    "connect-timeout-ms": "5000",
    "audit-deny-max-rate-hz": "100",
    "audit-deny-burst": "100",
    "audit-deny-max-records": "10000",
    "audit-deny-max-bytes": "1048576",
}
GATEWAY_LIMITS = {
    "timeout-ms": "10000",
    "max-sessions": "16",
    "audit-max-records-per-second": "100",
    "audit-max-records": "10000",
    "audit-max-bytes": "1048576",
}


def token(value):
    """@brief Preserve one gateway token without accepting line delimiters.

    @param value Explicit UTF-8 scalar string supplied by the deployment owner.
    @return Unchanged token; malformed text raises before process creation.
    """
    if (
        not isinstance(value, str)
        or not value
        or any(c.isspace() or ord(c) < 32 or ord(c) == 127 for c in value)
    ):
        raise ValueError("Gateway fields must be nonempty tokens without controls")
    value.encode("utf-8", errors="strict")
    return value


def name(value):
    """@brief Validate an explicit module, scenario or capability identifier."""
    if not isinstance(value, str) or not re.fullmatch(r"[A-Za-z0-9_.-]{1,255}", value):
        raise ValueError("Names require 1..255 ASCII letters, digits, dots, '_' or '-'")
    if value in {".", ".."}:
        raise ValueError("A name cannot be a directory traversal component")
    return value


def arguments(values):
    """@brief Preserve guest arguments, including empty strings and option text."""
    if not isinstance(values, list) or not all(
        isinstance(value, str) and "\0" not in value for value in values
    ):
        raise ValueError("Application arguments must be an explicit NUL-free array")
    for value in values:
        value.encode("utf-8", errors="strict")
    return values


def fields(values, allowed=None):
    """@brief Validate a token map without inventing operation-specific limits."""
    if not isinstance(values, dict) or (
        allowed is not None and not set(values).issubset(allowed)
    ):
        raise ValueError("Unknown configuration fields or non-object field map")
    return {token(key): token(value) for key, value in values.items()}


def connection_fields(values, backend):
    """@brief Accept only explicit connection fields for the selected ROS ABI."""
    return fields(values, CONNECTION_KEYS[backend])


def permissions(module):
    """@brief Validate all explicitly selected operation grants for one module.

    @param module Module policy with ros_enabled, grants and wasi_grants.
    @return Grants retaining original alias, operation, native identity and limits.
    @details No vendor, scenario, alias or operation whitelist substitutes for the
    production registry. Empty grants deny every ROS operation. Disabling ROS
    while declaring grants is rejected rather than silently discarding choices.
    """
    if type(module.get("ros_enabled")) is not bool:
        raise ValueError("Every module must explicitly set ros_enabled")
    grants = module.get("grants")
    if not isinstance(grants, list) or (grants and not module["ros_enabled"]):
        raise ValueError("Explicit grants must be an array; disabled ROS admits none")
    result, aliases = [], set()
    for grant in grants:
        if not isinstance(grant, dict) or set(grant) != {
            "alias",
            "operation",
            "resource",
            "type",
            "identity",
            "limits",
        }:
            raise ValueError("Each grant needs its five identity fields and limits")
        values = [
            token(grant[key])
            for key in ("alias", "operation", "resource", "type", "identity")
        ]
        alias = name(values[0])
        if alias in aliases:
            raise ValueError("Repeated capability alias in one module: " + alias)
        aliases.add(alias)
        result.append({"fields": values, "limits": fields(grant["limits"])})
    wasi = module.get("wasi_grants")
    if (
        not isinstance(wasi, list)
        or any(
            not isinstance(value, str) or value not in WASI_PERMISSIONS
            for value in wasi
        )
        or len(wasi) != len(set(wasi))
    ):
        raise ValueError("wasi_grants must explicitly list distinct known permissions")
    return result


def artifact(path):
    """@brief Resolve one complete Core Wasm file and retain its exact identity."""
    path = Path(path).resolve(strict=True)
    with path.open("rb") as stream:
        if path.suffix != ".wasm" or stream.read(8) != b"\0asm\x01\0\0\0":
            raise ValueError("Each application or preload must be a Core .wasm file")
        stream.seek(0)
        digest = hashlib.sha256()
        for block in iter(lambda: stream.read(1048576), b""):
            digest.update(block)
    return {"path": str(path), "sha256": digest.hexdigest()}


def prepare(config, scenario, wasm, base, target, backend, distribution):
    """@brief Validate one complete deployment before starting any processes.

    @param config Parsed manual JSON object; duplicate keys must already be rejected.
    @param scenario Exact provider scenario; vendor names are not special cases.
    @param wasm Compiled main application selected by Xmake.
    @param base Configuration directory used for explicit preload paths.
    @param target Exact Preview 1 pointer ABI selected at build time.
    @param backend Expected ROS import family.
    @param distribution Expected sourced native ROS distribution.
    @return Isolated plan with complete module policies and artifact hashes.
    """
    if not isinstance(config, dict) or set(config) - {
        "format",
        "runtime",
        "gateway",
        "runtime_loader",
        "runtime_library_path",
        "backend",
        "distribution",
        "connection",
        "examples",
        "runtime_features",
        "execution_timeout_seconds",
    }:
        raise ValueError("Unknown native deployment fields or non-object configuration")
    if config.get("format") != FORMAT:
        raise ValueError("Expected deployment format " + FORMAT)
    if config.get("backend") not in CONNECTION_KEYS or config["backend"] != backend:
        raise ValueError("Application and deployment ROS backend differ")
    if not distribution or config.get("distribution") != distribution:
        raise ValueError("Application and deployment ROS distribution differ")
    if target not in {"wasm32-wasip1", "wasm64-wasip1"}:
        raise ValueError("Select an implemented Preview 1 command ABI")
    selection = config["examples"][name(scenario)]
    if not isinstance(selection, dict) or set(selection) != {
        "arguments",
        "main_module",
        "preloads",
        "modules",
    }:
        raise ValueError(
            "A scenario needs arguments, main_module, preloads and modules"
        )
    main = name(selection["main_module"])
    modules = selection["modules"]
    if not isinstance(modules, dict) or main not in modules:
        raise ValueError("The main module requires an explicit policy")
    loaded = {main: artifact(wasm)}
    preloads = selection["preloads"]
    if not isinstance(preloads, list):
        raise ValueError("preloads must be an explicit ordered array")
    ordered = []
    for preload in preloads:
        if not isinstance(preload, dict) or set(preload) != {
            "module",
            "path",
            "attribute",
        }:
            raise ValueError("A preload needs module, path and attribute")
        label = name(preload["module"])
        if label in loaded or preload["attribute"] not in {"none", "copy"}:
            raise ValueError("Duplicate module name or invalid preload attribute")
        if not isinstance(preload["path"], str) or not preload["path"]:
            raise ValueError("A preload needs an explicit Wasm path")
        loaded[label] = artifact(base / preload["path"])
        ordered.append({"module": label, "attribute": preload["attribute"]})
    if set(loaded) != set(modules):
        raise ValueError("Explicit policies must match all loaded module names exactly")
    connection = connection_fields(config["connection"], backend)
    checked = {}
    for label, module in modules.items():
        name(label)
        if not isinstance(module, dict) or set(module) - {
            "ros_enabled",
            "grants",
            "wasi_grants",
            "connection",
            "worker_limits",
            "gateway_limits",
            "call_boundary",
            "gateway_arguments",
        }:
            raise ValueError("Unknown module policy fields")
        checked[label] = {
            "grants": permissions(module),
            "ros_enabled": module["ros_enabled"],
            "wasi_grants": module["wasi_grants"],
            "connection": connection_fields(
                module.get("connection", connection), backend
            ),
            "worker_limits": {
                **WORKER_LIMITS,
                **fields(module.get("worker_limits", {}), WORKER_LIMITS),
            },
            "gateway_limits": {
                **GATEWAY_LIMITS,
                **fields(module.get("gateway_limits", {}), GATEWAY_LIMITS),
            },
        }
        # The operator supplies an argv vector for this module's gateway only.
        # Keep the generated policy as argv[1]; no shell or permission expansion
        # is involved. UTF-8 byte and element limits bound process startup input.
        gateway_arguments = arguments(module.get("gateway_arguments", []))
        if (
            len(gateway_arguments) > 16
            or sum(len(value.encode("utf-8")) for value in gateway_arguments) > 8192
        ):
            raise ValueError("Gateway startup arguments exceed their finite bound")
        if gateway_arguments and not module["ros_enabled"]:
            raise ValueError(
                "Gateway startup arguments require an explicitly enabled ROS module"
            )
        checked[label]["gateway_arguments"] = gateway_arguments
        boundary = module.get("call_boundary", "same-module")
        if not isinstance(boundary, str) or boundary not in {
            "same-module",
            "module-exports",
        }:
            raise ValueError("call_boundary must be same-module or module-exports")
        if boundary == "module-exports" and not module["ros_enabled"]:
            raise ValueError(
                "Module export delegation requires explicit ROS enablement"
            )
        checked[label]["call_boundary"] = boundary
    features = config.get("runtime_features", [])
    if (
        not isinstance(features, list)
        or any(
            not isinstance(value, str) or value not in FEATURES for value in features
        )
        or len(features) != len(set(features))
    ):
        raise ValueError("runtime_features must list distinct registered Core features")
    if target.startswith("wasm32") and {"memory64", "table64"}.intersection(features):
        raise ValueError("memory64/table64 require an explicit wasm64 target")
    features = list(features)
    if target.startswith("wasm64"):
        # The selected SDK wasm64 Preview 1 closure uses both 64-bit memories
        # and tables. Parser feature selection grants no native host authority.
        for feature in ("memory64", "table64"):
            if feature not in features:
                features.append(feature)
    deadline = config.get("execution_timeout_seconds", 30)
    if type(deadline) is not int or not 1 <= deadline <= 300:
        raise ValueError("Execution timeout must be an integer in 1..300 seconds")
    return {
        "backend": backend,
        "distribution": distribution,
        "target": target,
        "scenario": scenario,
        "main_module": main,
        "artifacts": loaded,
        "preloads": ordered,
        "modules": checked,
        "features": features,
        "arguments": arguments(selection["arguments"]),
        "deadline": deadline,
    }


def command(plan, runtime_prefix, sockets, uid):
    """@brief Serialize an explicit module plan using the production CLI.

    @details Parser features precede immediate preload loading. Every module has
    an independent Single binding. The platform-bound VM uses LLVM AOT and
    live-checked native unwind; there is no interpreter or instrumentation
    fallback. Global ROS remains disabled; global WASI
    receives no extra permissions. No environment, directory or socket preopens
    are inherited by any module. Guest arguments follow the sole --run operand.
    """
    backend = plan["backend"]
    argv = [
        *runtime_prefix,
        "--runtime-aot",
        "--wasm-set-main-module-name",
        plan["main_module"],
        "--wasip1-global-noinherit-system-environment",
    ]
    argv += ["--wasm-feature-enable-" + feature for feature in plan["features"]]
    for preload in plan["preloads"]:
        label = preload["module"]
        argv += [
            "--wasm-preload-library",
            plan["artifacts"][label]["path"],
            label,
            "--wasm-set-preload-module-attribute",
            label,
            preload["attribute"],
        ]
    for label, module in plan["modules"].items():
        argv += [
            "--wasip1-single-create",
            label,
            "--wasip1-single-enable",
            label,
            "--wasip1-single-noinherit-system-environment",
            label,
            "--" + backend + "-single-create",
            label,
            "--"
            + backend
            + "-single-"
            + ("enable" if module["ros_enabled"] else "disable"),
            label,
        ]
        for permission in module["wasi_grants"]:
            argv += ["--wasip1-single-grant", label, permission]
        if not module["ros_enabled"]:
            continue
        if module["call_boundary"] == "module-exports":
            argv += ["--" + backend + "-single-call-boundary", label, "module-exports"]
        connection = {
            **module["connection"],
            **module["worker_limits"],
            "gateway-socket": sockets[label],
            "gateway-uid": str(uid),
        }
        for key, value in connection.items():
            argv += ["--" + backend + "-single-" + key, label, value]
        for grant in module["grants"]:
            argv += ["--" + backend + "-single-grant", label, *grant["fields"]]
            for key, value in grant["limits"].items():
                argv += [
                    "--" + backend + "-single-set",
                    label,
                    grant["fields"][0],
                    key,
                    value,
                ]
    argv += [
        "--run",
        plan["artifacts"][plan["main_module"]]["path"],
        *plan["arguments"],
    ]
    return argv


def gateway_policy(backend, module, socket, uid, pid):
    """@brief Bind one module's exact authority to the stopped real worker PID.

    @details Independent gateway processes avoid widening one module's policy by
    taking a union of unrelated modules' permissions. Connection overrides let
    deployments give each ROS node its own explicit native identity.
    """
    lines = [
        "backend " + backend,
        f"worker-uid {uid}",
        f"worker-pid {pid}",
        "socket " + socket,
    ]
    lines += [key + " " + value for key, value in module["gateway_limits"].items()]
    lines += [
        f"connection {key} {value}" for key, value in module["connection"].items()
    ]
    for grant in module["grants"]:
        lines.append("grant " + " ".join(grant["fields"]))
        lines += [
            f"set {grant['fields'][0]} {key} {value}"
            for key, value in grant["limits"].items()
        ]
    return "\n".join(lines) + "\n"
