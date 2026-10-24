"""Native/Guest-neutral exact selected Gen3 joint-name source facts."""

GEN3_6DOF = tuple("joint_" + str(index) for index in range(1, 7))
"""@brief Exact selected six-DOF Gen3 ROS controller joint order.
@details Immutable ('joint_1', ..., 'joint_6') identifiers from the pinned
controller configuration. These names do not infer limits or authorize motion.
@see GEN3_7DOF uwvm_mobile_manipulation.kinova.sdk.Gen3Client.submit
"""
GEN3_7DOF = tuple("joint_" + str(index) for index in range(1, 8))
"""@brief Exact selected seven-DOF Gen3 ROS controller joint order.
@details Immutable ('joint_1', ..., 'joint_7') identifiers. Choose this model
explicitly; six- and seven-DOF trajectories cannot be interchanged by truncation.
@see GEN3_6DOF uwvm_mobile_manipulation.kinova.sdk.Gen3Client.submit
"""
