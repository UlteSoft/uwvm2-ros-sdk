"""Execute required guest component cases in the explicitly pinned installed VM.

Native lifecycle supervision only. No ROS clients, simulator substitutions,
application evaluation, historical receipts or synthesized VM admissions.
"""
from pathlib import Path
import argparse
import hashlib
import json
import os
import re
import sys
import time
from example_process import execution_guard
from simulation_example import Context


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def read_json(path):
    with Path(path).open("rb") as stream:
        raw = stream.read(1_048_577)
    if len(raw) > 1048576:
        raise RuntimeError("BLOCKED_COMPONENT_JSON_EXTENT")
    def unique(pairs):
        values = {}
        for key, value in pairs:
            if key in values:
                raise RuntimeError("BLOCKED_DUPLICATE_COMPONENT_JSON_KEY")
            values[key] = value
        return values
    return json.loads(raw, object_pairs_hook=unique,
                      parse_constant=lambda value: (_ for _ in ()).throw(ValueError(value)))


def main():
    parser = argparse.ArgumentParser()
    for option in ("sdk-root", "manifest", "wasm", "output"):
        parser.add_argument("--" + option, required=True)
    args = parser.parse_args()
    sdk, wasm, output = Path(args.sdk_root).resolve(), Path(args.wasm).resolve(), Path(args.output).resolve()
    manifest = read_json(args.manifest)
    cases = manifest.get("cases", [])
    if manifest.get("format") != "uwvm-sdk-wasi-component-v1" or not cases or len(cases) > 64 or len({x["id"] for x in cases}) != len(cases):
        raise RuntimeError("BLOCKED_ZERO_OR_DUPLICATE_COMPONENT_CASES")
    before = digest(wasm)
    report = {"format": "uwvm-sdk-wasi-component-result-v1", "status": "BLOCKED", "id": manifest["id"],
              "selected": len(cases), "attempted": 0, "executed": 0, "passed": 0, "failed": 0, "blocked": 0, "skipped": 0,
              "wasm_sha256_before": before, "cases": [], "simulation_qualified": False,
              "functional_instrumentation_not_performance": True,
              "input_files": [{"path": str(Path(p).resolve()), "sha256": digest(p)} for p in (args.manifest, __file__, wasm)]}
    for case in cases:
        if not isinstance(case.get("id"), str) or not re.fullmatch("[a-z][a-z0-9-]{0,63}", case["id"]):
            raise RuntimeError("BLOCKED_COMPONENT_CASE_ID")
        if not isinstance(case.get("arguments", []), list) or not all(isinstance(x, str) and "\0" not in x for x in case.get("arguments", [])):
            raise RuntimeError("BLOCKED_COMPONENT_ARGUMENT_VECTOR")
    supervisor = None
    try:
        machine, guard = execution_guard()
        report["execution"] = machine
        if guard is None:
            raise RuntimeError("BLOCKED_COMPONENT_REQUIRES_VM_OWNED_LIVE_BOUNDARY_AND_STOPPED_EXEC_GATE")
        supervisor = Context(args, manifest)
        supervisor.admission, supervisor.boundary = guard.admission, guard.boundary
        supervisor.actor_output_limit = 2 * 1024 * 1024
        report["run_id"] = supervisor.run_id
        report["actual_actor_evidence_directory"] = str(supervisor.output)
        for item in manifest.get("public_inputs", []):
            base = sdk if item["scope"] == "sdk" else Path(args.manifest).resolve().parent
            relative = Path(item["path"])
            if relative.is_absolute() or ".." in relative.parts or ".tmp" in relative.parts or digest(base / relative) != item["sha256"]:
                raise RuntimeError("BLOCKED_COMPONENT_PUBLIC_SOURCE_IDENTITY")
        if manifest.get("source_lock"):
            lock = manifest["source_lock"]
            relative = Path(lock["path"])
            if relative.is_absolute() or ".." in relative.parts or ".tmp" in relative.parts:
                raise RuntimeError("BLOCKED_COMPONENT_SOURCE_LOCK_PATH")
            source = sdk / relative
            if digest(source) != lock["sha256"]:
                raise RuntimeError("BLOCKED_UPSTREAM_COMPONENT_SOURCE_LOCK")
            for row in read_json(source)["files"]:
                relative = Path(row["path"])
                if relative.is_absolute() or ".." in relative.parts or ".tmp" in relative.parts:
                    raise RuntimeError("BLOCKED_UPSTREAM_COMPONENT_SOURCE_PATH")
                if digest(sdk / relative) != row["sha256"]:
                    raise RuntimeError("BLOCKED_UPSTREAM_COMPONENT_BYTES")
        selected = os.environ.get("UWVM_ROS_RUNTIME_TEST_DEPLOYMENT")
        if not selected:
            raise RuntimeError("BLOCKED_INSTALLED_VM_RUNTIME_TEST_DEPLOYMENT_V1")
        deployment = read_json(selected)
        if deployment.get("format") != "uwvm-sdk-runtime-test-deployment-v1":
            raise RuntimeError("BLOCKED_VM_RUNTIME_TEST_DEPLOYMENT_FORMAT")
        runtime = deployment["runtime"]
        executable = Path(runtime["executable"])
        if not executable.is_absolute() or not runtime.get("source_identity") or digest(executable) != runtime["sha256"]:
            raise RuntimeError("BLOCKED_PINNED_RUNTIME_IDENTITY")
        runtime_args = deployment["runtime_arguments"]
        if (not isinstance(runtime_args, list) or not all(isinstance(x, str) and "\0" not in x for x in runtime_args)
            or any(x in ("--run", "-r") or x.startswith(("--run=", "-r=")) or "unwind" in x for x in runtime_args)
            or "-Raot" not in runtime_args):
            raise RuntimeError("BLOCKED_EXPLICIT_NATIVE_RUNTIME_ARGUMENTS")
        report["runtime"] = runtime
        report["deployment_sha256"] = digest(selected)
        for case in cases:
            supervisor.guard()
            argv = [str(executable), *runtime_args, "--run", str(wasm), *case.get("arguments", [])]
            entry = {"id": case["id"], "status": "FAIL", "argv": argv, "cwd": str(Path.cwd()),
                     "pwd": os.environ.get("PWD"), "started_monotonic_ns": time.monotonic_ns()}
            report["cases"].append(entry)
            report["attempted"] += 1
            actor = supervisor.spawn("vm", argv, expected_sha256=runtime["sha256"])
            report["executed"] += 1
            code = supervisor.wait(actor, 60)
            streams = []
            for path in (actor["stdout"], actor["stderr"]):
                with path.open("rb") as stream:
                    raw = stream.read(supervisor.actor_output_limit + 1)
                if len(raw) > supervisor.actor_output_limit:
                    raise RuntimeError("BLOCKED_COMPONENT_RAW_STREAM_EXTENT")
                streams.append(raw.decode("utf-8", errors="strict"))
            stdout, stderr = streams
            entry.update(exit_code=code, finished_monotonic_ns=actor["finished_ns"],
                         stdout=str(actor["stdout"]), stderr=str(actor["stderr"]),
                         stdout_sha256=digest(actor["stdout"]), stderr_sha256=digest(actor["stderr"]),
                         actual_vm_observed=True, actual_exec_receipt=actor["actual_exec_receipt"],
                         actual_exec_receipt_sha256=actor["actual_exec_receipt_sha256"],
                         functional_instrumentation_not_performance=True)
            if "[unwind-check] status=ok" not in stderr or "body-fallback=no" not in stderr:
                raise RuntimeError("BLOCKED_REQUIRED_NATIVE_CHECKED_UNWIND_OR_NO_FALLBACK")
            passed = code == case["expected_exit"]
            if "expected_json" in case:
                passed = passed and json.loads(stdout) == case["expected_json"]
            elif "expected_stdout" in case:
                passed = passed and stdout == case["expected_stdout"]
            if "stderr_contains" in case:
                passed = passed and case["stderr_contains"] in stderr
            entry["status"] = "PASS" if passed else "FAIL"
            if not passed:
                raise RuntimeError("Actual guest component assertions failed: " + case["id"])
            report["passed"] += 1
        report["status"] = "PASS"
    except Exception as error:
        report["diagnostic"] = repr(error)
        if "BLOCKED" in str(error):
            report.update(status="BLOCKED", blocked=len(cases) - report["passed"])
        else:
            report.update(status="FAIL", failed=max(1, len(cases) - report["passed"]))
    finally:
        if supervisor is not None:
            try:
                supervisor.retire()
            except Exception as error:
                report.update(status="FAIL", retirement_error=repr(error))
            report["actors"] = supervisor.actor_summary()
            report["retirement"] = getattr(supervisor, "retirement", {"status": "NO_ACTORS_STARTED"})
        else:
            report["actors"] = []
            report["retirement"] = {"status": "NO_ACTORS_STARTED"}
        recorded = {row["id"] for row in report["cases"]}
        for case in cases:
            if case["id"] not in recorded:
                report["cases"].append({"id": case["id"], "status": "NOT_RUN", "required": True})
        report["wasm_sha256_after"] = digest(wasm)
        if report["wasm_sha256_after"] != before:
            report.update(status="FAIL", frozen_wasm_identity_failure=True)
        output.mkdir(parents=True, exist_ok=True)
        (output / "suite.json").write_text(json.dumps(report, indent=2) + "\n")
        print(json.dumps({k: v for k, v in report.items() if k not in ("actors", "cases")}))
    return 0 if report["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
