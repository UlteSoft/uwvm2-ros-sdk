"""Retain every required row and verify fresh original shard evidence.

This reader never executes projects or accepts component coverage as official
simulation. Missing shards, results, raw evidence and applicability stay open.
"""
from pathlib import Path, PurePosixPath
import argparse
import hashlib
import json
from case_accounting import simulation_cases_pass


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def read_json(path):
    if Path(path).stat().st_size > 33554432:
        raise ValueError("JSON report exceeds bounded extent")
    return json.loads(Path(path).read_text())


def retained(root, relative):
    name = PurePosixPath(relative)
    if name.is_absolute() or ".." in name.parts:
        raise ValueError("Non-relative retained artifact")
    target = root.joinpath(*name.parts)
    if not target.resolve().is_relative_to(root.resolve()) or target.is_symlink() or not target.is_file():
        raise ValueError("Missing or foreign retained artifact: " + str(target))
    return target


def verify_result(file, item, expected, errors):
    result = item.get("result", {})
    original = file.parent / ("project-%06d" % item["catalog_index"]) / "result.json"
    verified = bool(item.get("result_sha256"))
    if verified:
        verified = original.is_file() and digest(original) == item["result_sha256"] and read_json(original) == result
    if not verified:
        errors.append("Missing/changed original result: " + item["path"])
    if result.get("format") != "uwvm-sdk-example-project-result-v2":
        verified = False
        errors.append("Missing current isolated configure/build/test result: " + item["path"])
    for phase in ("configure", "build", "test"):
        for log in result.get(phase, {}).get("logs", []):
            try:
                path = retained(original.parent, Path(log["path"]).name)
                if path.stat().st_size != log["bytes"] or digest(path) != log["sha256"]:
                    raise ValueError("Changed original command log")
            except Exception as error:
                verified = False
                errors.append(item["path"] + ": " + str(error))
    suites = result.get("structured_suites", [])
    for suite in suites:
        try:
            report = retained(original.parent, suite["report_path"])
            if digest(report) != suite["report_sha256"] or read_json(report) != suite["report"]:
                raise ValueError("Changed original structured suite")
            if not suite["files"]:
                raise ValueError("Missing structured raw files")
            for raw in suite["files"]:
                path = retained(original.parent, raw["path"])
                if path.stat().st_size != raw["bytes"] or digest(path) != raw["sha256"]:
                    raise ValueError("Changed original structured raw evidence")
        except Exception as error:
            verified = False
            errors.append(item["path"] + ": " + str(error))
    passed = verified and result.get("status") == "PASS" and item.get("supervisor_exit_code") == 0
    for phase in ("configure", "build", "test"):
        command = result.get(phase, {})
        passed = passed and command.get("status") == "PASS" and command.get("executed") is True and command.get("exit_code") == 0
    passed = passed and result.get("test", {}).get("executed_tests", 0) > 0
    if expected.get("structured_guest_cases_required"):
        passed = passed and bool(suites)
        for suite in suites:
            row = suite["report"]
            if row.get("format") == "uwvm-sdk-simulation-result-v1":
                passed = passed and simulation_cases_pass(row)
            passed = (passed and row.get("status") == "PASS" and row.get("selected", 0) > 0
                      and row.get("executed") == row.get("selected") == row.get("passed")
                      and all(row.get(k) == 0 for k in ("failed", "blocked", "skipped"))
                      and row.get("wasm_sha256_before") == row.get("wasm_sha256_after"))
    return bool(passed), result


def main():
    parser = argparse.ArgumentParser()
    for name in ("catalog", "required-simulations", "input", "output"):
        parser.add_argument("--" + name, required=True)
    args = parser.parse_args()
    catalog, registry = read_json(args.catalog), read_json(args.required_simulations)
    expected = catalog["entries"]
    report = {"format": "uwvm-sdk-linux-example-aggregate-v1", "status": "BLOCKED", "catalog_sha256": digest(args.catalog),
              "expected_projects": len(expected), "shards": [], "errors": [], "projects": [],
              "required_simulations_sha256": digest(args.required_simulations),
              "simulation_inventory_discovery_complete": registry.get("inventory_discovery_complete") is True,
              "full_sdk_or_simulation_acceptance": False}
    if (registry.get("format") != "uwvm-sdk-required-simulations-v1"
        or catalog.get("required_simulations", {}).get("sha256") != report["required_simulations_sha256"]):
        report["errors"].append("Different required official simulation inventory")
    seen, shards, counts, results = {}, set(), set(), {}
    for file in sorted(Path(args.input).rglob("shard.json")):
        try:
            row = read_json(file)
            index, count = row["shard_index"], row["shard_count"]
            if not isinstance(index, int) or not isinstance(count, int) or not 1 <= index <= count <= 128:
                raise ValueError("Invalid deterministic shard")
            counts.add(count)
            if row.get("group") or row.get("coverage_scope") != "FULL_FROZEN_PUBLIC_CATALOG":
                report["errors"].append("A component subset cannot satisfy full SDK coverage: " + str(file))
            if row["catalog_sha256"] != report["catalog_sha256"] or row["total_catalog_projects"] != len(expected):
                report["errors"].append("Different source catalog: " + str(file))
            if index in shards:
                report["errors"].append("Duplicate shard: " + str(index))
            shards.add(index)
            report["shards"].append({"path": str(file), "sha256": digest(file), "index": index, "count": count, "status": row["status"]})
            actual_indices = set()
            for item in row["entries"]:
                i = item["catalog_index"]
                if not isinstance(i, int) or i < 1 or i > len(expected) or item["path"] != expected[i - 1]["path"] or (i - 1) % count + 1 != index:
                    report["errors"].append("Foreign/wrong-shard project: " + str(item.get("path")))
                    continue
                if i in seen:
                    report["errors"].append("Duplicate project: " + item["path"])
                    continue
                seen[i] = item
                actual_indices.add(i)
                passed, result = verify_result(file, item, expected[i - 1], report["errors"])
                results[item["path"]] = (passed, result)
            required = {i for i in range(1, len(expected) + 1) if (i - 1) % count + 1 == index}
            if actual_indices != required:
                report["errors"].append("Missing or excess rows in shard " + str(index))
        except Exception as error:
            report["errors"].append(str(file) + ": " + repr(error))
    for i, entry in enumerate(expected, 1):
        item = seen.get(i)
        passed, result = results.get(entry["path"], (False, {}))
        report["projects"].append({"catalog_index": i, "path": entry["path"],
            "status": "PASS" if passed else "BLOCKED_OR_FAILED" if item else "NOT_RUN",
            "diagnostic": result.get("diagnostic", "Missing required fresh result" if not item else None),
            "configure": result.get("configure", {"status": "NOT_RUN", "executed": False}),
            "build": result.get("build", {"status": "NOT_RUN", "executed": False}),
            "test": result.get("test", {"status": "NOT_RUN", "executed": False, "executed_tests": 0}),
            "guest_cases": result.get("guest_cases")})
    if len(counts) != 1 or not counts or shards != set(range(1, next(iter(counts), 0) + 1)):
        report["errors"].append("Missing, duplicate or incompatible shard set")
    if len(seen) != len(expected):
        report["errors"].append("Public catalog coverage incomplete")
    report["passed"] = sum(row["status"] == "PASS" for row in report["projects"])
    report["build_and_test_status"] = "PASS" if expected and not report["errors"] and report["passed"] == len(expected) else "BLOCKED_OR_FAILED"
    simulations = []
    for required in registry["entries"]:
        passed, result = results.get(required["project"], (False, {}))
        matches = []
        for suite in result.get("structured_suites", []):
            row = suite["report"]
            profile = row.get("profile", {})
            profile = profile.get("id") if isinstance(profile, dict) else profile
            if row.get("format") == "uwvm-sdk-simulation-result-v1" and profile == required["profile"]:
                matches.extend(case for case in row.get("cases", []) if case.get("id") == required["scenario"] and case.get("status") == "PASS")
        qualified = (passed and result.get("full_framework_simulation_qualified") is True and len(matches) == 1)
        simulations.append({**required, "status": "PASS" if qualified else "BLOCKED" if result else "NOT_RUN",
                            "executed": bool(qualified), "component_build_test_passed": passed,
                            "full_framework_simulation_qualified": bool(qualified)})
    report["required_simulations"] = simulations
    report["required_simulation_rows"] = len(simulations)
    report["passed_simulation_rows"] = sum(row["status"] == "PASS" for row in simulations)
    if (report["build_and_test_status"] == "PASS" and simulations and report["simulation_inventory_discovery_complete"]
        and report["passed_simulation_rows"] == len(simulations)):
        report.update(status="PASS", full_sdk_or_simulation_acceptance=True)
    output = Path(args.output)
    output.mkdir(parents=True, exist_ok=False)
    (output / "aggregate.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({k: v for k, v in report.items() if k not in ("projects", "shards", "required_simulations")}))
    return 0 if report["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
