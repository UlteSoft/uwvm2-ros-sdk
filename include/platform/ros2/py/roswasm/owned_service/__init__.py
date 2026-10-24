# @file __init__.py
# @brief Provide the selected typed SDK binding and ownership boundary for ros2.
# @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
# for the documented operation and propagate status or language errors without treating a refused call as success.

"""Explicit optional retained ROS2 Service API; importing opens no owners."""

from .owned import ServiceDefinition, OwnedClient, OwnedServer, Outcome, Delivery
from .wire import WireError
