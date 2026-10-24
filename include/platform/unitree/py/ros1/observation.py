"""@file observation.py
@brief Complete original Unitree ROS 1 observations.
@details All original fields are retained; one owner closes on every normal acquired path.
"""

from unitree.py.observation import receive, output
from unitree.py.ros1 import records


def wait_motion_state(alias, attempts, pause):
    """@brief Observe every original HighState field.
    @param alias Exact native policy alias. @param attempts Total poll budget 1..250.
    @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
    """
    return receive(alias, records.Ros1Unitree_legged_msgsHighState, attempts, pause)


def wait_low_state(alias, attempts, pause):
    """@brief Observe every original LowState field.
    @param alias Exact native policy alias. @param attempts Total poll budget 1..250.
    @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
    """
    return receive(alias, records.Ros1Unitree_legged_msgsLowState, attempts, pause)


def wait_motor_state(alias, attempts, pause):
    """@brief Observe every original MotorState field.
    @param alias Exact native policy alias. @param attempts Total poll budget 1..250.
    @param pause Caller-controlled idle wait. @return Whole value and independent native facts.
    """
    return receive(alias, records.Ros1Unitree_legged_msgsMotorState, attempts, pause)
