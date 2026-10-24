# @file main.py
# @brief Standalone universal_robots complete-value codec fixture in its declared source language.
# @details Construct local fixture values, encode and decode the whole original record, and check the returned
# representation. These values are not robot observations; this codec lesson does not open a native ROS role or
# change a deployment grant.
# @see share/platform/universal_robots/domains/universal-robots-ros2-trajectory-complete.ir.json
# @see document/platform/universal_robots/en_US/README.md

"""@brief Exercise the complete ur_dashboard_msgs/srv/AddToLog_Response Python class and strict codec.
@details Constructs local fixture defaults; emits measured bytes, never native state.
"""

from importlib import import_module
import json

records = import_module("universal_robots.py.ros2.universal-robots-ros2-trajectory-complete.bounded_records")
value = records.Ros2Ur_dashboard_msgsSrvAddToLog_Response()
wire = value.encode()
decoded = records.Ros2Ur_dashboard_msgsSrvAddToLog_Response.decode(wire)
if decoded.encode() != wire:
    raise ValueError("complete canonical record changed")
print(
    json.dumps(
        {"type": "ur_dashboard_msgs/srv/AddToLog_Response", "wire_hex": wire.hex(), "bytes": len(wire)}
    )
)
