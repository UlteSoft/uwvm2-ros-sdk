"""@file observation.py
@brief Complete original Unitree ROS 2 observations.
@details All original fields are retained; one owner closes on every normal acquired path.
"""

from unitree.py.observation import receive, output
from unitree.py.ros2 import records


def wait_motion_state(alias, attempts, pause):
    """@brief Observe every original SportModeState field.
    @param alias Exact native policy alias. @param attempts Total poll budget 1..250.
    @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
    """
    return receive(alias, records.Ros2Unitree_goMsgSportModeState, attempts, pause)


def wait_low_state(alias, attempts, pause):
    """@brief Observe every original LowState field.
    @param alias Exact native policy alias. @param attempts Total poll budget 1..250.
    @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
    """
    return receive(alias, records.Ros2Unitree_goMsgLowState, attempts, pause)


def wait_wireless_controller(alias, attempts, pause):
    """@brief Observe every original WirelessController field.
    @param alias Exact native policy alias. @param attempts Total poll budget 1..250.
    @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
    """
    return receive(alias, records.Ros2Unitree_goMsgWirelessController, attempts, pause)
