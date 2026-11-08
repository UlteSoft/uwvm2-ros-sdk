"""Execute SDK-built Wasm workers and distinguish every explicit authority layer."""
import argparse
import ctypes
import hashlib
import json
import os
import signal
import struct
import subprocess
import tempfile
import time
from pathlib import Path


def process_identity(pid):
    try:
        text = (Path("/proc") / str(pid) / "stat").read_text()
        fields = text[text.rfind(")") + 2:].split()
        return {"pid": pid, "state": fields[0], "process_group": int(fields[2]),
            "session": int(fields[3]), "start_ticks": int(fields[19])}
    except (OSError, ValueError):
        return None


def group_members(group):
    if not Path("/proc").is_dir():
        return []
    result = []
    for entry in Path("/proc").iterdir():
        if entry.name.isdigit():
            identity = process_identity(int(entry.name))
            if identity and identity["process_group"] == group:
                result.append(identity)
    return result


def run_owned(command, timeout=45):
    # WNOWAIT keeps the original leader unreaped until its group is empty. Its
    # PID/PGID/SID therefore cannot be recycled while any group kill is possible.
    if not hasattr(os, "WNOWAIT") or not Path("/proc").is_dir():
        raise RuntimeError("Thread lifecycle tests require Linux waitid/procfs")
    if signal.getsignal(signal.SIGCHLD) != signal.SIG_DFL:
        raise RuntimeError("Owned WNOWAIT cleanup requires the default SIGCHLD disposition")
    native = ctypes.CDLL(None, use_errno=True)
    if native.prctl(36, 1, 0, 0, 0) != 0:  # PR_SET_CHILD_SUBREAPER
        raise OSError(ctypes.get_errno(), "Cannot own orphaned launcher children")
    with tempfile.TemporaryFile() as out, tempfile.TemporaryFile() as err:
        creation_mask = signal.pthread_sigmask(signal.SIG_BLOCK, {signal.SIGTERM, signal.SIGINT})
        try:
            process = subprocess.Popen(command, stdout=out, stderr=err, start_new_session=True,
                preexec_fn=lambda: signal.pthread_sigmask(signal.SIG_SETMASK, creation_mask))
        except BaseException:
            signal.pthread_sigmask(signal.SIG_SETMASK, creation_mask)
            raise
        leader = process_identity(process.pid)
        if not leader or leader["process_group"] != process.pid or leader["session"] != process.pid:
            # No group operation is permitted without the original identity.
            try:
                process.wait(timeout=5)
            finally:
                signal.pthread_sigmask(signal.SIG_SETMASK, creation_mask)
            raise RuntimeError("Cannot authenticate the original process session")
        keys = ("pid", "process_group", "session", "start_ticks")
        def original_leader():
            actual = process_identity(process.pid)
            return actual and all(actual[key] == leader[key] for key in keys)
        def members():
            if not original_leader():
                raise RuntimeError("Original leader identity lost before group cleanup")
            rows = group_members(process.pid)
            if any(row["session"] != leader["session"] or row["start_ticks"] < leader["start_ticks"] for row in rows):
                raise RuntimeError("Refusing to signal an unauthenticated process group")
            return rows
        def exited():
            return os.waitid(os.P_PID, process.pid, os.WEXITED | os.WNOHANG | os.WNOWAIT) is not None
        timed_out, interrupted_error = False, None
        try:
            signal.pthread_sigmask(signal.SIG_SETMASK, creation_mask)
            deadline = time.monotonic() + timeout
            while not exited():
                if time.monotonic() >= deadline:
                    timed_out = True
                    break
                time.sleep(0.005)
        except BaseException as error:
            interrupted_error = error
        # Never use communicate(), poll(), wait() or group-wide waitpid before
        # this cleanup: each could reap the leader and release its identity.
        previous_mask = signal.pthread_sigmask(signal.SIG_BLOCK, {signal.SIGTERM, signal.SIGINT})
        try:
            before = members()
            remaining = [row for row in before if row["pid"] != process.pid]
            signalled = timed_out or interrupted_error is not None or bool(remaining)
            if signalled:
                if not original_leader():
                    raise RuntimeError("Leader changed immediately before group signal")
                os.killpg(process.pid, signal.SIGKILL)
            deadline = time.monotonic() + 5
            while True:
                others = [row for row in members() if row["pid"] != process.pid]
                for row in others:
                    try:
                        os.waitpid(row["pid"], os.WNOHANG)
                    except ChildProcessError:
                        pass
                if exited() and not [row for row in members() if row["pid"] != process.pid]:
                    break
                if time.monotonic() >= deadline:
                    raise RuntimeError("Original process group did not physically retire")
                time.sleep(0.005)
            before_reap = process_identity(process.pid)
            cleanup = dict(leader=leader, leader_before_reap=before_reap,
                identity_preserved_until_group_cleanup=bool(original_leader()),
                group_signalled=signalled, original_descendants_before_cleanup=remaining,
                original_descendants_before_leader_reap=[])
            code = process.wait(timeout=5)  # Only now may the leader be reaped.
            cleanup.update(leader_reaped=True, complete=True)
            # No numeric PGID lookup or signal is performed after that reap.
            out.seek(0)
            err.seek(0)
            stdout, stderr = out.read(), err.read()
            if interrupted_error is not None:
                interrupted_error.cleanup = cleanup
                raise interrupted_error
            return code, stdout, stderr, timed_out, leader, remaining, cleanup
        finally:
            signal.pthread_sigmask(signal.SIG_SETMASK, previous_mask)



def interrupted(signum, _frame):
    raise KeyboardInterrupt("Thread test interrupted by signal " + str(signum))


def main():
    parser = argparse.ArgumentParser()
    for name in ("vm", "wasm", "owner", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    args = parser.parse_args()
    args.vm, args.wasm, args.owner, args.output = (value.resolve() for value in
        (args.vm, args.wasm, args.owner, args.output))
    args.output.mkdir(parents=True, exist_ok=False)
    signal.signal(signal.SIGTERM, interrupted)
    digest = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
    identities = {"wasm_sha256": digest(args.wasm), "owner_sha256": digest(args.owner),
        "vm_launcher_sha256": digest(args.vm)}
    rows = []
    report = dict(format="uwvm-sdk-thread-authority-v2", scope="wasm32 WAT Preview1/noeh; no TSan/MTE qualification",
        process_deadline_seconds=45, cases=rows, passed=False, **identities)
    cases = (
        ("namespace-hidden", False, "hidden", False, 127,
            ("Cannot link import 'wasi'.'thread-spawn'", "namespace permission is disabled")),
        ("interface-hidden", True, "hidden", False, 127,
            ("Cannot link import 'wasi'.'thread-spawn'", "interface exposure permission is hidden")),
        ("call-denied", True, "deny", True, 77,
            ("wasip1.thread-spawn denied", "interface calls are not allowed", "[host_denied_wasip1.thread-spawn]")),
        ("resource-denied", True, "allow", False, 77,
            ("wasip1.thread-spawn denied", "operation or resource authority was not granted", "[host_denied_wasip1.thread-spawn]")),
        ("two-workers", True, "allow", True, 0, ()))
    for engine in ("int", "aot"):
        for name, namespace, interface, grant, expected, diagnostics in cases:
            command = [str(args.vm), "-R" + engine, "--runtime-compile-threads", "0",
                "--runtime-llvm-jit-cache-path", "disable", "--runtime-llvm-jit-policy", "debug",
                "-WFE-threads", "--wasi-threads", "3", "3", "1048576", "16777216", "67108864", "131072",
                "--wasm-set-main-module-name", "main", "--wasip1-single-create", "main"]
            if namespace:
                command += ["--wasip1-single-enable", "main",
                    "--wasip1-single-interface", "main", "proc_exit", "allow",
                    "--wasip1-single-grant", "main", "proc-exit",
                    "--wasip1-single-interface", "main", "fd_write", "allow",
                    "--wasip1-single-grant", "main", "stdout.write",
                    "--wasip1-single-interface", "main", "thread-spawn", interface]
                if grant:
                    command += ["--wasip1-single-grant", "main", "thread-spawn"]
            command += ["--wasm-preload-library", str(args.owner), "env", "--run", str(args.wasm)]
            code, stdout, stderr, timed_out, identity, remaining, cleanup = run_owned(command)
            text = stderr.decode("utf-8", "replace")
            observed = None
            if name == "two-workers" and len(stdout) == 12:
                first, second, counter = struct.unpack("<III", stdout)
                observed = dict(guest_wasi_tids=[first, second], shared_counter=counter)
            effect = (observed is not None and all(tid > 0 for tid in observed["guest_wasi_tids"])
                and observed["guest_wasi_tids"][0] != observed["guest_wasi_tids"][1]
                and observed["shared_counter"] == 2000 and not stderr) if name == "two-workers" else (
                    not stdout and all(fragment in text for fragment in diagnostics))
            row = dict(name=name, engine=engine, command=command, exit=code, expected_exit=expected,
                timed_out=timed_out, process_identity=identity, process_reaped=True, remaining_process_group=remaining, cleanup=cleanup,
                stdout_hex=stdout.hex(), stderr=text, required_diagnostics=diagnostics, observed=observed,
                passed=not timed_out and code == expected and effect and not remaining and cleanup["complete"])
            rows.append(row)
            report["artifacts_unchanged"] = digest(args.wasm) == identities["wasm_sha256"] and digest(args.owner) == identities["owner_sha256"]
            report["passed"] = len(rows) == 10 and all(item["passed"] for item in rows) and report["artifacts_unchanged"]
            (args.output / "result.json").write_text(json.dumps(report, indent=2) + "\n")
            print(engine, name, "PASS" if row["passed"] else "FAIL", observed or "", flush=True)
            if not row["passed"] or not report["artifacts_unchanged"]:
                raise SystemExit("Thread authority case failed; see " + str(args.output / "result.json"))
    if not report["passed"]:
        raise SystemExit("Expected all ten actual thread-authority cases")


if __name__ == "__main__":
    main()
