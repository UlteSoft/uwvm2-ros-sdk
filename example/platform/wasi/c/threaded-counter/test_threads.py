"""Real SDK C/C++ child stacks and exact Host authority, with owned cleanup."""
import argparse,hashlib,importlib.util,json,os,signal,struct
from pathlib import Path
sdk=Path(os.environ["UWVM_ROS_SDK_ROOT"])
spec=importlib.util.spec_from_file_location("wat_thread_runner",sdk/"example/platform/wasi/wat/threaded-counter/test_threads.py")
runner=importlib.util.module_from_spec(spec);spec.loader.exec_module(runner)
run_owned,interrupted=runner.run_owned,runner.interrupted

def main():
    parser = argparse.ArgumentParser()
    for name in ("vm", "wasm_c", "wasm_cpp", "owner", "output"):
        parser.add_argument("--" + name.replace("_", "-"), type=Path, required=True)
    args = parser.parse_args()
    args.vm, args.owner, args.output = (value.resolve() for value in (args.vm, args.owner, args.output))
    args.wasm_c, args.wasm_cpp = args.wasm_c.resolve(), args.wasm_cpp.resolve()
    args.output.mkdir(parents=True, exist_ok=False)
    signal.signal(signal.SIGTERM, interrupted)
    digest = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
    identities = {"wasm_sha256": {"c": digest(args.wasm_c), "cpp": digest(args.wasm_cpp)}, "owner_sha256": digest(args.owner),
        "vm_launcher_sha256": digest(args.vm)}
    rows = []
    report = dict(format="uwvm-sdk-cfamily-thread-stack-v1", scope="wasm32 C/C++ freestanding Guest stack ABI; no libc/TLS/pthread/std::thread/TSan/MTE qualification",
        process_deadline_seconds=45, cases=rows, passed=False, **identities)
    cases = (
        ("namespace-hidden", False, "hidden", False, 127,
            ("Cannot link import 'wasi_snapshot_preview1'.'proc_exit'", "namespace permission is disabled")),
        ("interface-hidden", True, "hidden", False, 127,
            ("Cannot link import 'wasi'.'thread-spawn'", "interface exposure permission is hidden")),
        ("call-denied", True, "deny", True, 77,
            ("wasip1.thread-spawn denied", "interface calls are not allowed", "[host_denied_wasip1.thread-spawn]")),
        ("resource-denied", True, "allow", False, 77,
            ("wasip1.thread-spawn denied", "operation or resource authority was not granted", "[host_denied_wasip1.thread-spawn]")),
        ("two-workers", True, "allow", True, 0, ()))
    for language, wasm, engine in ((language, wasm, engine) for language, wasm in (("c", args.wasm_c), ("cpp", args.wasm_cpp)) for engine in ("int", "aot")):
        for name, namespace, interface, grant, expected, diagnostics in cases:
            command = [str(args.vm), "-R" + engine, "--runtime-compile-threads", "0",
                "--runtime-llvm-jit-cache-path", "disable", "--runtime-llvm-jit-policy", "debug",
                "-WFE-threads", "--wasi-threads", "3", "3", "1048576", "16777216", "67108864", "4194304",
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
            command += ["--wasm-preload-library", str(args.owner), "env", "--run", str(wasm)]
            code, stdout, stderr, timed_out, identity, remaining, cleanup = run_owned(command)
            text = stderr.decode("utf-8", "replace")
            observed = None
            if name == "two-workers" and len(stdout) == 48:
                values = struct.unpack("<12I", stdout)
                first, second, counter, stack0, stack1, main_stack, nested0, nested1, bottom0, top0, bottom1, top1 = values
                observed = dict(guest_wasi_tids=[first,second], shared_counter=counter,
                    worker_stack_addresses=[stack0,stack1], nested_stack_addresses=[nested0,nested1],
                    main_stack_address=main_stack, worker_stack_ranges=[[bottom0,top0],[bottom1,top1]])
                effect = first>0 and second>0 and first!=second and counter==2000 and stack0!=stack1 and not stderr
                effect = effect and bottom0<=stack0<top0 and bottom1<=stack1<top1 and bottom0<=nested0<top0 and bottom1<=nested1<top1
                effect = effect and (top0<=bottom1 or top1<=bottom0) and not(bottom0<=main_stack<top0) and not(bottom1<=main_stack<top1)
            elif name == "two-workers":
                effect = False
            else:
                effect = not stdout and all(fragment in text for fragment in diagnostics)
            row = dict(name=name, language=language, engine=engine, command=command, exit=code, expected_exit=expected,
                timed_out=timed_out, process_identity=identity, process_reaped=True, remaining_process_group=remaining, cleanup=cleanup,
                stdout_hex=stdout.hex(), stderr=text, required_diagnostics=diagnostics, observed=observed,
                passed=not timed_out and code == expected and effect and not remaining and cleanup["complete"])
            rows.append(row)
            report["artifacts_unchanged"] = digest(args.wasm_c) == identities["wasm_sha256"]["c"] and digest(args.wasm_cpp) == identities["wasm_sha256"]["cpp"] and digest(args.owner) == identities["owner_sha256"]
            report["passed"] = len(rows) == 20 and all(item["passed"] for item in rows) and report["artifacts_unchanged"]
            (args.output / "result.json").write_text(json.dumps(report, indent=2) + "\n")
            print(language, engine, name, "PASS" if row["passed"] else "FAIL", observed or "", flush=True)
            if not row["passed"] or not report["artifacts_unchanged"]:
                raise SystemExit("Thread authority case failed; see " + str(args.output / "result.json"))
    if not report["passed"]:
        raise SystemExit("Expected all twenty actual C/C++ stack/authority cases")


if __name__ == "__main__":
    main()
