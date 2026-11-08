# SPDX-License-Identifier: Apache-2.0
"""Run the unchanged upstream tests inside the genuine Wasm CPython engine."""
import sys
import unittest
import warnings

# CPython 3.14 diagnoses four original documentation strings. Preserve the
# upstream source and assert these diagnostics instead of silently discarding
# them or changing the library to make the test quiet.
with warnings.catch_warnings(record=True) as source_warnings:
    warnings.simplefilter("always", SyntaxWarning)
    import _angles_upstream_tests

assert len(source_warnings) == 4, "Original source diagnostics changed"
assert [item.lineno for item in source_warnings] == [61, 82, 133, 195]
for item in source_warnings:
    assert item.category is SyntaxWarning
    assert item.filename.endswith("/angles/__init__.py")
    assert str(item.message).startswith('"\\p" is an invalid escape sequence.')

suite = unittest.defaultTestLoader.loadTestsFromModule(_angles_upstream_tests)
assert suite.countTestCases() == 7, "The complete pinned upstream suite changed"
result = unittest.TestResult()
suite.run(result)
for test, failure in result.errors + result.failures:
    sys.stderr.write(str(test) + "\n" + failure + "\n")
assert result.testsRun == 7 and result.wasSuccessful() and not result.skipped
print("angles Python: 7 upstream tests passed; 4 original source warnings checked")
