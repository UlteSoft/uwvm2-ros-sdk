"""Serialize approved WASIp1 policy; discovery never grants guest authority.

The same empty policy is used for every execution/debug/ROS backend. The
operator enables a namespace, selects each interface state and grants operations independently.
"""
import re

PERMISSIONS = frozenset({
    "stdin.read", "stdout.write", "stderr.write", "stdio.metadata", "stdio.readiness",
    "args", "environ", "proc-exit", "realtime-clock", "monotonic-clock",
    "process-clock", "thread-clock", "random", "proc-raise", "sched-yield", "thread-spawn",
    "realtime-resolution", "monotonic-resolution", "process-resolution", "thread-resolution",
    "realtime-timer", "monotonic-timer", "process-timer", "thread-timer",
})


BUDGETS = frozenset({"random", "stdin", "stdout", "stderr", "realtime", "monotonic",
                     "process", "thread", "poll", "signal", "yield", "filesystem"})
LIMIT_FIELDS = frozenset({"request-bytes", "window-bytes", "window-calls", "total-bytes", "total-calls", "concurrent"})
WAIT_FIELDS = frozenset({"window-bytes", "window-calls", "concurrent"})
UINT64_MAX_TEXT = "18446744073709551615"


def limit_arguments(module, limits):
    """Serialize only explicit quotas/actions, using lossless decimal strings."""
    if not isinstance(module, str) or not re.fullmatch(r"[A-Za-z0-9_][A-Za-z0-9_.-]{0,254}", module):
        raise ValueError("Use the host's exact stable module binding name")
    if not isinstance(limits, dict) or len(limits) > len(BUDGETS) * len(LIMIT_FIELDS) or any(not isinstance(key, str) for key in limits):
        raise ValueError("WASIp1 limits must be an explicit operation/field map")
    argv = []
    for key in sorted(limits):
        if not isinstance(key, str) or key.count(".") != 1:
            raise ValueError("Use an exact WASIp1 budget.field limit")
        budget, field = key.split(".")
        if budget not in BUDGETS or field not in LIMIT_FIELDS:
            raise ValueError("Unknown WASIp1 budget or limit field")
        entry = limits[key]
        if not isinstance(entry, dict) or not {"value", "on_exhausted"}.issubset(entry) or set(entry) - {"value", "on_exhausted", "on_proc_exit"}:
            raise ValueError("Each WASIp1 limit requires value and on_exhausted")
        value, action = entry["value"], entry["on_exhausted"]
        if not isinstance(value, str) or (value != "unlimited" and
                (not re.fullmatch(r"0|[1-9][0-9]{0,19}", value) or
                 len(value) == 20 and value > UINT64_MAX_TEXT)):
            raise ValueError("WASIp1 limit values must be canonical uint64 decimal strings or unlimited")
        if not isinstance(action, str) or action not in {"reject", "wait"} or (action == "wait" and field not in WAIT_FIELDS):
            raise ValueError("WASIp1 wait is only valid for window limits or concurrency")
        exit_action = entry.get("on_proc_exit", "cancel")
        if not isinstance(exit_action, str) or exit_action not in {"cancel", "wait"} or (exit_action == "wait" and field not in WAIT_FIELDS):
            raise ValueError("WASIp1 proc_exit wait is only valid for window limits or concurrency")
        if value in {"unlimited", UINT64_MAX_TEXT}:
            continue
        argv += ["--wasip1-single-limit", module, key, value,
                 "--wasip1-single-limit-action", module, key, action]
        if "on_proc_exit" in entry:
            argv += ["--wasip1-single-limit-exit-action", module, key, exit_action]
    return argv



def wait_exit_arguments(module, actions):
    """Select only the explicitly approved native-wait exit behavior."""
    limit_arguments(module, {})
    if not isinstance(actions, dict) or len(actions) > len(BUDGETS) or any(not isinstance(key, str) for key in actions):
        raise ValueError("WASIp1 wait_exit_actions must be an explicit native-wait map")
    argv = []
    for key in sorted(actions):
        if not key.endswith(".native-wait") or key.removesuffix(".native-wait") not in BUDGETS:
            raise ValueError("Use an exact WASIp1 budget.native-wait key")
        action = actions[key]
        if not isinstance(action, str) or action not in {"cancel", "wait"}:
            raise ValueError("Native-wait proc_exit action must be cancel or wait")
        argv += ["--wasip1-single-limit-exit-action", module, key, action]
    return argv



def filesystem_arguments(module, preopens, rights):
    """Serialize operator-selected directories with independent explicit rights.

    Mounts use the explicitly supplied module masks, zero by default.
    A preopen's optional rights map selects its own pair, with omitted fields
    zero. It does not change any other root. No source/import inspection adds
    authority. Paths are passed as argv operands.
    """
    limit_arguments(module, {})
    if not isinstance(preopens, list) or not isinstance(rights, dict) or set(rights) - {"base", "inheriting"}:
        raise ValueError("Explicit WASIp1 preopens and filesystem_rights are required")
    argv = []
    guests = set()
    for entry in preopens:
        if (not isinstance(entry, dict) or not {"guest", "host"}.issubset(entry)
                or set(entry) - {"guest", "host", "rights"}):
            raise ValueError("Every preopen requires guest/host paths and optional explicit rights")
        guest, host = entry["guest"], entry["host"]
        if any(not isinstance(x, str) or not x.startswith("/") or "\0" in x for x in (guest, host)):
            raise ValueError("Preopen paths must be absolute NUL-free strings")
        # Keep the same public spelling in receipts. The VM independently
        # normalizes and rejects duplicate/overlapping capabilities at startup.
        if guest in guests:
            raise ValueError("Duplicate guest preopen")
        guests.add(guest)
        argv += ["--wasip1-single-mount-dir", module, guest, host]
        if "rights" in entry:
            selected = entry["rights"]
            if not isinstance(selected, dict) or set(selected) - {"base", "inheriting"}:
                raise ValueError("Preopen rights must be an explicit base/inheriting map")
            masks = []
            for key in ("base", "inheriting"):
                value = selected.get(key, "0")
                if (not isinstance(value, str) or not re.fullmatch(r"0|[1-9][0-9]{0,19}", value)
                        or len(value) == 20 and value > UINT64_MAX_TEXT):
                    raise ValueError("Preopen rights require canonical uint64 decimal strings")
                masks.append(value)
            argv += ["--wasip1-single-mount-dir-rights", module, guest, *masks]
    for key in ("base", "inheriting"):
        if key not in rights:
            continue
        value = rights[key]
        if (not isinstance(value, str) or not re.fullmatch(r"0|[1-9][0-9]{0,19}", value)
                or len(value) == 20 and value > UINT64_MAX_TEXT):
            raise ValueError("Filesystem rights require canonical uint64 decimal strings")
        argv += ["--wasip1-single-limit", module, "filesystem." + key + "-rights", value]
    return argv


def environment_arguments(module, environment):
    """Expose only explicit named strings; host environment inheritance stays off."""
    limit_arguments(module, {})
    if not isinstance(environment, dict):
        raise ValueError("Explicit WASIp1 environment must be a string map")
    if any(not isinstance(k, str) or not k or "=" in k or "\0" in k
           or not isinstance(v, str) or "\0" in v for k, v in environment.items()):
        raise ValueError("Environment names and values must be valid NUL-free strings")
    argv = []
    for key in sorted(environment):
        argv += ["--wasip1-single-add-or-replace-environment", module, key, environment[key]]
    return argv


def module_policy(value):
    """Validate a concrete policy, including an explicitly empty policy."""
    if not isinstance(value, dict) or not {"enabled", "grants", "interfaces"}.issubset(value) or set(value) - {"enabled", "grants", "interfaces", "limits", "wait_exit_actions", "preopens", "filesystem_rights", "environment"}:
        raise ValueError("WASIp1 v3 requires enabled, exact interfaces, and operation grants")
    from host_interfaces import interface_arguments
    interface_arguments("wasip1", "single", "main", value["interfaces"])
    if type(value["enabled"]) is not bool:
        raise ValueError("WASIp1 enabled must be Boolean")
    for field in ("grants",):
        items = value[field]
        if not isinstance(items, list) or len(items) > 64 or not all(isinstance(x, str) for x in items):
            raise ValueError("WASIp1 " + field + " must be a bounded string array")
        if len(items) != len(set(items)):
            raise ValueError("Duplicate WASIp1 " + field)
    if not set(value["grants"]).issubset(PERMISSIONS):
        raise ValueError("Unknown or broad WASIp1 grant; list individual operations")
    if not value["enabled"] and any(value.get(k) for k in ("grants", "preopens", "filesystem_rights", "environment")):
        raise ValueError("Disabled WASIp1 cannot grant operations or host objects")
    limit_arguments("main", value.get("limits", {}))
    wait_exit_arguments("main", value.get("wait_exit_actions", {}))
    filesystem_arguments("main", value.get("preopens", []), value.get("filesystem_rights", {}))
    environment_arguments("main", value.get("environment", {}))
    return value


def arguments(policy):
    """Return CLI arguments for one explicitly reviewed, versioned contract.

    Missing policy is empty, not a libc/stdio compatibility profile. We do not
    inspect imports and turn them into grants. Raw explicit runtime arguments
    remain the deployment owner's responsibility.
    """
    if policy is None:
        return []
    if not isinstance(policy, dict) or set(policy) != {"format", "modules"} or policy["format"] != "uwvm-sdk-wasip1-policy-v3":
        raise ValueError("Expected uwvm-sdk-wasip1-policy-v3")
    modules = policy["modules"]
    if not isinstance(modules, dict) or len(modules) > 256:
        raise ValueError("WASIp1 modules must be a bounded map")
    argv = []
    if any(not isinstance(name, str) for name in modules):
        raise ValueError("Use the host's exact stable module binding name")
    for name in sorted(modules):
        value = modules[name]
        if not isinstance(name, str) or not re.fullmatch(r"[A-Za-z0-9_][A-Za-z0-9_.-]{0,254}", name):
            raise ValueError("Use the host's exact stable module binding name")
        module_policy(value)
        argv += ["--wasip1-single-create", name, "--wasip1-single-" + ("enable" if value["enabled"] else "disable"), name,
                 "--wasip1-single-noinherit-system-environment", name]
        from host_interfaces import interface_arguments
        argv += interface_arguments("wasip1", "single", name, value["interfaces"])
        for permission in value["grants"]:
            argv += ["--wasip1-single-grant", name, permission]
        argv += limit_arguments(name, value.get("limits", {}))
        argv += wait_exit_arguments(name, value.get("wait_exit_actions", {}))
        argv += filesystem_arguments(name, value.get("preopens", []), value.get("filesystem_rights", {}))
        argv += environment_arguments(name, value.get("environment", {}))
    return argv


def test_arguments(values, policy=None):
    """Enable the base WASIp1 namespace for every module in a test command.

    Test graphs use exact names, including every preload. Missing policies grant
    namespace visibility only. Operation grants, limits and exit actions remain
    explicit; production arguments() retains zero-default semantics. Raw WASI
    bindings are rejected here to prevent conflicting or shared test authority.
    """
    if not isinstance(values, list) or not all(isinstance(x, str) and "\0" not in x for x in values):
        raise ValueError("Test runtime arguments must be a NUL-free string array")
    result = list(values)
    main, preloads = None, []
    index = 0
    while index < len(values):
        value = values[index]
        if value in {"--run", "-r"} or value.startswith(("--run=", "-r=")):
            raise ValueError("The test launcher appends the sole --run operand")
        if value.startswith(("--wasip1-", "-WASIp1")):
            raise ValueError("Test WASIp1 permissions belong in wasi_policy, not raw runtime arguments")
        if value in {"--wasm-set-main-module-name", "-Wname"}:
            if main is not None or index + 1 >= len(values):
                raise ValueError("A test has exactly one explicit main module name")
            main = values[index + 1]
            index += 2
        elif value in {"--wasm-preload-library", "-Wpre"}:
            if index + 2 >= len(values) or not values[index + 1] or values[index + 1].startswith("-"):
                raise ValueError("Every test preload requires its path and exact module name")
            preloads.append(values[index + 2])
            index += 3
        else:
            index += 1
    if main is None:
        main = "main"
        result += ["--wasm-set-main-module-name", main]
    names = [main, *preloads]
    if len(set(names)) != len(names):
        raise ValueError("Test module names must be distinct")
    # Validate the original document before filling namespace-only defaults.
    arguments(policy)
    configured = {} if policy is None else policy["modules"]
    if set(configured) - set(names):
        raise ValueError("Test WASIp1 policy names a module outside the loaded graph")
    modules = {}
    for name in names:
        value = configured.get(name, {"enabled": True, "interfaces": {}, "grants": []})
        if not value["enabled"]:
            raise ValueError("Every SDK guest test module requires enabled WASIp1; deny operations through grants")
        modules[name] = value
    return result + arguments({"format": "uwvm-sdk-wasip1-policy-v3", "modules": modules})
