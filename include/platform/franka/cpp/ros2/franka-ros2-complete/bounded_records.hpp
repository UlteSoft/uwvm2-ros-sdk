/** @file Macro-selected C++ full-field bounded records. */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
/** @brief Import complete C declarations with their intentional aggregate zero initialization. */
#if defined(__clang__)
# pragma clang diagnostic push
# pragma clang diagnostic ignored "-Wmissing-braces"
# pragma clang diagnostic ignored "-Wmissing-field-initializers"
#endif
#include <franka/c/ros2/franka-ros2-complete/bounded_records.h>
#if defined(__clang__)
# pragma clang diagnostic pop
#endif

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros2Builtin_interfacesMsgTime.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_valid
     */
    typedef roswasmc_bounded_2_builtin_interfaces_msg_Time Ros2Builtin_interfacesMsgTime;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionErrorRecovery_Goal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal Ros2Franka_msgsActionErrorRecovery_Goal;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionErrorRecovery_Result.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result Ros2Franka_msgsActionErrorRecovery_Result;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionErrorRecovery_Feedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback Ros2Franka_msgsActionErrorRecovery_Feedback;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsMsgGraspEpsilon.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon Ros2Franka_msgsMsgGraspEpsilon;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionGrasp_Goal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_Grasp_Goal Ros2Franka_msgsActionGrasp_Goal;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionGrasp_Result.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Result_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_Grasp_Result Ros2Franka_msgsActionGrasp_Result;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionGrasp_Feedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback Ros2Franka_msgsActionGrasp_Feedback;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionHoming_Goal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Homing_Goal_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_Homing_Goal Ros2Franka_msgsActionHoming_Goal;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionHoming_Result.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Homing_Result_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_Homing_Result Ros2Franka_msgsActionHoming_Result;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionHoming_Feedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_Homing_Feedback Ros2Franka_msgsActionHoming_Feedback;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionMove_Goal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Move_Goal_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_Move_Goal Ros2Franka_msgsActionMove_Goal;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionMove_Result.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Move_Result_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_Move_Result Ros2Franka_msgsActionMove_Result;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionMove_Feedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Move_Feedback_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_Move_Feedback Ros2Franka_msgsActionMove_Feedback;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionPTPMotion_Goal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal Ros2Franka_msgsActionPTPMotion_Goal;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsMsgTargetStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_TargetStatus_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_msg_TargetStatus Ros2Franka_msgsMsgTargetStatus;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionPTPMotion_Result.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result Ros2Franka_msgsActionPTPMotion_Result;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsActionPTPMotion_Feedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback Ros2Franka_msgsActionPTPMotion_Feedback;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgVector3.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Vector3 Ros2Geometry_msgsMsgVector3;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsMsgCollisionIndicators.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators Ros2Franka_msgsMsgCollisionIndicators;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsMsgElbow.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_Elbow_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_msg_Elbow Ros2Franka_msgsMsgElbow;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsMsgErrors.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_Errors_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_msg_Errors Ros2Franka_msgsMsgErrors;
    /**
     * @brief Complete bounded storage for Ros2Std_msgsMsgHeader.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_std_msgs_msg_Header_valid
     */
    typedef roswasmc_bounded_2_std_msgs_msg_Header Ros2Std_msgsMsgHeader;
    /**
     * @brief Complete bounded storage for Ros2Sensor_msgsMsgJointState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_sensor_msgs_msg_JointState_valid
     */
    typedef roswasmc_bounded_2_sensor_msgs_msg_JointState Ros2Sensor_msgsMsgJointState;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgWrench.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Wrench Ros2Geometry_msgsMsgWrench;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgWrenchStamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped Ros2Geometry_msgsMsgWrenchStamped;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgInertia.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Inertia_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Inertia Ros2Geometry_msgsMsgInertia;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgInertiaStamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped Ros2Geometry_msgsMsgInertiaStamped;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgPoint.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Point_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Point Ros2Geometry_msgsMsgPoint;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgQuaternion.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Quaternion Ros2Geometry_msgsMsgQuaternion;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgPose.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Pose Ros2Geometry_msgsMsgPose;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgPoseStamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_PoseStamped Ros2Geometry_msgsMsgPoseStamped;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgTwist.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Twist Ros2Geometry_msgsMsgTwist;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgTwistStamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_TwistStamped Ros2Geometry_msgsMsgTwistStamped;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgAccel.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Accel Ros2Geometry_msgsMsgAccel;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgAccelStamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_AccelStamped Ros2Geometry_msgsMsgAccelStamped;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgVector3Stamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped Ros2Geometry_msgsMsgVector3Stamped;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsMsgFrankaRobotState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState Ros2Franka_msgsMsgFrankaRobotState;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetCartesianStiffness_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request Ros2Franka_msgsSrvSetCartesianStiffness_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetCartesianStiffness_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response Ros2Franka_msgsSrvSetCartesianStiffness_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request Ros2Franka_msgsSrvSetFullCollisionBehavior_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response Ros2Franka_msgsSrvSetFullCollisionBehavior_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetJointStiffness_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request Ros2Franka_msgsSrvSetJointStiffness_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetJointStiffness_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response Ros2Franka_msgsSrvSetJointStiffness_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetLoad_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request Ros2Franka_msgsSrvSetLoad_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetLoad_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response Ros2Franka_msgsSrvSetLoad_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetStiffnessFrame_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request Ros2Franka_msgsSrvSetStiffnessFrame_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetStiffnessFrame_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response Ros2Franka_msgsSrvSetStiffnessFrame_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetTCPFrame_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request Ros2Franka_msgsSrvSetTCPFrame_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_msgsSrvSetTCPFrame_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_valid
     */
    typedef roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response Ros2Franka_msgsSrvSetTCPFrame_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsActionMoveAbsolute_Goal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal Ros2Franka_spine_msgsActionMoveAbsolute_Goal;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsActionMoveAbsolute_Result.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result Ros2Franka_spine_msgsActionMoveAbsolute_Result;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback Ros2Franka_spine_msgsActionMoveAbsolute_Feedback;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsMsgUserLimits.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits Ros2Franka_spine_msgsMsgUserLimits;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsMsgSpineParameters.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters Ros2Franka_spine_msgsMsgSpineParameters;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsMsgSpinePosition.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition Ros2Franka_spine_msgsMsgSpinePosition;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsMsgSpineState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_msg_SpineState Ros2Franka_spine_msgsMsgSpineState;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvFaultReset_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request Ros2Franka_spine_msgsSrvFaultReset_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvFaultReset_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response Ros2Franka_spine_msgsSrvFaultReset_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvGetParameters_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request Ros2Franka_spine_msgsSrvGetParameters_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvGetParameters_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response Ros2Franka_spine_msgsSrvGetParameters_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvGetPosition_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request Ros2Franka_spine_msgsSrvGetPosition_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvGetPosition_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response Ros2Franka_spine_msgsSrvGetPosition_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvGetSpineState_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request Ros2Franka_spine_msgsSrvGetSpineState_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvGetSpineState_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response Ros2Franka_spine_msgsSrvGetSpineState_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvHalt_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request Ros2Franka_spine_msgsSrvHalt_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvHalt_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response Ros2Franka_spine_msgsSrvHalt_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvSwitchOff_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request Ros2Franka_spine_msgsSrvSwitchOff_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvSwitchOff_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response Ros2Franka_spine_msgsSrvSwitchOff_Response;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvSwitchOn_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request Ros2Franka_spine_msgsSrvSwitchOn_Request;
    /**
     * @brief Complete bounded storage for Ros2Franka_spine_msgsSrvSwitchOn_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_valid
     */
    typedef roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response Ros2Franka_spine_msgsSrvSwitchOn_Response;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME 1

    /**
     * @brief ODR-safe wire metadata for Ros2Builtin_interfacesMsgTime.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Builtin_interfacesMsgTime>
     */
    template <class T>
    struct RecordMetadata_Ros2Builtin_interfacesMsgTime
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size
         */
        static size_t const max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Builtin_interfacesMsgTime<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Builtin_interfacesMsgTime<T>::codec_identity =
        "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Builtin_interfacesMsgTime<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Builtin_interfacesMsgTime.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Builtin_interfacesMsgTime> : RecordMetadata_Ros2Builtin_interfacesMsgTime<uwvm_custom::Ros2Builtin_interfacesMsgTime>
    {
        /**
         * @brief Encode all fields of Ros2Builtin_interfacesMsgTime transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_encode
         */
        static bool encode(uwvm_custom::Ros2Builtin_interfacesMsgTime const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Builtin_interfacesMsgTime.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Builtin_interfacesMsgTime& out)
        {
            return !roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_GOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionErrorRecovery_Goal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Goal>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Goal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Goal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Goal<T>::codec_identity =
        "UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Goal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionErrorRecovery_Goal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Goal> :
        RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Goal<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Goal>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionErrorRecovery_Goal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionErrorRecovery_Goal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Goal& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_RESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionErrorRecovery_Result.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Result>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Result
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Result<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Result<T>::codec_identity =
        "UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Result<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionErrorRecovery_Result.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Result> :
        RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Result<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Result>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionErrorRecovery_Result transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionErrorRecovery_Result.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Result& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_ERRORRECOVERY_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionErrorRecovery_Feedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Feedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Feedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Feedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Feedback<T>::codec_identity =
        "UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Feedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionErrorRecovery_Feedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Feedback> :
        RecordMetadata_Ros2Franka_msgsActionErrorRecovery_Feedback<uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Feedback>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionErrorRecovery_Feedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionErrorRecovery_Feedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionErrorRecovery_Feedback& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_ErrorRecovery_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_GRASPEPSILON 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsMsgGraspEpsilon.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsMsgGraspEpsilon>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsMsgGraspEpsilon
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_wire_size
         */
        static size_t const max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsMsgGraspEpsilon<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsMsgGraspEpsilon<T>::codec_identity =
        "UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsMsgGraspEpsilon<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsMsgGraspEpsilon.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsMsgGraspEpsilon> : RecordMetadata_Ros2Franka_msgsMsgGraspEpsilon<uwvm_custom::Ros2Franka_msgsMsgGraspEpsilon>
    {
        /**
         * @brief Construct the declared defaults of Ros2Franka_msgsMsgGraspEpsilon.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_default
         */
        static uwvm_custom::Ros2Franka_msgsMsgGraspEpsilon default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Franka_msgsMsgGraspEpsilon value = uwvm_custom::Ros2Franka_msgsMsgGraspEpsilon();
            (void)roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Franka_msgsMsgGraspEpsilon transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsMsgGraspEpsilon const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsMsgGraspEpsilon.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsMsgGraspEpsilon& out)
        {
            return !roswasmc_bounded_2_franka_msgs_msg_GraspEpsilon_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_GOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionGrasp_Goal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionGrasp_Goal>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionGrasp_Goal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_wire_size
         */
        static size_t const max_wire_bytes = 40;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionGrasp_Goal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionGrasp_Goal<T>::codec_identity =
        "UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionGrasp_Goal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionGrasp_Goal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionGrasp_Goal> : RecordMetadata_Ros2Franka_msgsActionGrasp_Goal<uwvm_custom::Ros2Franka_msgsActionGrasp_Goal>
    {
        /**
         * @brief Construct the declared defaults of Ros2Franka_msgsActionGrasp_Goal.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_default
         */
        static uwvm_custom::Ros2Franka_msgsActionGrasp_Goal default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Franka_msgsActionGrasp_Goal value = uwvm_custom::Ros2Franka_msgsActionGrasp_Goal();
            (void)roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Franka_msgsActionGrasp_Goal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionGrasp_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionGrasp_Goal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionGrasp_Goal& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_Grasp_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_RESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionGrasp_Result.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionGrasp_Result>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionGrasp_Result
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Result_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Result_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionGrasp_Result<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionGrasp_Result<T>::codec_identity =
        "UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionGrasp_Result<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionGrasp_Result.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Result_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionGrasp_Result> :
        RecordMetadata_Ros2Franka_msgsActionGrasp_Result<uwvm_custom::Ros2Franka_msgsActionGrasp_Result>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionGrasp_Result transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Result_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionGrasp_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_Grasp_Result_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_Grasp_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_Grasp_Result_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionGrasp_Result.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Result_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionGrasp_Result& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_Grasp_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_GRASP_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionGrasp_Feedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionGrasp_Feedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionGrasp_Feedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_wire_size
         */
        static size_t const max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionGrasp_Feedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionGrasp_Feedback<T>::codec_identity =
        "UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionGrasp_Feedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionGrasp_Feedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionGrasp_Feedback> :
        RecordMetadata_Ros2Franka_msgsActionGrasp_Feedback<uwvm_custom::Ros2Franka_msgsActionGrasp_Feedback>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionGrasp_Feedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionGrasp_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionGrasp_Feedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionGrasp_Feedback& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_Grasp_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_GOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionHoming_Goal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionHoming_Goal>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionHoming_Goal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_Goal_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_Homing_Goal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionHoming_Goal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionHoming_Goal<T>::codec_identity =
        "UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionHoming_Goal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionHoming_Goal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Homing_Goal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionHoming_Goal> : RecordMetadata_Ros2Franka_msgsActionHoming_Goal<uwvm_custom::Ros2Franka_msgsActionHoming_Goal>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionHoming_Goal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_Goal_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionHoming_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_Homing_Goal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_Homing_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_Homing_Goal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionHoming_Goal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_Goal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionHoming_Goal& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_Homing_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_RESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionHoming_Result.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionHoming_Result>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionHoming_Result
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_Result_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_Homing_Result_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionHoming_Result<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionHoming_Result<T>::codec_identity =
        "UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionHoming_Result<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionHoming_Result.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Homing_Result_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionHoming_Result> :
        RecordMetadata_Ros2Franka_msgsActionHoming_Result<uwvm_custom::Ros2Franka_msgsActionHoming_Result>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionHoming_Result transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_Result_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionHoming_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_Homing_Result_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_Homing_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_Homing_Result_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionHoming_Result.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_Result_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionHoming_Result& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_Homing_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_HOMING_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionHoming_Feedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionHoming_Feedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionHoming_Feedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_wire_size
         */
        static size_t const max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionHoming_Feedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionHoming_Feedback<T>::codec_identity =
        "UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionHoming_Feedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionHoming_Feedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionHoming_Feedback> :
        RecordMetadata_Ros2Franka_msgsActionHoming_Feedback<uwvm_custom::Ros2Franka_msgsActionHoming_Feedback>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionHoming_Feedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionHoming_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionHoming_Feedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionHoming_Feedback& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_Homing_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_GOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionMove_Goal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionMove_Goal>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionMove_Goal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_Goal_wire_size
         */
        static size_t const max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_Move_Goal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionMove_Goal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionMove_Goal<T>::codec_identity =
        "UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionMove_Goal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionMove_Goal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Move_Goal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionMove_Goal> : RecordMetadata_Ros2Franka_msgsActionMove_Goal<uwvm_custom::Ros2Franka_msgsActionMove_Goal>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionMove_Goal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_Goal_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionMove_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_Move_Goal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_Move_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_Move_Goal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionMove_Goal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_Goal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionMove_Goal& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_Move_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_RESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionMove_Result.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionMove_Result>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionMove_Result
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_Result_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_Move_Result_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionMove_Result<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionMove_Result<T>::codec_identity =
        "UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionMove_Result<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionMove_Result.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Move_Result_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionMove_Result> : RecordMetadata_Ros2Franka_msgsActionMove_Result<uwvm_custom::Ros2Franka_msgsActionMove_Result>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionMove_Result transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_Result_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionMove_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_Move_Result_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_Move_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_Move_Result_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionMove_Result.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_Result_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionMove_Result& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_Move_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_MOVE_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionMove_Feedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionMove_Feedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionMove_Feedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_Feedback_wire_size
         */
        static size_t const max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_Move_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionMove_Feedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionMove_Feedback<T>::codec_identity =
        "UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionMove_Feedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionMove_Feedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_Move_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionMove_Feedback> :
        RecordMetadata_Ros2Franka_msgsActionMove_Feedback<uwvm_custom::Ros2Franka_msgsActionMove_Feedback>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionMove_Feedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionMove_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_Move_Feedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_Move_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_Move_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionMove_Feedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_Move_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionMove_Feedback& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_Move_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_GOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionPTPMotion_Goal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Goal>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionPTPMotion_Goal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_wire_size
         */
        static size_t const max_wire_bytes = 128;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionPTPMotion_Goal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionPTPMotion_Goal<T>::codec_identity =
        "UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionPTPMotion_Goal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionPTPMotion_Goal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Goal> :
        RecordMetadata_Ros2Franka_msgsActionPTPMotion_Goal<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Goal>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionPTPMotion_Goal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionPTPMotion_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionPTPMotion_Goal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionPTPMotion_Goal& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_PTPMotion_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_TARGETSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsMsgTargetStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsMsgTargetStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsMsgTargetStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_msg_TargetStatus_wire_size
         */
        static size_t const max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_msg_TargetStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsMsgTargetStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsMsgTargetStatus<T>::codec_identity =
        "UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsMsgTargetStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsMsgTargetStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_TargetStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsMsgTargetStatus> : RecordMetadata_Ros2Franka_msgsMsgTargetStatus<uwvm_custom::Ros2Franka_msgsMsgTargetStatus>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsMsgTargetStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_msg_TargetStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsMsgTargetStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_msg_TargetStatus_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_msg_TargetStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_msg_TargetStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsMsgTargetStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_msg_TargetStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsMsgTargetStatus& out)
        {
            return !roswasmc_bounded_2_franka_msgs_msg_TargetStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_RESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionPTPMotion_Result.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Result>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionPTPMotion_Result
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionPTPMotion_Result<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionPTPMotion_Result<T>::codec_identity =
        "UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionPTPMotion_Result<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionPTPMotion_Result.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Result> :
        RecordMetadata_Ros2Franka_msgsActionPTPMotion_Result<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Result>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionPTPMotion_Result transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionPTPMotion_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionPTPMotion_Result.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionPTPMotion_Result& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_PTPMotion_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_ACTION_PTPMOTION_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsActionPTPMotion_Feedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Feedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsActionPTPMotion_Feedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_wire_size
         */
        static size_t const max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsActionPTPMotion_Feedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsActionPTPMotion_Feedback<T>::codec_identity =
        "UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsActionPTPMotion_Feedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsActionPTPMotion_Feedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Feedback> :
        RecordMetadata_Ros2Franka_msgsActionPTPMotion_Feedback<uwvm_custom::Ros2Franka_msgsActionPTPMotion_Feedback>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsActionPTPMotion_Feedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsActionPTPMotion_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsActionPTPMotion_Feedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsActionPTPMotion_Feedback& out)
        {
            return !roswasmc_bounded_2_franka_msgs_action_PTPMotion_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgVector3.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgVector3>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgVector3
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size
         */
        static size_t const max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgVector3<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgVector3<T>::codec_identity =
        "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgVector3<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgVector3.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgVector3> : RecordMetadata_Ros2Geometry_msgsMsgVector3<uwvm_custom::Ros2Geometry_msgsMsgVector3>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgVector3 transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgVector3 const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgVector3.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgVector3& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_COLLISIONINDICATORS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsMsgCollisionIndicators.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsMsgCollisionIndicators>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsMsgCollisionIndicators
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_wire_size
         */
        static size_t const max_wire_bytes = 208;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsMsgCollisionIndicators<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsMsgCollisionIndicators<T>::codec_identity =
        "UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsMsgCollisionIndicators<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsMsgCollisionIndicators.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsMsgCollisionIndicators> :
        RecordMetadata_Ros2Franka_msgsMsgCollisionIndicators<uwvm_custom::Ros2Franka_msgsMsgCollisionIndicators>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsMsgCollisionIndicators transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsMsgCollisionIndicators const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsMsgCollisionIndicators.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsMsgCollisionIndicators& out)
        {
            return !roswasmc_bounded_2_franka_msgs_msg_CollisionIndicators_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ELBOW 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsMsgElbow.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsMsgElbow>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsMsgElbow
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_msg_Elbow_wire_size
         */
        static size_t const max_wire_bytes = 80;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_msg_Elbow_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsMsgElbow<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsMsgElbow<T>::codec_identity = "UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsMsgElbow<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsMsgElbow.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_Elbow_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsMsgElbow> : RecordMetadata_Ros2Franka_msgsMsgElbow<uwvm_custom::Ros2Franka_msgsMsgElbow>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsMsgElbow transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_msg_Elbow_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsMsgElbow const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_msg_Elbow_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_msg_Elbow_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_msg_Elbow_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsMsgElbow.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_msg_Elbow_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsMsgElbow& out)
        {
            return !roswasmc_bounded_2_franka_msgs_msg_Elbow_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_ERRORS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsMsgErrors.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsMsgErrors>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsMsgErrors
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_msg_Errors_wire_size
         */
        static size_t const max_wire_bytes = 36;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_msg_Errors_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsMsgErrors<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsMsgErrors<T>::codec_identity = "UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsMsgErrors<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsMsgErrors.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_Errors_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsMsgErrors> : RecordMetadata_Ros2Franka_msgsMsgErrors<uwvm_custom::Ros2Franka_msgsMsgErrors>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsMsgErrors transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_msg_Errors_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsMsgErrors const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_msg_Errors_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_msg_Errors_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_msg_Errors_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsMsgErrors.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_msg_Errors_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsMsgErrors& out)
        {
            return !roswasmc_bounded_2_franka_msgs_msg_Errors_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER 1

    /**
     * @brief ODR-safe wire metadata for Ros2Std_msgsMsgHeader.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Std_msgsMsgHeader>
     */
    template <class T>
    struct RecordMetadata_Ros2Std_msgsMsgHeader
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_std_msgs_msg_Header_wire_size
         */
        static size_t const max_wire_bytes = 140;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_std_msgs_msg_Header_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Std_msgsMsgHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Std_msgsMsgHeader<T>::codec_identity = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Std_msgsMsgHeader<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Std_msgsMsgHeader.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_std_msgs_msg_Header_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Std_msgsMsgHeader> : RecordMetadata_Ros2Std_msgsMsgHeader<uwvm_custom::Ros2Std_msgsMsgHeader>
    {
        /**
         * @brief Encode all fields of Ros2Std_msgsMsgHeader transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_std_msgs_msg_Header_encode
         */
        static bool encode(uwvm_custom::Ros2Std_msgsMsgHeader const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_std_msgs_msg_Header_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Std_msgsMsgHeader.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_std_msgs_msg_Header_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Std_msgsMsgHeader& out)
        {
            return !roswasmc_bounded_2_std_msgs_msg_Header_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_JOINTSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Sensor_msgsMsgJointState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Sensor_msgsMsgJointState>
     */
    template <class T>
    struct RecordMetadata_Ros2Sensor_msgsMsgJointState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size
         */
        static size_t const max_wire_bytes = 1248;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_sensor_msgs_msg_JointState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Sensor_msgsMsgJointState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Sensor_msgsMsgJointState<T>::codec_identity =
        "UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Sensor_msgsMsgJointState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Sensor_msgsMsgJointState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_sensor_msgs_msg_JointState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Sensor_msgsMsgJointState> : RecordMetadata_Ros2Sensor_msgsMsgJointState<uwvm_custom::Ros2Sensor_msgsMsgJointState>
    {
        /**
         * @brief Encode all fields of Ros2Sensor_msgsMsgJointState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_sensor_msgs_msg_JointState_encode
         */
        static bool encode(uwvm_custom::Ros2Sensor_msgsMsgJointState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Sensor_msgsMsgJointState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_sensor_msgs_msg_JointState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Sensor_msgsMsgJointState& out)
        {
            return !roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgWrench.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgWrench>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgWrench
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_wire_size
         */
        static size_t const max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgWrench<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgWrench<T>::codec_identity =
        "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgWrench<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgWrench.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgWrench> : RecordMetadata_Ros2Geometry_msgsMsgWrench<uwvm_custom::Ros2Geometry_msgsMsgWrench>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgWrench transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgWrench const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Wrench_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgWrench.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgWrench& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Wrench_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgWrenchStamped.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgWrenchStamped>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size
         */
        static size_t const max_wire_bytes = 188;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped<T>::codec_identity =
        "UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgWrenchStamped.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgWrenchStamped> :
        RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped<uwvm_custom::Ros2Geometry_msgsMsgWrenchStamped>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgWrenchStamped transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgWrenchStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgWrenchStamped.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgWrenchStamped& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIA 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgInertia.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgInertia>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgInertia
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Inertia_wire_size
         */
        static size_t const max_wire_bytes = 80;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Inertia_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgInertia<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgInertia<T>::codec_identity =
        "UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgInertia<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgInertia.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Inertia_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgInertia> : RecordMetadata_Ros2Geometry_msgsMsgInertia<uwvm_custom::Ros2Geometry_msgsMsgInertia>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgInertia transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Inertia_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgInertia const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Inertia_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Inertia_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Inertia_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgInertia.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Inertia_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgInertia& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Inertia_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_INERTIASTAMPED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgInertiaStamped.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgInertiaStamped>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgInertiaStamped
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_wire_size
         */
        static size_t const max_wire_bytes = 220;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgInertiaStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgInertiaStamped<T>::codec_identity =
        "UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgInertiaStamped<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgInertiaStamped.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgInertiaStamped> :
        RecordMetadata_Ros2Geometry_msgsMsgInertiaStamped<uwvm_custom::Ros2Geometry_msgsMsgInertiaStamped>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgInertiaStamped transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgInertiaStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgInertiaStamped.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgInertiaStamped& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_InertiaStamped_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgPoint.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgPoint>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgPoint
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size
         */
        static size_t const max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Point_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgPoint<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgPoint<T>::codec_identity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgPoint<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgPoint.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Point_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgPoint> : RecordMetadata_Ros2Geometry_msgsMsgPoint<uwvm_custom::Ros2Geometry_msgsMsgPoint>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgPoint transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Point_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgPoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Point_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgPoint.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Point_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgPoint& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Point_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgQuaternion.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgQuaternion>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgQuaternion
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size
         */
        static size_t const max_wire_bytes = 32;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgQuaternion<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgQuaternion<T>::codec_identity =
        "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgQuaternion<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgQuaternion.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgQuaternion> : RecordMetadata_Ros2Geometry_msgsMsgQuaternion<uwvm_custom::Ros2Geometry_msgsMsgQuaternion>
    {
        /**
         * @brief Construct the declared defaults of Ros2Geometry_msgsMsgQuaternion.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default
         */
        static uwvm_custom::Ros2Geometry_msgsMsgQuaternion default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Geometry_msgsMsgQuaternion value = uwvm_custom::Ros2Geometry_msgsMsgQuaternion();
            (void)roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgQuaternion transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgQuaternion const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgQuaternion.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgQuaternion& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgPose.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgPose>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgPose
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size
         */
        static size_t const max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgPose<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgPose<T>::codec_identity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgPose<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgPose.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgPose> : RecordMetadata_Ros2Geometry_msgsMsgPose<uwvm_custom::Ros2Geometry_msgsMsgPose>
    {
        /**
         * @brief Construct the declared defaults of Ros2Geometry_msgsMsgPose.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_default
         */
        static uwvm_custom::Ros2Geometry_msgsMsgPose default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Geometry_msgsMsgPose value = uwvm_custom::Ros2Geometry_msgsMsgPose();
            (void)roswasmc_bounded_2_geometry_msgs_msg_Pose_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgPose transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgPose const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgPose.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgPose& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgPoseStamped.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgPoseStamped>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgPoseStamped
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size
         */
        static size_t const max_wire_bytes = 196;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgPoseStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgPoseStamped<T>::codec_identity =
        "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgPoseStamped<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgPoseStamped.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgPoseStamped> : RecordMetadata_Ros2Geometry_msgsMsgPoseStamped<uwvm_custom::Ros2Geometry_msgsMsgPoseStamped>
    {
        /**
         * @brief Construct the declared defaults of Ros2Geometry_msgsMsgPoseStamped.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default
         */
        static uwvm_custom::Ros2Geometry_msgsMsgPoseStamped default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Geometry_msgsMsgPoseStamped value = uwvm_custom::Ros2Geometry_msgsMsgPoseStamped();
            (void)roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgPoseStamped transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgPoseStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgPoseStamped.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgPoseStamped& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgTwist.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgTwist>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgTwist
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size
         */
        static size_t const max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgTwist<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgTwist<T>::codec_identity = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgTwist<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgTwist.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgTwist> : RecordMetadata_Ros2Geometry_msgsMsgTwist<uwvm_custom::Ros2Geometry_msgsMsgTwist>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgTwist transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgTwist const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgTwist.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgTwist& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgTwistStamped.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgTwistStamped>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgTwistStamped
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size
         */
        static size_t const max_wire_bytes = 188;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgTwistStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgTwistStamped<T>::codec_identity =
        "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgTwistStamped<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgTwistStamped.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgTwistStamped> : RecordMetadata_Ros2Geometry_msgsMsgTwistStamped<uwvm_custom::Ros2Geometry_msgsMsgTwistStamped>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgTwistStamped transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgTwistStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgTwistStamped.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgTwistStamped& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgAccel.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgAccel>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgAccel
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_wire_size
         */
        static size_t const max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgAccel<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgAccel<T>::codec_identity = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgAccel<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgAccel.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgAccel> : RecordMetadata_Ros2Geometry_msgsMsgAccel<uwvm_custom::Ros2Geometry_msgsMsgAccel>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgAccel transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgAccel const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Accel_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Accel_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Accel_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgAccel.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgAccel& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Accel_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCELSTAMPED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgAccelStamped.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgAccelStamped>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgAccelStamped
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_wire_size
         */
        static size_t const max_wire_bytes = 188;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgAccelStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgAccelStamped<T>::codec_identity =
        "UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgAccelStamped<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgAccelStamped.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgAccelStamped> : RecordMetadata_Ros2Geometry_msgsMsgAccelStamped<uwvm_custom::Ros2Geometry_msgsMsgAccelStamped>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgAccelStamped transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgAccelStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgAccelStamped.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgAccelStamped& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3STAMPED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgVector3Stamped.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgVector3Stamped>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgVector3Stamped
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_wire_size
         */
        static size_t const max_wire_bytes = 164;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgVector3Stamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgVector3Stamped<T>::codec_identity =
        "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgVector3Stamped<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgVector3Stamped.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgVector3Stamped> :
        RecordMetadata_Ros2Geometry_msgsMsgVector3Stamped<uwvm_custom::Ros2Geometry_msgsMsgVector3Stamped>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgVector3Stamped transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgVector3Stamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgVector3Stamped.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgVector3Stamped& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_MSG_FRANKAROBOTSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsMsgFrankaRobotState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsMsgFrankaRobotState>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsMsgFrankaRobotState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_wire_size
         */
        static size_t const max_wire_bytes = 10169;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsMsgFrankaRobotState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsMsgFrankaRobotState<T>::codec_identity =
        "UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsMsgFrankaRobotState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsMsgFrankaRobotState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsMsgFrankaRobotState> :
        RecordMetadata_Ros2Franka_msgsMsgFrankaRobotState<uwvm_custom::Ros2Franka_msgsMsgFrankaRobotState>
    {
        /**
         * @brief Construct the declared defaults of Ros2Franka_msgsMsgFrankaRobotState.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_default
         */
        static uwvm_custom::Ros2Franka_msgsMsgFrankaRobotState default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Franka_msgsMsgFrankaRobotState value = uwvm_custom::Ros2Franka_msgsMsgFrankaRobotState();
            (void)roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Franka_msgsMsgFrankaRobotState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsMsgFrankaRobotState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsMsgFrankaRobotState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsMsgFrankaRobotState& out)
        {
            return !roswasmc_bounded_2_franka_msgs_msg_FrankaRobotState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetCartesianStiffness_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetCartesianStiffness_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_wire_size
         */
        static size_t const max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetCartesianStiffness_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetCartesianStiffness_Request<T>::codec_identity =
        "UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetCartesianStiffness_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetCartesianStiffness_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Request> :
        RecordMetadata_Ros2Franka_msgsSrvSetCartesianStiffness_Request<uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetCartesianStiffness_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetCartesianStiffness_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Request& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETCARTESIANSTIFFNESS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetCartesianStiffness_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetCartesianStiffness_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetCartesianStiffness_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetCartesianStiffness_Response<T>::codec_identity =
        "UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetCartesianStiffness_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetCartesianStiffness_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Response> :
        RecordMetadata_Ros2Franka_msgsSrvSetCartesianStiffness_Response<uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetCartesianStiffness_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetCartesianStiffness_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetCartesianStiffness_Response& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetCartesianStiffness_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_wire_size
         */
        static size_t const max_wire_bytes = 208;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request<T>::codec_identity =
        "UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for
     * Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request> :
        RecordMetadata_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request<uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
         * transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into
         * Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFORCETORQUECOLLISIONBEHAVIOR_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response<T>::codec_identity =
        "UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for
     * Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response> :
        RecordMetadata_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response<uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
         * transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_encode(&value,
                                                                                                  ::roswasmcpp::buffer_data(next),
                                                                                                  next.size(),
                                                                                                  &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into
         * Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetForceTorqueCollisionBehavior_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_wire_size
         */
        static size_t const max_wire_bytes = 416;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request<T>::codec_identity =
        "UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Request> :
        RecordMetadata_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request<uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetFullCollisionBehavior_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Request& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETFULLCOLLISIONBEHAVIOR_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response<T>::codec_identity =
        "UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Response> :
        RecordMetadata_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response<uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetFullCollisionBehavior_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetFullCollisionBehavior_Response& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetFullCollisionBehavior_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetJointStiffness_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetJointStiffness_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_wire_size
         */
        static size_t const max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetJointStiffness_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetJointStiffness_Request<T>::codec_identity =
        "UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetJointStiffness_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetJointStiffness_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Request> :
        RecordMetadata_Ros2Franka_msgsSrvSetJointStiffness_Request<uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetJointStiffness_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetJointStiffness_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Request& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETJOINTSTIFFNESS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetJointStiffness_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetJointStiffness_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetJointStiffness_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetJointStiffness_Response<T>::codec_identity =
        "UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetJointStiffness_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetJointStiffness_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Response> :
        RecordMetadata_Ros2Franka_msgsSrvSetJointStiffness_Response<uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetJointStiffness_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetJointStiffness_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetJointStiffness_Response& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetJointStiffness_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetLoad_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetLoad_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetLoad_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_wire_size
         */
        static size_t const max_wire_bytes = 104;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetLoad_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetLoad_Request<T>::codec_identity =
        "UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetLoad_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetLoad_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetLoad_Request> :
        RecordMetadata_Ros2Franka_msgsSrvSetLoad_Request<uwvm_custom::Ros2Franka_msgsSrvSetLoad_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetLoad_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetLoad_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetLoad_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetLoad_Request& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetLoad_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETLOAD_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetLoad_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetLoad_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetLoad_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetLoad_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetLoad_Response<T>::codec_identity =
        "UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetLoad_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetLoad_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetLoad_Response> :
        RecordMetadata_Ros2Franka_msgsSrvSetLoad_Response<uwvm_custom::Ros2Franka_msgsSrvSetLoad_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetLoad_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetLoad_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetLoad_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetLoad_Response& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetLoad_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetStiffnessFrame_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetStiffnessFrame_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_wire_size
         */
        static size_t const max_wire_bytes = 128;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetStiffnessFrame_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetStiffnessFrame_Request<T>::codec_identity =
        "UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetStiffnessFrame_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetStiffnessFrame_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Request> :
        RecordMetadata_Ros2Franka_msgsSrvSetStiffnessFrame_Request<uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetStiffnessFrame_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetStiffnessFrame_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Request& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETSTIFFNESSFRAME_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetStiffnessFrame_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetStiffnessFrame_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetStiffnessFrame_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetStiffnessFrame_Response<T>::codec_identity =
        "UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetStiffnessFrame_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetStiffnessFrame_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Response> :
        RecordMetadata_Ros2Franka_msgsSrvSetStiffnessFrame_Response<uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetStiffnessFrame_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetStiffnessFrame_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetStiffnessFrame_Response& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetStiffnessFrame_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetTCPFrame_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetTCPFrame_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_wire_size
         */
        static size_t const max_wire_bytes = 128;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetTCPFrame_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetTCPFrame_Request<T>::codec_identity =
        "UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetTCPFrame_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetTCPFrame_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Request> :
        RecordMetadata_Ros2Franka_msgsSrvSetTCPFrame_Request<uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetTCPFrame_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetTCPFrame_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Request& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_MSGS_SRV_SETTCPFRAME_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_msgsSrvSetTCPFrame_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_msgsSrvSetTCPFrame_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_msgsSrvSetTCPFrame_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_msgsSrvSetTCPFrame_Response<T>::codec_identity =
        "UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_msgsSrvSetTCPFrame_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_msgsSrvSetTCPFrame_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Response> :
        RecordMetadata_Ros2Franka_msgsSrvSetTCPFrame_Response<uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_msgsSrvSetTCPFrame_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_msgsSrvSetTCPFrame_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_msgsSrvSetTCPFrame_Response& out)
        {
            return !roswasmc_bounded_2_franka_msgs_srv_SetTCPFrame_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_GOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsActionMoveAbsolute_Goal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Goal>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Goal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_wire_size
         */
        static size_t const max_wire_bytes = 32;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Goal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Goal<T>::codec_identity =
        "UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Goal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsActionMoveAbsolute_Goal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Goal> :
        RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Goal<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Goal>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsActionMoveAbsolute_Goal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsActionMoveAbsolute_Goal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Goal& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_RESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsActionMoveAbsolute_Result.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Result>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Result
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_wire_size
         */
        static size_t const max_wire_bytes = 521;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Result<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Result<T>::codec_identity =
        "UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Result<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsActionMoveAbsolute_Result.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Result> :
        RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Result<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Result>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsActionMoveAbsolute_Result transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsActionMoveAbsolute_Result.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Result& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_ACTION_MOVEABSOLUTE_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Feedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_wire_size
         */
        static size_t const max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback<T>::codec_identity =
        "UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Feedback> :
        RecordMetadata_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback<uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Feedback>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsActionMoveAbsolute_Feedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsActionMoveAbsolute_Feedback& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_action_MoveAbsolute_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_USERLIMITS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsMsgUserLimits.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsMsgUserLimits>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsMsgUserLimits
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_wire_size
         */
        static size_t const max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsMsgUserLimits<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsMsgUserLimits<T>::codec_identity =
        "UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsMsgUserLimits<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsMsgUserLimits.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsMsgUserLimits> :
        RecordMetadata_Ros2Franka_spine_msgsMsgUserLimits<uwvm_custom::Ros2Franka_spine_msgsMsgUserLimits>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsMsgUserLimits transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsMsgUserLimits const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsMsgUserLimits.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsMsgUserLimits& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_msg_UserLimits_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPARAMETERS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsMsgSpineParameters.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsMsgSpineParameters>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsMsgSpineParameters
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_wire_size
         */
        static size_t const max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsMsgSpineParameters<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsMsgSpineParameters<T>::codec_identity =
        "UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsMsgSpineParameters<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsMsgSpineParameters.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsMsgSpineParameters> :
        RecordMetadata_Ros2Franka_spine_msgsMsgSpineParameters<uwvm_custom::Ros2Franka_spine_msgsMsgSpineParameters>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsMsgSpineParameters transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsMsgSpineParameters const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsMsgSpineParameters.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsMsgSpineParameters& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_msg_SpineParameters_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINEPOSITION 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsMsgSpinePosition.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsMsgSpinePosition>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsMsgSpinePosition
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_wire_size
         */
        static size_t const max_wire_bytes = 149;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsMsgSpinePosition<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsMsgSpinePosition<T>::codec_identity =
        "UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsMsgSpinePosition<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsMsgSpinePosition.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsMsgSpinePosition> :
        RecordMetadata_Ros2Franka_spine_msgsMsgSpinePosition<uwvm_custom::Ros2Franka_spine_msgsMsgSpinePosition>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsMsgSpinePosition transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsMsgSpinePosition const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsMsgSpinePosition.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsMsgSpinePosition& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_msg_SpinePosition_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_MSG_SPINESTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsMsgSpineState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsMsgSpineState>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsMsgSpineState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_wire_size
         */
        static size_t const max_wire_bytes = 921;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsMsgSpineState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsMsgSpineState<T>::codec_identity =
        "UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsMsgSpineState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsMsgSpineState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsMsgSpineState> :
        RecordMetadata_Ros2Franka_spine_msgsMsgSpineState<uwvm_custom::Ros2Franka_spine_msgsMsgSpineState>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsMsgSpineState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsMsgSpineState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsMsgSpineState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsMsgSpineState& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_msg_SpineState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvFaultReset_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvFaultReset_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvFaultReset_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvFaultReset_Request<T>::codec_identity =
        "UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvFaultReset_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvFaultReset_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Request> :
        RecordMetadata_Ros2Franka_spine_msgsSrvFaultReset_Request<uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvFaultReset_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvFaultReset_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Request& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_FAULTRESET_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvFaultReset_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvFaultReset_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_wire_size
         */
        static size_t const max_wire_bytes = 521;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvFaultReset_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvFaultReset_Response<T>::codec_identity =
        "UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvFaultReset_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvFaultReset_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Response> :
        RecordMetadata_Ros2Franka_spine_msgsSrvFaultReset_Response<uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvFaultReset_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvFaultReset_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvFaultReset_Response& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_FaultReset_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvGetParameters_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvGetParameters_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvGetParameters_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvGetParameters_Request<T>::codec_identity =
        "UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvGetParameters_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvGetParameters_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Request> :
        RecordMetadata_Ros2Franka_spine_msgsSrvGetParameters_Request<uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvGetParameters_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvGetParameters_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Request& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPARAMETERS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvGetParameters_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvGetParameters_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_wire_size
         */
        static size_t const max_wire_bytes = 277;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvGetParameters_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvGetParameters_Response<T>::codec_identity =
        "UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvGetParameters_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvGetParameters_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Response> :
        RecordMetadata_Ros2Franka_spine_msgsSrvGetParameters_Response<uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvGetParameters_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvGetParameters_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvGetParameters_Response& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_GetParameters_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvGetPosition_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvGetPosition_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvGetPosition_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvGetPosition_Request<T>::codec_identity =
        "UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvGetPosition_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvGetPosition_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Request> :
        RecordMetadata_Ros2Franka_spine_msgsSrvGetPosition_Request<uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvGetPosition_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvGetPosition_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Request& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETPOSITION_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvGetPosition_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvGetPosition_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_wire_size
         */
        static size_t const max_wire_bytes = 9;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvGetPosition_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvGetPosition_Response<T>::codec_identity =
        "UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvGetPosition_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvGetPosition_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Response> :
        RecordMetadata_Ros2Franka_spine_msgsSrvGetPosition_Response<uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvGetPosition_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvGetPosition_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvGetPosition_Response& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_GetPosition_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvGetSpineState_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvGetSpineState_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvGetSpineState_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvGetSpineState_Request<T>::codec_identity =
        "UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvGetSpineState_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvGetSpineState_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Request> :
        RecordMetadata_Ros2Franka_spine_msgsSrvGetSpineState_Request<uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvGetSpineState_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvGetSpineState_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Request& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_GETSPINESTATE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvGetSpineState_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvGetSpineState_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_wire_size
         */
        static size_t const max_wire_bytes = 781;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvGetSpineState_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvGetSpineState_Response<T>::codec_identity =
        "UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvGetSpineState_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvGetSpineState_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Response> :
        RecordMetadata_Ros2Franka_spine_msgsSrvGetSpineState_Response<uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvGetSpineState_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvGetSpineState_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvGetSpineState_Response& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_GetSpineState_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvHalt_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvHalt_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvHalt_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvHalt_Request<T>::codec_identity =
        "UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvHalt_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvHalt_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Request> :
        RecordMetadata_Ros2Franka_spine_msgsSrvHalt_Request<uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvHalt_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvHalt_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Request& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_HALT_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvHalt_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvHalt_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_wire_size
         */
        static size_t const max_wire_bytes = 521;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvHalt_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvHalt_Response<T>::codec_identity =
        "UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvHalt_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvHalt_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Response> :
        RecordMetadata_Ros2Franka_spine_msgsSrvHalt_Response<uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvHalt_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvHalt_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvHalt_Response& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_Halt_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvSwitchOff_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOff_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOff_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOff_Request<T>::codec_identity =
        "UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOff_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvSwitchOff_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Request> :
        RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOff_Request<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvSwitchOff_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvSwitchOff_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Request& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHOFF_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvSwitchOff_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOff_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_wire_size
         */
        static size_t const max_wire_bytes = 521;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOff_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOff_Response<T>::codec_identity =
        "UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOff_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvSwitchOff_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Response> :
        RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOff_Response<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvSwitchOff_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvSwitchOff_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOff_Response& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOff_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvSwitchOn_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOn_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOn_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOn_Request<T>::codec_identity =
        "UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOn_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvSwitchOn_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Request> :
        RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOn_Request<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Request>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvSwitchOn_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvSwitchOn_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Request& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FRANKA_SPINE_MSGS_SRV_SWITCHON_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Franka_spine_msgsSrvSwitchOn_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOn_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_wire_size
         */
        static size_t const max_wire_bytes = 521;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOn_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOn_Response<T>::codec_identity =
        "UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOn_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Franka_spine_msgsSrvSwitchOn_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Response> :
        RecordMetadata_Ros2Franka_spine_msgsSrvSwitchOn_Response<uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Response>
    {
        /**
         * @brief Encode all fields of Ros2Franka_spine_msgsSrvSwitchOn_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Franka_spine_msgsSrvSwitchOn_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Franka_spine_msgsSrvSwitchOn_Response& out)
        {
            return !roswasmc_bounded_2_franka_spine_msgs_srv_SwitchOn_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
