/**
 * @file bounded_records.hpp
 * @brief Bind complete original C storage to checked C++ canonical codecs and declared defaults.
 * @details Owned inline fields retain original widths, bounds and units. Encode/decode commit
 * only complete accepted values. Metadata describes a codec and creates no ROS authority.
 */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <ros/cpp/roswasm/roswasmcpp.hpp>
#include <elephant/c/ros2/elephant-mycobot-humble-complete/bounded_records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesMsgMecharmAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles Ros2Mecharm_interfacesMsgMecharmAngles;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesMsgMecharmCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords Ros2Mecharm_interfacesMsgMecharmCoords;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesMsgMecharmGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus Ros2Mecharm_interfacesMsgMecharmGripperStatus;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesMsgMecharmPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus Ros2Mecharm_interfacesMsgMecharmPumpStatus;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesMsgMecharmSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles Ros2Mecharm_interfacesMsgMecharmSetAngles;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesMsgMecharmSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords Ros2Mecharm_interfacesMsgMecharmSetCoords;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvGetAngles_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request Ros2Mecharm_interfacesSrvGetAngles_Request;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvGetAngles_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response Ros2Mecharm_interfacesSrvGetAngles_Response;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvGetCoords_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request Ros2Mecharm_interfacesSrvGetCoords_Request;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvGetCoords_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response Ros2Mecharm_interfacesSrvGetCoords_Response;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvGripperStatus_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request Ros2Mecharm_interfacesSrvGripperStatus_Request;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvGripperStatus_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response Ros2Mecharm_interfacesSrvGripperStatus_Response;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvPumpStatus_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request Ros2Mecharm_interfacesSrvPumpStatus_Request;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvPumpStatus_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response Ros2Mecharm_interfacesSrvPumpStatus_Response;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvSetAngles_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request Ros2Mecharm_interfacesSrvSetAngles_Request;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvSetAngles_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response Ros2Mecharm_interfacesSrvSetAngles_Response;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvSetCoords_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request Ros2Mecharm_interfacesSrvSetCoords_Request;
    /**
     * @brief Complete bounded storage for Ros2Mecharm_interfacesSrvSetCoords_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_valid
     */
    typedef roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response Ros2Mecharm_interfacesSrvSetCoords_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesMsgMycobotAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles Ros2Mycobot_interfacesMsgMycobotAngles;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesMsgMycobotCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords Ros2Mycobot_interfacesMsgMycobotCoords;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesMsgMycobotGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus Ros2Mycobot_interfacesMsgMycobotGripperStatus;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesMsgMycobotPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus Ros2Mycobot_interfacesMsgMycobotPumpStatus;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesMsgMycobotSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles Ros2Mycobot_interfacesMsgMycobotSetAngles;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesMsgMycobotSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords Ros2Mycobot_interfacesMsgMycobotSetCoords;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvGetAngles_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request Ros2Mycobot_interfacesSrvGetAngles_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvGetAngles_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response Ros2Mycobot_interfacesSrvGetAngles_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvGetCoords_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request Ros2Mycobot_interfacesSrvGetCoords_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvGetCoords_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response Ros2Mycobot_interfacesSrvGetCoords_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvGripperStatus_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request Ros2Mycobot_interfacesSrvGripperStatus_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvGripperStatus_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response Ros2Mycobot_interfacesSrvGripperStatus_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvPumpStatus_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request Ros2Mycobot_interfacesSrvPumpStatus_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvPumpStatus_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response Ros2Mycobot_interfacesSrvPumpStatus_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvSetAngles_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request Ros2Mycobot_interfacesSrvSetAngles_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvSetAngles_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response Ros2Mycobot_interfacesSrvSetAngles_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvSetCoords_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request Ros2Mycobot_interfacesSrvSetCoords_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_interfacesSrvSetCoords_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response Ros2Mycobot_interfacesSrvSetCoords_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesMsgMycobotAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles Ros2Mycobot_pro450_interfacesMsgMycobotAngles;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesMsgMycobotCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords Ros2Mycobot_pro450_interfacesMsgMycobotCoords;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request Ros2Mycobot_pro450_interfacesSrvGetAngles_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response Ros2Mycobot_pro450_interfacesSrvGetAngles_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request Ros2Mycobot_pro450_interfacesSrvGetCoords_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response Ros2Mycobot_pro450_interfacesSrvGetCoords_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request Ros2Mycobot_pro450_interfacesSrvSetAngles_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response Ros2Mycobot_pro450_interfacesSrvSetAngles_Response;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request Ros2Mycobot_pro450_interfacesSrvSetCoords_Request;
    /**
     * @brief Complete bounded storage for Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_valid
     */
    typedef roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response Ros2Mycobot_pro450_interfacesSrvSetCoords_Response;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesMsgMypalAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles Ros2Mypalletizer_interfacesMsgMypalAngles;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesMsgMypalCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords Ros2Mypalletizer_interfacesMsgMypalCoords;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesMsgMypalGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus Ros2Mypalletizer_interfacesMsgMypalGripperStatus;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesMsgMypalPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus Ros2Mypalletizer_interfacesMsgMypalPumpStatus;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesMsgMypalSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles Ros2Mypalletizer_interfacesMsgMypalSetAngles;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesMsgMypalSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords Ros2Mypalletizer_interfacesMsgMypalSetCoords;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvGetAngles_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request Ros2Mypalletizer_interfacesSrvGetAngles_Request;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvGetAngles_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response Ros2Mypalletizer_interfacesSrvGetAngles_Response;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvGetCoords_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request Ros2Mypalletizer_interfacesSrvGetCoords_Request;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvGetCoords_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response Ros2Mypalletizer_interfacesSrvGetCoords_Response;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvGripperStatus_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request Ros2Mypalletizer_interfacesSrvGripperStatus_Request;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvGripperStatus_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response Ros2Mypalletizer_interfacesSrvGripperStatus_Response;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvPumpStatus_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request Ros2Mypalletizer_interfacesSrvPumpStatus_Request;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvPumpStatus_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response Ros2Mypalletizer_interfacesSrvPumpStatus_Response;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvSetAngles_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request Ros2Mypalletizer_interfacesSrvSetAngles_Request;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvSetAngles_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response Ros2Mypalletizer_interfacesSrvSetAngles_Response;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvSetCoords_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request Ros2Mypalletizer_interfacesSrvSetCoords_Request;
    /**
     * @brief Complete bounded storage for Ros2Mypalletizer_interfacesSrvSetCoords_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_valid
     */
    typedef roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response Ros2Mypalletizer_interfacesSrvSetCoords_Response;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesMsgMycobotAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles Ros2Ultraarm_p1_interfacesMsgMycobotAngles;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesMsgMycobotCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords Ros2Ultraarm_p1_interfacesMsgMycobotCoords;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request Ros2Ultraarm_p1_interfacesSrvGetAngles_Request;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response Ros2Ultraarm_p1_interfacesSrvGetAngles_Response;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request Ros2Ultraarm_p1_interfacesSrvGetCoords_Request;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response Ros2Ultraarm_p1_interfacesSrvGetCoords_Response;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request Ros2Ultraarm_p1_interfacesSrvSetAngles_Request;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response Ros2Ultraarm_p1_interfacesSrvSetAngles_Response;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request Ros2Ultraarm_p1_interfacesSrvSetCoords_Request;
    /**
     * @brief Complete bounded storage for Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_valid
     */
    typedef roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response Ros2Ultraarm_p1_interfacesSrvSetCoords_Response;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesMsgMecharmAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmAngles>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesMsgMecharmAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesMsgMecharmAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesMsgMecharmAngles<T>::codec_identity =
        "UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesMsgMecharmAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesMsgMecharmAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmAngles> :
        RecordMetadata_Ros2Mecharm_interfacesMsgMecharmAngles<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmAngles>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesMsgMecharmAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesMsgMecharmAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesMsgMecharmAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesMsgMecharmAngles& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesMsgMecharmCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmCoords>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesMsgMecharmCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesMsgMecharmCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesMsgMecharmCoords<T>::codec_identity =
        "UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesMsgMecharmCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesMsgMecharmCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmCoords> :
        RecordMetadata_Ros2Mecharm_interfacesMsgMecharmCoords<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmCoords>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesMsgMecharmCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesMsgMecharmCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesMsgMecharmCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesMsgMecharmCoords& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesMsgMecharmGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesMsgMecharmGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesMsgMecharmGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesMsgMecharmGripperStatus<T>::codec_identity =
        "UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesMsgMecharmGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesMsgMecharmGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmGripperStatus> :
        RecordMetadata_Ros2Mecharm_interfacesMsgMecharmGripperStatus<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesMsgMecharmGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesMsgMecharmGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesMsgMecharmGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesMsgMecharmGripperStatus& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesMsgMecharmPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesMsgMecharmPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesMsgMecharmPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesMsgMecharmPumpStatus<T>::codec_identity =
        "UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesMsgMecharmPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesMsgMecharmPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmPumpStatus> :
        RecordMetadata_Ros2Mecharm_interfacesMsgMecharmPumpStatus<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesMsgMecharmPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesMsgMecharmPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesMsgMecharmPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesMsgMecharmPumpStatus& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesMsgMecharmSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesMsgMecharmSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesMsgMecharmSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesMsgMecharmSetAngles<T>::codec_identity =
        "UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesMsgMecharmSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesMsgMecharmSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmSetAngles> :
        RecordMetadata_Ros2Mecharm_interfacesMsgMecharmSetAngles<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmSetAngles>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesMsgMecharmSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesMsgMecharmSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesMsgMecharmSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesMsgMecharmSetAngles& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_MSG_MECHARMSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesMsgMecharmSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesMsgMecharmSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesMsgMecharmSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesMsgMecharmSetCoords<T>::codec_identity =
        "UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesMsgMecharmSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesMsgMecharmSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmSetCoords> :
        RecordMetadata_Ros2Mecharm_interfacesMsgMecharmSetCoords<uwvm_custom::Ros2Mecharm_interfacesMsgMecharmSetCoords>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesMsgMecharmSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesMsgMecharmSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesMsgMecharmSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesMsgMecharmSetCoords& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvGetAngles_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvGetAngles_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvGetAngles_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvGetAngles_Request<T>::codec_identity =
        "UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvGetAngles_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvGetAngles_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Request> :
        RecordMetadata_Ros2Mecharm_interfacesSrvGetAngles_Request<uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvGetAngles_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvGetAngles_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Request& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETANGLES_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvGetAngles_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvGetAngles_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvGetAngles_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvGetAngles_Response<T>::codec_identity =
        "UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvGetAngles_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvGetAngles_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Response> :
        RecordMetadata_Ros2Mecharm_interfacesSrvGetAngles_Response<uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvGetAngles_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvGetAngles_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvGetAngles_Response& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvGetCoords_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvGetCoords_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvGetCoords_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvGetCoords_Request<T>::codec_identity =
        "UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvGetCoords_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvGetCoords_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Request> :
        RecordMetadata_Ros2Mecharm_interfacesSrvGetCoords_Request<uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvGetCoords_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvGetCoords_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Request& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GETCOORDS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvGetCoords_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvGetCoords_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvGetCoords_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvGetCoords_Response<T>::codec_identity =
        "UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvGetCoords_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvGetCoords_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Response> :
        RecordMetadata_Ros2Mecharm_interfacesSrvGetCoords_Response<uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvGetCoords_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvGetCoords_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvGetCoords_Response& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvGripperStatus_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvGripperStatus_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvGripperStatus_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvGripperStatus_Request<T>::codec_identity =
        "UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvGripperStatus_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvGripperStatus_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Request> :
        RecordMetadata_Ros2Mecharm_interfacesSrvGripperStatus_Request<uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvGripperStatus_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvGripperStatus_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Request& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_GRIPPERSTATUS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvGripperStatus_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvGripperStatus_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvGripperStatus_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvGripperStatus_Response<T>::codec_identity =
        "UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvGripperStatus_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvGripperStatus_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Response> :
        RecordMetadata_Ros2Mecharm_interfacesSrvGripperStatus_Response<uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvGripperStatus_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvGripperStatus_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvGripperStatus_Response& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvPumpStatus_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvPumpStatus_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvPumpStatus_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvPumpStatus_Request<T>::codec_identity =
        "UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvPumpStatus_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvPumpStatus_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Request> :
        RecordMetadata_Ros2Mecharm_interfacesSrvPumpStatus_Request<uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvPumpStatus_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvPumpStatus_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Request& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_PUMPSTATUS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvPumpStatus_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvPumpStatus_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvPumpStatus_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvPumpStatus_Response<T>::codec_identity =
        "UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvPumpStatus_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvPumpStatus_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Response> :
        RecordMetadata_Ros2Mecharm_interfacesSrvPumpStatus_Response<uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvPumpStatus_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvPumpStatus_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvPumpStatus_Response& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvSetAngles_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvSetAngles_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvSetAngles_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvSetAngles_Request<T>::codec_identity =
        "UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvSetAngles_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvSetAngles_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Request> :
        RecordMetadata_Ros2Mecharm_interfacesSrvSetAngles_Request<uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvSetAngles_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvSetAngles_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Request& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETANGLES_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvSetAngles_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvSetAngles_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvSetAngles_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvSetAngles_Response<T>::codec_identity =
        "UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvSetAngles_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvSetAngles_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Response> :
        RecordMetadata_Ros2Mecharm_interfacesSrvSetAngles_Response<uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvSetAngles_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvSetAngles_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvSetAngles_Response& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvSetCoords_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvSetCoords_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvSetCoords_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvSetCoords_Request<T>::codec_identity =
        "UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvSetCoords_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvSetCoords_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Request> :
        RecordMetadata_Ros2Mecharm_interfacesSrvSetCoords_Request<uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvSetCoords_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvSetCoords_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Request& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MECHARM_INTERFACES_SRV_SETCOORDS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mecharm_interfacesSrvSetCoords_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mecharm_interfacesSrvSetCoords_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mecharm_interfacesSrvSetCoords_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mecharm_interfacesSrvSetCoords_Response<T>::codec_identity =
        "UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mecharm_interfacesSrvSetCoords_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mecharm_interfacesSrvSetCoords_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Response> :
        RecordMetadata_Ros2Mecharm_interfacesSrvSetCoords_Response<uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mecharm_interfacesSrvSetCoords_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mecharm_interfacesSrvSetCoords_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mecharm_interfacesSrvSetCoords_Response& out)
        {
            return !roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesMsgMycobotAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotAngles>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesMsgMycobotAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesMsgMycobotAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesMsgMycobotAngles<T>::codec_identity =
        "UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesMsgMycobotAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesMsgMycobotAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotAngles> :
        RecordMetadata_Ros2Mycobot_interfacesMsgMycobotAngles<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotAngles>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesMsgMycobotAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesMsgMycobotAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesMsgMycobotAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesMsgMycobotAngles& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesMsgMycobotCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotCoords>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesMsgMycobotCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesMsgMycobotCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesMsgMycobotCoords<T>::codec_identity =
        "UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesMsgMycobotCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesMsgMycobotCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotCoords> :
        RecordMetadata_Ros2Mycobot_interfacesMsgMycobotCoords<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotCoords>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesMsgMycobotCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesMsgMycobotCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesMsgMycobotCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesMsgMycobotCoords& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesMsgMycobotGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesMsgMycobotGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesMsgMycobotGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesMsgMycobotGripperStatus<T>::codec_identity =
        "UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesMsgMycobotGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesMsgMycobotGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotGripperStatus> :
        RecordMetadata_Ros2Mycobot_interfacesMsgMycobotGripperStatus<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesMsgMycobotGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesMsgMycobotGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesMsgMycobotGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesMsgMycobotGripperStatus& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesMsgMycobotPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesMsgMycobotPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesMsgMycobotPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesMsgMycobotPumpStatus<T>::codec_identity =
        "UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesMsgMycobotPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesMsgMycobotPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotPumpStatus> :
        RecordMetadata_Ros2Mycobot_interfacesMsgMycobotPumpStatus<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesMsgMycobotPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesMsgMycobotPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesMsgMycobotPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesMsgMycobotPumpStatus& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesMsgMycobotSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesMsgMycobotSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesMsgMycobotSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesMsgMycobotSetAngles<T>::codec_identity =
        "UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesMsgMycobotSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesMsgMycobotSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotSetAngles> :
        RecordMetadata_Ros2Mycobot_interfacesMsgMycobotSetAngles<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotSetAngles>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesMsgMycobotSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesMsgMycobotSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesMsgMycobotSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesMsgMycobotSetAngles& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_MSG_MYCOBOTSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesMsgMycobotSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesMsgMycobotSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesMsgMycobotSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesMsgMycobotSetCoords<T>::codec_identity =
        "UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesMsgMycobotSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesMsgMycobotSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotSetCoords> :
        RecordMetadata_Ros2Mycobot_interfacesMsgMycobotSetCoords<uwvm_custom::Ros2Mycobot_interfacesMsgMycobotSetCoords>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesMsgMycobotSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesMsgMycobotSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesMsgMycobotSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesMsgMycobotSetCoords& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvGetAngles_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvGetAngles_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvGetAngles_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvGetAngles_Request<T>::codec_identity =
        "UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvGetAngles_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvGetAngles_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Request> :
        RecordMetadata_Ros2Mycobot_interfacesSrvGetAngles_Request<uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvGetAngles_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvGetAngles_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETANGLES_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvGetAngles_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvGetAngles_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvGetAngles_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvGetAngles_Response<T>::codec_identity =
        "UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvGetAngles_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvGetAngles_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Response> :
        RecordMetadata_Ros2Mycobot_interfacesSrvGetAngles_Response<uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvGetAngles_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvGetAngles_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvGetAngles_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvGetCoords_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvGetCoords_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvGetCoords_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvGetCoords_Request<T>::codec_identity =
        "UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvGetCoords_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvGetCoords_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Request> :
        RecordMetadata_Ros2Mycobot_interfacesSrvGetCoords_Request<uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvGetCoords_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvGetCoords_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GETCOORDS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvGetCoords_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvGetCoords_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvGetCoords_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvGetCoords_Response<T>::codec_identity =
        "UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvGetCoords_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvGetCoords_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Response> :
        RecordMetadata_Ros2Mycobot_interfacesSrvGetCoords_Response<uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvGetCoords_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvGetCoords_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvGetCoords_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvGripperStatus_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvGripperStatus_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvGripperStatus_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvGripperStatus_Request<T>::codec_identity =
        "UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvGripperStatus_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvGripperStatus_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Request> :
        RecordMetadata_Ros2Mycobot_interfacesSrvGripperStatus_Request<uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvGripperStatus_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvGripperStatus_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_GRIPPERSTATUS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvGripperStatus_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvGripperStatus_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvGripperStatus_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvGripperStatus_Response<T>::codec_identity =
        "UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvGripperStatus_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvGripperStatus_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Response> :
        RecordMetadata_Ros2Mycobot_interfacesSrvGripperStatus_Response<uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvGripperStatus_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvGripperStatus_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvGripperStatus_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvPumpStatus_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvPumpStatus_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvPumpStatus_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvPumpStatus_Request<T>::codec_identity =
        "UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvPumpStatus_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvPumpStatus_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Request> :
        RecordMetadata_Ros2Mycobot_interfacesSrvPumpStatus_Request<uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvPumpStatus_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvPumpStatus_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_PUMPSTATUS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvPumpStatus_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvPumpStatus_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvPumpStatus_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvPumpStatus_Response<T>::codec_identity =
        "UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvPumpStatus_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvPumpStatus_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Response> :
        RecordMetadata_Ros2Mycobot_interfacesSrvPumpStatus_Response<uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvPumpStatus_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvPumpStatus_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvPumpStatus_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvSetAngles_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvSetAngles_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvSetAngles_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvSetAngles_Request<T>::codec_identity =
        "UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvSetAngles_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvSetAngles_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Request> :
        RecordMetadata_Ros2Mycobot_interfacesSrvSetAngles_Request<uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvSetAngles_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvSetAngles_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETANGLES_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvSetAngles_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvSetAngles_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvSetAngles_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvSetAngles_Response<T>::codec_identity =
        "UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvSetAngles_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvSetAngles_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Response> :
        RecordMetadata_Ros2Mycobot_interfacesSrvSetAngles_Response<uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvSetAngles_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvSetAngles_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvSetAngles_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvSetCoords_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvSetCoords_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvSetCoords_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvSetCoords_Request<T>::codec_identity =
        "UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvSetCoords_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvSetCoords_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Request> :
        RecordMetadata_Ros2Mycobot_interfacesSrvSetCoords_Request<uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvSetCoords_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvSetCoords_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_INTERFACES_SRV_SETCOORDS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_interfacesSrvSetCoords_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_interfacesSrvSetCoords_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_interfacesSrvSetCoords_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_interfacesSrvSetCoords_Response<T>::codec_identity =
        "UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_interfacesSrvSetCoords_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_interfacesSrvSetCoords_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Response> :
        RecordMetadata_Ros2Mycobot_interfacesSrvSetCoords_Response<uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_interfacesSrvSetCoords_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_interfacesSrvSetCoords_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_interfacesSrvSetCoords_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesMsgMycobotAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotAngles>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotAngles<T>::codec_identity =
        "UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesMsgMycobotAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotAngles> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotAngles<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotAngles>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesMsgMycobotAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesMsgMycobotAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotAngles& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesMsgMycobotCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotCoords>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotCoords<T>::codec_identity =
        "UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesMsgMycobotCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotCoords> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotCoords<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotCoords>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesMsgMycobotCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesMsgMycobotCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotCoords& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus<T>::codec_identity =
        "UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles<T>::codec_identity =
        "UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_MSG_MYCOBOTSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords<T>::codec_identity =
        "UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords<uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request<T>::codec_identity =
        "UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Request> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvGetAngles_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesSrvGetAngles_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETANGLES_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response<T>::codec_identity =
        "UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Response> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvGetAngles_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesSrvGetAngles_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetAngles_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request<T>::codec_identity =
        "UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Request> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvGetCoords_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesSrvGetCoords_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETCOORDS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response<T>::codec_identity =
        "UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Response> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvGetCoords_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesSrvGetCoords_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetCoords_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request<T>::codec_identity =
        "UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for
     * Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
         * transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GETGRIPPERVALUE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response<T>::codec_identity =
        "UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for
     * Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
         * transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into
         * Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request<T>::codec_identity =
        "UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
         * transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_GRIPPERSTATUS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response<T>::codec_identity =
        "UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
         * transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request<T>::codec_identity =
        "UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Request> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvSetAngles_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesSrvSetAngles_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETANGLES_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response<T>::codec_identity =
        "UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Response> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvSetAngles_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesSrvSetAngles_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetAngles_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request<T>::codec_identity =
        "UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Request> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvSetCoords_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesSrvSetCoords_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Request& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYCOBOT_PRO450_INTERFACES_SRV_SETCOORDS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response<T>::codec_identity =
        "UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Response> :
        RecordMetadata_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response<uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mycobot_pro450_interfacesSrvSetCoords_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mycobot_pro450_interfacesSrvSetCoords_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mycobot_pro450_interfacesSrvSetCoords_Response& out)
        {
            return !roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesMsgMypalAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalAngles>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalAngles<T>::codec_identity =
        "UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesMsgMypalAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalAngles> :
        RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalAngles<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalAngles>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesMsgMypalAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesMsgMypalAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalAngles& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesMsgMypalCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalCoords>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalCoords<T>::codec_identity =
        "UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesMsgMypalCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalCoords> :
        RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalCoords<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalCoords>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesMsgMypalCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesMsgMypalCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalCoords& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesMsgMypalGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalGripperStatus<T>::codec_identity =
        "UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesMsgMypalGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalGripperStatus> :
        RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalGripperStatus<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesMsgMypalGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesMsgMypalGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalGripperStatus& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesMsgMypalPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalPumpStatus<T>::codec_identity =
        "UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesMsgMypalPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalPumpStatus> :
        RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalPumpStatus<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesMsgMypalPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesMsgMypalPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalPumpStatus& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesMsgMypalSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalSetAngles<T>::codec_identity =
        "UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesMsgMypalSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalSetAngles> :
        RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalSetAngles<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalSetAngles>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesMsgMypalSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesMsgMypalSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalSetAngles& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_MSG_MYPALSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesMsgMypalSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalSetCoords<T>::codec_identity =
        "UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesMsgMypalSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalSetCoords> :
        RecordMetadata_Ros2Mypalletizer_interfacesMsgMypalSetCoords<uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalSetCoords>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesMsgMypalSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesMsgMypalSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesMsgMypalSetCoords& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvGetAngles_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvGetAngles_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvGetAngles_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvGetAngles_Request<T>::codec_identity =
        "UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvGetAngles_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvGetAngles_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Request> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvGetAngles_Request<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvGetAngles_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvGetAngles_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Request& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETANGLES_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvGetAngles_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvGetAngles_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvGetAngles_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvGetAngles_Response<T>::codec_identity =
        "UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvGetAngles_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvGetAngles_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Response> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvGetAngles_Response<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvGetAngles_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvGetAngles_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvGetAngles_Response& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvGetCoords_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvGetCoords_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvGetCoords_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvGetCoords_Request<T>::codec_identity =
        "UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvGetCoords_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvGetCoords_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Request> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvGetCoords_Request<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvGetCoords_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvGetCoords_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Request& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GETCOORDS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvGetCoords_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvGetCoords_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvGetCoords_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvGetCoords_Response<T>::codec_identity =
        "UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvGetCoords_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvGetCoords_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Response> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvGetCoords_Response<uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvGetCoords_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvGetCoords_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvGetCoords_Response& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvGripperStatus_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvGripperStatus_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvGripperStatus_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvGripperStatus_Request<T>::codec_identity =
        "UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvGripperStatus_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvGripperStatus_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Request> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvGripperStatus_Request<uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvGripperStatus_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvGripperStatus_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Request& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_GRIPPERSTATUS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvGripperStatus_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvGripperStatus_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvGripperStatus_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvGripperStatus_Response<T>::codec_identity =
        "UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvGripperStatus_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvGripperStatus_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Response> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvGripperStatus_Response<uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvGripperStatus_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvGripperStatus_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvGripperStatus_Response& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvPumpStatus_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvPumpStatus_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvPumpStatus_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvPumpStatus_Request<T>::codec_identity =
        "UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvPumpStatus_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvPumpStatus_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Request> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvPumpStatus_Request<uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvPumpStatus_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvPumpStatus_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Request& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_PUMPSTATUS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvPumpStatus_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvPumpStatus_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvPumpStatus_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvPumpStatus_Response<T>::codec_identity =
        "UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvPumpStatus_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvPumpStatus_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Response> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvPumpStatus_Response<uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvPumpStatus_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvPumpStatus_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvPumpStatus_Response& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvSetAngles_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvSetAngles_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_wire_size
         */
        static const size_t max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvSetAngles_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvSetAngles_Request<T>::codec_identity =
        "UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvSetAngles_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvSetAngles_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Request> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvSetAngles_Request<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvSetAngles_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvSetAngles_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Request& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETANGLES_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvSetAngles_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvSetAngles_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvSetAngles_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvSetAngles_Response<T>::codec_identity =
        "UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvSetAngles_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvSetAngles_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Response> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvSetAngles_Response<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvSetAngles_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvSetAngles_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvSetAngles_Response& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvSetCoords_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvSetCoords_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_wire_size
         */
        static const size_t max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvSetCoords_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvSetCoords_Request<T>::codec_identity =
        "UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvSetCoords_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvSetCoords_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Request> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvSetCoords_Request<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Request>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvSetCoords_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvSetCoords_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Request& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_MYPALLETIZER_INTERFACES_SRV_SETCOORDS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Mypalletizer_interfacesSrvSetCoords_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Mypalletizer_interfacesSrvSetCoords_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Mypalletizer_interfacesSrvSetCoords_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Mypalletizer_interfacesSrvSetCoords_Response<T>::codec_identity =
        "UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Mypalletizer_interfacesSrvSetCoords_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Mypalletizer_interfacesSrvSetCoords_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Response> :
        RecordMetadata_Ros2Mypalletizer_interfacesSrvSetCoords_Response<uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Response>
    {
        /**
         * @brief Encode all fields of Ros2Mypalletizer_interfacesSrvSetCoords_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Mypalletizer_interfacesSrvSetCoords_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Mypalletizer_interfacesSrvSetCoords_Response& out)
        {
            return !roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_MSG_MYCOBOTANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_MSG_MYCOBOTANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesMsgMycobotAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotAngles>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_75965ba712c12f465c2424b540359dbc4c88e2e85aa772698ee040db7c32a945";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotAngles<T>::codec_identity =
        "UWVMROS1_75965ba712c12f465c2424b540359dbc4c88e2e85aa772698ee040db7c32a945";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesMsgMycobotAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotAngles> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotAngles<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotAngles>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesMsgMycobotAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesMsgMycobotAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotAngles& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_MSG_MYCOBOTCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_MSG_MYCOBOTCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesMsgMycobotCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotCoords>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c79774c9af7fb4c150cb18c2510df52bbc7bad3c05b604abf90e19087aa05874";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotCoords<T>::codec_identity =
        "UWVMROS1_c79774c9af7fb4c150cb18c2510df52bbc7bad3c05b604abf90e19087aa05874";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesMsgMycobotCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotCoords> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotCoords<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotCoords>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesMsgMycobotCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesMsgMycobotCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotCoords& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_MSG_MYCOBOTGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_MSG_MYCOBOTGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1efb83ff22c5eb211fe92355cb5358cb991a373693d33180362e43a2ef56d22f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus<T>::codec_identity =
        "UWVMROS1_1efb83ff22c5eb211fe92355cb5358cb991a373693d33180362e43a2ef56d22f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_MSG_MYCOBOTSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_MSG_MYCOBOTSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 20;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cb53aab11e200533386b764a423f86bd7a24c65105236945c6b27ba7a9c3221c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles<T>::codec_identity =
        "UWVMROS1_cb53aab11e200533386b764a423f86bd7a24c65105236945c6b27ba7a9c3221c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_MSG_MYCOBOTSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_MSG_MYCOBOTSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 20;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fca21ab6eed31f03f0f7c9c6010d893f709f1eebb1bf07c1911452da1c50bbee";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords<T>::codec_identity =
        "UWVMROS1_fca21ab6eed31f03f0f7c9c6010d893f709f1eebb1bf07c1911452da1c50bbee";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords<uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETANGLES_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETANGLES_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetAngles_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b2ff68f6919df813ddf49ad9337c2345e3c4e70242ad81f6440d5cd1cd612ff9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request<T>::codec_identity =
        "UWVMROS1_b2ff68f6919df813ddf49ad9337c2345e3c4e70242ad81f6440d5cd1cd612ff9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetAngles_Request> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetAngles_Request>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvGetAngles_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetAngles_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvGetAngles_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetAngles_Request& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETANGLES_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETANGLES_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetAngles_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cc8b4259c50ed82d6f3b3bbb9470ac089b127b70ace12457cb41fccb7ae67cbc";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response<T>::codec_identity =
        "UWVMROS1_cc8b4259c50ed82d6f3b3bbb9470ac089b127b70ace12457cb41fccb7ae67cbc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetAngles_Response> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetAngles_Response>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvGetAngles_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetAngles_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvGetAngles_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetAngles_Response& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETCOORDS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETCOORDS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetCoords_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0ed9a0f7124cb00e62b71aecaedb60ea8832a94aaf4dc8f1de943d91dbf74e01";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request<T>::codec_identity =
        "UWVMROS1_0ed9a0f7124cb00e62b71aecaedb60ea8832a94aaf4dc8f1de943d91dbf74e01";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetCoords_Request> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetCoords_Request>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvGetCoords_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetCoords_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvGetCoords_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetCoords_Request& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETCOORDS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETCOORDS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetCoords_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_47ef794ffd2a3a4125ce3c9cbbd6b0d85fbb42cbfc888dd8fec39020cd454565";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response<T>::codec_identity =
        "UWVMROS1_47ef794ffd2a3a4125ce3c9cbbd6b0d85fbb42cbfc888dd8fec39020cd454565";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetCoords_Response> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetCoords_Response>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvGetCoords_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetCoords_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvGetCoords_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetCoords_Response& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETGRIPPERVALUE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETGRIPPERVALUE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_dad3d4af78250b2b8e44424ee1bb532b1e24bd9b867417fa428dec761fcf4be9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request<T>::codec_identity =
        "UWVMROS1_dad3d4af78250b2b8e44424ee1bb532b1e24bd9b867417fa428dec761fcf4be9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETGRIPPERVALUE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GETGRIPPERVALUE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3b3830d2ae5b4327771923acab70739d05dd3f9c8e2b3b060f6a3136a9e6c647";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response<T>::codec_identity =
        "UWVMROS1_3b3830d2ae5b4327771923acab70739d05dd3f9c8e2b3b060f6a3136a9e6c647";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response
         * transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GRIPPERSTATUS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GRIPPERSTATUS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cdaff7754e24b6910102060d2af379d4bcc9c3a647604ccdf2dc8b4a50d854b8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request<T>::codec_identity =
        "UWVMROS1_cdaff7754e24b6910102060d2af379d4bcc9c3a647604ccdf2dc8b4a50d854b8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GRIPPERSTATUS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_GRIPPERSTATUS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_55826c68885c7382e5a9e8a0ec35b312af3b2e974236d80518564c3fb8b9fa48";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response<T>::codec_identity =
        "UWVMROS1_55826c68885c7382e5a9e8a0ec35b312af3b2e974236d80518564c3fb8b9fa48";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_SETANGLES_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_SETANGLES_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetAngles_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_wire_size
         */
        static const size_t max_wire_bytes = 20;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4184d40dd5cef87f13e913d349e37b0661905c5c9f0d8c5f9cc965ea272be025";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request<T>::codec_identity =
        "UWVMROS1_4184d40dd5cef87f13e913d349e37b0661905c5c9f0d8c5f9cc965ea272be025";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetAngles_Request> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetAngles_Request>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvSetAngles_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetAngles_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvSetAngles_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetAngles_Request& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_SETANGLES_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_SETANGLES_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetAngles_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_de517cd68c164d4214aed8ad92f7bb9ee49f24c7e43d96c18e193095b0b23e1a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response<T>::codec_identity =
        "UWVMROS1_de517cd68c164d4214aed8ad92f7bb9ee49f24c7e43d96c18e193095b0b23e1a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetAngles_Response> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetAngles_Response>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvSetAngles_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetAngles_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvSetAngles_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetAngles_Response& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_SETCOORDS_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_SETCOORDS_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetCoords_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_wire_size
         */
        static const size_t max_wire_bytes = 20;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_df9914ced1ef5f92f6102595de772ed076be380360b8fd5732cf7f0d4c0ec3e3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request<T>::codec_identity =
        "UWVMROS1_df9914ced1ef5f92f6102595de772ed076be380360b8fd5732cf7f0d4c0ec3e3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetCoords_Request> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetCoords_Request>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvSetCoords_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetCoords_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvSetCoords_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetCoords_Request& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_SETCOORDS_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ULTRAARM_P1_INTERFACES_SRV_SETCOORDS_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetCoords_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c66cfcc79da5bbc9a19b077761cfd3e89b3dae56ae604205de6316aa37935d7f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response<T>::codec_identity =
        "UWVMROS1_c66cfcc79da5bbc9a19b077761cfd3e89b3dae56ae604205de6316aa37935d7f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetCoords_Response> :
        RecordMetadata_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response<uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetCoords_Response>
    {
        /**
         * @brief Encode all fields of Ros2Ultraarm_p1_interfacesSrvSetCoords_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetCoords_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Ultraarm_p1_interfacesSrvSetCoords_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Ultraarm_p1_interfacesSrvSetCoords_Response& out)
        {
            return !roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
