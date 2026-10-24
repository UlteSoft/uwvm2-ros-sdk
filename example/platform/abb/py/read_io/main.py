"""@file main.py
@brief Execute one complete ABB read_io observation using genuine CPython.
@details Public namespace imports resolve inside the single packaged Wasm.
The trusted deployment supplies the alias; no controller write is performed.
"""

import sys
from abb.py import observation

if len(sys.argv) != 3:
    exitCode = 22
else:
    exitCode = observation.output(observation.read_io(sys.argv[1], sys.argv[2]))
