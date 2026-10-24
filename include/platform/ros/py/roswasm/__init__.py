"""@brief Export the explicit-capability Python ROS Wasm SDK and local codecs.

@details Importing codecs/events needs no native extension and opens nothing. Construct
Backend(1 or 2) only inside an interpreter with the real built-in ROS bridge.
Use the separately documented rclpy compatibility package for migration; this
package's capability-oriented API does not claim complete rclpy equivalence.
All callbacks run through explicit local dispatch; importing the package starts
no executor and grants no ROS/device/network/debug/update/policy permissions.
@see roswasm.raw.Backend
"""

from .raw import Backend, Result, RosError
from .client import (
    Session,
    Node,
    Publisher,
    Subscription,
    ServiceClient,
    ServiceServer,
    ActionClient,
    Observer,
    Executor,
    Cleanup,
)
from . import codecs, events
from .transforms import (
    TransformStamped,
    TransformCodec,
    TransformBuffer,
    TransformBroadcaster,
)

__all__ = [
    "Backend",
    "Result",
    "RosError",
    "Session",
    "Node",
    "Publisher",
    "Subscription",
    "ServiceClient",
    "ServiceServer",
    "ActionClient",
    "Observer",
    "Executor",
    "Cleanup",
    "codecs",
    "events",
    "TransformStamped",
    "TransformCodec",
    "TransformBuffer",
    "TransformBroadcaster",
]
