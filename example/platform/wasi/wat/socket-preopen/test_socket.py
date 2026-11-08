"""Run the authored Wasm command under exact host socket permissions."""
import argparse
import hashlib
import json
import socket
import subprocess
import sys
import threading
from pathlib import Path

def main():
    parser = argparse.ArgumentParser()
    for option in ("wasm", "vm", "output", "sdk-root"):
        parser.add_argument("--"+option, required=True, type=Path)
    args = parser.parse_args()
    sys.path.insert(0, str(args.sdk_root/"tools/shared/python"))
    from wasi_policy import arguments
    from host_interfaces import imports
    expected = {"sock_send", "sock_recv", "sock_shutdown", "fd_fdstat_get", "fd_fdstat_set_rights", "proc_exit"}
    assert set(imports(args.wasm)) == {("wasi_snapshot_preview1", name) for name in expected}
    args.output.mkdir(parents=True, exist_ok=False)
    cases = []
    for engine in ("int", "aot"):
        for name, enabled, state, rights, code in (
            ("hidden", False, "hidden", [], 127),
            ("denied", True, "deny", ["read", "write", "shutdown"], 76),
            ("zero-rights", True, "allow", [], 76),
            ("write-only", True, "allow", ["write"], 76),
            ("full-explicit", True, "allow", ["read", "write", "shutdown"], 0)):
            received = []
            errors = []
            with socket.socket() as server:
                server.bind(("127.0.0.1", 0))
                server.listen(1)
                server.settimeout(.1)
                stop = threading.Event()
                def peer():
                    try:
                        while not stop.is_set():
                            try: connection, _ = server.accept(); break
                            except TimeoutError: continue
                        else: return
                        with connection:
                            connection.settimeout(4)
                            data = bytearray()
                            while len(data) < 15:
                                part = connection.recv(15-len(data))
                                if not part: break
                                data.extend(part)
                            received.append(bytes(data))
                            if data:
                                try:
                                    connection.sendall(b"socket-response")
                                    connection.shutdown(socket.SHUT_WR)
                                except (ConnectionResetError, BrokenPipeError):
                                    pass
                    except BaseException as error:
                        errors.append(repr(error))
                thread = threading.Thread(target=peer)
                thread.start()
                module = {"enabled": enabled, "interfaces": {}, "grants": []}
                if enabled:
                    module["interfaces"] = {function: state for function in expected}
                    module["interfaces"]["proc_exit"] = "allow"
                    module["grants"] = ["proc-exit"]
                    module["socket_preopens"] = [{"fd": 3, "kind": "tcp-connect",
                        "endpoint": {"address": "127.0.0.1:"+str(server.getsockname()[1])}, "base": rights}]
                policy = {"format": "uwvm-sdk-wasip1-policy-v3", "socket_abi": "standard", "modules": {"main": module}}
                argv = [str(args.vm), "-R"+engine, "--runtime-compile-threads", "0", "--runtime-llvm-jit-policy", "debug",
                        "--wasm-set-main-module-name", "main", *arguments(policy), "--run", str(args.wasm)]
                try: process = subprocess.run(argv, capture_output=True, timeout=15)
                finally: stop.set(); thread.join(5)
            payload = b"".join(received)
            want_payload = b"socket-payload!" if name in ("write-only", "full-explicit") else b""
            row = dict(name=name, engine=engine, command=argv, policy=policy, exit=process.returncode,
                       peer_payload_hex=payload.hex(), stderr=process.stderr.decode(errors="replace"), peer_errors=errors,
                       passed=process.returncode == code and payload == want_payload and not errors and not thread.is_alive())
            cases.append(row)
            report = dict(format="uwvm-sdk-socket-test-v1", wasm_sha256=hashlib.file_digest(args.wasm.open("rb"), "sha256").hexdigest(),
                          vm_launcher_sha256=hashlib.file_digest(args.vm.open("rb"), "sha256").hexdigest(), cases=cases,
                          passed=all(case["passed"] for case in cases))
            (args.output/"result.json").write_text(json.dumps(report, indent=2)+"\n")
            print(engine, name, "PASS" if row["passed"] else "FAIL", flush=True)
            assert row["passed"], row
    assert len(cases) == 10

if __name__ == "__main__":
    main()
