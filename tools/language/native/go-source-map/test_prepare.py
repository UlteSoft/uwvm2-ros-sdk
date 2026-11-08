#!/usr/bin/env python3
"""Boundary tests for the offline Go overlay cache; no tool downloads/builds."""
import importlib.util
import os
from pathlib import Path
import tempfile
import unittest

spec = importlib.util.spec_from_file_location("go_source_prepare", Path(__file__).with_name("prepare.py"))
prepare = importlib.util.module_from_spec(spec)
spec.loader.exec_module(prepare)


class Boundaries(unittest.TestCase):
    def test_relative_overlay_paths(self):
        self.assertEqual(prepare.checked_relative("cmd/link/internal/wasm/source_map.go"),
                         Path("cmd/link/internal/wasm/source_map.go"))
        for value in ("", "/etc/passwd", "../outside", "cmd/../outside", "cmd//file", "cmd/./file"):
            with self.subTest(value=value), self.assertRaises(ValueError):
                prepare.checked_relative(value)

    def test_private_cache_admission(self):
        with tempfile.TemporaryDirectory() as directory:
            cache = Path(directory) / "cache"
            prepare.private_directory(cache)
            self.assertEqual(cache.stat().st_uid, os.getuid())
            self.assertEqual(cache.stat().st_mode & 0o077, 0)
            prepare.private_directory(cache)
            cache.chmod(0o770)
            with self.assertRaises(ValueError):
                prepare.private_directory(cache)

    def test_symlink_cache_rejected_without_modification(self):
        with tempfile.TemporaryDirectory() as directory:
            outside = Path(directory) / "outside"
            outside.mkdir()
            marker = outside / "marker"
            marker.write_text("unchanged")
            cache = Path(directory) / "cache"
            cache.symlink_to(outside, target_is_directory=True)
            with self.assertRaises(ValueError):
                prepare.private_directory(cache)
            self.assertEqual(marker.read_text(), "unchanged")
            self.assertEqual(list(outside.iterdir()), [marker])


if __name__ == "__main__":
    unittest.main()
