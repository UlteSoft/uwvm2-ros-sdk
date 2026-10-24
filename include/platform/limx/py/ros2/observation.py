"""@brief Observe full source-pinned limx records.
@details One owner, finite idle polling and separate primary/cleanup facts.
The alias must already be explicitly granted and independently type-bound.
"""
from uwvm.py.observation import receive, output
from limx.py.ros2 import records

def wait_imu(alias, attempts, pause):
    """@brief Observe all fields of uwvm_limx_bridge/msg/ImuData.
    @param alias Existing exact native policy alias.
    @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
    @return Whole value with independent operation/close results.
    """
    return receive(alias, records.Ros2Uwvm_limx_bridgeMsgImuData, attempts, pause)


def wait_joint_state(alias, attempts, pause):
    """@brief Observe all fields of uwvm_limx_bridge/msg/JointState.
    @param alias Existing exact native policy alias.
    @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
    @return Whole value with independent operation/close results.
    """
    return receive(alias, records.Ros2Uwvm_limx_bridgeMsgJointState, attempts, pause)


def wait_joint_command(alias, attempts, pause):
    """@brief Observe all fields of uwvm_limx_bridge/msg/JointCmdLimx.
    @param alias Existing exact native policy alias.
    @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
    @return Whole value with independent operation/close results.
    """
    return receive(alias, records.Ros2Uwvm_limx_bridgeMsgJointCmdLimx, attempts, pause)


