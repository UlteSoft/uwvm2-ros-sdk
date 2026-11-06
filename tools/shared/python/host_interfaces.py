"""Exact host interface contracts for SDK tests and deployment serialization.

Only authorize_test_imports() constructs test API allowances. It is called
explicitly by the Xmake test launchers, never by production run(). It does not
create namespaces, capabilities, resources, quota credit or operation grants.
An explicitly configured hidden/deny/allow state always takes precedence.
"""
from pathlib import Path
import json

REGISTRY = json.loads((Path(__file__).resolve().parent.parent / "host-interfaces.json").read_text())["interfaces"]
INTERFACES = {(row["namespace"], row["function"]): row for row in REGISTRY}
KEYS = {(row["family"], row["key"]) for row in REGISTRY}


def interface_arguments(family, scope, target, interfaces):
    if family not in {"wasip1", "ros1", "ros2"} or scope not in {"single", "group", "global"}:
        raise ValueError("Unknown host interface scope or family")
    if not isinstance(interfaces, dict) or any(not isinstance(key, str) for key in interfaces):
        raise ValueError("Interfaces must be an exact API-to-hidden/deny/allow map")
    argv = []
    for key in sorted(interfaces):
        if (family, key) not in KEYS or not isinstance(interfaces[key], str) or interfaces[key] not in {"hidden", "deny", "allow"}:
            raise ValueError("Unknown host interface or invalid access state: " + str(key))
        argv += ["--" + family + "-" + scope + "-interface"]
        if scope != "global":
            argv.append(target)
        argv += [key, interfaces[key]]
    return argv


def imports(path):
    """Read exact core function imports, with structural bounds from file bytes."""
    data = memoryview(Path(path).read_bytes())
    if bytes(data[:8]) != b"\0asm\1\0\0\0":
        raise ValueError("SDK test requires a compiled core Wasm artifact")
    def number(data, pos, maximum=10):
        value = 0
        for shift in range(maximum):
            if pos >= len(data):
                raise ValueError("Truncated Wasm integer")
            b = data[pos]; pos += 1
            value |= (b & 127) << (shift * 7)
            if b < 128:
                return value, pos
        raise ValueError("Malformed Wasm integer")
    def name(data, pos):
        length, pos = number(data, pos, 5)
        if length > len(data) - pos:
            raise ValueError("Truncated Wasm name")
        return bytes(data[pos:pos+length]).decode("utf-8"), pos+length
    def value_type(data, pos):
        if pos >= len(data):
            raise ValueError("Truncated Wasm value type")
        code = data[pos]; pos += 1
        if code in (0x63, 0x64):
            _, pos = number(data, pos, 5)
        return pos
    def limits(data, pos):
        flags, pos = number(data, pos, 5)
        _, pos = number(data, pos)
        if flags & 1:
            _, pos = number(data, pos)
        if flags & 8:
            _, pos = number(data, pos, 5)
        return pos
    pos = 8
    found = False
    result = []
    while pos < len(data):
        kind = data[pos]; pos += 1
        size, pos = number(data, pos, 5)
        if size > len(data) - pos:
            raise ValueError("Truncated Wasm section")
        section = data[pos:pos+size]; pos += size
        if kind != 2:
            continue
        if found:
            raise ValueError("Duplicate Wasm import section")
        found = True
        count, at = number(section, 0, 5)
        for _ in range(count):
            namespace, at = name(section, at)
            function, at = name(section, at)
            if at >= len(section):
                raise ValueError("Truncated Wasm import")
            category = section[at]; at += 1
            if category == 0:
                _, at = number(section, at, 5)
                result.append((namespace, function))
            elif category == 1:
                at = limits(section, value_type(section, at))
            elif category == 2:
                at = limits(section, at)
            elif category == 3:
                at = value_type(section, at) + 1
            elif category == 4:
                _, at = number(section, at, 5)
                _, at = number(section, at, 5)
            else:
                raise ValueError("Unsupported Wasm import kind")
            if at > len(section):
                raise ValueError("Truncated Wasm import type")
        if at != len(section):
            raise ValueError("Trailing Wasm import bytes")
    return sorted(set(result))


def authorize_test_imports(argv):
    """Explicit Xmake test authority: allow the built imports in enabled targets.

    Preserve every explicit API state, including negative test contracts.
    Namespace bindings and lower resource grants remain owned by test config.
    Insertion before --run prevents guest argv from becoming host policy.
    """
    args = list(map(str, argv))
    run = next((i for i, value in enumerate(args) if value in ("--run", "-r")), None)
    if run is None or run + 1 >= len(args):
        raise ValueError("Test command must contain exactly one core Wasm --run operand")
    host = args[:run]
    main = "main"; preloads = {}; bindings = {}; enabled = set(); configured = set()
    i = 0
    while i < len(host):
        value = host[i]
        if value in ("--wasm-set-main-module-name", "-Wname"):
            main = host[i+1]; i += 2; continue
        if value in ("--wasm-preload-library", "-Wpre"):
            preloads[host[i+2]] = host[i+1]; i += 3; continue
        if value.startswith("--"):
            parts = value[2:].split("-", 2)
            if len(parts) == 3 and parts[0] in {"wasip1", "ros1", "ros2"} and parts[1] in {"single", "group", "global"}:
                family, scope, action = parts
                target = "" if scope == "global" else host[i+1]
                start = i+1 if scope == "global" else i+2
                identity = (family, scope, target)
                if action in ("enable", "disable"):
                    if action == "enable": enabled.add(identity)
                    else: enabled.discard(identity)
                    i = start; continue
                if action == "create" and scope == "single":
                    bindings[(family, target)] = identity
                    i = start; continue
                if action == "add-module":
                    bindings[(family, host[start])] = identity
                    i = start+1; continue
                if action == "interface":
                    configured.add((*identity, host[start]))
                    i = start+2; continue
        i += 1
    if main in preloads:
        raise ValueError("Duplicate main/preload test module")
    modules = {main: args[run+1], **preloads}
    additions = []
    for module, path in modules.items():
        for namespace, function in imports(path):
            entry = INTERFACES.get((namespace, function))
            if entry is None:
                continue  # User imports and unknown APIs remain the VM validator's responsibility.
            family, key = entry["family"], entry["key"]
            identity = bindings.get((family, module))
            if identity is None or identity not in enabled or (*identity, key) in configured:
                continue
            additions += interface_arguments(family, identity[1], identity[2], {key: "allow"})
            configured.add((*identity, key))
    return host + additions + args[run:]


if __name__ == "__main__":
    import sys
    if len(sys.argv) != 2 or sys.argv[1] != "--test-command-json":
        raise SystemExit("Expected --test-command-json with a JSON argv array on stdin")
    print(json.dumps(authorize_test_imports(json.load(sys.stdin))))
