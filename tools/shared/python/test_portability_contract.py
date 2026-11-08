# SPDX-License-Identifier: Apache-2.0
"""Failure-path tests for the published upstream migration source audit."""
from pathlib import Path
import hashlib
import json
import shutil
import tempfile
import unittest
from portability_contract import audit, read_json


class PortabilityAudit(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.sdk = Path(__file__).resolve().parents[3]
        cls.original = cls.sdk / "src/platform/ros2/control_toolbox"

    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory(prefix="uwvm-port-source-")
        self.root = Path(self.temporary.name) / "component"
        shutil.copytree(self.original, self.root)

    def tearDown(self):
        self.temporary.cleanup()

    def update_source_pin(self, filename):
        path = self.root / "source.json"
        source = json.loads(path.read_text())
        source["files"][filename] = hashlib.sha256((self.root / filename).read_bytes()).hexdigest()
        path.write_text(json.dumps(source))

    def test_retained_original_components(self):
        for name in ("control_toolbox", "joint_trajectory"):
            report = audit(self.sdk / "src/platform/ros2" / name)
            self.assertEqual(report["status"], "SOURCE_IDENTITY_VERIFIED")
            self.assertEqual(report["migrated_package_count"], 0)
            self.assertFalse(report["runtime_execution_checked"])

    def test_changed_algorithm_with_refreshed_file_pin_needs_complete_patch(self):
        name = "pid.cpp"
        with (self.root / name).open("a") as stream:
            stream.write("\n// A source change omitted from the recorded patch.\n")
        self.update_source_pin(name)
        with self.assertRaisesRegex(ValueError, "published patch"):
            audit(self.root)

    def test_replaced_upstream_cannot_be_authorized_by_local_file_pin(self):
        name = "upstream/pid.cpp"
        with (self.root / name).open("a") as stream:
            stream.write("\n// Not the pinned upstream source.\n")
        self.update_source_pin(name)
        with self.assertRaisesRegex(ValueError, "differs from upstream"):
            audit(self.root)

    def test_added_unrecorded_source(self):
        (self.root / "hidden_native_bridge.cpp").write_text("void hidden_bridge();\n")
        with self.assertRaisesRegex(ValueError, "added or omitted"):
            audit(self.root)

    def test_removed_scope_cannot_claim_a_whole_package(self):
        path = self.root / "portability.json"
        contract = json.loads(path.read_text())
        contract["package_migration_claimed"] = True
        path.write_text(json.dumps(contract))
        self.update_source_pin("portability.json")
        with self.assertRaisesRegex(ValueError, "complete package"):
            audit(self.root)

    def test_component_path_cannot_escape_to_another_manifest(self):
        path = self.root / "portability.json"
        contract = json.loads(path.read_text())
        contract["source_manifest"] = "../source.json"
        path.write_text(json.dumps(contract))
        with self.assertRaisesRegex(ValueError, "component-relative"):
            audit(self.root)

    def test_ambiguous_json_scope_is_rejected(self):
        path = self.root / "duplicate.json"
        path.write_text('{"package_migration_claimed":false,"package_migration_claimed":true}')
        with self.assertRaisesRegex(ValueError, "Duplicate contract key"):
            read_json(path)


if __name__ == "__main__":
    unittest.main()
