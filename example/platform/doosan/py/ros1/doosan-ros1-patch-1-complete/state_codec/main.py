# @file main.py
# @brief Standalone doosan complete-value codec fixture in its declared source language.
# @details Construct local fixture values, encode and decode the whole original record, and check the returned
# representation. These values are not robot observations; this codec lesson does not open a native ROS role or
# change a deployment grant.
# @see share/platform/doosan/domains/doosan-ros1-patch-1-complete.ir.json
# @see document/platform/doosan/en_US/README.md

"""@brief Exercise the complete dsr_msgs/RobotState Python class and strict codec.
@details Constructs local fixture defaults; emits measured bytes, never native state.
"""

from importlib import import_module
import json

records = import_module("doosan.py.ros1.doosan-ros1-patch-1-complete.bounded_records")
value = records.Ros1Dsr_msgsRobotState()
wire = value.encode()
decoded = records.Ros1Dsr_msgsRobotState.decode(wire)
if decoded.encode() != wire:
    raise ValueError("complete canonical record changed")
print(json.dumps({"type": "dsr_msgs/RobotState", "wire_hex": wire.hex(), "bytes": len(wire)}))
