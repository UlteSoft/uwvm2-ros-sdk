"""@brief Observe full source-pinned booster records.
@details One owner, finite idle polling and separate primary/cleanup facts.
The alias must already be explicitly granted and independently type-bound.
"""
from uwvm.py.observation import receive, output
from booster.py.ros2 import records

def wait_low_state(alias, attempts, pause):
    """@brief Observe all fields of booster_interface/msg/LowState.
    @param alias Existing exact native policy alias.
    @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
    @return Whole value with independent operation/close results.
    """
    return receive(alias, records.Ros2Booster_interfaceMsgLowState, attempts, pause)


def wait_remote_controller(alias, attempts, pause):
    """@brief Observe all fields of booster_interface/msg/RemoteControllerState.
    @param alias Existing exact native policy alias.
    @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
    @return Whole value with independent operation/close results.
    """
    return receive(alias, records.Ros2Booster_interfaceMsgRemoteControllerState, attempts, pause)


def wait_fall_state(alias, attempts, pause):
    """@brief Observe all fields of booster_interface/msg/FallDownState.
    @param alias Existing exact native policy alias.
    @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
    @return Whole value with independent operation/close results.
    """
    return receive(alias, records.Ros2Booster_interfaceMsgFallDownState, attempts, pause)


