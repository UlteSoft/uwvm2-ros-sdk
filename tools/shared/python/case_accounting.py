"""Account required simulation cases without treating driver entry as execution.

Only the lifecycle verifier may supply an already verified actual VM import
observation. This module schedules nothing and grants no authority. Component
tests of these counters are not ROS, guest execution, or simulation acceptance.
"""
import copy
import re

FORMAT = "uwvm-sdk-simulation-case-accounting-v2"
EXECUTION_FORMAT = "uwvm-sdk-verified-runtime-import-execution-v1"
HEX64 = re.compile(r"[0-9a-f]{64}")
STATUSES = {"NOT_RUN", "RUNNING", "PASS", "FAIL", "BLOCKED"}
COUNTS = ("required", "selected", "attempted", "executed", "passed", "failed",
          "blocked", "not_run", "not_executed", "suite_failures")


def need(condition, reason):
    if not condition:
        raise ValueError("SIMULATION_ACCOUNTING_" + reason)


def positive(value):
    return type(value) is int and value > 0


def validate_execution(value):
    """Validate accounting shape after the caller verifies original evidence."""
    need(type(value) is dict and value.get("format") == EXECUTION_FORMAT,
         "EXECUTION_SHAPE")
    for key in ("executable_sha256", "module_sha256", "stdout_sha256",
                "actual_exec_receipt_sha256"):
        need(type(value.get(key)) is str and HEX64.fullmatch(value[key]),
             "EXECUTION_SHA256")
    need(type(value.get("birth")) is str and
         re.fullmatch(r"[1-9][0-9]*", value["birth"]), "EXECUTION_BIRTH")
    for key in ("pid", "module_instance", "runtime_generation",
                "permission_session", "call_sequence"):
        need(positive(value.get(key)), "EXECUTION_POSITIVE_INTEGER")
    for key in ("actor_started_ns", "actor_finished_ns", "monotonic_ns"):
        need(type(value.get(key)) is int and value[key] >= 0,
             "EXECUTION_TIME")
    need(value["actor_started_ns"] <= value["monotonic_ns"] <=
         value["actor_finished_ns"], "EXECUTION_INTERVAL")


class CaseAccounting:
    """One selected catalog; outcomes and actual execution are separate facts."""
    def __init__(self, scenarios):
        need(type(scenarios) is list and 0 < len(scenarios) <= 4096,
             "NONEMPTY_REQUIRED_CASES")
        self.order, self.rows = [], {}
        for scenario in scenarios:
            name = scenario.get("id")
            need(type(name) is str and 0 < len(name) <= 256 and
                 "\x00" not in name and name not in self.rows,
                 "UNIQUE_REQUIRED_ID")
            self.order.append(name)
            self.rows[name] = {"id": name, "kind": scenario["kind"],
                "status": "NOT_RUN", "attempted": False, "executed": False}

    def attempt(self, name):
        row = self.rows[name]
        need(not row["attempted"] and row["status"] == "NOT_RUN",
             "SINGLE_DRIVER_ATTEMPT")
        row.update(attempted=True, status="RUNNING")

    def execution(self, name, evidence):
        row = self.rows[name]
        need(row["attempted"] and row["status"] == "RUNNING",
             "EXECUTION_WITHIN_ACTIVE_CASE")
        validate_execution(evidence)
        if row["executed"]:
            need(row["execution_evidence"] == evidence,
                 "DIFFERENT_OR_DUPLICATE_VM_EXECUTION")
            return
        row["executed"] = True
        row["execution_evidence"] = copy.deepcopy(evidence)

    def passed(self, name, witness):
        row = self.rows[name]
        need(row["attempted"] and row["executed"] and
             row["status"] == "RUNNING" and type(witness) is dict and witness,
             "PASS_REQUIRES_VERIFIED_EXECUTION_AND_ASSERTIONS")
        row.update(status="PASS", witness=copy.deepcopy(witness))

    def stop(self, active, failed, diagnostic):
        """A missing precondition blocks an unexecuted case; it did not run."""
        need(type(failed) is bool and type(diagnostic) is str,
             "STOP_ARGUMENTS")
        if active is None:
            for row in self.rows.values():
                if row["status"] in ("NOT_RUN", "RUNNING"):
                    row.update(status="BLOCKED", diagnostic=diagnostic)
            return
        row = self.rows[active]
        need(row["status"] == "RUNNING", "STOP_ACTIVE_CASE")
        row.update(status="FAIL" if failed and row["executed"] else "BLOCKED",
                   diagnostic=diagnostic)

    def snapshot(self, suite_failures=0):
        need(type(suite_failures) is int and suite_failures >= 0,
             "SUITE_FAILURE_COUNT")
        rows = [copy.deepcopy(self.rows[name]) for name in self.order]
        # A report interrupted after driver entry has no terminal case result.
        for row in rows:
            if row["status"] == "RUNNING":
                row.update(status="BLOCKED",
                           diagnostic="Driver did not produce a terminal result")
        executed = sum(row["executed"] for row in rows)
        return {"accounting_format": FORMAT, "required": len(rows),
                "selected": len(rows),
                "attempted": sum(row["attempted"] for row in rows),
                "executed": executed,
                "passed": sum(row["status"] == "PASS" for row in rows),
                "failed": sum(row["status"] == "FAIL" for row in rows),
                "blocked": sum(row["status"] == "BLOCKED" for row in rows),
                "not_run": sum(row["status"] == "NOT_RUN" for row in rows),
                "not_executed": len(rows) - executed,
                "suite_failures": suite_failures, "cases": rows,
                "count_semantics":
                    "PASS/FAIL/BLOCKED/NOT_RUN partition required cases; executed "
                    "requires verified actual VM import evidence; not_executed "
                    "includes blocked cases with no proven guest execution."}


def simulation_cases_pass(report):
    """Refuse zero, partial, old-schema, or internally inconsistent PASS reports."""
    try:
        need(report.get("format") == "uwvm-sdk-simulation-result-v1" and
             report.get("accounting_format") == FORMAT, "CURRENT_REPORT")
        for key in COUNTS:
            need(type(report.get(key)) is int and report[key] >= 0,
                 "REPORT_INTEGER_COUNTS")
        required = report["required"]
        rows = report.get("cases")
        need(required > 0 and type(rows) is list and
             len(rows) == required == report["selected"], "COMPLETE_CASES")
        names = [row["id"] for row in rows]
        need(len(set(names)) == len(names) and
             report.get("declared_order") == names, "DECLARED_CASE_ORDER")
        for row in rows:
            need(row["status"] in STATUSES and
                 type(row["attempted"]) is bool and
                 type(row["executed"]) is bool, "CASE_FIELDS")
            need(not row["executed"] or row["attempted"], "EXECUTION_AFTER_ATTEMPT")
            if row["executed"]:
                validate_execution(row["execution_evidence"])
                need(row["execution_evidence"]["module_sha256"] ==
                     report["wasm_sha256_before"], "CASE_WHOLE_WASM")
            else:
                need("execution_evidence" not in row, "UNEXECUTED_EVIDENCE")
            if row["status"] == "PASS":
                need(row["executed"] and row.get("witness"), "CASE_PASS_EVIDENCE")
        actual = {
            "attempted": sum(row["attempted"] for row in rows),
            "executed": sum(row["executed"] for row in rows),
            "passed": sum(row["status"] == "PASS" for row in rows),
            "failed": sum(row["status"] == "FAIL" for row in rows),
            "blocked": sum(row["status"] == "BLOCKED" for row in rows),
            "not_run": sum(row["status"] == "NOT_RUN" for row in rows),
            "not_executed": sum(not row["executed"] for row in rows)}
        need(all(report[key] == value for key, value in actual.items()),
             "COUNT_CENSUS_MATCH")
        need(report["status"] == "PASS" and
             report["attempted"] == report["executed"] == report["passed"] ==
                 required and
             all(report[key] == 0 for key in
                 ("failed", "blocked", "not_run", "not_executed", "suite_failures")) and
             report["wasm_sha256_before"] == report["wasm_sha256_after"],
             "COMPLETE_NONZERO_PASS")
        return True
    except (KeyError, TypeError, ValueError):
        return False
