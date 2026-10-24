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
#include <flexiv/c/ros2/flexiv-ros2-humble-v1-complete/bounded_records.h>
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
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionErrorRecovery_Goal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal Ros2Flexiv_msgsActionErrorRecovery_Goal;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionErrorRecovery_Result.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result Ros2Flexiv_msgsActionErrorRecovery_Result;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionErrorRecovery_Feedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback Ros2Flexiv_msgsActionErrorRecovery_Feedback;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionGrasp_Goal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal Ros2Flexiv_msgsActionGrasp_Goal;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionGrasp_Result.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result Ros2Flexiv_msgsActionGrasp_Result;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionGrasp_Feedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback Ros2Flexiv_msgsActionGrasp_Feedback;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionMove_Goal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Move_Goal Ros2Flexiv_msgsActionMove_Goal;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionMove_Result.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Move_Result Ros2Flexiv_msgsActionMove_Result;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionMove_Feedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback Ros2Flexiv_msgsActionMove_Feedback;
    /**
     * @brief Complete bounded storage for Ros2Std_msgsMsgHeader.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_std_msgs_msg_Header_valid
     */
    typedef roswasmc_bounded_2_std_msgs_msg_Header Ros2Std_msgsMsgHeader;
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
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgVector3.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Vector3 Ros2Geometry_msgsMsgVector3;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgWrench.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Wrench Ros2Geometry_msgsMsgWrench;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgTwist.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Twist Ros2Geometry_msgsMsgTwist;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgCartesianMotionForce.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce Ros2Flexiv_msgsMsgCartesianMotionForce;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgDigital.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_Digital Ros2Flexiv_msgsMsgDigital;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgGPIOStates.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates Ros2Flexiv_msgsMsgGPIOStates;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgJointImpedance.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance Ros2Flexiv_msgsMsgJointImpedance;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgJointInertiaScale.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale Ros2Flexiv_msgsMsgJointInertiaScale;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgJointPosVel.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel Ros2Flexiv_msgsMsgJointPosVel;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgMaxContactTorque.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque Ros2Flexiv_msgsMsgMaxContactTorque;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgMode.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_Mode Ros2Flexiv_msgsMsgMode;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgRobotEvent.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent Ros2Flexiv_msgsMsgRobotEvent;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgOperationalStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus Ros2Flexiv_msgsMsgOperationalStatus;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgRecoveryPolicy.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy Ros2Flexiv_msgsMsgRecoveryPolicy;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgPoseStamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_PoseStamped Ros2Geometry_msgsMsgPoseStamped;
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
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgWrenchStamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped Ros2Geometry_msgsMsgWrenchStamped;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgRobotStates.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_RobotStates Ros2Flexiv_msgsMsgRobotStates;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvGetOperationalStatus_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request Ros2Flexiv_msgsSrvGetOperationalStatus_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvGetOperationalStatus_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response Ros2Flexiv_msgsSrvGetOperationalStatus_Response;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetCartesianImpedance_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request Ros2Flexiv_msgsSrvSetCartesianImpedance_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetCartesianImpedance_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response Ros2Flexiv_msgsSrvSetCartesianImpedance_Response;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetForceControlAxis_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request Ros2Flexiv_msgsSrvSetForceControlAxis_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetForceControlAxis_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response Ros2Flexiv_msgsSrvSetForceControlAxis_Response;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetForceControlFrame_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request Ros2Flexiv_msgsSrvSetForceControlFrame_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetForceControlFrame_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response Ros2Flexiv_msgsSrvSetForceControlFrame_Response;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetJointImpedance_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request Ros2Flexiv_msgsSrvSetJointImpedance_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetJointImpedance_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response Ros2Flexiv_msgsSrvSetJointImpedance_Response;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request Ros2Flexiv_msgsSrvSetJointInertiaScale_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response Ros2Flexiv_msgsSrvSetJointInertiaScale_Response;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request Ros2Flexiv_msgsSrvSetMaxContactTorque_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response Ros2Flexiv_msgsSrvSetMaxContactTorque_Response;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetMaxContactWrench_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request Ros2Flexiv_msgsSrvSetMaxContactWrench_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetMaxContactWrench_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response Ros2Flexiv_msgsSrvSetMaxContactWrench_Response;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetNullSpacePosture_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request Ros2Flexiv_msgsSrvSetNullSpacePosture_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetNullSpacePosture_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response Ros2Flexiv_msgsSrvSetNullSpacePosture_Response;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetPassiveForceControl_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request Ros2Flexiv_msgsSrvSetPassiveForceControl_Request;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsSrvSetPassiveForceControl_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response Ros2Flexiv_msgsSrvSetPassiveForceControl_Response;
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_GOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionErrorRecovery_Goal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Goal>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Goal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_wire_size
         */
        static size_t const max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_255a9d152d16f6abe76bca261fbd19c385548a2f64dd421c58c74dc19f1bfd41";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Goal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Goal<T>::codec_identity =
        "UWVMROS1_255a9d152d16f6abe76bca261fbd19c385548a2f64dd421c58c74dc19f1bfd41";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Goal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionErrorRecovery_Goal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Goal> :
        RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Goal<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Goal>
    {
        /**
         * @brief Construct the declared defaults of Ros2Flexiv_msgsActionErrorRecovery_Goal.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_default
         */
        static uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Goal default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Goal value = uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Goal();
            (void)roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionErrorRecovery_Goal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionErrorRecovery_Goal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Goal& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_RESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionErrorRecovery_Result.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Result>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Result
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_wire_size
         */
        static size_t const max_wire_bytes = 263;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Result<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Result<T>::codec_identity =
        "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Result<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionErrorRecovery_Result.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Result> :
        RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Result<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Result>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionErrorRecovery_Result transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionErrorRecovery_Result.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Result& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_ERRORRECOVERY_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionErrorRecovery_Feedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Feedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Feedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_wire_size
         */
        static size_t const max_wire_bytes = 265;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bf87aae8f76ba18d46ab7985e48a667f6b1ed99a403aa90921c80ae4d4ac197a";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Feedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Feedback<T>::codec_identity =
        "UWVMROS1_bf87aae8f76ba18d46ab7985e48a667f6b1ed99a403aa90921c80ae4d4ac197a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Feedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionErrorRecovery_Feedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Feedback> :
        RecordMetadata_Ros2Flexiv_msgsActionErrorRecovery_Feedback<uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Feedback>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionErrorRecovery_Feedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionErrorRecovery_Feedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionErrorRecovery_Feedback& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_ErrorRecovery_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionGrasp_Goal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Goal>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionGrasp_Goal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_wire_size
         */
        static size_t const max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Goal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Goal<T>::codec_identity =
        "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionGrasp_Goal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionGrasp_Goal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Goal> : RecordMetadata_Ros2Flexiv_msgsActionGrasp_Goal<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Goal>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionGrasp_Goal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionGrasp_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionGrasp_Goal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionGrasp_Goal& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionGrasp_Result.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Result>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionGrasp_Result
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Result<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Result<T>::codec_identity =
        "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionGrasp_Result<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionGrasp_Result.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Result> :
        RecordMetadata_Ros2Flexiv_msgsActionGrasp_Result<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Result>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionGrasp_Result transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionGrasp_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionGrasp_Result.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionGrasp_Result& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionGrasp_Feedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Feedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionGrasp_Feedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_wire_size
         */
        static size_t const max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Feedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Feedback<T>::codec_identity =
        "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionGrasp_Feedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionGrasp_Feedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Feedback> :
        RecordMetadata_Ros2Flexiv_msgsActionGrasp_Feedback<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Feedback>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionGrasp_Feedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionGrasp_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionGrasp_Feedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionGrasp_Feedback& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionMove_Goal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Goal>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionMove_Goal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_wire_size
         */
        static size_t const max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionMove_Goal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionMove_Goal<T>::codec_identity =
        "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionMove_Goal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionMove_Goal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Goal> : RecordMetadata_Ros2Flexiv_msgsActionMove_Goal<uwvm_custom::Ros2Flexiv_msgsActionMove_Goal>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionMove_Goal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionMove_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionMove_Goal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionMove_Goal& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionMove_Result.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Result>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionMove_Result
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionMove_Result<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionMove_Result<T>::codec_identity =
        "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionMove_Result<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionMove_Result.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Result> : RecordMetadata_Ros2Flexiv_msgsActionMove_Result<uwvm_custom::Ros2Flexiv_msgsActionMove_Result>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionMove_Result transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionMove_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Move_Result_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Move_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Move_Result_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionMove_Result.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionMove_Result& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Move_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionMove_Feedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Feedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionMove_Feedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_wire_size
         */
        static size_t const max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionMove_Feedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionMove_Feedback<T>::codec_identity =
        "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionMove_Feedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionMove_Feedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Feedback> :
        RecordMetadata_Ros2Flexiv_msgsActionMove_Feedback<uwvm_custom::Ros2Flexiv_msgsActionMove_Feedback>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionMove_Feedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionMove_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionMove_Feedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionMove_Feedback& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_decode(bytes.data(), bytes.size(), &out);
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
        static size_t const max_wire_bytes = 268;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_std_msgs_msg_Header_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Std_msgsMsgHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Std_msgsMsgHeader<T>::codec_identity = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b";
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_CARTESIANMOTIONFORCE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgCartesianMotionForce.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgCartesianMotionForce>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgCartesianMotionForce
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_wire_size
         */
        static size_t const max_wire_bytes = 420;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2f8de91fe69cf2aa5a50dabb1178e9dcef6b1196602e667a8901caeeb7cba8c3";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgCartesianMotionForce<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgCartesianMotionForce<T>::codec_identity =
        "UWVMROS1_2f8de91fe69cf2aa5a50dabb1178e9dcef6b1196602e667a8901caeeb7cba8c3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgCartesianMotionForce<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgCartesianMotionForce.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgCartesianMotionForce> :
        RecordMetadata_Ros2Flexiv_msgsMsgCartesianMotionForce<uwvm_custom::Ros2Flexiv_msgsMsgCartesianMotionForce>
    {
        /**
         * @brief Construct the declared defaults of Ros2Flexiv_msgsMsgCartesianMotionForce.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_default
         */
        static uwvm_custom::Ros2Flexiv_msgsMsgCartesianMotionForce default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Flexiv_msgsMsgCartesianMotionForce value = uwvm_custom::Ros2Flexiv_msgsMsgCartesianMotionForce();
            (void)roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgCartesianMotionForce transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgCartesianMotionForce const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgCartesianMotionForce.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgCartesianMotionForce& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_CartesianMotionForce_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgDigital.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgDigital>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgDigital
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_wire_size
         */
        static size_t const max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgDigital<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgDigital<T>::codec_identity = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgDigital<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgDigital.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgDigital> : RecordMetadata_Ros2Flexiv_msgsMsgDigital<uwvm_custom::Ros2Flexiv_msgsMsgDigital>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgDigital transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgDigital const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_Digital_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_Digital_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_Digital_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgDigital.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgDigital& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_Digital_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgGPIOStates.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgGPIOStates>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgGPIOStates
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_wire_size
         */
        static size_t const max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgGPIOStates<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgGPIOStates<T>::codec_identity =
        "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgGPIOStates<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgGPIOStates.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgGPIOStates> : RecordMetadata_Ros2Flexiv_msgsMsgGPIOStates<uwvm_custom::Ros2Flexiv_msgsMsgGPIOStates>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgGPIOStates transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgGPIOStates const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgGPIOStates.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgGPIOStates& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTIMPEDANCE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgJointImpedance.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgJointImpedance>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgJointImpedance
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_wire_size
         */
        static size_t const max_wire_bytes = 9373;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgJointImpedance<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgJointImpedance<T>::codec_identity =
        "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgJointImpedance<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgJointImpedance.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgJointImpedance> : RecordMetadata_Ros2Flexiv_msgsMsgJointImpedance<uwvm_custom::Ros2Flexiv_msgsMsgJointImpedance>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgJointImpedance transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgJointImpedance const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgJointImpedance.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgJointImpedance& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_JointImpedance_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTINERTIASCALE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgJointInertiaScale.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgJointInertiaScale>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgJointInertiaScale
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_wire_size
         */
        static size_t const max_wire_bytes = 8853;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgJointInertiaScale<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgJointInertiaScale<T>::codec_identity =
        "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgJointInertiaScale<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgJointInertiaScale.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgJointInertiaScale> :
        RecordMetadata_Ros2Flexiv_msgsMsgJointInertiaScale<uwvm_custom::Ros2Flexiv_msgsMsgJointInertiaScale>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgJointInertiaScale transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgJointInertiaScale const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgJointInertiaScale.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgJointInertiaScale& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_JointInertiaScale_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgJointPosVel.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgJointPosVel>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_wire_size
         */
        static size_t const max_wire_bytes = 520;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel<T>::codec_identity =
        "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgJointPosVel.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgJointPosVel> : RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel<uwvm_custom::Ros2Flexiv_msgsMsgJointPosVel>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgJointPosVel transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgJointPosVel const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgJointPosVel.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgJointPosVel& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MAXCONTACTTORQUE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgMaxContactTorque.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgMaxContactTorque>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgMaxContactTorque
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_wire_size
         */
        static size_t const max_wire_bytes = 9113;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgMaxContactTorque<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgMaxContactTorque<T>::codec_identity =
        "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgMaxContactTorque<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgMaxContactTorque.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgMaxContactTorque> :
        RecordMetadata_Ros2Flexiv_msgsMsgMaxContactTorque<uwvm_custom::Ros2Flexiv_msgsMsgMaxContactTorque>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgMaxContactTorque transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgMaxContactTorque const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgMaxContactTorque.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgMaxContactTorque& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_MaxContactTorque_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgMode.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgMode>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgMode
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_wire_size
         */
        static size_t const max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgMode<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgMode<T>::codec_identity = "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgMode<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgMode.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgMode> : RecordMetadata_Ros2Flexiv_msgsMsgMode<uwvm_custom::Ros2Flexiv_msgsMsgMode>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgMode transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgMode const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_Mode_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_Mode_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgMode.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgMode& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_Mode_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTEVENT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgRobotEvent.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgRobotEvent>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgRobotEvent
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_wire_size
         */
        static size_t const max_wire_bytes = 1053;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgRobotEvent<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgRobotEvent<T>::codec_identity =
        "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgRobotEvent<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgRobotEvent.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgRobotEvent> : RecordMetadata_Ros2Flexiv_msgsMsgRobotEvent<uwvm_custom::Ros2Flexiv_msgsMsgRobotEvent>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgRobotEvent transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgRobotEvent const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgRobotEvent.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgRobotEvent& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_RobotEvent_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_OPERATIONALSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgOperationalStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgOperationalStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgOperationalStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_wire_size
         */
        static size_t const max_wire_bytes = 17650;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fb8887a722a4b6d895ed17ba5db0f4145b4ddd01eecf876419b287dd07bc728b";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgOperationalStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgOperationalStatus<T>::codec_identity =
        "UWVMROS1_fb8887a722a4b6d895ed17ba5db0f4145b4ddd01eecf876419b287dd07bc728b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgOperationalStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgOperationalStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgOperationalStatus> :
        RecordMetadata_Ros2Flexiv_msgsMsgOperationalStatus<uwvm_custom::Ros2Flexiv_msgsMsgOperationalStatus>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgOperationalStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgOperationalStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgOperationalStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgOperationalStatus& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_OperationalStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_RECOVERYPOLICY 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgRecoveryPolicy.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgRecoveryPolicy>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgRecoveryPolicy
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_wire_size
         */
        static size_t const max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgRecoveryPolicy<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgRecoveryPolicy<T>::codec_identity =
        "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgRecoveryPolicy<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgRecoveryPolicy.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgRecoveryPolicy> : RecordMetadata_Ros2Flexiv_msgsMsgRecoveryPolicy<uwvm_custom::Ros2Flexiv_msgsMsgRecoveryPolicy>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgRecoveryPolicy transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgRecoveryPolicy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgRecoveryPolicy.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgRecoveryPolicy& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_RecoveryPolicy_decode(bytes.data(), bytes.size(), &out);
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
        static size_t const max_wire_bytes = 324;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgPoseStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgPoseStamped<T>::codec_identity =
        "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad";
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
        static size_t const max_wire_bytes = 316;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_AccelStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_99c561d1968cbb554a188d387fb085b6721227a88b7243a7f90682ae20782329";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgAccelStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgAccelStamped<T>::codec_identity =
        "UWVMROS1_99c561d1968cbb554a188d387fb085b6721227a88b7243a7f90682ae20782329";
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
        static size_t const max_wire_bytes = 316;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped<T>::codec_identity =
        "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177";
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgRobotStates.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgRobotStates>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgRobotStates
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_wire_size
         */
        static size_t const max_wire_bytes = 5160;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7e84612c73d2d16252a0b93f995b5afa7e032f3de3826f0577c89670dde1f2d2";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgRobotStates<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgRobotStates<T>::codec_identity =
        "UWVMROS1_7e84612c73d2d16252a0b93f995b5afa7e032f3de3826f0577c89670dde1f2d2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgRobotStates<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgRobotStates.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgRobotStates> : RecordMetadata_Ros2Flexiv_msgsMsgRobotStates<uwvm_custom::Ros2Flexiv_msgsMsgRobotStates>
    {
        /**
         * @brief Construct the declared defaults of Ros2Flexiv_msgsMsgRobotStates.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_default
         */
        static uwvm_custom::Ros2Flexiv_msgsMsgRobotStates default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Flexiv_msgsMsgRobotStates value = uwvm_custom::Ros2Flexiv_msgsMsgRobotStates();
            (void)roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgRobotStates transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgRobotStates const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgRobotStates.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgRobotStates& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvGetOperationalStatus_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvGetOperationalStatus_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvGetOperationalStatus_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvGetOperationalStatus_Request<T>::codec_identity =
        "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvGetOperationalStatus_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvGetOperationalStatus_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvGetOperationalStatus_Request<uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvGetOperationalStatus_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvGetOperationalStatus_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_GETOPERATIONALSTATUS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvGetOperationalStatus_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvGetOperationalStatus_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_wire_size
         */
        static size_t const max_wire_bytes = 17650;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b804d4a8c3dfdd26b0cad4314552092a90f439f0f364831b855bca4c30d49f42";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvGetOperationalStatus_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvGetOperationalStatus_Response<T>::codec_identity =
        "UWVMROS1_b804d4a8c3dfdd26b0cad4314552092a90f439f0f364831b855bca4c30d49f42";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvGetOperationalStatus_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvGetOperationalStatus_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvGetOperationalStatus_Response<uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvGetOperationalStatus_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvGetOperationalStatus_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvGetOperationalStatus_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_GetOperationalStatus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetCartesianImpedance_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianImpedance_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_wire_size
         */
        static size_t const max_wire_bytes = 520;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a121634cb756eace8772aa4fb681a103b4716f6289a1ba66608d66ce2d83ff9f";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianImpedance_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianImpedance_Request<T>::codec_identity =
        "UWVMROS1_a121634cb756eace8772aa4fb681a103b4716f6289a1ba66608d66ce2d83ff9f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianImpedance_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetCartesianImpedance_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianImpedance_Request<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetCartesianImpedance_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetCartesianImpedance_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANIMPEDANCE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetCartesianImpedance_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianImpedance_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_wire_size
         */
        static size_t const max_wire_bytes = 521;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_84cb649adf8fdcbc9e499dd9c8274542c7de6c466fbab5c2721349ee76974f29";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianImpedance_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianImpedance_Response<T>::codec_identity =
        "UWVMROS1_84cb649adf8fdcbc9e499dd9c8274542c7de6c466fbab5c2721349ee76974f29";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianImpedance_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetCartesianImpedance_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianImpedance_Response<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetCartesianImpedance_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetCartesianImpedance_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianImpedance_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianImpedance_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_wire_size
         */
        static size_t const max_wire_bytes = 1040;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_381d447a83ce08a843476dfe3b7e1650477b2575f873706d80d458e8153a6111";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request<T>::codec_identity =
        "UWVMROS1_381d447a83ce08a843476dfe3b7e1650477b2575f873706d80d458e8153a6111";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETCARTESIANMOTIONLIMITS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0adcf054313396afa13673e6a125f8a6dcc85b1009d36860b6447512f52bdc36";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response<T>::codec_identity =
        "UWVMROS1_0adcf054313396afa13673e6a125f8a6dcc85b1009d36860b6447512f52bdc36";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response<uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetCartesianMotionLimits_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetCartesianMotionLimits_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetForceControlAxis_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlAxis_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_wire_size
         */
        static size_t const max_wire_bytes = 296;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f068f06ad10e40bd50d06800f4178636c89547f5302af856a00d49757b54fef0";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlAxis_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlAxis_Request<T>::codec_identity =
        "UWVMROS1_f068f06ad10e40bd50d06800f4178636c89547f5302af856a00d49757b54fef0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlAxis_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetForceControlAxis_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlAxis_Request<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetForceControlAxis_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetForceControlAxis_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLAXIS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetForceControlAxis_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlAxis_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_26f01b6e3ddb369b49f0a6521104992e654ea628d864c0883b9ccc584234963b";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlAxis_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlAxis_Response<T>::codec_identity =
        "UWVMROS1_26f01b6e3ddb369b49f0a6521104992e654ea628d864c0883b9ccc584234963b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlAxis_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetForceControlAxis_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlAxis_Response<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetForceControlAxis_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetForceControlAxis_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlAxis_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlAxis_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetForceControlFrame_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlFrame_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_wire_size
         */
        static size_t const max_wire_bytes = 296;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3f061d3f029eddf256a9aa50f07767e77d5c3b2efd6ae69a2ad4a789f4692b30";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlFrame_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlFrame_Request<T>::codec_identity =
        "UWVMROS1_3f061d3f029eddf256a9aa50f07767e77d5c3b2efd6ae69a2ad4a789f4692b30";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlFrame_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetForceControlFrame_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlFrame_Request<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetForceControlFrame_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetForceControlFrame_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETFORCECONTROLFRAME_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetForceControlFrame_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlFrame_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cfec8391d4df88d36f4e3afbb956b12b3274b3bd0a6a6284cb44d49f12a44bde";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlFrame_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlFrame_Response<T>::codec_identity =
        "UWVMROS1_cfec8391d4df88d36f4e3afbb956b12b3274b3bd0a6a6284cb44d49f12a44bde";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlFrame_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetForceControlFrame_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetForceControlFrame_Response<uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetForceControlFrame_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetForceControlFrame_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetForceControlFrame_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetForceControlFrame_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetJointImpedance_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetJointImpedance_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_wire_size
         */
        static size_t const max_wire_bytes = 520;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5b1014a3a79fcd116f94142640c2c3e9c1867a2c54b9382f7165f7fda04a8584";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetJointImpedance_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetJointImpedance_Request<T>::codec_identity =
        "UWVMROS1_5b1014a3a79fcd116f94142640c2c3e9c1867a2c54b9382f7165f7fda04a8584";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetJointImpedance_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetJointImpedance_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetJointImpedance_Request<uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetJointImpedance_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetJointImpedance_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTIMPEDANCE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetJointImpedance_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetJointImpedance_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_wire_size
         */
        static size_t const max_wire_bytes = 9634;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetJointImpedance_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetJointImpedance_Response<T>::codec_identity =
        "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetJointImpedance_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetJointImpedance_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetJointImpedance_Response<uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetJointImpedance_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetJointImpedance_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetJointImpedance_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetJointImpedance_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_wire_size
         */
        static size_t const max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_752da94424644200ef0e6463486a6dbc74b85c46acfaeac3b569b6248c1e2686";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request<T>::codec_identity =
        "UWVMROS1_752da94424644200ef0e6463486a6dbc74b85c46acfaeac3b569b6248c1e2686";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request<uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetJointInertiaScale_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETJOINTINERTIASCALE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_wire_size
         */
        static size_t const max_wire_bytes = 9114;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response<T>::codec_identity =
        "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response<uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetJointInertiaScale_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetJointInertiaScale_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetJointInertiaScale_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_wire_size
         */
        static size_t const max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8850403204dc91a11797a767dde6999163008f41ad5c89360d852d037806fb43";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request<T>::codec_identity =
        "UWVMROS1_8850403204dc91a11797a767dde6999163008f41ad5c89360d852d037806fb43";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetMaxContactTorque_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTTORQUE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_wire_size
         */
        static size_t const max_wire_bytes = 9374;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response<T>::codec_identity =
        "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetMaxContactTorque_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactTorque_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactTorque_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetMaxContactWrench_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactWrench_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_wire_size
         */
        static size_t const max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5a943fdeba115cb68b38d0a1d98e9247331419b4ec89ad0870387251fd5d9467";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactWrench_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactWrench_Request<T>::codec_identity =
        "UWVMROS1_5a943fdeba115cb68b38d0a1d98e9247331419b4ec89ad0870387251fd5d9467";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactWrench_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetMaxContactWrench_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactWrench_Request<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetMaxContactWrench_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetMaxContactWrench_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETMAXCONTACTWRENCH_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetMaxContactWrench_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactWrench_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6a39df3ba6eacc0a230a8f039f16f03574d76818fb53e9445c29f175c2e1420e";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactWrench_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactWrench_Response<T>::codec_identity =
        "UWVMROS1_6a39df3ba6eacc0a230a8f039f16f03574d76818fb53e9445c29f175c2e1420e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactWrench_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetMaxContactWrench_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetMaxContactWrench_Response<uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetMaxContactWrench_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetMaxContactWrench_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetMaxContactWrench_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetMaxContactWrench_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_wire_size
         */
        static size_t const max_wire_bytes = 780;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_01cb5842d8e2eca55e63f74f7f2c973038bc354a5c0ef2552d4f6e82e382bc27";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request<T>::codec_identity =
        "UWVMROS1_01cb5842d8e2eca55e63f74f7f2c973038bc354a5c0ef2552d4f6e82e382bc27";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEOBJECTIVES_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_70fb3c7a3a0a6b46347624a273b6e7180ad1610ca09a5c672b5ad7a976b79298";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response<T>::codec_identity =
        "UWVMROS1_70fb3c7a3a0a6b46347624a273b6e7180ad1610ca09a5c672b5ad7a976b79298";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpaceObjectives_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpaceObjectives_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetNullSpacePosture_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpacePosture_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_wire_size
         */
        static size_t const max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0fb02e69195688307d15cc7f8b6f7a95f400d4083cc8c363e29071fee844b92d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpacePosture_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpacePosture_Request<T>::codec_identity =
        "UWVMROS1_0fb02e69195688307d15cc7f8b6f7a95f400d4083cc8c363e29071fee844b92d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpacePosture_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetNullSpacePosture_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpacePosture_Request<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetNullSpacePosture_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetNullSpacePosture_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETNULLSPACEPOSTURE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetNullSpacePosture_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpacePosture_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_913c995a461fa70cd62293c1932d738a4a8b799c4ebd13a1a8afdaa8acef4293";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpacePosture_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpacePosture_Response<T>::codec_identity =
        "UWVMROS1_913c995a461fa70cd62293c1932d738a4a8b799c4ebd13a1a8afdaa8acef4293";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpacePosture_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetNullSpacePosture_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetNullSpacePosture_Response<uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetNullSpacePosture_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetNullSpacePosture_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetNullSpacePosture_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetNullSpacePosture_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetPassiveForceControl_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetPassiveForceControl_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_wire_size
         */
        static size_t const max_wire_bytes = 36;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_603cd39ccf8c37d944afe9108085fe3ba72881d772e42f24f87ec380f3770d16";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetPassiveForceControl_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetPassiveForceControl_Request<T>::codec_identity =
        "UWVMROS1_603cd39ccf8c37d944afe9108085fe3ba72881d772e42f24f87ec380f3770d16";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetPassiveForceControl_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetPassiveForceControl_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Request> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetPassiveForceControl_Request<uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Request>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetPassiveForceControl_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetPassiveForceControl_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Request& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_SRV_SETPASSIVEFORCECONTROL_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsSrvSetPassiveForceControl_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsSrvSetPassiveForceControl_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_73fe92bbcf47063293bde2f3542c719111f0bd82aaa6b500f15122c6aa1e7d35";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsSrvSetPassiveForceControl_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsSrvSetPassiveForceControl_Response<T>::codec_identity =
        "UWVMROS1_73fe92bbcf47063293bde2f3542c719111f0bd82aaa6b500f15122c6aa1e7d35";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsSrvSetPassiveForceControl_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsSrvSetPassiveForceControl_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Response> :
        RecordMetadata_Ros2Flexiv_msgsSrvSetPassiveForceControl_Response<uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Response>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsSrvSetPassiveForceControl_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsSrvSetPassiveForceControl_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsSrvSetPassiveForceControl_Response& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_srv_SetPassiveForceControl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
