"""Finite counter/reader contract tests; never ROS or public refusal evidence."""
from pathlib import Path
import copy
import sys
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from case_accounting import CaseAccounting, EXECUTION_FORMAT, simulation_cases_pass

WASM = "1" * 64


def execution():
    return {"format": EXECUTION_FORMAT, "pid": 123, "birth": "789",
            "executable_sha256": "2" * 64, "module_sha256": WASM,
            "stdout_sha256": "3" * 64, "actual_exec_receipt_sha256": "4" * 64,
            "module_instance": 1, "runtime_generation": 2,
            "permission_session": 3, "call_sequence": 1,
            "actor_started_ns": 10, "actor_finished_ns": 30, "monotonic_ns": 20}


def cases():
    return [{"id": "denied", "kind": "denied"},
            {"id": "joint", "kind": "joint"}]


def full_report():
    ledger = CaseAccounting(cases())
    for name in ("denied", "joint"):
        ledger.attempt(name)
        ledger.execution(name, execution())
        ledger.passed(name, {"actual_case_assertions_verified": True})
    return {"format": "uwvm-sdk-simulation-result-v1", "status": "PASS",
            "declared_order": ["denied", "joint"],
            "wasm_sha256_before": WASM, "wasm_sha256_after": WASM,
            **ledger.snapshot()}


class AccountingContracts(unittest.TestCase):
    def test_precondition_failure_is_zero_execution(self):
        ledger = CaseAccounting(cases())
        ledger.stop(None, False, "Missing actual admission")
        value = ledger.snapshot()
        self.assertEqual((value["attempted"], value["executed"],
                          value["blocked"], value["not_executed"]), (0, 0, 2, 2))

    def test_driver_entry_is_not_execution(self):
        ledger = CaseAccounting(cases())
        ledger.attempt("denied")
        ledger.stop("denied", True, "Driver failed before guest launch")
        value = ledger.snapshot(1)
        self.assertEqual((value["attempted"], value["executed"],
                          value["failed"], value["blocked"], value["not_run"]),
                         (1, 0, 0, 1, 1))

    def test_actual_execution_remains_counted_on_later_failure(self):
        ledger = CaseAccounting(cases())
        ledger.attempt("denied")
        ledger.execution("denied", execution())
        ledger.stop("denied", True, "Actual guest exit or assertions failed")
        value = ledger.snapshot(1)
        self.assertEqual((value["executed"], value["failed"], value["not_run"]),
                         (1, 1, 1))

    def test_missing_actual_import_cannot_pass(self):
        ledger = CaseAccounting(cases())
        ledger.attempt("denied")
        with self.assertRaises(ValueError):
            ledger.passed("denied", {"host_claim": True})

    def test_duplicate_different_execution_refused(self):
        ledger = CaseAccounting(cases())
        ledger.attempt("denied")
        ledger.execution("denied", execution())
        ledger.execution("denied", execution())
        other = execution()
        other["pid"] = 124
        with self.assertRaises(ValueError):
            ledger.execution("denied", other)
        self.assertEqual(ledger.snapshot()["executed"], 1)

    def test_zero_required_and_duplicate_cases_refused(self):
        for values in ([], [cases()[0], cases()[0]]):
            with self.subTest(values=values), self.assertRaises(ValueError):
                CaseAccounting(values)

    def test_positive_reader_and_each_inconsistent_count(self):
        report = full_report()
        self.assertTrue(simulation_cases_pass(report))
        for key in ("required", "selected", "attempted", "executed", "passed",
                    "failed", "blocked", "not_run", "not_executed", "suite_failures"):
            bad = copy.deepcopy(report)
            bad[key] += 1
            with self.subTest(key=key):
                self.assertFalse(simulation_cases_pass(bad))

    def test_foreign_or_missing_actor_and_Wasm_evidence_refused(self):
        report = full_report()
        for key, value in (("module_sha256", "5" * 64),
                           ("actual_exec_receipt_sha256", ""),
                           ("module_instance", True), ("monotonic_ns", 31)):
            bad = copy.deepcopy(report)
            bad["cases"][0]["execution_evidence"][key] = value
            with self.subTest(key=key):
                self.assertFalse(simulation_cases_pass(bad))
        old = copy.deepcopy(report)
        del old["accounting_format"]
        self.assertFalse(simulation_cases_pass(old))

    def test_retirement_failure_cannot_be_hidden_by_case_passes(self):
        report = full_report()
        report["suite_failures"] = 1
        self.assertFalse(simulation_cases_pass(report))
        report = full_report()
        report["status"] = "FAIL"
        self.assertFalse(simulation_cases_pass(report))


class SharedContextContracts(unittest.TestCase):
    def context(self, manifest):
        from argparse import Namespace
        from tempfile import TemporaryDirectory
        from simulation_example import Context
        temporary = TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        root = Path(temporary.name)
        wasm = root / "context-only.fixture"
        wasm.write_bytes(b"Finite Context constructor fixture; never executed")
        args = Namespace(sdk_root=str(root), manifest=str(root / "manifest.json"),
                         wasm=str(wasm), output=str(root / "output"))
        return Context(args, manifest)

    def test_genuine_component_context_does_not_require_simulation_scenarios(self):
        context = self.context({
            "format": "uwvm-sdk-wasi-component-v1",
            "cases": [{"id": "component-case"}]})
        self.assertIsNone(context.case_accounting)
        self.assertEqual(context.required_denied_ids, [])
        self.assertEqual(context.actors, [])

    def test_simulation_context_retains_required_case_accounting(self):
        context = self.context({
            "format": "uwvm-sdk-simulation-example-v1",
            "scenarios": cases()})
        value = context.case_accounting.snapshot()
        self.assertEqual((value["required"], value["selected"],
                          value["attempted"], value["executed"]), (2, 2, 0, 0))
        self.assertEqual(context.required_denied_ids, ["denied"])


if __name__ == "__main__":
    unittest.main()
