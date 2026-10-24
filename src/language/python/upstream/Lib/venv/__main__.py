# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
import sys
from . import main

rc = 1
try:
    main()
    rc = 0
except Exception as e:
    print('Error:', e, file=sys.stderr)
sys.exit(rc)
