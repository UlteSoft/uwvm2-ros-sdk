/**
 * @file bounded_records.hpp
 * @brief Bind complete original C storage to checked C++ canonical codecs and declared defaults.
 * @details Owned inline fields retain original widths, bounds and units. Encode/decode commit
 * only complete accepted values. Metadata describes a codec and creates no ROS authority.
 */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <ros/cpp/roswasm/roswasmcpp.hpp>
#include <ufactory/c/ros2/ufactory-xarm-ros2-master-complete/bounded_records.h>

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
     * @brief Complete bounded storage for Ros2Std_msgsMsgHeader.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_std_msgs_msg_Header_valid
     */
    typedef roswasmc_bounded_2_std_msgs_msg_Header Ros2Std_msgsMsgHeader;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsMsgCIOState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_msg_CIOState_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_msg_CIOState Ros2Xarm_msgsMsgCIOState;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsMsgIOState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_msg_IOState_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_msg_IOState Ros2Xarm_msgsMsgIOState;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsMsgRobotMsg.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_msg_RobotMsg Ros2Xarm_msgsMsgRobotMsg;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvBioGripperCtrl_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request Ros2Xarm_msgsSrvBioGripperCtrl_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvBioGripperCtrl_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response Ros2Xarm_msgsSrvBioGripperCtrl_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvBioGripperEnable_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request Ros2Xarm_msgsSrvBioGripperEnable_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvBioGripperEnable_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response Ros2Xarm_msgsSrvBioGripperEnable_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvCall_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_Call_Request Ros2Xarm_msgsSrvCall_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvCall_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_Call_Response Ros2Xarm_msgsSrvCall_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvFtCaliLoad_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request Ros2Xarm_msgsSrvFtCaliLoad_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvFtCaliLoad_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response Ros2Xarm_msgsSrvFtCaliLoad_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvFtForceConfig_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request Ros2Xarm_msgsSrvFtForceConfig_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvFtForceConfig_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response Ros2Xarm_msgsSrvFtForceConfig_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvFtForcePid_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request Ros2Xarm_msgsSrvFtForcePid_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvFtForcePid_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response Ros2Xarm_msgsSrvFtForcePid_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvFtImpedance_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request Ros2Xarm_msgsSrvFtImpedance_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvFtImpedance_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response Ros2Xarm_msgsSrvFtImpedance_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetAnalogIO_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request Ros2Xarm_msgsSrvGetAnalogIO_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetAnalogIO_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response Ros2Xarm_msgsSrvGetAnalogIO_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetDigitalIO_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request Ros2Xarm_msgsSrvGetDigitalIO_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetDigitalIO_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response Ros2Xarm_msgsSrvGetDigitalIO_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetFloat32_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request Ros2Xarm_msgsSrvGetFloat32_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetFloat32_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response Ros2Xarm_msgsSrvGetFloat32_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetFloat32List_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request Ros2Xarm_msgsSrvGetFloat32List_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetFloat32List_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response Ros2Xarm_msgsSrvGetFloat32List_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetInt16_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request Ros2Xarm_msgsSrvGetInt16_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetInt16_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response Ros2Xarm_msgsSrvGetInt16_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetInt16List_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request Ros2Xarm_msgsSrvGetInt16List_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetInt16List_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response Ros2Xarm_msgsSrvGetInt16List_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetInt32_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request Ros2Xarm_msgsSrvGetInt32_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetInt32_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response Ros2Xarm_msgsSrvGetInt32_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetInt32ByType_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request Ros2Xarm_msgsSrvGetInt32ByType_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetInt32ByType_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response Ros2Xarm_msgsSrvGetInt32ByType_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetSetModbusData_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request Ros2Xarm_msgsSrvGetSetModbusData_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGetSetModbusData_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response Ros2Xarm_msgsSrvGetSetModbusData_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGripperMove_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request Ros2Xarm_msgsSrvGripperMove_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvGripperMove_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response Ros2Xarm_msgsSrvGripperMove_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvIdenLoad_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request Ros2Xarm_msgsSrvIdenLoad_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvIdenLoad_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response Ros2Xarm_msgsSrvIdenLoad_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvLinearTrackSetPos_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request Ros2Xarm_msgsSrvLinearTrackSetPos_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvLinearTrackSetPos_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response Ros2Xarm_msgsSrvLinearTrackSetPos_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvMoveCartesian_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request Ros2Xarm_msgsSrvMoveCartesian_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvMoveCartesian_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response Ros2Xarm_msgsSrvMoveCartesian_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvMoveCircle_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request Ros2Xarm_msgsSrvMoveCircle_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvMoveCircle_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response Ros2Xarm_msgsSrvMoveCircle_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvMoveHome_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request Ros2Xarm_msgsSrvMoveHome_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvMoveHome_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response Ros2Xarm_msgsSrvMoveHome_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvMoveJoint_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request Ros2Xarm_msgsSrvMoveJoint_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvMoveJoint_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response Ros2Xarm_msgsSrvMoveJoint_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvMoveVelocity_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request Ros2Xarm_msgsSrvMoveVelocity_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvMoveVelocity_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response Ros2Xarm_msgsSrvMoveVelocity_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvPlanExec_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request Ros2Xarm_msgsSrvPlanExec_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvPlanExec_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response Ros2Xarm_msgsSrvPlanExec_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvPlanJoint_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request Ros2Xarm_msgsSrvPlanJoint_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvPlanJoint_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response Ros2Xarm_msgsSrvPlanJoint_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvPlanPose_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request Ros2Xarm_msgsSrvPlanPose_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvPlanPose_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response Ros2Xarm_msgsSrvPlanPose_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvPlanSingleStraight_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request Ros2Xarm_msgsSrvPlanSingleStraight_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvPlanSingleStraight_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response Ros2Xarm_msgsSrvPlanSingleStraight_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvRobotiqActivate_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request Ros2Xarm_msgsSrvRobotiqActivate_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvRobotiqActivate_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response Ros2Xarm_msgsSrvRobotiqActivate_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvRobotiqGetStatus_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request Ros2Xarm_msgsSrvRobotiqGetStatus_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvRobotiqGetStatus_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response Ros2Xarm_msgsSrvRobotiqGetStatus_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvRobotiqMove_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request Ros2Xarm_msgsSrvRobotiqMove_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvRobotiqMove_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response Ros2Xarm_msgsSrvRobotiqMove_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvRobotiqReset_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request Ros2Xarm_msgsSrvRobotiqReset_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvRobotiqReset_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response Ros2Xarm_msgsSrvRobotiqReset_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetAnalogIO_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request Ros2Xarm_msgsSrvSetAnalogIO_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetAnalogIO_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response Ros2Xarm_msgsSrvSetAnalogIO_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetDigitalIO_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request Ros2Xarm_msgsSrvSetDigitalIO_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetDigitalIO_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response Ros2Xarm_msgsSrvSetDigitalIO_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetFloat32_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request Ros2Xarm_msgsSrvSetFloat32_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetFloat32_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response Ros2Xarm_msgsSrvSetFloat32_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetFloat32List_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request Ros2Xarm_msgsSrvSetFloat32List_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetFloat32List_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response Ros2Xarm_msgsSrvSetFloat32List_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetInt16_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request Ros2Xarm_msgsSrvSetInt16_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetInt16_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response Ros2Xarm_msgsSrvSetInt16_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetInt16ById_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request Ros2Xarm_msgsSrvSetInt16ById_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetInt16ById_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response Ros2Xarm_msgsSrvSetInt16ById_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetInt16List_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request Ros2Xarm_msgsSrvSetInt16List_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetInt16List_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response Ros2Xarm_msgsSrvSetInt16List_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetInt32_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request Ros2Xarm_msgsSrvSetInt32_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetInt32_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response Ros2Xarm_msgsSrvSetInt32_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetInt32ByType_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request Ros2Xarm_msgsSrvSetInt32ByType_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetInt32ByType_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response Ros2Xarm_msgsSrvSetInt32ByType_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetModbusTimeout_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request Ros2Xarm_msgsSrvSetModbusTimeout_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetModbusTimeout_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response Ros2Xarm_msgsSrvSetModbusTimeout_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetTcpLoad_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request Ros2Xarm_msgsSrvSetTcpLoad_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvSetTcpLoad_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response Ros2Xarm_msgsSrvSetTcpLoad_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvTrajCtrl_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request Ros2Xarm_msgsSrvTrajCtrl_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvTrajCtrl_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response Ros2Xarm_msgsSrvTrajCtrl_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvTrajPlay_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request Ros2Xarm_msgsSrvTrajPlay_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvTrajPlay_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response Ros2Xarm_msgsSrvTrajPlay_Response;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request Ros2Xarm_msgsSrvVacuumGripperCtrl_Request;
    /**
     * @brief Complete bounded storage for Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_valid
     */
    typedef roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response Ros2Xarm_msgsSrvVacuumGripperCtrl_Response;
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
        static const size_t max_wire_bytes = 8;
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
    const size_t RecordMetadata_Ros2Builtin_interfacesMsgTime<T>::max_wire_bytes;
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
                return false;
            size_t n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
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
        static const size_t max_wire_bytes = 24;
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
    const size_t RecordMetadata_Ros2Geometry_msgsMsgPoint<T>::max_wire_bytes;
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
                return false;
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Point_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
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
        static const size_t max_wire_bytes = 32;
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
    const size_t RecordMetadata_Ros2Geometry_msgsMsgQuaternion<T>::max_wire_bytes;
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
                return false;
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
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
        static const size_t max_wire_bytes = 56;
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
    const size_t RecordMetadata_Ros2Geometry_msgsMsgPose<T>::max_wire_bytes;
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
                return false;
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
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
        static const size_t max_wire_bytes = 268;
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
    const size_t RecordMetadata_Ros2Std_msgsMsgHeader<T>::max_wire_bytes;
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
                return false;
            size_t n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_std_msgs_msg_Header_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_MSG_CIOSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_MSG_CIOSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsMsgCIOState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsMsgCIOState>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsMsgCIOState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_msg_CIOState_wire_size
         */
        static const size_t max_wire_bytes = 328;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_msg_CIOState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_87e50011fee05d07ce49effe9f8fd2be4e5edf3a09a2b3cd735692fea85c2268";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsMsgCIOState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsMsgCIOState<T>::codec_identity = "UWVMROS1_87e50011fee05d07ce49effe9f8fd2be4e5edf3a09a2b3cd735692fea85c2268";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsMsgCIOState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsMsgCIOState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_msg_CIOState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsMsgCIOState> : RecordMetadata_Ros2Xarm_msgsMsgCIOState<uwvm_custom::Ros2Xarm_msgsMsgCIOState>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsMsgCIOState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_msg_CIOState_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsMsgCIOState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_msg_CIOState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_msg_CIOState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_msg_CIOState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsMsgCIOState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_msg_CIOState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsMsgCIOState& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_msg_CIOState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_MSG_IOSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_MSG_IOSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsMsgIOState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsMsgIOState>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsMsgIOState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_msg_IOState_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_msg_IOState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8f3e77d7d4c6ac1e49dadd8f4615cb015c028ecf494050a5a6b794d310863dc3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsMsgIOState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsMsgIOState<T>::codec_identity = "UWVMROS1_8f3e77d7d4c6ac1e49dadd8f4615cb015c028ecf494050a5a6b794d310863dc3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsMsgIOState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsMsgIOState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_msg_IOState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsMsgIOState> : RecordMetadata_Ros2Xarm_msgsMsgIOState<uwvm_custom::Ros2Xarm_msgsMsgIOState>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsMsgIOState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_msg_IOState_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsMsgIOState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_msg_IOState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_msg_IOState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_msg_IOState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsMsgIOState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_msg_IOState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsMsgIOState& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_msg_IOState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_MSG_ROBOTMSG
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_MSG_ROBOTMSG 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsMsgRobotMsg.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsMsgRobotMsg>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsMsgRobotMsg
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_wire_size
         */
        static const size_t max_wire_bytes = 362;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_065254beab3e0439a6fb2965a10d270ca0aef1384523118d04cb39e886841c78";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsMsgRobotMsg<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsMsgRobotMsg<T>::codec_identity = "UWVMROS1_065254beab3e0439a6fb2965a10d270ca0aef1384523118d04cb39e886841c78";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsMsgRobotMsg<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsMsgRobotMsg.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsMsgRobotMsg> : RecordMetadata_Ros2Xarm_msgsMsgRobotMsg<uwvm_custom::Ros2Xarm_msgsMsgRobotMsg>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsMsgRobotMsg transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsMsgRobotMsg const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsMsgRobotMsg.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsMsgRobotMsg& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvBioGripperCtrl_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvBioGripperCtrl_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_wire_size
         */
        static const size_t max_wire_bytes = 7;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7eccf0c454f9b64aae93f91d23083b3b5121f540b0d0406142ea7e234a2f634f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvBioGripperCtrl_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvBioGripperCtrl_Request<T>::codec_identity =
        "UWVMROS1_7eccf0c454f9b64aae93f91d23083b3b5121f540b0d0406142ea7e234a2f634f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvBioGripperCtrl_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvBioGripperCtrl_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvBioGripperCtrl_Request<uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvBioGripperCtrl_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Request value = uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvBioGripperCtrl_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvBioGripperCtrl_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERCTRL_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvBioGripperCtrl_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvBioGripperCtrl_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c72e0d7eb90ef20e8f7f521346886fc558547a1357a7915058d0e47c238f316a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvBioGripperCtrl_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvBioGripperCtrl_Response<T>::codec_identity =
        "UWVMROS1_c72e0d7eb90ef20e8f7f521346886fc558547a1357a7915058d0e47c238f316a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvBioGripperCtrl_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvBioGripperCtrl_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvBioGripperCtrl_Response<uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvBioGripperCtrl_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvBioGripperCtrl_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvBioGripperCtrl_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvBioGripperEnable_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvBioGripperEnable_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_wire_size
         */
        static const size_t max_wire_bytes = 6;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_611333734053d9a2c9d3f776be73081c9ddcaaf435d927e1c87ff9b74f12eb43";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvBioGripperEnable_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvBioGripperEnable_Request<T>::codec_identity =
        "UWVMROS1_611333734053d9a2c9d3f776be73081c9ddcaaf435d927e1c87ff9b74f12eb43";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvBioGripperEnable_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvBioGripperEnable_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvBioGripperEnable_Request<uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvBioGripperEnable_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Request value = uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvBioGripperEnable_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvBioGripperEnable_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_BIOGRIPPERENABLE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvBioGripperEnable_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvBioGripperEnable_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_95ffb8f48b2e1bf41855513b3234b6a7b070e0d58d5a07d98fd7de4454034586";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvBioGripperEnable_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvBioGripperEnable_Response<T>::codec_identity =
        "UWVMROS1_95ffb8f48b2e1bf41855513b3234b6a7b070e0d58d5a07d98fd7de4454034586";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvBioGripperEnable_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvBioGripperEnable_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvBioGripperEnable_Response<uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvBioGripperEnable_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvBioGripperEnable_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvBioGripperEnable_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvCall_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvCall_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvCall_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6646b9fc8c0050e5c56cf918988e8cf8d7c633aabece1be11ec515f1ca2f837d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvCall_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvCall_Request<T>::codec_identity =
        "UWVMROS1_6646b9fc8c0050e5c56cf918988e8cf8d7c633aabece1be11ec515f1ca2f837d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvCall_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvCall_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvCall_Request> : RecordMetadata_Ros2Xarm_msgsSrvCall_Request<uwvm_custom::Ros2Xarm_msgsSrvCall_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvCall_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvCall_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_Call_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_Call_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_Call_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvCall_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvCall_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_Call_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_CALL_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvCall_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvCall_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvCall_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Response_wire_size
         */
        static const size_t max_wire_bytes = 264;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c41e249f4ee21ea39233597918f3204e3a276e70c67b120b164c9cd3852c19da";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvCall_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvCall_Response<T>::codec_identity =
        "UWVMROS1_c41e249f4ee21ea39233597918f3204e3a276e70c67b120b164c9cd3852c19da";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvCall_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvCall_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvCall_Response> : RecordMetadata_Ros2Xarm_msgsSrvCall_Response<uwvm_custom::Ros2Xarm_msgsSrvCall_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvCall_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvCall_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_Call_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_Call_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_Call_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvCall_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_Call_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvCall_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_Call_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvFtCaliLoad_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvFtCaliLoad_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_wire_size
         */
        static const size_t max_wire_bytes = 149;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c14b8269ccc16d30043f48a086d43bf98eca1e7746ef52be4ba0f9cf392eb2fb";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvFtCaliLoad_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvFtCaliLoad_Request<T>::codec_identity =
        "UWVMROS1_c14b8269ccc16d30043f48a086d43bf98eca1e7746ef52be4ba0f9cf392eb2fb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvFtCaliLoad_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvFtCaliLoad_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvFtCaliLoad_Request<uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvFtCaliLoad_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Request value = uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvFtCaliLoad_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvFtCaliLoad_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTCALILOAD_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvFtCaliLoad_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvFtCaliLoad_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_990034f596c4a8e859c06c438635306e2938e763b5bea45019cdf5223347e4e7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvFtCaliLoad_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvFtCaliLoad_Response<T>::codec_identity =
        "UWVMROS1_990034f596c4a8e859c06c438635306e2938e763b5bea45019cdf5223347e4e7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvFtCaliLoad_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvFtCaliLoad_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvFtCaliLoad_Response<uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvFtCaliLoad_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvFtCaliLoad_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvFtCaliLoad_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvFtForceConfig_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvFtForceConfig_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_wire_size
         */
        static const size_t max_wire_bytes = 334;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0b337f5e2eb604e3057ca3378f3e1cb2b2032bac9d8c60e6b64ac85548b94e63";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvFtForceConfig_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvFtForceConfig_Request<T>::codec_identity =
        "UWVMROS1_0b337f5e2eb604e3057ca3378f3e1cb2b2032bac9d8c60e6b64ac85548b94e63";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvFtForceConfig_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvFtForceConfig_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvFtForceConfig_Request<uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvFtForceConfig_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvFtForceConfig_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCECONFIG_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvFtForceConfig_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvFtForceConfig_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_43ef4f729fcc96502a26261afb70e25a7cdd02d03097d93099b691dec28d59dc";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvFtForceConfig_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvFtForceConfig_Response<T>::codec_identity =
        "UWVMROS1_43ef4f729fcc96502a26261afb70e25a7cdd02d03097d93099b691dec28d59dc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvFtForceConfig_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvFtForceConfig_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvFtForceConfig_Response<uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvFtForceConfig_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvFtForceConfig_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvFtForceConfig_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvFtForcePid_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvFtForcePid_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_wire_size
         */
        static const size_t max_wire_bytes = 528;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b69ed1d3e81b0b83a498bff16aab71a8f26e472c5e5bc1fad4559e781366b367";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvFtForcePid_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvFtForcePid_Request<T>::codec_identity =
        "UWVMROS1_b69ed1d3e81b0b83a498bff16aab71a8f26e472c5e5bc1fad4559e781366b367";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvFtForcePid_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvFtForcePid_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvFtForcePid_Request<uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvFtForcePid_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvFtForcePid_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTFORCEPID_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvFtForcePid_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvFtForcePid_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_308d5da22a4445f2b001974907c5b459e5b01ee06fb5029096ae86220e046c89";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvFtForcePid_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvFtForcePid_Response<T>::codec_identity =
        "UWVMROS1_308d5da22a4445f2b001974907c5b459e5b01ee06fb5029096ae86220e046c89";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvFtForcePid_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvFtForcePid_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvFtForcePid_Response<uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvFtForcePid_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvFtForcePid_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvFtForcePid_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvFtImpedance_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvFtImpedance_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_wire_size
         */
        static const size_t max_wire_bytes = 466;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_66d926f6b7e15bcfc2023215e434d931a77895df36376bb1dfd2cae852c9078d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvFtImpedance_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvFtImpedance_Request<T>::codec_identity =
        "UWVMROS1_66d926f6b7e15bcfc2023215e434d931a77895df36376bb1dfd2cae852c9078d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvFtImpedance_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvFtImpedance_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvFtImpedance_Request<uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvFtImpedance_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvFtImpedance_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_FTIMPEDANCE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvFtImpedance_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvFtImpedance_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_47e50f8950f42a2ee65ea8e760b98a78d4cd57729f528785c8307f072ad64cdb";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvFtImpedance_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvFtImpedance_Response<T>::codec_identity =
        "UWVMROS1_47e50f8950f42a2ee65ea8e760b98a78d4cd57729f528785c8307f072ad64cdb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvFtImpedance_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvFtImpedance_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvFtImpedance_Response<uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvFtImpedance_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvFtImpedance_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvFtImpedance_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetAnalogIO_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetAnalogIO_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_41f0b8344aedb31609753c92a949f995b9b36e36f4bd45080e7c806e4977d3c2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetAnalogIO_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetAnalogIO_Request<T>::codec_identity =
        "UWVMROS1_41f0b8344aedb31609753c92a949f995b9b36e36f4bd45080e7c806e4977d3c2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetAnalogIO_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetAnalogIO_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvGetAnalogIO_Request<uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetAnalogIO_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetAnalogIO_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETANALOGIO_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetAnalogIO_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetAnalogIO_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_wire_size
         */
        static const size_t max_wire_bytes = 266;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c60eab1570b682fa2a1de07edbcf04155d63abf98cfc6d0aa3ebfa39445d5bbc";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetAnalogIO_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetAnalogIO_Response<T>::codec_identity =
        "UWVMROS1_c60eab1570b682fa2a1de07edbcf04155d63abf98cfc6d0aa3ebfa39445d5bbc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetAnalogIO_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetAnalogIO_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvGetAnalogIO_Response<uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetAnalogIO_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetAnalogIO_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetAnalogIO_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetDigitalIO_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetDigitalIO_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_46633e09d5231d69307a8dbdbd90c2d81ef6ad279b961da81b2af86fed51f188";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetDigitalIO_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetDigitalIO_Request<T>::codec_identity =
        "UWVMROS1_46633e09d5231d69307a8dbdbd90c2d81ef6ad279b961da81b2af86fed51f188";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetDigitalIO_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetDigitalIO_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvGetDigitalIO_Request<uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetDigitalIO_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetDigitalIO_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETDIGITALIO_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetDigitalIO_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetDigitalIO_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_wire_size
         */
        static const size_t max_wire_bytes = 330;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_325fb8d7a911dfc1746a289380e295d6e153ac2fad2018932ce7cd431511985c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetDigitalIO_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetDigitalIO_Response<T>::codec_identity =
        "UWVMROS1_325fb8d7a911dfc1746a289380e295d6e153ac2fad2018932ce7cd431511985c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetDigitalIO_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetDigitalIO_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvGetDigitalIO_Response<uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetDigitalIO_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetDigitalIO_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetDigitalIO_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetFloat32_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetFloat32_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6a3aa3004f481bde62974b72be6157b1e388e6097733474e3fb11855f3aa5c84";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetFloat32_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetFloat32_Request<T>::codec_identity =
        "UWVMROS1_6a3aa3004f481bde62974b72be6157b1e388e6097733474e3fb11855f3aa5c84";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetFloat32_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetFloat32_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvGetFloat32_Request<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetFloat32_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetFloat32_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetFloat32_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetFloat32_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_wire_size
         */
        static const size_t max_wire_bytes = 266;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e43f1551258cbf7bae19089eade8321e8d565c0783551e016dc73ed410c9e3f2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetFloat32_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetFloat32_Response<T>::codec_identity =
        "UWVMROS1_e43f1551258cbf7bae19089eade8321e8d565c0783551e016dc73ed410c9e3f2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetFloat32_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetFloat32_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvGetFloat32_Response<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetFloat32_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetFloat32_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetFloat32_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetFloat32List_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetFloat32List_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_36ec63da8ede627478e174c1f1dd75926973d3b1d57a6f03c05ffac8e4b649a3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetFloat32List_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetFloat32List_Request<T>::codec_identity =
        "UWVMROS1_36ec63da8ede627478e174c1f1dd75926973d3b1d57a6f03c05ffac8e4b649a3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetFloat32List_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetFloat32List_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvGetFloat32List_Request<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetFloat32List_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetFloat32List_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETFLOAT32LIST_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetFloat32List_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetFloat32List_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_wire_size
         */
        static const size_t max_wire_bytes = 394;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f30d581b8aa511578c21a3db64c818693b06268b7916cc16e927fc329f40e8d4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetFloat32List_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetFloat32List_Response<T>::codec_identity =
        "UWVMROS1_f30d581b8aa511578c21a3db64c818693b06268b7916cc16e927fc329f40e8d4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetFloat32List_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetFloat32List_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvGetFloat32List_Response<uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetFloat32List_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetFloat32List_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetFloat32List_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetInt16_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetInt16_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_85fe1186c4f0887d4ac9cf3f0d690c32ba3ec895bef3d49b2199527b53627865";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetInt16_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetInt16_Request<T>::codec_identity =
        "UWVMROS1_85fe1186c4f0887d4ac9cf3f0d690c32ba3ec895bef3d49b2199527b53627865";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetInt16_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetInt16_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Request> : RecordMetadata_Ros2Xarm_msgsSrvGetInt16_Request<uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetInt16_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetInt16_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetInt16_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetInt16_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_wire_size
         */
        static const size_t max_wire_bytes = 264;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c29870d9604ae0d220de53bb6768681bfbb120171af61c36e45b9a660fd8f1a9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetInt16_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetInt16_Response<T>::codec_identity =
        "UWVMROS1_c29870d9604ae0d220de53bb6768681bfbb120171af61c36e45b9a660fd8f1a9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetInt16_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetInt16_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvGetInt16_Response<uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetInt16_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetInt16_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetInt16_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetInt16List_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetInt16List_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ca95d35c75e9843b2c9d27bd94e34e336641255ad5dd2b0ff22f8a6efb36db2d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetInt16List_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetInt16List_Request<T>::codec_identity =
        "UWVMROS1_ca95d35c75e9843b2c9d27bd94e34e336641255ad5dd2b0ff22f8a6efb36db2d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetInt16List_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetInt16List_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvGetInt16List_Request<uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetInt16List_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetInt16List_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT16LIST_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetInt16List_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetInt16List_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_wire_size
         */
        static const size_t max_wire_bytes = 330;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d35b6ac9d82960e32fd035554dc021e8f3e592259c1db9a714e9b575cc611139";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetInt16List_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetInt16List_Response<T>::codec_identity =
        "UWVMROS1_d35b6ac9d82960e32fd035554dc021e8f3e592259c1db9a714e9b575cc611139";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetInt16List_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetInt16List_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvGetInt16List_Response<uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetInt16List_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetInt16List_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetInt16List_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetInt32_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetInt32_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e7dbcdb905c89364b288e23c985ba73394529613bdb2f4a74b10d811203f0dfe";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetInt32_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetInt32_Request<T>::codec_identity =
        "UWVMROS1_e7dbcdb905c89364b288e23c985ba73394529613bdb2f4a74b10d811203f0dfe";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetInt32_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetInt32_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Request> : RecordMetadata_Ros2Xarm_msgsSrvGetInt32_Request<uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetInt32_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetInt32_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetInt32_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetInt32_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_wire_size
         */
        static const size_t max_wire_bytes = 266;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9834d69ebc7644d3d2feee8f4bcb20effbc15931709be7264ea04bd88b2686f2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetInt32_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetInt32_Response<T>::codec_identity =
        "UWVMROS1_9834d69ebc7644d3d2feee8f4bcb20effbc15931709be7264ea04bd88b2686f2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetInt32_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetInt32_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvGetInt32_Response<uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetInt32_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetInt32_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetInt32_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetInt32ByType_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetInt32ByType_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5d4ba9b5c23452f3b203c66e3cbc5880b99cac6b9ec9ce3acac96414013f993a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetInt32ByType_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetInt32ByType_Request<T>::codec_identity =
        "UWVMROS1_5d4ba9b5c23452f3b203c66e3cbc5880b99cac6b9ec9ce3acac96414013f993a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetInt32ByType_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetInt32ByType_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvGetInt32ByType_Request<uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetInt32ByType_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetInt32ByType_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETINT32BYTYPE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetInt32ByType_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetInt32ByType_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_wire_size
         */
        static const size_t max_wire_bytes = 266;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6cabb4a9a840ef62c4f8a2da7da917410a97a8aafcf78e361cc928a7cdbe5c3a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetInt32ByType_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetInt32ByType_Response<T>::codec_identity =
        "UWVMROS1_6cabb4a9a840ef62c4f8a2da7da917410a97a8aafcf78e361cc928a7cdbe5c3a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetInt32ByType_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetInt32ByType_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvGetInt32ByType_Response<uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetInt32ByType_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetInt32ByType_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetInt32ByType_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetSetModbusData_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetSetModbusData_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_wire_size
         */
        static const size_t max_wire_bytes = 4107;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f9cc9e1e5635a37023cc50f66930072f3d61bcfd58f0d8ebb0218c4eb3a035cd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetSetModbusData_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetSetModbusData_Request<T>::codec_identity =
        "UWVMROS1_f9cc9e1e5635a37023cc50f66930072f3d61bcfd58f0d8ebb0218c4eb3a035cd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetSetModbusData_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetSetModbusData_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvGetSetModbusData_Request<uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvGetSetModbusData_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Request value = uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetSetModbusData_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetSetModbusData_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GETSETMODBUSDATA_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGetSetModbusData_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGetSetModbusData_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_wire_size
         */
        static const size_t max_wire_bytes = 4362;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7367e58167bc61c209e7a28ee1a4d5809525cb11cbe48ee972724b5f0536b5b7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGetSetModbusData_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGetSetModbusData_Response<T>::codec_identity =
        "UWVMROS1_7367e58167bc61c209e7a28ee1a4d5809525cb11cbe48ee972724b5f0536b5b7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGetSetModbusData_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGetSetModbusData_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvGetSetModbusData_Response<uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGetSetModbusData_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGetSetModbusData_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGetSetModbusData_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGripperMove_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGripperMove_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_wire_size
         */
        static const size_t max_wire_bytes = 9;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_54c0e0eeb956e5ab0b1bd31aabc67493ee2bdb9b7028f41b73eb9d8b1e568322";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGripperMove_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGripperMove_Request<T>::codec_identity =
        "UWVMROS1_54c0e0eeb956e5ab0b1bd31aabc67493ee2bdb9b7028f41b73eb9d8b1e568322";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGripperMove_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGripperMove_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvGripperMove_Request<uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvGripperMove_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Request value = uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGripperMove_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGripperMove_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_GRIPPERMOVE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvGripperMove_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvGripperMove_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1c64a50983aaf8dd20d3a400be9d69242f52c6ad7f369ea54dd19be931dc80a1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvGripperMove_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvGripperMove_Response<T>::codec_identity =
        "UWVMROS1_1c64a50983aaf8dd20d3a400be9d69242f52c6ad7f369ea54dd19be931dc80a1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvGripperMove_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvGripperMove_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvGripperMove_Response<uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvGripperMove_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvGripperMove_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvGripperMove_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvIdenLoad_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvIdenLoad_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_51918f23cc7db51b63e91cca012e657836528d8557a4479b287cd9631015a79a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvIdenLoad_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvIdenLoad_Request<T>::codec_identity =
        "UWVMROS1_51918f23cc7db51b63e91cca012e657836528d8557a4479b287cd9631015a79a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvIdenLoad_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvIdenLoad_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Request> : RecordMetadata_Ros2Xarm_msgsSrvIdenLoad_Request<uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvIdenLoad_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Request value = uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvIdenLoad_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvIdenLoad_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_IDENLOAD_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvIdenLoad_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvIdenLoad_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_wire_size
         */
        static const size_t max_wire_bytes = 394;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3934143122064209bd30159d9972b5cfd529728f3f95785c9641d20790e4f64e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvIdenLoad_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvIdenLoad_Response<T>::codec_identity =
        "UWVMROS1_3934143122064209bd30159d9972b5cfd529728f3f95785c9641d20790e4f64e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvIdenLoad_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvIdenLoad_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvIdenLoad_Response<uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvIdenLoad_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvIdenLoad_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvIdenLoad_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_797f71ddda85f463999f437e70aaaf40517fe78dfa0356a640afaffa5154e8d9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request<T>::codec_identity =
        "UWVMROS1_797f71ddda85f463999f437e70aaaf40517fe78dfa0356a640afaffa5154e8d9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request value = uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKBACKORIGIN_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0881a1e5f823c169ed5d1063e8bd681b8b2f994ebd9bee3e335c47d3bd2db4de";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response<T>::codec_identity =
        "UWVMROS1_0881a1e5f823c169ed5d1063e8bd681b8b2f994ebd9bee3e335c47d3bd2db4de";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvLinearTrackSetPos_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvLinearTrackSetPos_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_wire_size
         */
        static const size_t max_wire_bytes = 10;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b73e173d593e64d898e69d32e659ddff1741eaada6af1ae00d9a4c406d9dad62";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvLinearTrackSetPos_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvLinearTrackSetPos_Request<T>::codec_identity =
        "UWVMROS1_b73e173d593e64d898e69d32e659ddff1741eaada6af1ae00d9a4c406d9dad62";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvLinearTrackSetPos_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvLinearTrackSetPos_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvLinearTrackSetPos_Request<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvLinearTrackSetPos_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Request value = uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvLinearTrackSetPos_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvLinearTrackSetPos_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_LINEARTRACKSETPOS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvLinearTrackSetPos_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvLinearTrackSetPos_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_aba9a933b5cde05c0a1d0a44fe404b3c3dadad72aac91b7a7aff04221c6667f7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvLinearTrackSetPos_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvLinearTrackSetPos_Response<T>::codec_identity =
        "UWVMROS1_aba9a933b5cde05c0a1d0a44fe404b3c3dadad72aac91b7a7aff04221c6667f7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvLinearTrackSetPos_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvLinearTrackSetPos_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvLinearTrackSetPos_Response<uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvLinearTrackSetPos_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvLinearTrackSetPos_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvLinearTrackSetPos_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvMoveCartesian_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvMoveCartesian_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_wire_size
         */
        static const size_t max_wire_bytes = 155;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7483ca119d8fcac25f3b24380700c8d0ed169390997fdd80215b47baa3bbefb1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvMoveCartesian_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvMoveCartesian_Request<T>::codec_identity =
        "UWVMROS1_7483ca119d8fcac25f3b24380700c8d0ed169390997fdd80215b47baa3bbefb1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvMoveCartesian_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvMoveCartesian_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvMoveCartesian_Request<uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvMoveCartesian_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Request value = uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvMoveCartesian_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvMoveCartesian_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECARTESIAN_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvMoveCartesian_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvMoveCartesian_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_17659e470cc45dd7fe1bc6240aa09aa6693e90e40d5dcf556cfb2b8d946af7be";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvMoveCartesian_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvMoveCartesian_Response<T>::codec_identity =
        "UWVMROS1_17659e470cc45dd7fe1bc6240aa09aa6693e90e40d5dcf556cfb2b8d946af7be";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvMoveCartesian_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvMoveCartesian_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvMoveCartesian_Response<uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvMoveCartesian_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvMoveCartesian_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvMoveCartesian_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvMoveCircle_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvMoveCircle_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_wire_size
         */
        static const size_t max_wire_bytes = 285;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_34fed48317b76dc87d7e975f0d23a706ac856f9deff89d2789ef8d180074658c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvMoveCircle_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvMoveCircle_Request<T>::codec_identity =
        "UWVMROS1_34fed48317b76dc87d7e975f0d23a706ac856f9deff89d2789ef8d180074658c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvMoveCircle_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvMoveCircle_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvMoveCircle_Request<uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvMoveCircle_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Request value = uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvMoveCircle_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvMoveCircle_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVECIRCLE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvMoveCircle_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvMoveCircle_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e884158bfd9d5bed6cb76d276e7d312c5f2d69d0508a1c01566f6773b7e4dbbd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvMoveCircle_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvMoveCircle_Response<T>::codec_identity =
        "UWVMROS1_e884158bfd9d5bed6cb76d276e7d312c5f2d69d0508a1c01566f6773b7e4dbbd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvMoveCircle_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvMoveCircle_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvMoveCircle_Response<uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvMoveCircle_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvMoveCircle_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvMoveCircle_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvMoveHome_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvMoveHome_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_wire_size
         */
        static const size_t max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f9c04cf15dadd5c45cc16017533216bcbf682ac3366764c0546e73deabfab5a3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvMoveHome_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvMoveHome_Request<T>::codec_identity =
        "UWVMROS1_f9c04cf15dadd5c45cc16017533216bcbf682ac3366764c0546e73deabfab5a3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvMoveHome_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvMoveHome_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Request> : RecordMetadata_Ros2Xarm_msgsSrvMoveHome_Request<uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvMoveHome_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Request value = uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvMoveHome_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvMoveHome_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEHOME_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvMoveHome_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvMoveHome_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c5a0764d10a7a2c3285ada1c04594d1cad466f7ec71fe53e42b2ea98b70793aa";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvMoveHome_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvMoveHome_Response<T>::codec_identity =
        "UWVMROS1_c5a0764d10a7a2c3285ada1c04594d1cad466f7ec71fe53e42b2ea98b70793aa";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvMoveHome_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvMoveHome_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvMoveHome_Response<uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvMoveHome_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvMoveHome_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvMoveHome_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvMoveJoint_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvMoveJoint_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_wire_size
         */
        static const size_t max_wire_bytes = 153;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_666e0343fa54b3a93a3176842f52411d3bf009164ba19f8bd4d59ad43d22d894";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvMoveJoint_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvMoveJoint_Request<T>::codec_identity =
        "UWVMROS1_666e0343fa54b3a93a3176842f52411d3bf009164ba19f8bd4d59ad43d22d894";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvMoveJoint_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvMoveJoint_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvMoveJoint_Request<uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvMoveJoint_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Request value = uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvMoveJoint_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvMoveJoint_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEJOINT_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvMoveJoint_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvMoveJoint_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0af0f83fe9efc15c4a2334c229e0d079fad286630c52d703b7e0cfaa037f04a7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvMoveJoint_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvMoveJoint_Response<T>::codec_identity =
        "UWVMROS1_0af0f83fe9efc15c4a2334c229e0d079fad286630c52d703b7e0cfaa037f04a7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvMoveJoint_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvMoveJoint_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvMoveJoint_Response<uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvMoveJoint_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvMoveJoint_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvMoveJoint_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvMoveVelocity_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvMoveVelocity_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_wire_size
         */
        static const size_t max_wire_bytes = 138;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a5378f3f0f4b89e04279b6d79b8b756d0970f74cd582636d56f1302be2c015c4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvMoveVelocity_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvMoveVelocity_Request<T>::codec_identity =
        "UWVMROS1_a5378f3f0f4b89e04279b6d79b8b756d0970f74cd582636d56f1302be2c015c4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvMoveVelocity_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvMoveVelocity_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvMoveVelocity_Request<uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvMoveVelocity_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Request value = uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvMoveVelocity_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvMoveVelocity_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_MOVEVELOCITY_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvMoveVelocity_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvMoveVelocity_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3ec82a1e864723e95f8fec98073d5e1ed009d2882fa8c20e55b4f8d86ec1d318";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvMoveVelocity_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvMoveVelocity_Response<T>::codec_identity =
        "UWVMROS1_3ec82a1e864723e95f8fec98073d5e1ed009d2882fa8c20e55b4f8d86ec1d318";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvMoveVelocity_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvMoveVelocity_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvMoveVelocity_Response<uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvMoveVelocity_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvMoveVelocity_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvMoveVelocity_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvPlanExec_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvPlanExec_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_376aa0461a41377c8e5ba44ec96e9dac39fea01da3db1d31a6a90190b5bf66d5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvPlanExec_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvPlanExec_Request<T>::codec_identity =
        "UWVMROS1_376aa0461a41377c8e5ba44ec96e9dac39fea01da3db1d31a6a90190b5bf66d5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvPlanExec_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvPlanExec_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Request> : RecordMetadata_Ros2Xarm_msgsSrvPlanExec_Request<uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvPlanExec_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvPlanExec_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANEXEC_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvPlanExec_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvPlanExec_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5adfabe15405e2e15b08760866169c214029fe826a69dd1277808c3ebb16a88e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvPlanExec_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvPlanExec_Response<T>::codec_identity =
        "UWVMROS1_5adfabe15405e2e15b08760866169c214029fe826a69dd1277808c3ebb16a88e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvPlanExec_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvPlanExec_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvPlanExec_Response<uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvPlanExec_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvPlanExec_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvPlanExec_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvPlanJoint_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvPlanJoint_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_997562beca1e50895151970e89f0f253431451c60e274222ae622c49c0455bd5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvPlanJoint_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvPlanJoint_Request<T>::codec_identity =
        "UWVMROS1_997562beca1e50895151970e89f0f253431451c60e274222ae622c49c0455bd5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvPlanJoint_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvPlanJoint_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvPlanJoint_Request<uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvPlanJoint_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvPlanJoint_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANJOINT_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvPlanJoint_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvPlanJoint_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_dfe1e3eaf8913c9e6b5aed6ee60bd7c24eb4e2944036f0de92fcd6846acac782";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvPlanJoint_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvPlanJoint_Response<T>::codec_identity =
        "UWVMROS1_dfe1e3eaf8913c9e6b5aed6ee60bd7c24eb4e2944036f0de92fcd6846acac782";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvPlanJoint_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvPlanJoint_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvPlanJoint_Response<uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvPlanJoint_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvPlanJoint_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvPlanJoint_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvPlanPose_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvPlanPose_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_01b292bd33f28682cde3cb35f9d62e8d99cd8a58d2a5c3d5e6411121d3a09859";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvPlanPose_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvPlanPose_Request<T>::codec_identity =
        "UWVMROS1_01b292bd33f28682cde3cb35f9d62e8d99cd8a58d2a5c3d5e6411121d3a09859";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvPlanPose_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvPlanPose_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Request> : RecordMetadata_Ros2Xarm_msgsSrvPlanPose_Request<uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvPlanPose_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Request value = uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvPlanPose_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvPlanPose_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANPOSE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvPlanPose_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvPlanPose_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0cdcf4232f673c3034319f90c1d0f56fbfd86a829fa9f6460f87fea391ce766d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvPlanPose_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvPlanPose_Response<T>::codec_identity =
        "UWVMROS1_0cdcf4232f673c3034319f90c1d0f56fbfd86a829fa9f6460f87fea391ce766d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvPlanPose_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvPlanPose_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvPlanPose_Response<uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvPlanPose_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvPlanPose_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvPlanPose_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvPlanSingleStraight_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvPlanSingleStraight_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4e350b5145aa64c8ff4dc15cd61ba557f0db2b256798e50e4b4e28d47ecdc2b0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvPlanSingleStraight_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvPlanSingleStraight_Request<T>::codec_identity =
        "UWVMROS1_4e350b5145aa64c8ff4dc15cd61ba557f0db2b256798e50e4b4e28d47ecdc2b0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvPlanSingleStraight_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvPlanSingleStraight_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvPlanSingleStraight_Request<uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvPlanSingleStraight_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Request value = uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvPlanSingleStraight_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvPlanSingleStraight_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_PLANSINGLESTRAIGHT_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvPlanSingleStraight_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvPlanSingleStraight_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ef2fdd22f223f4c91ccc886bddae43b0d48bc9063b3a199c7d8bb6f1bfb86432";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvPlanSingleStraight_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvPlanSingleStraight_Response<T>::codec_identity =
        "UWVMROS1_ef2fdd22f223f4c91ccc886bddae43b0d48bc9063b3a199c7d8bb6f1bfb86432";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvPlanSingleStraight_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvPlanSingleStraight_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvPlanSingleStraight_Response<uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvPlanSingleStraight_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvPlanSingleStraight_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvPlanSingleStraight_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvRobotiqActivate_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvRobotiqActivate_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7c4501be17de61893d5d91b3808769133ac5a444d2f0a8b1b3b13a01f03b75c3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvRobotiqActivate_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvRobotiqActivate_Request<T>::codec_identity =
        "UWVMROS1_7c4501be17de61893d5d91b3808769133ac5a444d2f0a8b1b3b13a01f03b75c3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvRobotiqActivate_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvRobotiqActivate_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvRobotiqActivate_Request<uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvRobotiqActivate_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Request value = uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvRobotiqActivate_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvRobotiqActivate_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQACTIVATE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvRobotiqActivate_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvRobotiqActivate_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_wire_size
         */
        static const size_t max_wire_bytes = 4362;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e6f6d01b439afdbb2461a8ed682ce1332e021a9a8ae3326772f13469a70648d4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvRobotiqActivate_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvRobotiqActivate_Response<T>::codec_identity =
        "UWVMROS1_e6f6d01b439afdbb2461a8ed682ce1332e021a9a8ae3326772f13469a70648d4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvRobotiqActivate_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvRobotiqActivate_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvRobotiqActivate_Response<uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvRobotiqActivate_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvRobotiqActivate_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvRobotiqActivate_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvRobotiqGetStatus_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvRobotiqGetStatus_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_99970019152494d54024cb4c44af400853506d81149e1bba55d40caa9bd44e6b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvRobotiqGetStatus_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvRobotiqGetStatus_Request<T>::codec_identity =
        "UWVMROS1_99970019152494d54024cb4c44af400853506d81149e1bba55d40caa9bd44e6b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvRobotiqGetStatus_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvRobotiqGetStatus_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvRobotiqGetStatus_Request<uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvRobotiqGetStatus_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Request value = uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvRobotiqGetStatus_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvRobotiqGetStatus_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQGETSTATUS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvRobotiqGetStatus_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvRobotiqGetStatus_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_wire_size
         */
        static const size_t max_wire_bytes = 4362;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b1b7945622a48beab45b569b9c64139eec028b5a61dc75cfb6dc302d8b787e43";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvRobotiqGetStatus_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvRobotiqGetStatus_Response<T>::codec_identity =
        "UWVMROS1_b1b7945622a48beab45b569b9c64139eec028b5a61dc75cfb6dc302d8b787e43";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvRobotiqGetStatus_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvRobotiqGetStatus_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvRobotiqGetStatus_Response<uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvRobotiqGetStatus_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvRobotiqGetStatus_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvRobotiqGetStatus_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvRobotiqMove_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvRobotiqMove_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_wire_size
         */
        static const size_t max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f1e5c6c7be4583ecdb91da2401c9adcf727eff9e2b69df21e8a4f1de468775ad";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvRobotiqMove_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvRobotiqMove_Request<T>::codec_identity =
        "UWVMROS1_f1e5c6c7be4583ecdb91da2401c9adcf727eff9e2b69df21e8a4f1de468775ad";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvRobotiqMove_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvRobotiqMove_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvRobotiqMove_Request<uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvRobotiqMove_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Request value = uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvRobotiqMove_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvRobotiqMove_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQMOVE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvRobotiqMove_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvRobotiqMove_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_wire_size
         */
        static const size_t max_wire_bytes = 4362;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7b581f9f45349f688543ea57a3889b351909b43a9d5bff65d916b804b00bacf6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvRobotiqMove_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvRobotiqMove_Response<T>::codec_identity =
        "UWVMROS1_7b581f9f45349f688543ea57a3889b351909b43a9d5bff65d916b804b00bacf6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvRobotiqMove_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvRobotiqMove_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvRobotiqMove_Response<uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvRobotiqMove_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvRobotiqMove_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvRobotiqMove_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvRobotiqReset_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvRobotiqReset_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_59168733ec2ce73fc135dfa2c0f1edd10a4ad82062acf477c7ca9258ecb8d755";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvRobotiqReset_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvRobotiqReset_Request<T>::codec_identity =
        "UWVMROS1_59168733ec2ce73fc135dfa2c0f1edd10a4ad82062acf477c7ca9258ecb8d755";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvRobotiqReset_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvRobotiqReset_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvRobotiqReset_Request<uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvRobotiqReset_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvRobotiqReset_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_ROBOTIQRESET_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvRobotiqReset_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvRobotiqReset_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_wire_size
         */
        static const size_t max_wire_bytes = 4362;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4c0f6950fe50ffae8b6b30be7265606bddaebeb1099038b1e973f144c8164d2e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvRobotiqReset_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvRobotiqReset_Response<T>::codec_identity =
        "UWVMROS1_4c0f6950fe50ffae8b6b30be7265606bddaebeb1099038b1e973f144c8164d2e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvRobotiqReset_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvRobotiqReset_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvRobotiqReset_Response<uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvRobotiqReset_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvRobotiqReset_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvRobotiqReset_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetAnalogIO_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetAnalogIO_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_wire_size
         */
        static const size_t max_wire_bytes = 142;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_77df87cd98b5dd0b384674739c65f045eb32346596b82ceca2ccb9ff6e9dfe96";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetAnalogIO_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetAnalogIO_Request<T>::codec_identity =
        "UWVMROS1_77df87cd98b5dd0b384674739c65f045eb32346596b82ceca2ccb9ff6e9dfe96";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetAnalogIO_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetAnalogIO_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvSetAnalogIO_Request<uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetAnalogIO_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetAnalogIO_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETANALOGIO_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetAnalogIO_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetAnalogIO_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_480194824f2056f0dd3d3031fda9e27f49b3f7b242f0d0bcb4a783c6649164ec";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetAnalogIO_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetAnalogIO_Response<T>::codec_identity =
        "UWVMROS1_480194824f2056f0dd3d3031fda9e27f49b3f7b242f0d0bcb4a783c6649164ec";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetAnalogIO_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetAnalogIO_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvSetAnalogIO_Response<uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetAnalogIO_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetAnalogIO_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetAnalogIO_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetDigitalIO_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetDigitalIO_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_wire_size
         */
        static const size_t max_wire_bytes = 144;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1bb4c857c4625a17ef5800f821d5aed95124ba24dc472ee61c2193798967aaf2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetDigitalIO_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetDigitalIO_Request<T>::codec_identity =
        "UWVMROS1_1bb4c857c4625a17ef5800f821d5aed95124ba24dc472ee61c2193798967aaf2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetDigitalIO_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetDigitalIO_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvSetDigitalIO_Request<uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvSetDigitalIO_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Request value = uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetDigitalIO_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetDigitalIO_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETDIGITALIO_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetDigitalIO_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetDigitalIO_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cb18f2968dd4014c8fe100a63d4c80ce10e813fc0998a9f76cd8699bc511a17b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetDigitalIO_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetDigitalIO_Response<T>::codec_identity =
        "UWVMROS1_cb18f2968dd4014c8fe100a63d4c80ce10e813fc0998a9f76cd8699bc511a17b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetDigitalIO_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetDigitalIO_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvSetDigitalIO_Response<uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetDigitalIO_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetDigitalIO_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetDigitalIO_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetFloat32_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetFloat32_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6fec5cd9973c8f68bdffad4b582b26547d325167942379830a84c7d8469987c1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetFloat32_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetFloat32_Request<T>::codec_identity =
        "UWVMROS1_6fec5cd9973c8f68bdffad4b582b26547d325167942379830a84c7d8469987c1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetFloat32_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetFloat32_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvSetFloat32_Request<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetFloat32_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetFloat32_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetFloat32_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetFloat32_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d7bb8df8e3e4ab02a30ebfdc4af57cdbcee5ce3b48591524e70e2a07f8843ea1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetFloat32_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetFloat32_Response<T>::codec_identity =
        "UWVMROS1_d7bb8df8e3e4ab02a30ebfdc4af57cdbcee5ce3b48591524e70e2a07f8843ea1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetFloat32_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetFloat32_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvSetFloat32_Response<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetFloat32_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetFloat32_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetFloat32_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetFloat32List_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetFloat32List_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_wire_size
         */
        static const size_t max_wire_bytes = 132;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_38bd43fd452ab1f59bd4875deb4dea6d0a17c3409ee9c5446f798e1b8ba93532";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetFloat32List_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetFloat32List_Request<T>::codec_identity =
        "UWVMROS1_38bd43fd452ab1f59bd4875deb4dea6d0a17c3409ee9c5446f798e1b8ba93532";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetFloat32List_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetFloat32List_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvSetFloat32List_Request<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetFloat32List_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetFloat32List_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETFLOAT32LIST_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetFloat32List_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetFloat32List_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f2c08d32b1238bb78dc0daccfc97066563a14e8e4b891e37e2effaed91a74396";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetFloat32List_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetFloat32List_Response<T>::codec_identity =
        "UWVMROS1_f2c08d32b1238bb78dc0daccfc97066563a14e8e4b891e37e2effaed91a74396";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetFloat32List_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetFloat32List_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvSetFloat32List_Response<uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetFloat32List_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetFloat32List_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetFloat32List_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetInt16_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetInt16_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_09e0c90763447d7b4ed57ce37650d4a4d918bc96ec8b8df61189f8e636a58adb";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetInt16_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetInt16_Request<T>::codec_identity =
        "UWVMROS1_09e0c90763447d7b4ed57ce37650d4a4d918bc96ec8b8df61189f8e636a58adb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetInt16_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetInt16_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Request> : RecordMetadata_Ros2Xarm_msgsSrvSetInt16_Request<uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetInt16_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetInt16_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetInt16_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetInt16_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0c02f9a01383e37346637ec7d6a608cca7d025259b67c9ab528f3b13aa842155";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetInt16_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetInt16_Response<T>::codec_identity =
        "UWVMROS1_0c02f9a01383e37346637ec7d6a608cca7d025259b67c9ab528f3b13aa842155";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetInt16_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetInt16_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvSetInt16_Response<uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetInt16_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetInt16_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetInt16_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetInt16ById_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetInt16ById_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9472db1bda5f8d557e75c9be0c902c67a76952ba0bc258693cf047c6c10954f0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetInt16ById_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetInt16ById_Request<T>::codec_identity =
        "UWVMROS1_9472db1bda5f8d557e75c9be0c902c67a76952ba0bc258693cf047c6c10954f0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetInt16ById_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetInt16ById_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvSetInt16ById_Request<uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetInt16ById_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetInt16ById_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16BYID_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetInt16ById_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetInt16ById_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cd16eec98546214169bf4e32eff4190d9276ee41b6bfc5eef919dd44cdeae92a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetInt16ById_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetInt16ById_Response<T>::codec_identity =
        "UWVMROS1_cd16eec98546214169bf4e32eff4190d9276ee41b6bfc5eef919dd44cdeae92a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetInt16ById_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetInt16ById_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvSetInt16ById_Response<uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetInt16ById_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetInt16ById_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetInt16ById_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetInt16List_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetInt16List_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_wire_size
         */
        static const size_t max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d1ef15eb18c2f3c377c25c486d945fbf77887ca7a9ef9c291355e9a23541ec96";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetInt16List_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetInt16List_Request<T>::codec_identity =
        "UWVMROS1_d1ef15eb18c2f3c377c25c486d945fbf77887ca7a9ef9c291355e9a23541ec96";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetInt16List_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetInt16List_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvSetInt16List_Request<uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetInt16List_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetInt16List_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT16LIST_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetInt16List_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetInt16List_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_326ef9ea75d627cdc4187908191f230f87efb6f3fb2b0a7f783260c7ffee583f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetInt16List_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetInt16List_Response<T>::codec_identity =
        "UWVMROS1_326ef9ea75d627cdc4187908191f230f87efb6f3fb2b0a7f783260c7ffee583f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetInt16List_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetInt16List_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvSetInt16List_Response<uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetInt16List_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetInt16List_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetInt16List_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetInt32_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetInt32_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f219450be903e96baf55dfb3fcc03851aabc43899d637f869d9adba55b36c1d3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetInt32_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetInt32_Request<T>::codec_identity =
        "UWVMROS1_f219450be903e96baf55dfb3fcc03851aabc43899d637f869d9adba55b36c1d3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetInt32_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetInt32_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Request> : RecordMetadata_Ros2Xarm_msgsSrvSetInt32_Request<uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetInt32_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetInt32_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetInt32_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetInt32_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1510982ab2c740a570f21179997368cd4be93c4086967e9ff98b24606f0b7f65";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetInt32_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetInt32_Response<T>::codec_identity =
        "UWVMROS1_1510982ab2c740a570f21179997368cd4be93c4086967e9ff98b24606f0b7f65";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetInt32_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetInt32_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvSetInt32_Response<uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetInt32_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetInt32_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetInt32_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetInt32ByType_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetInt32ByType_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_wire_size
         */
        static const size_t max_wire_bytes = 6;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8a6e3ab3e34eeff45dbddc698cb249c2acb27d74717be8724fa0f9448ff981d7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetInt32ByType_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetInt32ByType_Request<T>::codec_identity =
        "UWVMROS1_8a6e3ab3e34eeff45dbddc698cb249c2acb27d74717be8724fa0f9448ff981d7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetInt32ByType_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetInt32ByType_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvSetInt32ByType_Request<uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetInt32ByType_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetInt32ByType_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETINT32BYTYPE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetInt32ByType_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetInt32ByType_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6fcd5dddde2d38a61ffdeab64ae09514137b364347357c62b81c26c86b44882a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetInt32ByType_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetInt32ByType_Response<T>::codec_identity =
        "UWVMROS1_6fcd5dddde2d38a61ffdeab64ae09514137b364347357c62b81c26c86b44882a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetInt32ByType_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetInt32ByType_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvSetInt32ByType_Response<uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetInt32ByType_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetInt32ByType_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetInt32ByType_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetModbusTimeout_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetModbusTimeout_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_186f84404c6a11cfd3c7a64fc9ac55b39343d5f8c4a01bd81efdd038d6c7e685";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetModbusTimeout_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetModbusTimeout_Request<T>::codec_identity =
        "UWVMROS1_186f84404c6a11cfd3c7a64fc9ac55b39343d5f8c4a01bd81efdd038d6c7e685";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetModbusTimeout_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetModbusTimeout_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvSetModbusTimeout_Request<uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvSetModbusTimeout_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Request value = uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetModbusTimeout_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetModbusTimeout_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETMODBUSTIMEOUT_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetModbusTimeout_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetModbusTimeout_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_32da6d0583896c59968213be225e17146d619cddb4c520060640e13b886f3397";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetModbusTimeout_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetModbusTimeout_Response<T>::codec_identity =
        "UWVMROS1_32da6d0583896c59968213be225e17146d619cddb4c520060640e13b886f3397";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetModbusTimeout_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetModbusTimeout_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvSetModbusTimeout_Response<uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetModbusTimeout_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetModbusTimeout_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetModbusTimeout_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetTcpLoad_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetTcpLoad_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_wire_size
         */
        static const size_t max_wire_bytes = 136;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5428d98daa8dd42c8dba0cb78152b1b718afe34eb1da16de65a333a81d293e99";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetTcpLoad_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetTcpLoad_Request<T>::codec_identity =
        "UWVMROS1_5428d98daa8dd42c8dba0cb78152b1b718afe34eb1da16de65a333a81d293e99";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetTcpLoad_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetTcpLoad_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvSetTcpLoad_Request<uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Request>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetTcpLoad_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetTcpLoad_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_SETTCPLOAD_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvSetTcpLoad_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvSetTcpLoad_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_wire_size
         */
        static const size_t max_wire_bytes = 264;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7438021022e94f66f464a561a54cb8f808da8c2e35830853cbecc98fa76ef46f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvSetTcpLoad_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvSetTcpLoad_Response<T>::codec_identity =
        "UWVMROS1_7438021022e94f66f464a561a54cb8f808da8c2e35830853cbecc98fa76ef46f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvSetTcpLoad_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvSetTcpLoad_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvSetTcpLoad_Response<uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvSetTcpLoad_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvSetTcpLoad_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvSetTcpLoad_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvTrajCtrl_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvTrajCtrl_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_wire_size
         */
        static const size_t max_wire_bytes = 264;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f29343b422932e055d5930c46615f38cc1600d4c4b89506a1050f89728e0ca0d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvTrajCtrl_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvTrajCtrl_Request<T>::codec_identity =
        "UWVMROS1_f29343b422932e055d5930c46615f38cc1600d4c4b89506a1050f89728e0ca0d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvTrajCtrl_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvTrajCtrl_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Request> : RecordMetadata_Ros2Xarm_msgsSrvTrajCtrl_Request<uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvTrajCtrl_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Request value = uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvTrajCtrl_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvTrajCtrl_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJCTRL_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvTrajCtrl_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvTrajCtrl_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_00cac1ec8b7d312cae07a3ffe3235bd599086c62b028cb446bf7478306aa1b3c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvTrajCtrl_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvTrajCtrl_Response<T>::codec_identity =
        "UWVMROS1_00cac1ec8b7d312cae07a3ffe3235bd599086c62b028cb446bf7478306aa1b3c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvTrajCtrl_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvTrajCtrl_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvTrajCtrl_Response<uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvTrajCtrl_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvTrajCtrl_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvTrajCtrl_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvTrajPlay_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvTrajPlay_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_wire_size
         */
        static const size_t max_wire_bytes = 265;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_edbd9ed5bcbc1cf8882fab3b69b24373542273b74a51bd3cae94e7970a7d3e72";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvTrajPlay_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvTrajPlay_Request<T>::codec_identity =
        "UWVMROS1_edbd9ed5bcbc1cf8882fab3b69b24373542273b74a51bd3cae94e7970a7d3e72";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvTrajPlay_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvTrajPlay_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Request> : RecordMetadata_Ros2Xarm_msgsSrvTrajPlay_Request<uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvTrajPlay_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Request value = uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvTrajPlay_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvTrajPlay_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_TRAJPLAY_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvTrajPlay_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvTrajPlay_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ce86fc20a5a16288b138fe2e37794c1318dc393b811f45d3fe3eccf954837ea0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvTrajPlay_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvTrajPlay_Response<T>::codec_identity =
        "UWVMROS1_ce86fc20a5a16288b138fe2e37794c1318dc393b811f45d3fe3eccf954837ea0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvTrajPlay_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvTrajPlay_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvTrajPlay_Response<uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvTrajPlay_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvTrajPlay_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvTrajPlay_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvVacuumGripperCtrl_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_wire_size
         */
        static const size_t max_wire_bytes = 10;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c01af96304226d7ed9b64ece79c00c696e012deb938a6a4b4ac3f2a40e4289bf";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvVacuumGripperCtrl_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvVacuumGripperCtrl_Request<T>::codec_identity =
        "UWVMROS1_c01af96304226d7ed9b64ece79c00c696e012deb938a6a4b4ac3f2a40e4289bf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvVacuumGripperCtrl_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Request> :
        RecordMetadata_Ros2Xarm_msgsSrvVacuumGripperCtrl_Request<uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Request>
    {
        /**
         * @brief Construct the declared defaults of Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_default
         */
        static uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Request default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Request value = uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Request();
            (void)roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvVacuumGripperCtrl_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Request& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_XARM_MSGS_SRV_VACUUMGRIPPERCTRL_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Xarm_msgsSrvVacuumGripperCtrl_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fa202ccf3d36ec8ff49c0e32f3af07e18d19a6694566fcbaf8ce9ff4a79f352d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Xarm_msgsSrvVacuumGripperCtrl_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Xarm_msgsSrvVacuumGripperCtrl_Response<T>::codec_identity =
        "UWVMROS1_fa202ccf3d36ec8ff49c0e32f3af07e18d19a6694566fcbaf8ce9ff4a79f352d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Xarm_msgsSrvVacuumGripperCtrl_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Response> :
        RecordMetadata_Ros2Xarm_msgsSrvVacuumGripperCtrl_Response<uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Response>
    {
        /**
         * @brief Encode all fields of Ros2Xarm_msgsSrvVacuumGripperCtrl_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Xarm_msgsSrvVacuumGripperCtrl_Response& out)
        {
            return !roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
