"""@file models.py
@brief Exact selected Gen3 six/seven-joint source facts.
@details These immutable names perform no I/O and grant no motion authority.
FollowJointTrajectory values use ROS SI units; native Kortex units remain separate.
"""

# @brief Ordered original names for the six-axis Gen3 model.
GEN3_6DOF = tuple("joint_" + str(index) for index in range(1, 7))
# @brief Ordered original names for the seven-axis Gen3 model.
GEN3_7DOF = tuple("joint_" + str(index) for index in range(1, 8))
