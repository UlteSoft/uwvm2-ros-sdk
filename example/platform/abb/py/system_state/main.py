"""@file main.py
@brief Execute one complete ABB system_state observation using genuine CPython.
@details Public namespace imports resolve inside the single packaged Wasm.
The trusted deployment supplies the alias; no controller write is performed.
"""

import sys
from abb.py import observation

if len(sys.argv) != 2:
    exitCode = 22
else:
    exitCode = observation.output(observation.system_state(sys.argv[1]))
