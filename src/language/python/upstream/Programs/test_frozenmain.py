# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
# Script used to test Py_FrozenMain(): see test_embed.test_frozenmain().
# Run "make regen-test-frozenmain" if you modify this test.

import sys
import _testinternalcapi

print("Frozen Hello World")
print("sys.argv", sys.argv)
config = _testinternalcapi.get_configs()['config']
for key in (
    'program_name',
    'executable',
    'use_environment',
    'configure_c_stdio',
    'buffered_stdio',
):
    print(f"config {key}: {config[key]}")
