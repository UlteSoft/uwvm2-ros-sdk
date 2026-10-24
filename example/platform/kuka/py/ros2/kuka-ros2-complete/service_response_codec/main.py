# @file main.py
# @brief Standalone kuka complete-value codec fixture in its declared source language.
# @details Construct local fixture values, encode and decode the whole original record, and check the returned
# representation. These values are not robot observations; this codec lesson does not open a native ROS role or
# change a deployment grant.
# @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
# @see document/platform/kuka/en_US/README.md

"""@brief Exercise the complete lifecycle_msgs/srv/ChangeState_Response Python class and strict codec.
@details Constructs local fixture defaults; emits measured bytes, never native state.
"""

from importlib import import_module
import json

records = import_module("kuka.py.ros2.kuka-ros2-complete.bounded_records")
value = records.Ros2Lifecycle_msgsSrvChangeState_Response()
wire = value.encode()
decoded = records.Ros2Lifecycle_msgsSrvChangeState_Response.decode(wire)
if decoded.encode() != wire:
    raise ValueError("complete canonical record changed")
print(
    json.dumps(
        {"type": "lifecycle_msgs/srv/ChangeState_Response", "wire_hex": wire.hex(), "bytes": len(wire)}
    )
)
