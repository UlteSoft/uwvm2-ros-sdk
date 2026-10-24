/**
 * @file bounded_records.hpp
 * @brief Bind complete original C storage to checked C++ canonical codecs and declared defaults.
 * @details Owned inline fields retain original widths, bounds and units. Encode/decode commit
 * only complete accepted values. Metadata describes a codec and creates no ROS authority.
 */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <ros/cpp/roswasm/roswasmcpp.hpp>
#include <ufactory/c/ros1/ufactory-xarm-ros1-kinetic-complete/bounded_records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros1Xarm_gripperMoveGoal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_gripper_MoveGoal_valid
     */
    typedef roswasmc_bounded_1_xarm_gripper_MoveGoal Ros1Xarm_gripperMoveGoal;
    /**
     * @brief Complete bounded storage for Ros1Xarm_gripperMoveResult.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_gripper_MoveResult_valid
     */
    typedef roswasmc_bounded_1_xarm_gripper_MoveResult Ros1Xarm_gripperMoveResult;
    /**
     * @brief Complete bounded storage for Ros1Xarm_gripperMoveFeedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_gripper_MoveFeedback_valid
     */
    typedef roswasmc_bounded_1_xarm_gripper_MoveFeedback Ros1Xarm_gripperMoveFeedback;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsPoint.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Point_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Point Ros1Geometry_msgsPoint;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsQuaternion.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Quaternion_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Quaternion Ros1Geometry_msgsQuaternion;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsPose.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Pose_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Pose Ros1Geometry_msgsPose;
    /**
     * @brief Complete bounded storage for Ros1Time.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_time_valid
     */
    typedef roswasmc_bounded_1_time Ros1Time;
    /**
     * @brief Complete bounded storage for Ros1Std_msgsHeader.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_std_msgs_Header_valid
     */
    typedef roswasmc_bounded_1_std_msgs_Header Ros1Std_msgsHeader;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsCIOState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_CIOState_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_CIOState Ros1Xarm_msgsCIOState;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsIOState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_IOState_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_IOState Ros1Xarm_msgsIOState;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsRobotMsg.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_RobotMsg Ros1Xarm_msgsRobotMsg;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsVeloMoveMsg.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_VeloMoveMsg Ros1Xarm_msgsVeloMoveMsg;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsCallRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_CallRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_CallRequest Ros1Xarm_msgsCallRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsCallResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_CallResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_CallResponse Ros1Xarm_msgsCallResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsClearErrRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_ClearErrRequest Ros1Xarm_msgsClearErrRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsClearErrResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_ClearErrResponse Ros1Xarm_msgsClearErrResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsConfigToolModbusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest Ros1Xarm_msgsConfigToolModbusRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsConfigToolModbusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse Ros1Xarm_msgsConfigToolModbusResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsFtCaliLoadRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest Ros1Xarm_msgsFtCaliLoadRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsFtCaliLoadResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse Ros1Xarm_msgsFtCaliLoadResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsFtIdenLoadRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest Ros1Xarm_msgsFtIdenLoadRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsFtIdenLoadResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse Ros1Xarm_msgsFtIdenLoadResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetAnalogIORequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest Ros1Xarm_msgsGetAnalogIORequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetAnalogIOResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse Ros1Xarm_msgsGetAnalogIOResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetControllerDigitalIORequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest Ros1Xarm_msgsGetControllerDigitalIORequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetControllerDigitalIOResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse Ros1Xarm_msgsGetControllerDigitalIOResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetDigitalIORequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest Ros1Xarm_msgsGetDigitalIORequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetDigitalIOResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse Ros1Xarm_msgsGetDigitalIOResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetErrRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetErrRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetErrRequest Ros1Xarm_msgsGetErrRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetErrResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetErrResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetErrResponse Ros1Xarm_msgsGetErrResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetFloat32ListRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest Ros1Xarm_msgsGetFloat32ListRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetFloat32ListResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse Ros1Xarm_msgsGetFloat32ListResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetInt32Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetInt32Request_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetInt32Request Ros1Xarm_msgsGetInt32Request;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetInt32Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetInt32Response_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetInt32Response Ros1Xarm_msgsGetInt32Response;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetSetModbusDataRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest Ros1Xarm_msgsGetSetModbusDataRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetSetModbusDataResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse Ros1Xarm_msgsGetSetModbusDataResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGripperConfigRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GripperConfigRequest Ros1Xarm_msgsGripperConfigRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGripperConfigResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GripperConfigResponse Ros1Xarm_msgsGripperConfigResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGripperMoveRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GripperMoveRequest Ros1Xarm_msgsGripperMoveRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGripperMoveResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GripperMoveResponse Ros1Xarm_msgsGripperMoveResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGripperStateRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperStateRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GripperStateRequest Ros1Xarm_msgsGripperStateRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGripperStateResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperStateResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GripperStateResponse Ros1Xarm_msgsGripperStateResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsMoveRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_MoveRequest Ros1Xarm_msgsMoveRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsMoveResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_MoveResponse Ros1Xarm_msgsMoveResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsMoveAxisAngleRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest Ros1Xarm_msgsMoveAxisAngleRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsMoveAxisAngleResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse Ros1Xarm_msgsMoveAxisAngleResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsMoveVeloRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_MoveVeloRequest Ros1Xarm_msgsMoveVeloRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsMoveVeloResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_MoveVeloResponse Ros1Xarm_msgsMoveVeloResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsMoveVelocityRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest Ros1Xarm_msgsMoveVelocityRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsMoveVelocityResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse Ros1Xarm_msgsMoveVelocityResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsPlayTrajRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_PlayTrajRequest Ros1Xarm_msgsPlayTrajRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsPlayTrajResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_PlayTrajResponse Ros1Xarm_msgsPlayTrajResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetAxisRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetAxisRequest Ros1Xarm_msgsSetAxisRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetAxisResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetAxisResponse Ros1Xarm_msgsSetAxisResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetControllerAnalogIORequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest Ros1Xarm_msgsSetControllerAnalogIORequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetControllerAnalogIOResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse Ros1Xarm_msgsSetControllerAnalogIOResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetDigitalIORequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest Ros1Xarm_msgsSetDigitalIORequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetDigitalIOResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse Ros1Xarm_msgsSetDigitalIOResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetFloat32Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Request_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetFloat32Request Ros1Xarm_msgsSetFloat32Request;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetFloat32Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Response_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetFloat32Response Ros1Xarm_msgsSetFloat32Response;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetInt16Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetInt16Request Ros1Xarm_msgsSetInt16Request;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetInt16Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetInt16Response Ros1Xarm_msgsSetInt16Response;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetLoadRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetLoadRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetLoadRequest Ros1Xarm_msgsSetLoadRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetLoadResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetLoadResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetLoadResponse Ros1Xarm_msgsSetLoadResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetModbusTimeoutRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest Ros1Xarm_msgsSetModbusTimeoutRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetModbusTimeoutResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse Ros1Xarm_msgsSetModbusTimeoutResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetMultipleIntsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest Ros1Xarm_msgsSetMultipleIntsRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetMultipleIntsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse Ros1Xarm_msgsSetMultipleIntsResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetStringRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetStringRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetStringRequest Ros1Xarm_msgsSetStringRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetStringResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetStringResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetStringResponse Ros1Xarm_msgsSetStringResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetToolModbusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest Ros1Xarm_msgsSetToolModbusRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetToolModbusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse Ros1Xarm_msgsSetToolModbusResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsTCPOffsetRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest Ros1Xarm_msgsTCPOffsetRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsTCPOffsetResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse Ros1Xarm_msgsTCPOffsetResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsVacuumGripperCtrlRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest Ros1Xarm_msgsVacuumGripperCtrlRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsVacuumGripperCtrlResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse Ros1Xarm_msgsVacuumGripperCtrlResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerExec_planRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_exec_planRequest Ros1Xarm_plannerExec_planRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerExec_planResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_exec_planResponse Ros1Xarm_plannerExec_planResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerJoint_planRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_joint_planRequest Ros1Xarm_plannerJoint_planRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerJoint_planResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_joint_planResponse Ros1Xarm_plannerJoint_planResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerPose_planRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_pose_planRequest Ros1Xarm_plannerPose_planRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerPose_planResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_pose_planResponse Ros1Xarm_plannerPose_planResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerSingle_straight_planRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_single_straight_planRequest Ros1Xarm_plannerSingle_straight_planRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerSingle_straight_planResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_single_straight_planResponse Ros1Xarm_plannerSingle_straight_planResponse;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_GRIPPER_MOVEGOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_GRIPPER_MOVEGOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_gripperMoveGoal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_gripperMoveGoal>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_gripperMoveGoal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_gripper_MoveGoal_wire_size
         */
        static const size_t max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_gripper_MoveGoal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_gripperMoveGoal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_gripperMoveGoal<T>::codec_identity = "UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_gripperMoveGoal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_gripperMoveGoal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_gripper_MoveGoal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_gripperMoveGoal> : RecordMetadata_Ros1Xarm_gripperMoveGoal<uwvm_custom::Ros1Xarm_gripperMoveGoal>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_gripperMoveGoal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_gripper_MoveGoal_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_gripperMoveGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_gripper_MoveGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_gripper_MoveGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_gripper_MoveGoal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_gripperMoveGoal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_gripper_MoveGoal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_gripperMoveGoal& out)
        {
            return !roswasmc_bounded_1_xarm_gripper_MoveGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_GRIPPER_MOVERESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_GRIPPER_MOVERESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_gripperMoveResult.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_gripperMoveResult>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_gripperMoveResult
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_gripper_MoveResult_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_gripper_MoveResult_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_gripperMoveResult<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_gripperMoveResult<T>::codec_identity =
        "UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_gripperMoveResult<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_gripperMoveResult.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_gripper_MoveResult_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_gripperMoveResult> : RecordMetadata_Ros1Xarm_gripperMoveResult<uwvm_custom::Ros1Xarm_gripperMoveResult>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_gripperMoveResult transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_gripper_MoveResult_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_gripperMoveResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_gripper_MoveResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_gripper_MoveResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_gripper_MoveResult_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_gripperMoveResult.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_gripper_MoveResult_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_gripperMoveResult& out)
        {
            return !roswasmc_bounded_1_xarm_gripper_MoveResult_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_GRIPPER_MOVEFEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_GRIPPER_MOVEFEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_gripperMoveFeedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_gripperMoveFeedback>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_gripperMoveFeedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_gripper_MoveFeedback_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_gripper_MoveFeedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_gripperMoveFeedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_gripperMoveFeedback<T>::codec_identity =
        "UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_gripperMoveFeedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_gripperMoveFeedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_gripper_MoveFeedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_gripperMoveFeedback> : RecordMetadata_Ros1Xarm_gripperMoveFeedback<uwvm_custom::Ros1Xarm_gripperMoveFeedback>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_gripperMoveFeedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_gripper_MoveFeedback_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_gripperMoveFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_gripper_MoveFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_gripper_MoveFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_gripper_MoveFeedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_gripperMoveFeedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_gripper_MoveFeedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_gripperMoveFeedback& out)
        {
            return !roswasmc_bounded_1_xarm_gripper_MoveFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsPoint.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsPoint>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsPoint
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Point_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Point_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsPoint<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsPoint<T>::codec_identity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsPoint<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsPoint.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Point_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPoint> : RecordMetadata_Ros1Geometry_msgsPoint<uwvm_custom::Ros1Geometry_msgsPoint>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsPoint transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Point_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsPoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Point_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Point_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Point_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsPoint.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Point_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsPoint& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Point_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsQuaternion.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsQuaternion>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsQuaternion
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size
         */
        static const size_t max_wire_bytes = 32;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Quaternion_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsQuaternion<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsQuaternion<T>::codec_identity =
        "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsQuaternion<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsQuaternion.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Quaternion_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsQuaternion> : RecordMetadata_Ros1Geometry_msgsQuaternion<uwvm_custom::Ros1Geometry_msgsQuaternion>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsQuaternion transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Quaternion_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsQuaternion const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Quaternion_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Quaternion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsQuaternion.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Quaternion_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsQuaternion& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Quaternion_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsPose.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsPose>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsPose
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Pose_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Pose_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsPose<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsPose<T>::codec_identity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsPose<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsPose.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Pose_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPose> : RecordMetadata_Ros1Geometry_msgsPose<uwvm_custom::Ros1Geometry_msgsPose>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsPose transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Pose_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsPose const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Pose_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Pose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsPose.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Pose_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsPose& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Pose_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_TIME
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_TIME 1

    /**
     * @brief ODR-safe wire metadata for Ros1Time.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Time>
     */
    template <class T>
    struct RecordMetadata_Ros1Time
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_time_wire_size
         */
        static const size_t max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_time_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Time<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Time<T>::codec_identity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Time<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Time.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_time_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Time> : RecordMetadata_Ros1Time<uwvm_custom::Ros1Time>
    {
        /**
         * @brief Encode all fields of Ros1Time transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_time_encode
         */
        static bool encode(uwvm_custom::Ros1Time const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_time_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_time_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_time_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Time.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_time_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Time& out)
        {
            return !roswasmc_bounded_1_time_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER 1

    /**
     * @brief ODR-safe wire metadata for Ros1Std_msgsHeader.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Std_msgsHeader>
     */
    template <class T>
    struct RecordMetadata_Ros1Std_msgsHeader
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_std_msgs_Header_wire_size
         */
        static const size_t max_wire_bytes = 272;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_std_msgs_Header_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Std_msgsHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Std_msgsHeader<T>::codec_identity = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Std_msgsHeader<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Std_msgsHeader.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_std_msgs_Header_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsHeader> : RecordMetadata_Ros1Std_msgsHeader<uwvm_custom::Ros1Std_msgsHeader>
    {
        /**
         * @brief Encode all fields of Ros1Std_msgsHeader transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_std_msgs_Header_encode
         */
        static bool encode(uwvm_custom::Ros1Std_msgsHeader const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_Header_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_Header_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_Header_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Std_msgsHeader.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_std_msgs_Header_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Std_msgsHeader& out)
        {
            return !roswasmc_bounded_1_std_msgs_Header_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CIOSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CIOSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsCIOState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsCIOState>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsCIOState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_CIOState_wire_size
         */
        static const size_t max_wire_bytes = 332;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_CIOState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsCIOState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsCIOState<T>::codec_identity = "UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsCIOState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsCIOState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_CIOState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsCIOState> : RecordMetadata_Ros1Xarm_msgsCIOState<uwvm_custom::Ros1Xarm_msgsCIOState>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsCIOState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_CIOState_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsCIOState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_CIOState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_CIOState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_CIOState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsCIOState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_CIOState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsCIOState& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_CIOState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsIOState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsIOState>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsIOState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_IOState_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_IOState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsIOState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsIOState<T>::codec_identity = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsIOState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsIOState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_IOState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsIOState> : RecordMetadata_Ros1Xarm_msgsIOState<uwvm_custom::Ros1Xarm_msgsIOState>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsIOState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_IOState_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsIOState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_IOState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_IOState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_IOState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsIOState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_IOState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsIOState& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_IOState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsRobotMsg.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsRobotMsg>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsRobotMsg
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_wire_size
         */
        static const size_t max_wire_bytes = 366;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsRobotMsg<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsRobotMsg<T>::codec_identity = "UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsRobotMsg<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsRobotMsg.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsRobotMsg> : RecordMetadata_Ros1Xarm_msgsRobotMsg<uwvm_custom::Ros1Xarm_msgsRobotMsg>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsRobotMsg transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsRobotMsg const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_RobotMsg_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_RobotMsg_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_RobotMsg_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsRobotMsg.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsRobotMsg& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_RobotMsg_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_VELOMOVEMSG
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_VELOMOVEMSG 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsVeloMoveMsg.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsVeloMoveMsg>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsVeloMoveMsg
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_wire_size
         */
        static const size_t max_wire_bytes = 138;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsVeloMoveMsg<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsVeloMoveMsg<T>::codec_identity = "UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsVeloMoveMsg<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsVeloMoveMsg.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsVeloMoveMsg> : RecordMetadata_Ros1Xarm_msgsVeloMoveMsg<uwvm_custom::Ros1Xarm_msgsVeloMoveMsg>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsVeloMoveMsg transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsVeloMoveMsg const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsVeloMoveMsg.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsVeloMoveMsg& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CALLREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CALLREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsCallRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsCallRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsCallRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_CallRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_CallRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsCallRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsCallRequest<T>::codec_identity = "UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsCallRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsCallRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_CallRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsCallRequest> : RecordMetadata_Ros1Xarm_msgsCallRequest<uwvm_custom::Ros1Xarm_msgsCallRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsCallRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_CallRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsCallRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_CallRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_CallRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_CallRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsCallRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_CallRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsCallRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_CallRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CALLRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CALLRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsCallResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsCallResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsCallResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_CallResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_CallResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsCallResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsCallResponse<T>::codec_identity = "UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsCallResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsCallResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_CallResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsCallResponse> : RecordMetadata_Ros1Xarm_msgsCallResponse<uwvm_custom::Ros1Xarm_msgsCallResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsCallResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_CallResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsCallResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_CallResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_CallResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_CallResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsCallResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_CallResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsCallResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_CallResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsClearErrRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsClearErrRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsClearErrRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsClearErrRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsClearErrRequest<T>::codec_identity =
        "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsClearErrRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsClearErrRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsClearErrRequest> : RecordMetadata_Ros1Xarm_msgsClearErrRequest<uwvm_custom::Ros1Xarm_msgsClearErrRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsClearErrRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsClearErrRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_ClearErrRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsClearErrRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsClearErrRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_ClearErrRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsClearErrResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsClearErrResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsClearErrResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsClearErrResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsClearErrResponse<T>::codec_identity =
        "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsClearErrResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsClearErrResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsClearErrResponse> : RecordMetadata_Ros1Xarm_msgsClearErrResponse<uwvm_custom::Ros1Xarm_msgsClearErrResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsClearErrResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsClearErrResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_ClearErrResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsClearErrResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsClearErrResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_ClearErrResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsConfigToolModbusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsConfigToolModbusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsConfigToolModbusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_wire_size
         */
        static const size_t max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsConfigToolModbusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsConfigToolModbusRequest<T>::codec_identity =
        "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsConfigToolModbusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsConfigToolModbusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsConfigToolModbusRequest> :
        RecordMetadata_Ros1Xarm_msgsConfigToolModbusRequest<uwvm_custom::Ros1Xarm_msgsConfigToolModbusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsConfigToolModbusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsConfigToolModbusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsConfigToolModbusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsConfigToolModbusRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CONFIGTOOLMODBUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsConfigToolModbusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsConfigToolModbusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsConfigToolModbusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsConfigToolModbusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsConfigToolModbusResponse<T>::codec_identity =
        "UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsConfigToolModbusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsConfigToolModbusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsConfigToolModbusResponse> :
        RecordMetadata_Ros1Xarm_msgsConfigToolModbusResponse<uwvm_custom::Ros1Xarm_msgsConfigToolModbusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsConfigToolModbusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsConfigToolModbusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsConfigToolModbusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsConfigToolModbusResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_FTCALILOADREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_FTCALILOADREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsFtCaliLoadRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsFtCaliLoadRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsFtCaliLoadRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_wire_size
         */
        static const size_t max_wire_bytes = 133;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsFtCaliLoadRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsFtCaliLoadRequest<T>::codec_identity =
        "UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsFtCaliLoadRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsFtCaliLoadRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsFtCaliLoadRequest> : RecordMetadata_Ros1Xarm_msgsFtCaliLoadRequest<uwvm_custom::Ros1Xarm_msgsFtCaliLoadRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsFtCaliLoadRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsFtCaliLoadRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsFtCaliLoadRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsFtCaliLoadRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_FTCALILOADRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_FTCALILOADRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsFtCaliLoadResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsFtCaliLoadResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsFtCaliLoadResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsFtCaliLoadResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsFtCaliLoadResponse<T>::codec_identity =
        "UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsFtCaliLoadResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsFtCaliLoadResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsFtCaliLoadResponse> : RecordMetadata_Ros1Xarm_msgsFtCaliLoadResponse<uwvm_custom::Ros1Xarm_msgsFtCaliLoadResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsFtCaliLoadResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsFtCaliLoadResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsFtCaliLoadResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsFtCaliLoadResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_FTIDENLOADREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_FTIDENLOADREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsFtIdenLoadRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsFtIdenLoadRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsFtIdenLoadRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsFtIdenLoadRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsFtIdenLoadRequest<T>::codec_identity =
        "UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsFtIdenLoadRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsFtIdenLoadRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsFtIdenLoadRequest> : RecordMetadata_Ros1Xarm_msgsFtIdenLoadRequest<uwvm_custom::Ros1Xarm_msgsFtIdenLoadRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsFtIdenLoadRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsFtIdenLoadRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsFtIdenLoadRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsFtIdenLoadRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_FTIDENLOADRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_FTIDENLOADRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsFtIdenLoadResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsFtIdenLoadResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsFtIdenLoadResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_wire_size
         */
        static const size_t max_wire_bytes = 394;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsFtIdenLoadResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsFtIdenLoadResponse<T>::codec_identity =
        "UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsFtIdenLoadResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsFtIdenLoadResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsFtIdenLoadResponse> : RecordMetadata_Ros1Xarm_msgsFtIdenLoadResponse<uwvm_custom::Ros1Xarm_msgsFtIdenLoadResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsFtIdenLoadResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsFtIdenLoadResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsFtIdenLoadResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsFtIdenLoadResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetAnalogIORequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetAnalogIORequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetAnalogIORequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetAnalogIORequest<T>::codec_identity =
        "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetAnalogIORequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetAnalogIORequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest> : RecordMetadata_Ros1Xarm_msgsGetAnalogIORequest<uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetAnalogIORequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetAnalogIORequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetAnalogIOResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetAnalogIOResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_wire_size
         */
        static const size_t max_wire_bytes = 266;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetAnalogIOResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetAnalogIOResponse<T>::codec_identity =
        "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetAnalogIOResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetAnalogIOResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse> : RecordMetadata_Ros1Xarm_msgsGetAnalogIOResponse<uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetAnalogIOResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetAnalogIOResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIOREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetControllerDigitalIORequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIORequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetControllerDigitalIORequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetControllerDigitalIORequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetControllerDigitalIORequest<T>::codec_identity =
        "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetControllerDigitalIORequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetControllerDigitalIORequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIORequest> :
        RecordMetadata_Ros1Xarm_msgsGetControllerDigitalIORequest<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIORequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetControllerDigitalIORequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetControllerDigitalIORequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETCONTROLLERDIGITALIORESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetControllerDigitalIOResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIOResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetControllerDigitalIOResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_wire_size
         */
        static const size_t max_wire_bytes = 264;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetControllerDigitalIOResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetControllerDigitalIOResponse<T>::codec_identity =
        "UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetControllerDigitalIOResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetControllerDigitalIOResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIOResponse> :
        RecordMetadata_Ros1Xarm_msgsGetControllerDigitalIOResponse<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIOResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetControllerDigitalIOResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetControllerDigitalIOResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetDigitalIORequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetDigitalIORequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetDigitalIORequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetDigitalIORequest<T>::codec_identity =
        "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetDigitalIORequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetDigitalIORequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest> : RecordMetadata_Ros1Xarm_msgsGetDigitalIORequest<uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetDigitalIORequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetDigitalIORequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetDigitalIOResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetDigitalIOResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_wire_size
         */
        static const size_t max_wire_bytes = 270;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetDigitalIOResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetDigitalIOResponse<T>::codec_identity =
        "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetDigitalIOResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetDigitalIOResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse> :
        RecordMetadata_Ros1Xarm_msgsGetDigitalIOResponse<uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetDigitalIOResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetDigitalIOResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetErrRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetErrRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetErrRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetErrRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetErrRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetErrRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetErrRequest<T>::codec_identity =
        "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetErrRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetErrRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetErrRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetErrRequest> : RecordMetadata_Ros1Xarm_msgsGetErrRequest<uwvm_custom::Ros1Xarm_msgsGetErrRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetErrRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetErrRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetErrRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetErrRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetErrRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetErrRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetErrRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetErrRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetErrRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetErrRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETERRRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetErrResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetErrResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetErrResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetErrResponse_wire_size
         */
        static const size_t max_wire_bytes = 264;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetErrResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetErrResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetErrResponse<T>::codec_identity =
        "UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetErrResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetErrResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetErrResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetErrResponse> : RecordMetadata_Ros1Xarm_msgsGetErrResponse<uwvm_custom::Ros1Xarm_msgsGetErrResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetErrResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetErrResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetErrResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetErrResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetErrResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetErrResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetErrResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetErrResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetErrResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetErrResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETFLOAT32LISTREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETFLOAT32LISTREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetFloat32ListRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetFloat32ListRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetFloat32ListRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetFloat32ListRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetFloat32ListRequest<T>::codec_identity =
        "UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetFloat32ListRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetFloat32ListRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetFloat32ListRequest> :
        RecordMetadata_Ros1Xarm_msgsGetFloat32ListRequest<uwvm_custom::Ros1Xarm_msgsGetFloat32ListRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetFloat32ListRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetFloat32ListRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetFloat32ListRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetFloat32ListRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETFLOAT32LISTRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETFLOAT32LISTRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetFloat32ListResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetFloat32ListResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetFloat32ListResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_wire_size
         */
        static const size_t max_wire_bytes = 394;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetFloat32ListResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetFloat32ListResponse<T>::codec_identity =
        "UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetFloat32ListResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetFloat32ListResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetFloat32ListResponse> :
        RecordMetadata_Ros1Xarm_msgsGetFloat32ListResponse<uwvm_custom::Ros1Xarm_msgsGetFloat32ListResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetFloat32ListResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetFloat32ListResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetFloat32ListResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetFloat32ListResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETINT32REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETINT32REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetInt32Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetInt32Request>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetInt32Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetInt32Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetInt32Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetInt32Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetInt32Request<T>::codec_identity =
        "UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetInt32Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetInt32Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetInt32Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetInt32Request> : RecordMetadata_Ros1Xarm_msgsGetInt32Request<uwvm_custom::Ros1Xarm_msgsGetInt32Request>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetInt32Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetInt32Request_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetInt32Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetInt32Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetInt32Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetInt32Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetInt32Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetInt32Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetInt32Request& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetInt32Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETINT32RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETINT32RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetInt32Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetInt32Response>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetInt32Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetInt32Response_wire_size
         */
        static const size_t max_wire_bytes = 266;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetInt32Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetInt32Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetInt32Response<T>::codec_identity =
        "UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetInt32Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetInt32Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetInt32Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetInt32Response> : RecordMetadata_Ros1Xarm_msgsGetInt32Response<uwvm_custom::Ros1Xarm_msgsGetInt32Response>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetInt32Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetInt32Response_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetInt32Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetInt32Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetInt32Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetInt32Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetInt32Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetInt32Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetInt32Response& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetInt32Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETSETMODBUSDATAREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETSETMODBUSDATAREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetSetModbusDataRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetSetModbusDataRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetSetModbusDataRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_wire_size
         */
        static const size_t max_wire_bytes = 4105;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetSetModbusDataRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetSetModbusDataRequest<T>::codec_identity =
        "UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetSetModbusDataRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetSetModbusDataRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetSetModbusDataRequest> :
        RecordMetadata_Ros1Xarm_msgsGetSetModbusDataRequest<uwvm_custom::Ros1Xarm_msgsGetSetModbusDataRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetSetModbusDataRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetSetModbusDataRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetSetModbusDataRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetSetModbusDataRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETSETMODBUSDATARESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETSETMODBUSDATARESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetSetModbusDataResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetSetModbusDataResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetSetModbusDataResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_wire_size
         */
        static const size_t max_wire_bytes = 4362;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetSetModbusDataResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetSetModbusDataResponse<T>::codec_identity =
        "UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetSetModbusDataResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetSetModbusDataResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetSetModbusDataResponse> :
        RecordMetadata_Ros1Xarm_msgsGetSetModbusDataResponse<uwvm_custom::Ros1Xarm_msgsGetSetModbusDataResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetSetModbusDataResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetSetModbusDataResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetSetModbusDataResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetSetModbusDataResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGripperConfigRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperConfigRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGripperConfigRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGripperConfigRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGripperConfigRequest<T>::codec_identity =
        "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGripperConfigRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGripperConfigRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperConfigRequest> :
        RecordMetadata_Ros1Xarm_msgsGripperConfigRequest<uwvm_custom::Ros1Xarm_msgsGripperConfigRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGripperConfigRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperConfigRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGripperConfigRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGripperConfigRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERCONFIGRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGripperConfigResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperConfigResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGripperConfigResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGripperConfigResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGripperConfigResponse<T>::codec_identity =
        "UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGripperConfigResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGripperConfigResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperConfigResponse> :
        RecordMetadata_Ros1Xarm_msgsGripperConfigResponse<uwvm_custom::Ros1Xarm_msgsGripperConfigResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGripperConfigResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperConfigResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGripperConfigResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGripperConfigResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVEREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGripperMoveRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperMoveRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGripperMoveRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGripperMoveRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGripperMoveRequest<T>::codec_identity =
        "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGripperMoveRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGripperMoveRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperMoveRequest> : RecordMetadata_Ros1Xarm_msgsGripperMoveRequest<uwvm_custom::Ros1Xarm_msgsGripperMoveRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGripperMoveRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperMoveRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGripperMoveRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGripperMoveRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERMOVERESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGripperMoveResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperMoveResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGripperMoveResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGripperMoveResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGripperMoveResponse<T>::codec_identity =
        "UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGripperMoveResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGripperMoveResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperMoveResponse> : RecordMetadata_Ros1Xarm_msgsGripperMoveResponse<uwvm_custom::Ros1Xarm_msgsGripperMoveResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGripperMoveResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperMoveResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGripperMoveResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGripperMoveResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATEREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGripperStateRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperStateRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGripperStateRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GripperStateRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GripperStateRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGripperStateRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGripperStateRequest<T>::codec_identity =
        "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGripperStateRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGripperStateRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperStateRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperStateRequest> : RecordMetadata_Ros1Xarm_msgsGripperStateRequest<uwvm_custom::Ros1Xarm_msgsGripperStateRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGripperStateRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GripperStateRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperStateRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperStateRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperStateRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperStateRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGripperStateRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GripperStateRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGripperStateRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperStateRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GRIPPERSTATERESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGripperStateResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGripperStateResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGripperStateResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GripperStateResponse_wire_size
         */
        static const size_t max_wire_bytes = 268;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GripperStateResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGripperStateResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGripperStateResponse<T>::codec_identity =
        "UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGripperStateResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGripperStateResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GripperStateResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperStateResponse> :
        RecordMetadata_Ros1Xarm_msgsGripperStateResponse<uwvm_custom::Ros1Xarm_msgsGripperStateResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGripperStateResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GripperStateResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperStateResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperStateResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperStateResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperStateResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGripperStateResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GripperStateResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGripperStateResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperStateResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsMoveRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsMoveRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_wire_size
         */
        static const size_t max_wire_bytes = 148;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsMoveRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsMoveRequest<T>::codec_identity = "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsMoveRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsMoveRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveRequest> : RecordMetadata_Ros1Xarm_msgsMoveRequest<uwvm_custom::Ros1Xarm_msgsMoveRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsMoveRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsMoveRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsMoveRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsMoveResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsMoveResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsMoveResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsMoveResponse<T>::codec_identity = "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsMoveResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsMoveResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveResponse> : RecordMetadata_Ros1Xarm_msgsMoveResponse<uwvm_custom::Ros1Xarm_msgsMoveResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsMoveResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsMoveResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsMoveResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEAXISANGLEREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEAXISANGLEREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsMoveAxisAngleRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveAxisAngleRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsMoveAxisAngleRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_wire_size
         */
        static const size_t max_wire_bytes = 148;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsMoveAxisAngleRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsMoveAxisAngleRequest<T>::codec_identity =
        "UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsMoveAxisAngleRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsMoveAxisAngleRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveAxisAngleRequest> :
        RecordMetadata_Ros1Xarm_msgsMoveAxisAngleRequest<uwvm_custom::Ros1Xarm_msgsMoveAxisAngleRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsMoveAxisAngleRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveAxisAngleRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsMoveAxisAngleRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsMoveAxisAngleRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEAXISANGLERESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEAXISANGLERESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsMoveAxisAngleResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveAxisAngleResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsMoveAxisAngleResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsMoveAxisAngleResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsMoveAxisAngleResponse<T>::codec_identity =
        "UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsMoveAxisAngleResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsMoveAxisAngleResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveAxisAngleResponse> :
        RecordMetadata_Ros1Xarm_msgsMoveAxisAngleResponse<uwvm_custom::Ros1Xarm_msgsMoveAxisAngleResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsMoveAxisAngleResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveAxisAngleResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsMoveAxisAngleResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsMoveAxisAngleResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELOREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELOREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsMoveVeloRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveVeloRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsMoveVeloRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_wire_size
         */
        static const size_t max_wire_bytes = 136;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsMoveVeloRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsMoveVeloRequest<T>::codec_identity =
        "UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsMoveVeloRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsMoveVeloRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveVeloRequest> : RecordMetadata_Ros1Xarm_msgsMoveVeloRequest<uwvm_custom::Ros1Xarm_msgsMoveVeloRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsMoveVeloRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveVeloRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsMoveVeloRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsMoveVeloRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELORESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELORESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsMoveVeloResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveVeloResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsMoveVeloResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsMoveVeloResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsMoveVeloResponse<T>::codec_identity =
        "UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsMoveVeloResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsMoveVeloResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveVeloResponse> : RecordMetadata_Ros1Xarm_msgsMoveVeloResponse<uwvm_custom::Ros1Xarm_msgsMoveVeloResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsMoveVeloResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveVeloResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsMoveVeloResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsMoveVeloResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELOCITYREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELOCITYREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsMoveVelocityRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveVelocityRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsMoveVelocityRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_wire_size
         */
        static const size_t max_wire_bytes = 138;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsMoveVelocityRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsMoveVelocityRequest<T>::codec_identity =
        "UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsMoveVelocityRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsMoveVelocityRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveVelocityRequest> : RecordMetadata_Ros1Xarm_msgsMoveVelocityRequest<uwvm_custom::Ros1Xarm_msgsMoveVelocityRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsMoveVelocityRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveVelocityRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsMoveVelocityRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsMoveVelocityRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELOCITYRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEVELOCITYRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsMoveVelocityResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveVelocityResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsMoveVelocityResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsMoveVelocityResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsMoveVelocityResponse<T>::codec_identity =
        "UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsMoveVelocityResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsMoveVelocityResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveVelocityResponse> :
        RecordMetadata_Ros1Xarm_msgsMoveVelocityResponse<uwvm_custom::Ros1Xarm_msgsMoveVelocityResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsMoveVelocityResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveVelocityResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsMoveVelocityResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsMoveVelocityResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_PLAYTRAJREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_PLAYTRAJREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsPlayTrajRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsPlayTrajRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsPlayTrajRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_wire_size
         */
        static const size_t max_wire_bytes = 264;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsPlayTrajRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsPlayTrajRequest<T>::codec_identity =
        "UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsPlayTrajRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsPlayTrajRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsPlayTrajRequest> : RecordMetadata_Ros1Xarm_msgsPlayTrajRequest<uwvm_custom::Ros1Xarm_msgsPlayTrajRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsPlayTrajRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsPlayTrajRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsPlayTrajRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsPlayTrajRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_PLAYTRAJRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_PLAYTRAJRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsPlayTrajResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsPlayTrajResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsPlayTrajResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsPlayTrajResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsPlayTrajResponse<T>::codec_identity =
        "UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsPlayTrajResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsPlayTrajResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsPlayTrajResponse> : RecordMetadata_Ros1Xarm_msgsPlayTrajResponse<uwvm_custom::Ros1Xarm_msgsPlayTrajResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsPlayTrajResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsPlayTrajResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsPlayTrajResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsPlayTrajResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetAxisRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetAxisRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetAxisRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetAxisRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetAxisRequest<T>::codec_identity =
        "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetAxisRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetAxisRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetAxisRequest> : RecordMetadata_Ros1Xarm_msgsSetAxisRequest<uwvm_custom::Ros1Xarm_msgsSetAxisRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetAxisRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetAxisRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetAxisRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetAxisRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetAxisRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetAxisRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetAxisResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetAxisResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetAxisResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetAxisResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetAxisResponse<T>::codec_identity =
        "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetAxisResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetAxisResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetAxisResponse> : RecordMetadata_Ros1Xarm_msgsSetAxisResponse<uwvm_custom::Ros1Xarm_msgsSetAxisResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetAxisResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetAxisResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetAxisResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetAxisResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetAxisResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetAxisResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETCONTROLLERANALOGIOREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETCONTROLLERANALOGIOREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetControllerAnalogIORequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIORequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetControllerAnalogIORequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_wire_size
         */
        static const size_t max_wire_bytes = 6;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetControllerAnalogIORequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetControllerAnalogIORequest<T>::codec_identity =
        "UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetControllerAnalogIORequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetControllerAnalogIORequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIORequest> :
        RecordMetadata_Ros1Xarm_msgsSetControllerAnalogIORequest<uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIORequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetControllerAnalogIORequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetControllerAnalogIORequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETCONTROLLERANALOGIORESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETCONTROLLERANALOGIORESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetControllerAnalogIOResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIOResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetControllerAnalogIOResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetControllerAnalogIOResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetControllerAnalogIOResponse<T>::codec_identity =
        "UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetControllerAnalogIOResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetControllerAnalogIOResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIOResponse> :
        RecordMetadata_Ros1Xarm_msgsSetControllerAnalogIOResponse<uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIOResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetControllerAnalogIOResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetControllerAnalogIOResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetControllerAnalogIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetDigitalIORequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetDigitalIORequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetDigitalIORequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetDigitalIORequest<T>::codec_identity =
        "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetDigitalIORequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetDigitalIORequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest> : RecordMetadata_Ros1Xarm_msgsSetDigitalIORequest<uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetDigitalIORequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetDigitalIORequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetDigitalIOResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetDigitalIOResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetDigitalIOResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetDigitalIOResponse<T>::codec_identity =
        "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetDigitalIOResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetDigitalIOResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse> :
        RecordMetadata_Ros1Xarm_msgsSetDigitalIOResponse<uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetDigitalIOResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetDigitalIOResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETFLOAT32REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETFLOAT32REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetFloat32Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetFloat32Request>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetFloat32Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Request_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetFloat32Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetFloat32Request<T>::codec_identity =
        "UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetFloat32Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetFloat32Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetFloat32Request> : RecordMetadata_Ros1Xarm_msgsSetFloat32Request<uwvm_custom::Ros1Xarm_msgsSetFloat32Request>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetFloat32Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Request_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetFloat32Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetFloat32Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetFloat32Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetFloat32Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetFloat32Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetFloat32Request& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetFloat32Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETFLOAT32RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETFLOAT32RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetFloat32Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetFloat32Response>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetFloat32Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetFloat32Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetFloat32Response<T>::codec_identity =
        "UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetFloat32Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetFloat32Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetFloat32Response> : RecordMetadata_Ros1Xarm_msgsSetFloat32Response<uwvm_custom::Ros1Xarm_msgsSetFloat32Response>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetFloat32Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Response_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetFloat32Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetFloat32Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetFloat32Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetFloat32Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetFloat32Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetFloat32Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetFloat32Response& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetFloat32Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetInt16Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Request>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetInt16Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetInt16Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetInt16Request<T>::codec_identity =
        "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetInt16Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetInt16Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Request> : RecordMetadata_Ros1Xarm_msgsSetInt16Request<uwvm_custom::Ros1Xarm_msgsSetInt16Request>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetInt16Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetInt16Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetInt16Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetInt16Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetInt16Request& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetInt16Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetInt16Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Response>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetInt16Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetInt16Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetInt16Response<T>::codec_identity =
        "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetInt16Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetInt16Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Response> : RecordMetadata_Ros1Xarm_msgsSetInt16Response<uwvm_custom::Ros1Xarm_msgsSetInt16Response>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetInt16Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetInt16Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetInt16Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetInt16Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetInt16Response& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetInt16Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetLoadRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetLoadRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetLoadRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetLoadRequest_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetLoadRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetLoadRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetLoadRequest<T>::codec_identity =
        "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetLoadRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetLoadRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetLoadRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetLoadRequest> : RecordMetadata_Ros1Xarm_msgsSetLoadRequest<uwvm_custom::Ros1Xarm_msgsSetLoadRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetLoadRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetLoadRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetLoadRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetLoadRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetLoadRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetLoadRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetLoadRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetLoadRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetLoadRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetLoadRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETLOADRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetLoadResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetLoadResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetLoadResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetLoadResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetLoadResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetLoadResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetLoadResponse<T>::codec_identity =
        "UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetLoadResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetLoadResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetLoadResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetLoadResponse> : RecordMetadata_Ros1Xarm_msgsSetLoadResponse<uwvm_custom::Ros1Xarm_msgsSetLoadResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetLoadResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetLoadResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetLoadResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetLoadResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetLoadResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetLoadResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetLoadResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetLoadResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetLoadResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetLoadResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMODBUSTIMEOUTREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMODBUSTIMEOUTREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetModbusTimeoutRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetModbusTimeoutRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetModbusTimeoutRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetModbusTimeoutRequest<T>::codec_identity =
        "UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetModbusTimeoutRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetModbusTimeoutRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutRequest> :
        RecordMetadata_Ros1Xarm_msgsSetModbusTimeoutRequest<uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetModbusTimeoutRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetModbusTimeoutRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMODBUSTIMEOUTRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMODBUSTIMEOUTRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetModbusTimeoutResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetModbusTimeoutResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetModbusTimeoutResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetModbusTimeoutResponse<T>::codec_identity =
        "UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetModbusTimeoutResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetModbusTimeoutResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutResponse> :
        RecordMetadata_Ros1Xarm_msgsSetModbusTimeoutResponse<uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetModbusTimeoutResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetModbusTimeoutResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetModbusTimeoutResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMULTIPLEINTSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMULTIPLEINTSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetMultipleIntsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetMultipleIntsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetMultipleIntsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_wire_size
         */
        static const size_t max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetMultipleIntsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetMultipleIntsRequest<T>::codec_identity =
        "UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetMultipleIntsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetMultipleIntsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetMultipleIntsRequest> :
        RecordMetadata_Ros1Xarm_msgsSetMultipleIntsRequest<uwvm_custom::Ros1Xarm_msgsSetMultipleIntsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetMultipleIntsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetMultipleIntsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetMultipleIntsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetMultipleIntsRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMULTIPLEINTSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETMULTIPLEINTSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetMultipleIntsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetMultipleIntsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetMultipleIntsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetMultipleIntsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetMultipleIntsResponse<T>::codec_identity =
        "UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetMultipleIntsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetMultipleIntsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetMultipleIntsResponse> :
        RecordMetadata_Ros1Xarm_msgsSetMultipleIntsResponse<uwvm_custom::Ros1Xarm_msgsSetMultipleIntsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetMultipleIntsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetMultipleIntsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetMultipleIntsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetMultipleIntsResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETSTRINGREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETSTRINGREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetStringRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetStringRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetStringRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetStringRequest_wire_size
         */
        static const size_t max_wire_bytes = 264;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetStringRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetStringRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetStringRequest<T>::codec_identity =
        "UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetStringRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetStringRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetStringRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetStringRequest> : RecordMetadata_Ros1Xarm_msgsSetStringRequest<uwvm_custom::Ros1Xarm_msgsSetStringRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetStringRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetStringRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetStringRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetStringRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetStringRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetStringRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetStringRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetStringRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetStringRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetStringRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETSTRINGRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETSTRINGRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetStringResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetStringResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetStringResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetStringResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetStringResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetStringResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetStringResponse<T>::codec_identity =
        "UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetStringResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetStringResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetStringResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetStringResponse> : RecordMetadata_Ros1Xarm_msgsSetStringResponse<uwvm_custom::Ros1Xarm_msgsSetStringResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetStringResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetStringResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetStringResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetStringResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetStringResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetStringResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetStringResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetStringResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetStringResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetStringResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetToolModbusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetToolModbusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetToolModbusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_wire_size
         */
        static const size_t max_wire_bytes = 4102;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetToolModbusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetToolModbusRequest<T>::codec_identity =
        "UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetToolModbusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetToolModbusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetToolModbusRequest> :
        RecordMetadata_Ros1Xarm_msgsSetToolModbusRequest<uwvm_custom::Ros1Xarm_msgsSetToolModbusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetToolModbusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetToolModbusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetToolModbusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetToolModbusRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETTOOLMODBUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetToolModbusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetToolModbusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetToolModbusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_wire_size
         */
        static const size_t max_wire_bytes = 4362;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetToolModbusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetToolModbusResponse<T>::codec_identity =
        "UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetToolModbusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetToolModbusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetToolModbusResponse> :
        RecordMetadata_Ros1Xarm_msgsSetToolModbusResponse<uwvm_custom::Ros1Xarm_msgsSetToolModbusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetToolModbusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetToolModbusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetToolModbusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetToolModbusResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsTCPOffsetRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsTCPOffsetRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsTCPOffsetRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsTCPOffsetRequest<T>::codec_identity =
        "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsTCPOffsetRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsTCPOffsetRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest> : RecordMetadata_Ros1Xarm_msgsTCPOffsetRequest<uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsTCPOffsetRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsTCPOffsetRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsTCPOffsetResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsTCPOffsetResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsTCPOffsetResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsTCPOffsetResponse<T>::codec_identity =
        "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsTCPOffsetResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsTCPOffsetResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse> : RecordMetadata_Ros1Xarm_msgsTCPOffsetResponse<uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsTCPOffsetResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsTCPOffsetResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_VACUUMGRIPPERCTRLREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_VACUUMGRIPPERCTRLREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsVacuumGripperCtrlRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsVacuumGripperCtrlRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_wire_size
         */
        static const size_t max_wire_bytes = 13;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsVacuumGripperCtrlRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsVacuumGripperCtrlRequest<T>::codec_identity =
        "UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsVacuumGripperCtrlRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsVacuumGripperCtrlRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlRequest> :
        RecordMetadata_Ros1Xarm_msgsVacuumGripperCtrlRequest<uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsVacuumGripperCtrlRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsVacuumGripperCtrlRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_VACUUMGRIPPERCTRLRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_VACUUMGRIPPERCTRLRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsVacuumGripperCtrlResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsVacuumGripperCtrlResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsVacuumGripperCtrlResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsVacuumGripperCtrlResponse<T>::codec_identity =
        "UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsVacuumGripperCtrlResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsVacuumGripperCtrlResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlResponse> :
        RecordMetadata_Ros1Xarm_msgsVacuumGripperCtrlResponse<uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsVacuumGripperCtrlResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsVacuumGripperCtrlResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsVacuumGripperCtrlResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerExec_planRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerExec_planRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerExec_planRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerExec_planRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerExec_planRequest<T>::codec_identity =
        "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerExec_planRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerExec_planRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerExec_planRequest> : RecordMetadata_Ros1Xarm_plannerExec_planRequest<uwvm_custom::Ros1Xarm_plannerExec_planRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerExec_planRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerExec_planRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_exec_planRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_exec_planRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_exec_planRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerExec_planRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerExec_planRequest& out)
        {
            return !roswasmc_bounded_1_xarm_planner_exec_planRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerExec_planResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerExec_planResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerExec_planResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerExec_planResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerExec_planResponse<T>::codec_identity =
        "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerExec_planResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerExec_planResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerExec_planResponse> :
        RecordMetadata_Ros1Xarm_plannerExec_planResponse<uwvm_custom::Ros1Xarm_plannerExec_planResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerExec_planResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerExec_planResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_exec_planResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_exec_planResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_exec_planResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerExec_planResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerExec_planResponse& out)
        {
            return !roswasmc_bounded_1_xarm_planner_exec_planResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerJoint_planRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerJoint_planRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerJoint_planRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerJoint_planRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerJoint_planRequest<T>::codec_identity =
        "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerJoint_planRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerJoint_planRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerJoint_planRequest> :
        RecordMetadata_Ros1Xarm_plannerJoint_planRequest<uwvm_custom::Ros1Xarm_plannerJoint_planRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerJoint_planRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerJoint_planRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_joint_planRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_joint_planRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_joint_planRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerJoint_planRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerJoint_planRequest& out)
        {
            return !roswasmc_bounded_1_xarm_planner_joint_planRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerJoint_planResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerJoint_planResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerJoint_planResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerJoint_planResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerJoint_planResponse<T>::codec_identity =
        "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerJoint_planResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerJoint_planResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerJoint_planResponse> :
        RecordMetadata_Ros1Xarm_plannerJoint_planResponse<uwvm_custom::Ros1Xarm_plannerJoint_planResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerJoint_planResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerJoint_planResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_joint_planResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_joint_planResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_joint_planResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerJoint_planResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerJoint_planResponse& out)
        {
            return !roswasmc_bounded_1_xarm_planner_joint_planResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerPose_planRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerPose_planRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerPose_planRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerPose_planRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerPose_planRequest<T>::codec_identity =
        "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerPose_planRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerPose_planRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerPose_planRequest> : RecordMetadata_Ros1Xarm_plannerPose_planRequest<uwvm_custom::Ros1Xarm_plannerPose_planRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerPose_planRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerPose_planRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_pose_planRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_pose_planRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_pose_planRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerPose_planRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerPose_planRequest& out)
        {
            return !roswasmc_bounded_1_xarm_planner_pose_planRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerPose_planResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerPose_planResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerPose_planResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerPose_planResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerPose_planResponse<T>::codec_identity =
        "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerPose_planResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerPose_planResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerPose_planResponse> :
        RecordMetadata_Ros1Xarm_plannerPose_planResponse<uwvm_custom::Ros1Xarm_plannerPose_planResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerPose_planResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerPose_planResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_pose_planResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_pose_planResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_pose_planResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerPose_planResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerPose_planResponse& out)
        {
            return !roswasmc_bounded_1_xarm_planner_pose_planResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerSingle_straight_planRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerSingle_straight_planRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerSingle_straight_planRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerSingle_straight_planRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerSingle_straight_planRequest<T>::codec_identity =
        "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerSingle_straight_planRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerSingle_straight_planRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerSingle_straight_planRequest> :
        RecordMetadata_Ros1Xarm_plannerSingle_straight_planRequest<uwvm_custom::Ros1Xarm_plannerSingle_straight_planRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerSingle_straight_planRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerSingle_straight_planRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_single_straight_planRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_single_straight_planRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_single_straight_planRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerSingle_straight_planRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerSingle_straight_planRequest& out)
        {
            return !roswasmc_bounded_1_xarm_planner_single_straight_planRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerSingle_straight_planResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerSingle_straight_planResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerSingle_straight_planResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerSingle_straight_planResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerSingle_straight_planResponse<T>::codec_identity =
        "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerSingle_straight_planResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerSingle_straight_planResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerSingle_straight_planResponse> :
        RecordMetadata_Ros1Xarm_plannerSingle_straight_planResponse<uwvm_custom::Ros1Xarm_plannerSingle_straight_planResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerSingle_straight_planResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerSingle_straight_planResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_single_straight_planResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_single_straight_planResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_single_straight_planResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerSingle_straight_planResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerSingle_straight_planResponse& out)
        {
            return !roswasmc_bounded_1_xarm_planner_single_straight_planResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
