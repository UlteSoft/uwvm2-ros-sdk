"""@file main.py
@brief Observe the entire original ROS 2 LowState through the genuine py guest.
@details The command owns the full result and emits every canonical byte after
explicit cleanup. Process status is primary, cleanup or output status, capped at 125.
"""

import sys
from ros.py.transport import pause_ms
from unitree.py.ros2.observation import wait_low_state, output

# Validate exactly one alias before acquiring any native resource.
if len(sys.argv) != 2:
    exitCode = 22
else:
    # Wait at most 250 polls; only an idle result permits the 20 ms pause.
    result = wait_low_state(sys.argv[1], 250, lambda: pause_ms(20))

    # Output independent operation/cleanup facts after the owner has closed.
    # The embedding reads exitCode as the final conventional process status.
    exitCode = output(result)
