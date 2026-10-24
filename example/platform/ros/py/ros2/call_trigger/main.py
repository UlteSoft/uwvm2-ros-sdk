"""@file main.py
@brief Execute complete ros2 call_trigger in the genuine guest CPython engine.
@details Python owns every original field, codec, status and once-only cleanup.
"""

import sys
from ros.py.native_command import run, report

sys.exit(report(run(3, "sample")))
