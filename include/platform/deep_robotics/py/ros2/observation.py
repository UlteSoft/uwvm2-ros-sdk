"""@brief Observe full source-pinned deep_robotics records.
@details One owner, finite idle polling and separate primary/cleanup facts.
The alias must already be explicitly granted and independently type-bound.
"""
from uwvm.py.observation import receive, output
from deep_robotics.py.ros2 import records

def wait_imu(alias, attempts, pause):
    """@brief Observe all fields of drdds/msg/ImuDataValue.
    @param alias Existing exact native policy alias.
    @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
    @return Whole value with independent operation/close results.
    """
    return receive(alias, records.Ros2DrddsMsgImuDataValue, attempts, pause)


def wait_joint(alias, attempts, pause):
    """@brief Observe all fields of drdds/msg/JointData.
    @param alias Existing exact native policy alias.
    @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
    @return Whole value with independent operation/close results.
    """
    return receive(alias, records.Ros2DrddsMsgJointData, attempts, pause)


def wait_robot_status(alias, attempts, pause):
    """@brief Observe all fields of drdds/msg/RobotStatus.
    @param alias Existing exact native policy alias.
    @param attempts Total poll bound 1..250. @param pause Caller-owned idle wait.
    @return Whole value with independent operation/close results.
    """
    return receive(alias, records.Ros2DrddsMsgRobotStatus, attempts, pause)


