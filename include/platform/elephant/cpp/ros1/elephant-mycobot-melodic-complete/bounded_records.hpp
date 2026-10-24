/**
 * @file bounded_records.hpp
 * @brief Bind complete original C storage to checked C++ canonical codecs and declared defaults.
 * @details Owned inline fields retain original widths, bounds and units. Encode/decode commit
 * only complete accepted values. Metadata describes a codec and creates no ROS authority.
 */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <ros/cpp/roswasm/roswasmcpp.hpp>
#include <elephant/c/ros1/elephant-mycobot-melodic-complete/bounded_records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationMybuddyAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_MybuddyAngles Ros1Mybuddy_communicationMybuddyAngles;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationMybuddyCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_MybuddyCoords Ros1Mybuddy_communicationMybuddyCoords;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationMybuddyGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus Ros1Mybuddy_communicationMybuddyGripperStatus;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationMybuddyPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus Ros1Mybuddy_communicationMybuddyPumpStatus;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationMybuddySetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles Ros1Mybuddy_communicationMybuddySetAngles;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationMybuddySetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords Ros1Mybuddy_communicationMybuddySetCoords;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationGetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest Ros1Mybuddy_communicationGetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationGetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse Ros1Mybuddy_communicationGetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationGetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest Ros1Mybuddy_communicationGetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationGetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse Ros1Mybuddy_communicationGetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationGripperStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest Ros1Mybuddy_communicationGripperStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationGripperStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse Ros1Mybuddy_communicationGripperStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationPumpStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest Ros1Mybuddy_communicationPumpStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationPumpStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse Ros1Mybuddy_communicationPumpStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationSetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest Ros1Mybuddy_communicationSetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationSetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse Ros1Mybuddy_communicationSetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationSetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest Ros1Mybuddy_communicationSetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mybuddy_communicationSetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse Ros1Mybuddy_communicationSetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationMycobotAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotAngles_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_MycobotAngles Ros1Mecharm_communicationMycobotAngles;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationMycobotCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotCoords_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_MycobotCoords Ros1Mecharm_communicationMycobotCoords;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationMycobotGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus Ros1Mecharm_communicationMycobotGripperStatus;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationMycobotPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus Ros1Mecharm_communicationMycobotPumpStatus;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationMycobotSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_MycobotSetAngles Ros1Mecharm_communicationMycobotSetAngles;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationMycobotSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_MycobotSetCoords Ros1Mecharm_communicationMycobotSetCoords;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationGetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_GetAnglesRequest Ros1Mecharm_communicationGetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationGetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_GetAnglesResponse Ros1Mecharm_communicationGetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationGetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_GetCoordsRequest Ros1Mecharm_communicationGetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationGetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_GetCoordsResponse Ros1Mecharm_communicationGetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationGripperStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_GripperStatusRequest Ros1Mecharm_communicationGripperStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationGripperStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_GripperStatusResponse Ros1Mecharm_communicationGripperStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationPumpStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_PumpStatusRequest Ros1Mecharm_communicationPumpStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationPumpStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_PumpStatusResponse Ros1Mecharm_communicationPumpStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationSetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_SetAnglesRequest Ros1Mecharm_communicationSetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationSetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_SetAnglesResponse Ros1Mecharm_communicationSetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationSetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_SetCoordsRequest Ros1Mecharm_communicationSetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mecharm_communicationSetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mecharm_communication_SetCoordsResponse Ros1Mecharm_communicationSetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationMyArmAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmAngles_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_MyArmAngles Ros1Myarm_communicationMyArmAngles;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationMyArmCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmCoords_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_MyArmCoords Ros1Myarm_communicationMyArmCoords;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationMyArmGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_MyArmGripperStatus Ros1Myarm_communicationMyArmGripperStatus;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationMyArmPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_MyArmPumpStatus Ros1Myarm_communicationMyArmPumpStatus;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationMyArmSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmSetAngles_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_MyArmSetAngles Ros1Myarm_communicationMyArmSetAngles;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationMyArmSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmSetCoords_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_MyArmSetCoords Ros1Myarm_communicationMyArmSetCoords;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationGetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_GetAnglesRequest Ros1Myarm_communicationGetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationGetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_GetAnglesResponse Ros1Myarm_communicationGetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationGetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_GetCoordsRequest Ros1Myarm_communicationGetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationGetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_GetCoordsResponse Ros1Myarm_communicationGetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationGripperStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GripperStatusRequest_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_GripperStatusRequest Ros1Myarm_communicationGripperStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationGripperStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GripperStatusResponse_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_GripperStatusResponse Ros1Myarm_communicationGripperStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationPumpStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_PumpStatusRequest_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_PumpStatusRequest Ros1Myarm_communicationPumpStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationPumpStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_PumpStatusResponse_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_PumpStatusResponse Ros1Myarm_communicationPumpStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationSetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_SetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_SetAnglesRequest Ros1Myarm_communicationSetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationSetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_SetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_SetAnglesResponse Ros1Myarm_communicationSetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationSetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_SetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_SetCoordsRequest Ros1Myarm_communicationSetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Myarm_communicationSetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_SetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_myarm_communication_SetCoordsResponse Ros1Myarm_communicationSetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationMycobotAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_MycobotAngles Ros1Mycobot_320_communicationMycobotAngles;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationMycobotCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_MycobotCoords Ros1Mycobot_320_communicationMycobotCoords;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationMycobotGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus Ros1Mycobot_320_communicationMycobotGripperStatus;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationMycobotPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus Ros1Mycobot_320_communicationMycobotPumpStatus;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationMycobotSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles Ros1Mycobot_320_communicationMycobotSetAngles;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationMycobotSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords Ros1Mycobot_320_communicationMycobotSetCoords;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationGetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest Ros1Mycobot_320_communicationGetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationGetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse Ros1Mycobot_320_communicationGetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationGetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest Ros1Mycobot_320_communicationGetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationGetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse Ros1Mycobot_320_communicationGetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationGripperStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest Ros1Mycobot_320_communicationGripperStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationGripperStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse Ros1Mycobot_320_communicationGripperStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationPumpStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest Ros1Mycobot_320_communicationPumpStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationPumpStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse Ros1Mycobot_320_communicationPumpStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationSetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest Ros1Mycobot_320_communicationSetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationSetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse Ros1Mycobot_320_communicationSetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationSetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest Ros1Mycobot_320_communicationSetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_320_communicationSetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse Ros1Mycobot_320_communicationSetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotAngles Ros1Mycobot_communicationMycobotAngles;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotCoords Ros1Mycobot_communicationMycobotCoords;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus Ros1Mycobot_communicationMycobotGripperStatus;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus Ros1Mycobot_communicationMycobotPumpStatus;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotSetAngles Ros1Mycobot_communicationMycobotSetAngles;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotSetCoords Ros1Mycobot_communicationMycobotSetCoords;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GetAnglesRequest Ros1Mycobot_communicationGetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GetAnglesResponse Ros1Mycobot_communicationGetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GetCoordsRequest Ros1Mycobot_communicationGetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GetCoordsResponse Ros1Mycobot_communicationGetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGripperStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GripperStatusRequest Ros1Mycobot_communicationGripperStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGripperStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GripperStatusResponse Ros1Mycobot_communicationGripperStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationPumpStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_PumpStatusRequest Ros1Mycobot_communicationPumpStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationPumpStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_PumpStatusResponse Ros1Mycobot_communicationPumpStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationSetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_SetAnglesRequest Ros1Mycobot_communicationSetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationSetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_SetAnglesResponse Ros1Mycobot_communicationSetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationSetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_SetCoordsRequest Ros1Mycobot_communicationSetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationSetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_SetCoordsResponse Ros1Mycobot_communicationSetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalAngles Ros1Mypalletizer_communicationMypalAngles;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalCoords Ros1Mypalletizer_communicationMypalCoords;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus Ros1Mypalletizer_communicationMypalGripperStatus;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus Ros1Mypalletizer_communicationMypalPumpStatus;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles Ros1Mypalletizer_communicationMypalSetAngles;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords Ros1Mypalletizer_communicationMypalSetCoords;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest Ros1Mypalletizer_communicationGetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse Ros1Mypalletizer_communicationGetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest Ros1Mypalletizer_communicationGetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse Ros1Mypalletizer_communicationGetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGripperStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest Ros1Mypalletizer_communicationGripperStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGripperStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse Ros1Mypalletizer_communicationGripperStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationPumpStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest Ros1Mypalletizer_communicationPumpStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationPumpStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse Ros1Mypalletizer_communicationPumpStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationSetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest Ros1Mypalletizer_communicationSetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationSetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse Ros1Mypalletizer_communicationSetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationSetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest Ros1Mypalletizer_communicationSetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationSetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse Ros1Mypalletizer_communicationSetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationUltraArmAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_ultraArmAngles Ros1Ultraarm_communicationUltraArmAngles;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationUltraArmCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_ultraArmCoords Ros1Ultraarm_communicationUltraArmCoords;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationUltraArmGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus Ros1Ultraarm_communicationUltraArmGripperStatus;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationUltraArmPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus Ros1Ultraarm_communicationUltraArmPumpStatus;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationUltraArmSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles Ros1Ultraarm_communicationUltraArmSetAngles;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationUltraArmSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords Ros1Ultraarm_communicationUltraArmSetCoords;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationGetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest Ros1Ultraarm_communicationGetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationGetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse Ros1Ultraarm_communicationGetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationGetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest Ros1Ultraarm_communicationGetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationGetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse Ros1Ultraarm_communicationGetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationGripperStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest Ros1Ultraarm_communicationGripperStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationGripperStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse Ros1Ultraarm_communicationGripperStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationPumpStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest Ros1Ultraarm_communicationPumpStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationPumpStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse Ros1Ultraarm_communicationPumpStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationSetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest Ros1Ultraarm_communicationSetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationSetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse Ros1Ultraarm_communicationSetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationSetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest Ros1Ultraarm_communicationSetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Ultraarm_communicationSetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse Ros1Ultraarm_communicationSetCoordsResponse;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationMybuddyAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddyAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationMybuddyAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_wire_size
         */
        static const size_t max_wire_bytes = 52;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f3c510869207e6d72e868ae35ef95d49a1eea5164c7ef1056cb3d335029563e9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationMybuddyAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationMybuddyAngles<T>::codec_identity =
        "UWVMROS1_f3c510869207e6d72e868ae35ef95d49a1eea5164c7ef1056cb3d335029563e9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationMybuddyAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationMybuddyAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddyAngles> :
        RecordMetadata_Ros1Mybuddy_communicationMybuddyAngles<uwvm_custom::Ros1Mybuddy_communicationMybuddyAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationMybuddyAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationMybuddyAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationMybuddyAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationMybuddyAngles& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationMybuddyCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddyCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationMybuddyCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a1df376733f2673e25fed814a038e00f556b82c2b8bce3755644904e50c95384";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationMybuddyCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationMybuddyCoords<T>::codec_identity =
        "UWVMROS1_a1df376733f2673e25fed814a038e00f556b82c2b8bce3755644904e50c95384";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationMybuddyCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationMybuddyCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddyCoords> :
        RecordMetadata_Ros1Mybuddy_communicationMybuddyCoords<uwvm_custom::Ros1Mybuddy_communicationMybuddyCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationMybuddyCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationMybuddyCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationMybuddyCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationMybuddyCoords& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationMybuddyGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddyGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationMybuddyGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_86fdaf7d3397b26155c891e15d2ebdd903d5899a0895128e720276eb35a63854";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationMybuddyGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationMybuddyGripperStatus<T>::codec_identity =
        "UWVMROS1_86fdaf7d3397b26155c891e15d2ebdd903d5899a0895128e720276eb35a63854";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationMybuddyGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationMybuddyGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddyGripperStatus> :
        RecordMetadata_Ros1Mybuddy_communicationMybuddyGripperStatus<uwvm_custom::Ros1Mybuddy_communicationMybuddyGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationMybuddyGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationMybuddyGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationMybuddyGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationMybuddyGripperStatus& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationMybuddyPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddyPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationMybuddyPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_33b6419700f9baf41b584bb464d0234426a04e1bd86d198fe3d66c06845cd80a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationMybuddyPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationMybuddyPumpStatus<T>::codec_identity =
        "UWVMROS1_33b6419700f9baf41b584bb464d0234426a04e1bd86d198fe3d66c06845cd80a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationMybuddyPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationMybuddyPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddyPumpStatus> :
        RecordMetadata_Ros1Mybuddy_communicationMybuddyPumpStatus<uwvm_custom::Ros1Mybuddy_communicationMybuddyPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationMybuddyPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationMybuddyPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationMybuddyPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationMybuddyPumpStatus& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationMybuddySetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddySetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationMybuddySetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_wire_size
         */
        static const size_t max_wire_bytes = 53;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8f41fddfb715bfaa95c90974cf257181a9ae3e2f36969f6fdfdf3ab03b7d4486";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationMybuddySetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationMybuddySetAngles<T>::codec_identity =
        "UWVMROS1_8f41fddfb715bfaa95c90974cf257181a9ae3e2f36969f6fdfdf3ab03b7d4486";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationMybuddySetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationMybuddySetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddySetAngles> :
        RecordMetadata_Ros1Mybuddy_communicationMybuddySetAngles<uwvm_custom::Ros1Mybuddy_communicationMybuddySetAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationMybuddySetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationMybuddySetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationMybuddySetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationMybuddySetAngles& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_MYBUDDYSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationMybuddySetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddySetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationMybuddySetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bf9f2ee073928aafabbd532644eb57eec70d4b864a3097e2ab1a37840abd3669";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationMybuddySetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationMybuddySetCoords<T>::codec_identity =
        "UWVMROS1_bf9f2ee073928aafabbd532644eb57eec70d4b864a3097e2ab1a37840abd3669";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationMybuddySetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationMybuddySetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationMybuddySetCoords> :
        RecordMetadata_Ros1Mybuddy_communicationMybuddySetCoords<uwvm_custom::Ros1Mybuddy_communicationMybuddySetCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationMybuddySetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationMybuddySetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationMybuddySetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationMybuddySetCoords& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationGetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationGetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7ba90c12eb91dbcc296c0d61069d0dc12c3ac576c970cd2fe9a0fed29f058e38";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationGetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationGetAnglesRequest<T>::codec_identity =
        "UWVMROS1_7ba90c12eb91dbcc296c0d61069d0dc12c3ac576c970cd2fe9a0fed29f058e38";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationGetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationGetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationGetAnglesRequest> :
        RecordMetadata_Ros1Mybuddy_communicationGetAnglesRequest<uwvm_custom::Ros1Mybuddy_communicationGetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationGetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationGetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationGetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationGetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationGetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationGetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 52;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_98085b01a21ae26a74a286d790aab310530fff2a88d7a3c35e071df09abd709d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationGetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationGetAnglesResponse<T>::codec_identity =
        "UWVMROS1_98085b01a21ae26a74a286d790aab310530fff2a88d7a3c35e071df09abd709d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationGetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationGetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationGetAnglesResponse> :
        RecordMetadata_Ros1Mybuddy_communicationGetAnglesResponse<uwvm_custom::Ros1Mybuddy_communicationGetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationGetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationGetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationGetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationGetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationGetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationGetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e5b4bd6f4d17f79bf3477c2577e73355b871523291aace267fea201f5a2b43ef";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationGetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationGetCoordsRequest<T>::codec_identity =
        "UWVMROS1_e5b4bd6f4d17f79bf3477c2577e73355b871523291aace267fea201f5a2b43ef";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationGetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationGetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationGetCoordsRequest> :
        RecordMetadata_Ros1Mybuddy_communicationGetCoordsRequest<uwvm_custom::Ros1Mybuddy_communicationGetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationGetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationGetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationGetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationGetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationGetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationGetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_604a9a58b11d6e51faee74226c4820db7668b2054b2e48949cf9deb5958f5873";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationGetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationGetCoordsResponse<T>::codec_identity =
        "UWVMROS1_604a9a58b11d6e51faee74226c4820db7668b2054b2e48949cf9deb5958f5873";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationGetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationGetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationGetCoordsResponse> :
        RecordMetadata_Ros1Mybuddy_communicationGetCoordsResponse<uwvm_custom::Ros1Mybuddy_communicationGetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationGetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationGetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationGetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationGetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationGripperStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGripperStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationGripperStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7816f3fa4c8b7068eeb16e74940d2e26401df47b7bc6881d123f94b554523173";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationGripperStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationGripperStatusRequest<T>::codec_identity =
        "UWVMROS1_7816f3fa4c8b7068eeb16e74940d2e26401df47b7bc6881d123f94b554523173";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationGripperStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationGripperStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationGripperStatusRequest> :
        RecordMetadata_Ros1Mybuddy_communicationGripperStatusRequest<uwvm_custom::Ros1Mybuddy_communicationGripperStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationGripperStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationGripperStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationGripperStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationGripperStatusRequest& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_GRIPPERSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationGripperStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationGripperStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationGripperStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b329fd687ef106ed366d80c5651fc536ad266d2b16dee8f985f1bad32738330b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationGripperStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationGripperStatusResponse<T>::codec_identity =
        "UWVMROS1_b329fd687ef106ed366d80c5651fc536ad266d2b16dee8f985f1bad32738330b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationGripperStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationGripperStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationGripperStatusResponse> :
        RecordMetadata_Ros1Mybuddy_communicationGripperStatusResponse<uwvm_custom::Ros1Mybuddy_communicationGripperStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationGripperStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationGripperStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationGripperStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationGripperStatusResponse& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationPumpStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationPumpStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationPumpStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4261e7e11f0c6065de868444a0be45d363465b0913246b06b4a2c413714d77e9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationPumpStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationPumpStatusRequest<T>::codec_identity =
        "UWVMROS1_4261e7e11f0c6065de868444a0be45d363465b0913246b06b4a2c413714d77e9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationPumpStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationPumpStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationPumpStatusRequest> :
        RecordMetadata_Ros1Mybuddy_communicationPumpStatusRequest<uwvm_custom::Ros1Mybuddy_communicationPumpStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationPumpStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationPumpStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationPumpStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationPumpStatusRequest& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_PUMPSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationPumpStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationPumpStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationPumpStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_975f537d88c880f8daa3459f6762dc6ec7d7eee1f580c0e79f3cb581b77cabd4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationPumpStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationPumpStatusResponse<T>::codec_identity =
        "UWVMROS1_975f537d88c880f8daa3459f6762dc6ec7d7eee1f580c0e79f3cb581b77cabd4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationPumpStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationPumpStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationPumpStatusResponse> :
        RecordMetadata_Ros1Mybuddy_communicationPumpStatusResponse<uwvm_custom::Ros1Mybuddy_communicationPumpStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationPumpStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationPumpStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationPumpStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationPumpStatusResponse& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationSetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationSetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationSetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 53;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_47d19578189892ca10e073d8d250839f1e2b39ebbb3525ed9b03a15af18eb240";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationSetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationSetAnglesRequest<T>::codec_identity =
        "UWVMROS1_47d19578189892ca10e073d8d250839f1e2b39ebbb3525ed9b03a15af18eb240";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationSetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationSetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationSetAnglesRequest> :
        RecordMetadata_Ros1Mybuddy_communicationSetAnglesRequest<uwvm_custom::Ros1Mybuddy_communicationSetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationSetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationSetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationSetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationSetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationSetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationSetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationSetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7371fa369708af552fd68522d7effdd00bf82bf7e2fe21469ceb210f51582f81";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationSetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationSetAnglesResponse<T>::codec_identity =
        "UWVMROS1_7371fa369708af552fd68522d7effdd00bf82bf7e2fe21469ceb210f51582f81";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationSetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationSetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationSetAnglesResponse> :
        RecordMetadata_Ros1Mybuddy_communicationSetAnglesResponse<uwvm_custom::Ros1Mybuddy_communicationSetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationSetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationSetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationSetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationSetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationSetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationSetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationSetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_81f7315bebd612a9406a2805b393415b8a1956e49f3d1b8efb21f9e703b0bfe0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationSetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationSetCoordsRequest<T>::codec_identity =
        "UWVMROS1_81f7315bebd612a9406a2805b393415b8a1956e49f3d1b8efb21f9e703b0bfe0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationSetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationSetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationSetCoordsRequest> :
        RecordMetadata_Ros1Mybuddy_communicationSetCoordsRequest<uwvm_custom::Ros1Mybuddy_communicationSetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationSetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationSetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationSetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationSetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYBUDDY_COMMUNICATION_SETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mybuddy_communicationSetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mybuddy_communicationSetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mybuddy_communicationSetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e5c41ea9420e43a5406ddee23cee961347bfad4f83baf9ebac93d16cdb5d0b21";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mybuddy_communicationSetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mybuddy_communicationSetCoordsResponse<T>::codec_identity =
        "UWVMROS1_e5c41ea9420e43a5406ddee23cee961347bfad4f83baf9ebac93d16cdb5d0b21";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mybuddy_communicationSetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mybuddy_communicationSetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mybuddy_communicationSetCoordsResponse> :
        RecordMetadata_Ros1Mybuddy_communicationSetCoordsResponse<uwvm_custom::Ros1Mybuddy_communicationSetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mybuddy_communicationSetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mybuddy_communicationSetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mybuddy_communicationSetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mybuddy_communicationSetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationMycobotAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationMycobotAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationMycobotAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotAngles_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_MycobotAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4afa3dc66ce6ffe02170c76da688514a04aa7b47008aeb8f79c44f9ff867d189";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationMycobotAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationMycobotAngles<T>::codec_identity =
        "UWVMROS1_4afa3dc66ce6ffe02170c76da688514a04aa7b47008aeb8f79c44f9ff867d189";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationMycobotAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationMycobotAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationMycobotAngles> :
        RecordMetadata_Ros1Mecharm_communicationMycobotAngles<uwvm_custom::Ros1Mecharm_communicationMycobotAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationMycobotAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationMycobotAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_MycobotAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_MycobotAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_MycobotAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationMycobotAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationMycobotAngles& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_MycobotAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationMycobotCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationMycobotCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationMycobotCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotCoords_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_MycobotCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a6a82e22cd0a2f24657c0a253ed00bf31c0a266e6ebaab071cfd369780818d35";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationMycobotCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationMycobotCoords<T>::codec_identity =
        "UWVMROS1_a6a82e22cd0a2f24657c0a253ed00bf31c0a266e6ebaab071cfd369780818d35";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationMycobotCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationMycobotCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationMycobotCoords> :
        RecordMetadata_Ros1Mecharm_communicationMycobotCoords<uwvm_custom::Ros1Mecharm_communicationMycobotCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationMycobotCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationMycobotCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_MycobotCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_MycobotCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_MycobotCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationMycobotCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationMycobotCoords& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_MycobotCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationMycobotGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationMycobotGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationMycobotGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_07e04dad52b423c371dc5432b68a2f4272cf55328d6f0a10f091dc389d57a4bf";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationMycobotGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationMycobotGripperStatus<T>::codec_identity =
        "UWVMROS1_07e04dad52b423c371dc5432b68a2f4272cf55328d6f0a10f091dc389d57a4bf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationMycobotGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationMycobotGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationMycobotGripperStatus> :
        RecordMetadata_Ros1Mecharm_communicationMycobotGripperStatus<uwvm_custom::Ros1Mecharm_communicationMycobotGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationMycobotGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationMycobotGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationMycobotGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationMycobotGripperStatus& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationMycobotPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationMycobotPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationMycobotPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f559fbf7d5d2c872b3660132eb8c17c79ca3c2d27e975f8fb8fde1d86072a6fa";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationMycobotPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationMycobotPumpStatus<T>::codec_identity =
        "UWVMROS1_f559fbf7d5d2c872b3660132eb8c17c79ca3c2d27e975f8fb8fde1d86072a6fa";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationMycobotPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationMycobotPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationMycobotPumpStatus> :
        RecordMetadata_Ros1Mecharm_communicationMycobotPumpStatus<uwvm_custom::Ros1Mecharm_communicationMycobotPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationMycobotPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationMycobotPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationMycobotPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationMycobotPumpStatus& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationMycobotSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationMycobotSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationMycobotSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bce09b709e806417595c05e0e795d689b8c53008f9916633d934f935f9389de9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationMycobotSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationMycobotSetAngles<T>::codec_identity =
        "UWVMROS1_bce09b709e806417595c05e0e795d689b8c53008f9916633d934f935f9389de9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationMycobotSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationMycobotSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationMycobotSetAngles> :
        RecordMetadata_Ros1Mecharm_communicationMycobotSetAngles<uwvm_custom::Ros1Mecharm_communicationMycobotSetAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationMycobotSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationMycobotSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationMycobotSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationMycobotSetAngles& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_MYCOBOTSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationMycobotSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationMycobotSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationMycobotSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_68ffa6950e0934b845b2b45140612997c8276a3ac7ed4303e43cd70417491913";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationMycobotSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationMycobotSetCoords<T>::codec_identity =
        "UWVMROS1_68ffa6950e0934b845b2b45140612997c8276a3ac7ed4303e43cd70417491913";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationMycobotSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationMycobotSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationMycobotSetCoords> :
        RecordMetadata_Ros1Mecharm_communicationMycobotSetCoords<uwvm_custom::Ros1Mecharm_communicationMycobotSetCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationMycobotSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationMycobotSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationMycobotSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationMycobotSetCoords& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationGetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationGetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6a8f60e71495c9944e1e97c308d5c992674bd46060b6f6abf2df3f9748c13123";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationGetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationGetAnglesRequest<T>::codec_identity =
        "UWVMROS1_6a8f60e71495c9944e1e97c308d5c992674bd46060b6f6abf2df3f9748c13123";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationGetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationGetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationGetAnglesRequest> :
        RecordMetadata_Ros1Mecharm_communicationGetAnglesRequest<uwvm_custom::Ros1Mecharm_communicationGetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationGetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationGetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationGetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationGetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationGetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationGetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e792a206903dc49fab725e3b3507af3cf4712f10740e9dcceeb90dedfe6ea6e8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationGetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationGetAnglesResponse<T>::codec_identity =
        "UWVMROS1_e792a206903dc49fab725e3b3507af3cf4712f10740e9dcceeb90dedfe6ea6e8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationGetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationGetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationGetAnglesResponse> :
        RecordMetadata_Ros1Mecharm_communicationGetAnglesResponse<uwvm_custom::Ros1Mecharm_communicationGetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationGetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationGetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationGetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationGetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationGetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationGetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_55d4d1b8965ea12f9b15d4bd5a22c43793d04af452fefb84bd98bc3d7d8da8bf";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationGetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationGetCoordsRequest<T>::codec_identity =
        "UWVMROS1_55d4d1b8965ea12f9b15d4bd5a22c43793d04af452fefb84bd98bc3d7d8da8bf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationGetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationGetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationGetCoordsRequest> :
        RecordMetadata_Ros1Mecharm_communicationGetCoordsRequest<uwvm_custom::Ros1Mecharm_communicationGetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationGetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationGetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationGetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationGetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationGetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationGetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2230e517685ea625507334067ccceb8424ecf782fcd4163c551d09048e900ca8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationGetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationGetCoordsResponse<T>::codec_identity =
        "UWVMROS1_2230e517685ea625507334067ccceb8424ecf782fcd4163c551d09048e900ca8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationGetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationGetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationGetCoordsResponse> :
        RecordMetadata_Ros1Mecharm_communicationGetCoordsResponse<uwvm_custom::Ros1Mecharm_communicationGetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationGetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationGetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationGetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationGetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationGripperStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGripperStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationGripperStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_98284fbac3bdb61857b9175b1f82adc7265d0ed418088123d79bf75cb04c9a2c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationGripperStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationGripperStatusRequest<T>::codec_identity =
        "UWVMROS1_98284fbac3bdb61857b9175b1f82adc7265d0ed418088123d79bf75cb04c9a2c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationGripperStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationGripperStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationGripperStatusRequest> :
        RecordMetadata_Ros1Mecharm_communicationGripperStatusRequest<uwvm_custom::Ros1Mecharm_communicationGripperStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationGripperStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationGripperStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationGripperStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationGripperStatusRequest& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_GRIPPERSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationGripperStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationGripperStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationGripperStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_29cfb0267fbe68d5dafcd3c9d16a8d4dab6b21477921a48ba35135bc0c22bb32";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationGripperStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationGripperStatusResponse<T>::codec_identity =
        "UWVMROS1_29cfb0267fbe68d5dafcd3c9d16a8d4dab6b21477921a48ba35135bc0c22bb32";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationGripperStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationGripperStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationGripperStatusResponse> :
        RecordMetadata_Ros1Mecharm_communicationGripperStatusResponse<uwvm_custom::Ros1Mecharm_communicationGripperStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationGripperStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationGripperStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationGripperStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationGripperStatusResponse& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationPumpStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationPumpStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationPumpStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_aa138db91e46b41659dfc5901225aaaae1c1ae0461c35d3f7a90d0cf86c9920d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationPumpStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationPumpStatusRequest<T>::codec_identity =
        "UWVMROS1_aa138db91e46b41659dfc5901225aaaae1c1ae0461c35d3f7a90d0cf86c9920d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationPumpStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationPumpStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationPumpStatusRequest> :
        RecordMetadata_Ros1Mecharm_communicationPumpStatusRequest<uwvm_custom::Ros1Mecharm_communicationPumpStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationPumpStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationPumpStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationPumpStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationPumpStatusRequest& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_PUMPSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationPumpStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationPumpStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationPumpStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_876caa88c833bfa180b8747110683c789aa238c0cda162a8e262c66fddefdd8f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationPumpStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationPumpStatusResponse<T>::codec_identity =
        "UWVMROS1_876caa88c833bfa180b8747110683c789aa238c0cda162a8e262c66fddefdd8f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationPumpStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationPumpStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationPumpStatusResponse> :
        RecordMetadata_Ros1Mecharm_communicationPumpStatusResponse<uwvm_custom::Ros1Mecharm_communicationPumpStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationPumpStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationPumpStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationPumpStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationPumpStatusResponse& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationSetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationSetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationSetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7ad54edf4730457f2b2124c925b87a99bdbeddd8bfcc1e0d806f7b9dad31507b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationSetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationSetAnglesRequest<T>::codec_identity =
        "UWVMROS1_7ad54edf4730457f2b2124c925b87a99bdbeddd8bfcc1e0d806f7b9dad31507b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationSetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationSetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationSetAnglesRequest> :
        RecordMetadata_Ros1Mecharm_communicationSetAnglesRequest<uwvm_custom::Ros1Mecharm_communicationSetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationSetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationSetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationSetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationSetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationSetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationSetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationSetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_940a294ef91d04afeb65b88bbdd91df3a7db0a07435ced3993db3a9d0f574c6e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationSetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationSetAnglesResponse<T>::codec_identity =
        "UWVMROS1_940a294ef91d04afeb65b88bbdd91df3a7db0a07435ced3993db3a9d0f574c6e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationSetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationSetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationSetAnglesResponse> :
        RecordMetadata_Ros1Mecharm_communicationSetAnglesResponse<uwvm_custom::Ros1Mecharm_communicationSetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationSetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationSetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationSetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationSetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationSetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationSetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationSetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_68deaf663a1fe2d3d7434935f10161eb444e7ea2f79e4b746fee9bd0383fc929";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationSetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationSetCoordsRequest<T>::codec_identity =
        "UWVMROS1_68deaf663a1fe2d3d7434935f10161eb444e7ea2f79e4b746fee9bd0383fc929";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationSetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationSetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationSetCoordsRequest> :
        RecordMetadata_Ros1Mecharm_communicationSetCoordsRequest<uwvm_custom::Ros1Mecharm_communicationSetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationSetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationSetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationSetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationSetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MECHARM_COMMUNICATION_SETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mecharm_communicationSetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mecharm_communicationSetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mecharm_communicationSetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c66a6e14c4c7eba1b52d7ef57802cb6122a120f692bcc1552c51078301b1b409";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mecharm_communicationSetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mecharm_communicationSetCoordsResponse<T>::codec_identity =
        "UWVMROS1_c66a6e14c4c7eba1b52d7ef57802cb6122a120f692bcc1552c51078301b1b409";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mecharm_communicationSetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mecharm_communicationSetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mecharm_communicationSetCoordsResponse> :
        RecordMetadata_Ros1Mecharm_communicationSetCoordsResponse<uwvm_custom::Ros1Mecharm_communicationSetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mecharm_communicationSetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mecharm_communicationSetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mecharm_communicationSetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mecharm_communicationSetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationMyArmAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationMyArmAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationMyArmAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_MyArmAngles_wire_size
         */
        static const size_t max_wire_bytes = 28;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_MyArmAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_eff11a03e974b4af030c2dc92d0111cf95e0fb3ce004235bada3fe358b63fd4c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationMyArmAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationMyArmAngles<T>::codec_identity =
        "UWVMROS1_eff11a03e974b4af030c2dc92d0111cf95e0fb3ce004235bada3fe358b63fd4c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationMyArmAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationMyArmAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationMyArmAngles> :
        RecordMetadata_Ros1Myarm_communicationMyArmAngles<uwvm_custom::Ros1Myarm_communicationMyArmAngles>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationMyArmAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_MyArmAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationMyArmAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_MyArmAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_MyArmAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_MyArmAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationMyArmAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_MyArmAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationMyArmAngles& out)
        {
            return !roswasmc_bounded_1_myarm_communication_MyArmAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationMyArmCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationMyArmCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationMyArmCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_MyArmCoords_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_MyArmCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f0df1605988924f0263805fb2b27ab7ef9e2296691ed15e03a337606362c983c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationMyArmCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationMyArmCoords<T>::codec_identity =
        "UWVMROS1_f0df1605988924f0263805fb2b27ab7ef9e2296691ed15e03a337606362c983c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationMyArmCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationMyArmCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationMyArmCoords> :
        RecordMetadata_Ros1Myarm_communicationMyArmCoords<uwvm_custom::Ros1Myarm_communicationMyArmCoords>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationMyArmCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_MyArmCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationMyArmCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_MyArmCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_MyArmCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_MyArmCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationMyArmCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_MyArmCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationMyArmCoords& out)
        {
            return !roswasmc_bounded_1_myarm_communication_MyArmCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationMyArmGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationMyArmGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationMyArmGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7875df5b50417da1cef60d79c872aff0b40a08f9bbfe80c103729d3c4c892c6f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationMyArmGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationMyArmGripperStatus<T>::codec_identity =
        "UWVMROS1_7875df5b50417da1cef60d79c872aff0b40a08f9bbfe80c103729d3c4c892c6f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationMyArmGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationMyArmGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationMyArmGripperStatus> :
        RecordMetadata_Ros1Myarm_communicationMyArmGripperStatus<uwvm_custom::Ros1Myarm_communicationMyArmGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationMyArmGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationMyArmGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationMyArmGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationMyArmGripperStatus& out)
        {
            return !roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationMyArmPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationMyArmPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationMyArmPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_58765b94f1ecb3bb131f6480ea6830631cde9c96eeef94fd9b22598ccc9ea928";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationMyArmPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationMyArmPumpStatus<T>::codec_identity =
        "UWVMROS1_58765b94f1ecb3bb131f6480ea6830631cde9c96eeef94fd9b22598ccc9ea928";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationMyArmPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationMyArmPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationMyArmPumpStatus> :
        RecordMetadata_Ros1Myarm_communicationMyArmPumpStatus<uwvm_custom::Ros1Myarm_communicationMyArmPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationMyArmPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationMyArmPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationMyArmPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationMyArmPumpStatus& out)
        {
            return !roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationMyArmSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationMyArmSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationMyArmSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_MyArmSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 29;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_MyArmSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6acbfd19e3864b66e47b9da5c7c0e8890e7336e8d6c9a5657c4f5eaa5285fe42";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationMyArmSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationMyArmSetAngles<T>::codec_identity =
        "UWVMROS1_6acbfd19e3864b66e47b9da5c7c0e8890e7336e8d6c9a5657c4f5eaa5285fe42";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationMyArmSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationMyArmSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationMyArmSetAngles> :
        RecordMetadata_Ros1Myarm_communicationMyArmSetAngles<uwvm_custom::Ros1Myarm_communicationMyArmSetAngles>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationMyArmSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_MyArmSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationMyArmSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_MyArmSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_MyArmSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_MyArmSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationMyArmSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_MyArmSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationMyArmSetAngles& out)
        {
            return !roswasmc_bounded_1_myarm_communication_MyArmSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_MYARMSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationMyArmSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationMyArmSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationMyArmSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_MyArmSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_MyArmSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ce10c29be4cfd832d5076fead55817a0ac7ccde002d5bbbd7a2befd95e9752fd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationMyArmSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationMyArmSetCoords<T>::codec_identity =
        "UWVMROS1_ce10c29be4cfd832d5076fead55817a0ac7ccde002d5bbbd7a2befd95e9752fd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationMyArmSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationMyArmSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_MyArmSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationMyArmSetCoords> :
        RecordMetadata_Ros1Myarm_communicationMyArmSetCoords<uwvm_custom::Ros1Myarm_communicationMyArmSetCoords>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationMyArmSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_MyArmSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationMyArmSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_MyArmSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_MyArmSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_MyArmSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationMyArmSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_MyArmSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationMyArmSetCoords& out)
        {
            return !roswasmc_bounded_1_myarm_communication_MyArmSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationGetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationGetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_GetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_GetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_18ea682d1c475321b67435e9f207a14627113ad237a38c759cfe4e1c92fded37";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationGetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationGetAnglesRequest<T>::codec_identity =
        "UWVMROS1_18ea682d1c475321b67435e9f207a14627113ad237a38c759cfe4e1c92fded37";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationGetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationGetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationGetAnglesRequest> :
        RecordMetadata_Ros1Myarm_communicationGetAnglesRequest<uwvm_custom::Ros1Myarm_communicationGetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationGetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_GetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationGetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_GetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_GetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_GetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationGetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_GetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationGetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_myarm_communication_GetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationGetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationGetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_GetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 28;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_GetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0c68b293384d21d06e23d4aba10b4a4c2eff4e1a0eaa81903e026fe28da410c7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationGetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationGetAnglesResponse<T>::codec_identity =
        "UWVMROS1_0c68b293384d21d06e23d4aba10b4a4c2eff4e1a0eaa81903e026fe28da410c7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationGetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationGetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationGetAnglesResponse> :
        RecordMetadata_Ros1Myarm_communicationGetAnglesResponse<uwvm_custom::Ros1Myarm_communicationGetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationGetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_GetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationGetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_GetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_GetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_GetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationGetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_GetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationGetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_myarm_communication_GetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationGetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationGetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_GetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_GetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_04d9d79ad983cf4631cf65a48cae60d982cd0f234f0f4ed1afa0cc630bd63d95";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationGetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationGetCoordsRequest<T>::codec_identity =
        "UWVMROS1_04d9d79ad983cf4631cf65a48cae60d982cd0f234f0f4ed1afa0cc630bd63d95";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationGetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationGetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationGetCoordsRequest> :
        RecordMetadata_Ros1Myarm_communicationGetCoordsRequest<uwvm_custom::Ros1Myarm_communicationGetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationGetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_GetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationGetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_GetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_GetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_GetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationGetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_GetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationGetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_myarm_communication_GetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationGetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationGetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_GetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_GetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_752564704c08fb2076df8eea4f6f5b89621041372472f0f99b6627fdfda831b7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationGetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationGetCoordsResponse<T>::codec_identity =
        "UWVMROS1_752564704c08fb2076df8eea4f6f5b89621041372472f0f99b6627fdfda831b7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationGetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationGetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationGetCoordsResponse> :
        RecordMetadata_Ros1Myarm_communicationGetCoordsResponse<uwvm_custom::Ros1Myarm_communicationGetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationGetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_GetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationGetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_GetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_GetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_GetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationGetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_GetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationGetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_myarm_communication_GetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationGripperStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGripperStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationGripperStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_GripperStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_GripperStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_adec2e0fbf48862c2245aea4c31c59ea12abdec26b4727b14005b65006c58976";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationGripperStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationGripperStatusRequest<T>::codec_identity =
        "UWVMROS1_adec2e0fbf48862c2245aea4c31c59ea12abdec26b4727b14005b65006c58976";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationGripperStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationGripperStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GripperStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationGripperStatusRequest> :
        RecordMetadata_Ros1Myarm_communicationGripperStatusRequest<uwvm_custom::Ros1Myarm_communicationGripperStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationGripperStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_GripperStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationGripperStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_GripperStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_GripperStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_GripperStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationGripperStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_GripperStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationGripperStatusRequest& out)
        {
            return !roswasmc_bounded_1_myarm_communication_GripperStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_GRIPPERSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationGripperStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationGripperStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationGripperStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_GripperStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_GripperStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d703a0ec6f562f1deb444313e36e6a728b4e521d1196d90a63725753d5fe9659";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationGripperStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationGripperStatusResponse<T>::codec_identity =
        "UWVMROS1_d703a0ec6f562f1deb444313e36e6a728b4e521d1196d90a63725753d5fe9659";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationGripperStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationGripperStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_GripperStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationGripperStatusResponse> :
        RecordMetadata_Ros1Myarm_communicationGripperStatusResponse<uwvm_custom::Ros1Myarm_communicationGripperStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationGripperStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_GripperStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationGripperStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_GripperStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_GripperStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_GripperStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationGripperStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_GripperStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationGripperStatusResponse& out)
        {
            return !roswasmc_bounded_1_myarm_communication_GripperStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationPumpStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationPumpStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationPumpStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_PumpStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_PumpStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_eac2f5c006a0fa86df638c52e9cfb7d2c17818ec10e32ad5277af216c6c944f4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationPumpStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationPumpStatusRequest<T>::codec_identity =
        "UWVMROS1_eac2f5c006a0fa86df638c52e9cfb7d2c17818ec10e32ad5277af216c6c944f4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationPumpStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationPumpStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_PumpStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationPumpStatusRequest> :
        RecordMetadata_Ros1Myarm_communicationPumpStatusRequest<uwvm_custom::Ros1Myarm_communicationPumpStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationPumpStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_PumpStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationPumpStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_PumpStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_PumpStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_PumpStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationPumpStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_PumpStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationPumpStatusRequest& out)
        {
            return !roswasmc_bounded_1_myarm_communication_PumpStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_PUMPSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationPumpStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationPumpStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationPumpStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_PumpStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_PumpStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_28533ec27c01d85c9a4644959ea8e5c3f2480f5203a9545e96e4242158f08044";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationPumpStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationPumpStatusResponse<T>::codec_identity =
        "UWVMROS1_28533ec27c01d85c9a4644959ea8e5c3f2480f5203a9545e96e4242158f08044";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationPumpStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationPumpStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_PumpStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationPumpStatusResponse> :
        RecordMetadata_Ros1Myarm_communicationPumpStatusResponse<uwvm_custom::Ros1Myarm_communicationPumpStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationPumpStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_PumpStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationPumpStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_PumpStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_PumpStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_PumpStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationPumpStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_PumpStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationPumpStatusResponse& out)
        {
            return !roswasmc_bounded_1_myarm_communication_PumpStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationSetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationSetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationSetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_SetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 29;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_SetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c15c81907fbace209686a98578019d893d86cecf4782427ac2c3858da8cd3e0a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationSetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationSetAnglesRequest<T>::codec_identity =
        "UWVMROS1_c15c81907fbace209686a98578019d893d86cecf4782427ac2c3858da8cd3e0a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationSetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationSetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_SetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationSetAnglesRequest> :
        RecordMetadata_Ros1Myarm_communicationSetAnglesRequest<uwvm_custom::Ros1Myarm_communicationSetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationSetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_SetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationSetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_SetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_SetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_SetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationSetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_SetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationSetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_myarm_communication_SetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationSetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationSetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationSetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_SetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_SetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_dbdbcb001f0478a4bba5ae9d7320d8dbfa4e36a5c1c130215ff5ab864c73af0f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationSetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationSetAnglesResponse<T>::codec_identity =
        "UWVMROS1_dbdbcb001f0478a4bba5ae9d7320d8dbfa4e36a5c1c130215ff5ab864c73af0f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationSetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationSetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_SetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationSetAnglesResponse> :
        RecordMetadata_Ros1Myarm_communicationSetAnglesResponse<uwvm_custom::Ros1Myarm_communicationSetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationSetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_SetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationSetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_SetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_SetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_SetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationSetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_SetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationSetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_myarm_communication_SetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationSetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationSetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationSetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_SetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_SetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_86cfc6edb6b86f90a21818e824aea50b697e314687472e1e96e9ce5399ef66c6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationSetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationSetCoordsRequest<T>::codec_identity =
        "UWVMROS1_86cfc6edb6b86f90a21818e824aea50b697e314687472e1e96e9ce5399ef66c6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationSetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationSetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_SetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationSetCoordsRequest> :
        RecordMetadata_Ros1Myarm_communicationSetCoordsRequest<uwvm_custom::Ros1Myarm_communicationSetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationSetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_SetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationSetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_SetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_SetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_SetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationSetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_SetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationSetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_myarm_communication_SetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYARM_COMMUNICATION_SETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Myarm_communicationSetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Myarm_communicationSetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Myarm_communicationSetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_myarm_communication_SetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_myarm_communication_SetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_52a54371663141d4384dae8969b729baf097a0aa6105f263e78593743e44272d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Myarm_communicationSetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Myarm_communicationSetCoordsResponse<T>::codec_identity =
        "UWVMROS1_52a54371663141d4384dae8969b729baf097a0aa6105f263e78593743e44272d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Myarm_communicationSetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Myarm_communicationSetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_myarm_communication_SetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Myarm_communicationSetCoordsResponse> :
        RecordMetadata_Ros1Myarm_communicationSetCoordsResponse<uwvm_custom::Ros1Myarm_communicationSetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Myarm_communicationSetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_myarm_communication_SetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Myarm_communicationSetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_myarm_communication_SetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_myarm_communication_SetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_myarm_communication_SetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Myarm_communicationSetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_myarm_communication_SetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Myarm_communicationSetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_myarm_communication_SetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationMycobotAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationMycobotAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_67ec61da0c2bf7ee461c21abbfcab14d74b84cb6c9a12430e2a306abdc65690a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationMycobotAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationMycobotAngles<T>::codec_identity =
        "UWVMROS1_67ec61da0c2bf7ee461c21abbfcab14d74b84cb6c9a12430e2a306abdc65690a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationMycobotAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationMycobotAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotAngles> :
        RecordMetadata_Ros1Mycobot_320_communicationMycobotAngles<uwvm_custom::Ros1Mycobot_320_communicationMycobotAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationMycobotAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationMycobotAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationMycobotAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationMycobotAngles& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationMycobotCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationMycobotCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1f2ada8331783764a52ed35c81c3ce9a2fdd260e2dffa2990751ce5156c3ad03";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationMycobotCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationMycobotCoords<T>::codec_identity =
        "UWVMROS1_1f2ada8331783764a52ed35c81c3ce9a2fdd260e2dffa2990751ce5156c3ad03";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationMycobotCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationMycobotCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotCoords> :
        RecordMetadata_Ros1Mycobot_320_communicationMycobotCoords<uwvm_custom::Ros1Mycobot_320_communicationMycobotCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationMycobotCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationMycobotCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationMycobotCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationMycobotCoords& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationMycobotGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationMycobotGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_efb4ccdb3ce35d67174700f3d3dd7332d0f7a834c5d76b6153e389e031907984";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationMycobotGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationMycobotGripperStatus<T>::codec_identity =
        "UWVMROS1_efb4ccdb3ce35d67174700f3d3dd7332d0f7a834c5d76b6153e389e031907984";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationMycobotGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationMycobotGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotGripperStatus> :
        RecordMetadata_Ros1Mycobot_320_communicationMycobotGripperStatus<uwvm_custom::Ros1Mycobot_320_communicationMycobotGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationMycobotGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationMycobotGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationMycobotGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationMycobotGripperStatus& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationMycobotPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationMycobotPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bb1d48067f44b7022820a6175afe05d5ba8caed9f750874a4e703389cb0d83f4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationMycobotPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationMycobotPumpStatus<T>::codec_identity =
        "UWVMROS1_bb1d48067f44b7022820a6175afe05d5ba8caed9f750874a4e703389cb0d83f4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationMycobotPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationMycobotPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotPumpStatus> :
        RecordMetadata_Ros1Mycobot_320_communicationMycobotPumpStatus<uwvm_custom::Ros1Mycobot_320_communicationMycobotPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationMycobotPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationMycobotPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationMycobotPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationMycobotPumpStatus& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationMycobotSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationMycobotSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bf04b1bd24ab2f56c1835d1abe44b73fe023407c3ebdd3d35341242116a5d259";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationMycobotSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationMycobotSetAngles<T>::codec_identity =
        "UWVMROS1_bf04b1bd24ab2f56c1835d1abe44b73fe023407c3ebdd3d35341242116a5d259";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationMycobotSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationMycobotSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotSetAngles> :
        RecordMetadata_Ros1Mycobot_320_communicationMycobotSetAngles<uwvm_custom::Ros1Mycobot_320_communicationMycobotSetAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationMycobotSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationMycobotSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationMycobotSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationMycobotSetAngles& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_MYCOBOTSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationMycobotSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationMycobotSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_761235ef96bcc1c687ad8dd3f6d39982d1b0a7a24eaab3bb54feb9780b9e0092";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationMycobotSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationMycobotSetCoords<T>::codec_identity =
        "UWVMROS1_761235ef96bcc1c687ad8dd3f6d39982d1b0a7a24eaab3bb54feb9780b9e0092";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationMycobotSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationMycobotSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationMycobotSetCoords> :
        RecordMetadata_Ros1Mycobot_320_communicationMycobotSetCoords<uwvm_custom::Ros1Mycobot_320_communicationMycobotSetCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationMycobotSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationMycobotSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationMycobotSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationMycobotSetCoords& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationGetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationGetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fe13e75d9def5e6f7f831297c771cd4d319e1e9862b5026382fed23747b721b8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationGetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationGetAnglesRequest<T>::codec_identity =
        "UWVMROS1_fe13e75d9def5e6f7f831297c771cd4d319e1e9862b5026382fed23747b721b8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationGetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationGetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationGetAnglesRequest> :
        RecordMetadata_Ros1Mycobot_320_communicationGetAnglesRequest<uwvm_custom::Ros1Mycobot_320_communicationGetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationGetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationGetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationGetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationGetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationGetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationGetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c0cb03f21add6e566a30129ed7ce3174fa86786859c472a848c6768678adc80a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationGetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationGetAnglesResponse<T>::codec_identity =
        "UWVMROS1_c0cb03f21add6e566a30129ed7ce3174fa86786859c472a848c6768678adc80a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationGetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationGetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationGetAnglesResponse> :
        RecordMetadata_Ros1Mycobot_320_communicationGetAnglesResponse<uwvm_custom::Ros1Mycobot_320_communicationGetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationGetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationGetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationGetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationGetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationGetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationGetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_82b2ae7ba4bf2aff8cd6c88ae344b376604624612abdd633c930695c1d1650d6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationGetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationGetCoordsRequest<T>::codec_identity =
        "UWVMROS1_82b2ae7ba4bf2aff8cd6c88ae344b376604624612abdd633c930695c1d1650d6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationGetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationGetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationGetCoordsRequest> :
        RecordMetadata_Ros1Mycobot_320_communicationGetCoordsRequest<uwvm_custom::Ros1Mycobot_320_communicationGetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationGetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationGetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationGetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationGetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationGetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationGetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_821bac75a42a37fa06f51e57c09839f3557487dc8e883310601cb2e00bb6b05d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationGetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationGetCoordsResponse<T>::codec_identity =
        "UWVMROS1_821bac75a42a37fa06f51e57c09839f3557487dc8e883310601cb2e00bb6b05d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationGetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationGetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationGetCoordsResponse> :
        RecordMetadata_Ros1Mycobot_320_communicationGetCoordsResponse<uwvm_custom::Ros1Mycobot_320_communicationGetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationGetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationGetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationGetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationGetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationGripperStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGripperStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationGripperStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_68d072c047f4f026459309282a40c78c5db51571126efb85b7ca9e9f121b5eb5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationGripperStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationGripperStatusRequest<T>::codec_identity =
        "UWVMROS1_68d072c047f4f026459309282a40c78c5db51571126efb85b7ca9e9f121b5eb5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationGripperStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationGripperStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationGripperStatusRequest> :
        RecordMetadata_Ros1Mycobot_320_communicationGripperStatusRequest<uwvm_custom::Ros1Mycobot_320_communicationGripperStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationGripperStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationGripperStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationGripperStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationGripperStatusRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_GRIPPERSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationGripperStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationGripperStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationGripperStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9c1387ec1a93d6674ac6dd735b2811957db57359e9e461dcedc70ae6fccc5544";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationGripperStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationGripperStatusResponse<T>::codec_identity =
        "UWVMROS1_9c1387ec1a93d6674ac6dd735b2811957db57359e9e461dcedc70ae6fccc5544";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationGripperStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationGripperStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationGripperStatusResponse> :
        RecordMetadata_Ros1Mycobot_320_communicationGripperStatusResponse<uwvm_custom::Ros1Mycobot_320_communicationGripperStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationGripperStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationGripperStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationGripperStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationGripperStatusResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationPumpStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationPumpStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationPumpStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_23a6e68b36341b30ab13026cbddfd01b16d352105bb5faecd7c1ec6ad654ab60";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationPumpStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationPumpStatusRequest<T>::codec_identity =
        "UWVMROS1_23a6e68b36341b30ab13026cbddfd01b16d352105bb5faecd7c1ec6ad654ab60";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationPumpStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationPumpStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationPumpStatusRequest> :
        RecordMetadata_Ros1Mycobot_320_communicationPumpStatusRequest<uwvm_custom::Ros1Mycobot_320_communicationPumpStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationPumpStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationPumpStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationPumpStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationPumpStatusRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_PUMPSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationPumpStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationPumpStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationPumpStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_037f53ebd0750c76a798ff17507759fcf71aa8a55496e5b151b8d977dff2c1c8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationPumpStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationPumpStatusResponse<T>::codec_identity =
        "UWVMROS1_037f53ebd0750c76a798ff17507759fcf71aa8a55496e5b151b8d977dff2c1c8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationPumpStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationPumpStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationPumpStatusResponse> :
        RecordMetadata_Ros1Mycobot_320_communicationPumpStatusResponse<uwvm_custom::Ros1Mycobot_320_communicationPumpStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationPumpStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationPumpStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationPumpStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationPumpStatusResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationSetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationSetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationSetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_644a7c29bae881d5f29708b552dcd8fd4102289aa396614590bca33dbda9f7da";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationSetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationSetAnglesRequest<T>::codec_identity =
        "UWVMROS1_644a7c29bae881d5f29708b552dcd8fd4102289aa396614590bca33dbda9f7da";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationSetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationSetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationSetAnglesRequest> :
        RecordMetadata_Ros1Mycobot_320_communicationSetAnglesRequest<uwvm_custom::Ros1Mycobot_320_communicationSetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationSetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationSetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationSetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationSetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationSetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationSetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationSetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_57578e8427fc6a3a89aa595259e03c3498153482afd716dd44c0d09ee9f59f20";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationSetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationSetAnglesResponse<T>::codec_identity =
        "UWVMROS1_57578e8427fc6a3a89aa595259e03c3498153482afd716dd44c0d09ee9f59f20";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationSetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationSetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationSetAnglesResponse> :
        RecordMetadata_Ros1Mycobot_320_communicationSetAnglesResponse<uwvm_custom::Ros1Mycobot_320_communicationSetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationSetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationSetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationSetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationSetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationSetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationSetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationSetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f398444b45a64155c410a44da67043cee13993d75beabd6bc104b23ccd1d6656";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationSetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationSetCoordsRequest<T>::codec_identity =
        "UWVMROS1_f398444b45a64155c410a44da67043cee13993d75beabd6bc104b23ccd1d6656";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationSetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationSetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationSetCoordsRequest> :
        RecordMetadata_Ros1Mycobot_320_communicationSetCoordsRequest<uwvm_custom::Ros1Mycobot_320_communicationSetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationSetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationSetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationSetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationSetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_320_COMMUNICATION_SETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_320_communicationSetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_320_communicationSetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_320_communicationSetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3fef1bfe9036381f8ad45bc1490e96b4917df5689ccf3a84d66e5ba5145e56c4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_320_communicationSetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_320_communicationSetCoordsResponse<T>::codec_identity =
        "UWVMROS1_3fef1bfe9036381f8ad45bc1490e96b4917df5689ccf3a84d66e5ba5145e56c4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_320_communicationSetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_320_communicationSetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_320_communicationSetCoordsResponse> :
        RecordMetadata_Ros1Mycobot_320_communicationSetCoordsResponse<uwvm_custom::Ros1Mycobot_320_communicationSetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_320_communicationSetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_320_communicationSetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_320_communicationSetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_320_communicationSetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotAngles<T>::codec_identity =
        "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotAngles> :
        RecordMetadata_Ros1Mycobot_communicationMycobotAngles<uwvm_custom::Ros1Mycobot_communicationMycobotAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotAngles& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotCoords<T>::codec_identity =
        "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotCoords> :
        RecordMetadata_Ros1Mycobot_communicationMycobotCoords<uwvm_custom::Ros1Mycobot_communicationMycobotCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotCoords& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotGripperStatus<T>::codec_identity =
        "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotGripperStatus> :
        RecordMetadata_Ros1Mycobot_communicationMycobotGripperStatus<uwvm_custom::Ros1Mycobot_communicationMycobotGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotGripperStatus& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotPumpStatus<T>::codec_identity =
        "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotPumpStatus> :
        RecordMetadata_Ros1Mycobot_communicationMycobotPumpStatus<uwvm_custom::Ros1Mycobot_communicationMycobotPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotPumpStatus& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotSetAngles<T>::codec_identity =
        "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotSetAngles> :
        RecordMetadata_Ros1Mycobot_communicationMycobotSetAngles<uwvm_custom::Ros1Mycobot_communicationMycobotSetAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotSetAngles& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotSetCoords<T>::codec_identity =
        "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotSetCoords> :
        RecordMetadata_Ros1Mycobot_communicationMycobotSetCoords<uwvm_custom::Ros1Mycobot_communicationMycobotSetCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotSetCoords& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGetAnglesRequest<T>::codec_identity =
        "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGetAnglesRequest> :
        RecordMetadata_Ros1Mycobot_communicationGetAnglesRequest<uwvm_custom::Ros1Mycobot_communicationGetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGetAnglesResponse<T>::codec_identity =
        "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGetAnglesResponse> :
        RecordMetadata_Ros1Mycobot_communicationGetAnglesResponse<uwvm_custom::Ros1Mycobot_communicationGetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGetCoordsRequest<T>::codec_identity =
        "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGetCoordsRequest> :
        RecordMetadata_Ros1Mycobot_communicationGetCoordsRequest<uwvm_custom::Ros1Mycobot_communicationGetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGetCoordsResponse<T>::codec_identity =
        "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGetCoordsResponse> :
        RecordMetadata_Ros1Mycobot_communicationGetCoordsResponse<uwvm_custom::Ros1Mycobot_communicationGetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGripperStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGripperStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGripperStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGripperStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGripperStatusRequest<T>::codec_identity =
        "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGripperStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGripperStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGripperStatusRequest> :
        RecordMetadata_Ros1Mycobot_communicationGripperStatusRequest<uwvm_custom::Ros1Mycobot_communicationGripperStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGripperStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGripperStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGripperStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGripperStatusRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGripperStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGripperStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGripperStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGripperStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGripperStatusResponse<T>::codec_identity =
        "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGripperStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGripperStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGripperStatusResponse> :
        RecordMetadata_Ros1Mycobot_communicationGripperStatusResponse<uwvm_custom::Ros1Mycobot_communicationGripperStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGripperStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGripperStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGripperStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGripperStatusResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationPumpStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationPumpStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationPumpStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationPumpStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationPumpStatusRequest<T>::codec_identity =
        "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationPumpStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationPumpStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationPumpStatusRequest> :
        RecordMetadata_Ros1Mycobot_communicationPumpStatusRequest<uwvm_custom::Ros1Mycobot_communicationPumpStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationPumpStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationPumpStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationPumpStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationPumpStatusRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationPumpStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationPumpStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationPumpStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationPumpStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationPumpStatusResponse<T>::codec_identity =
        "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationPumpStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationPumpStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationPumpStatusResponse> :
        RecordMetadata_Ros1Mycobot_communicationPumpStatusResponse<uwvm_custom::Ros1Mycobot_communicationPumpStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationPumpStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationPumpStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationPumpStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationPumpStatusResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationSetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationSetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationSetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationSetAnglesRequest<T>::codec_identity =
        "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationSetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationSetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationSetAnglesRequest> :
        RecordMetadata_Ros1Mycobot_communicationSetAnglesRequest<uwvm_custom::Ros1Mycobot_communicationSetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationSetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationSetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationSetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationSetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationSetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationSetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationSetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationSetAnglesResponse<T>::codec_identity =
        "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationSetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationSetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationSetAnglesResponse> :
        RecordMetadata_Ros1Mycobot_communicationSetAnglesResponse<uwvm_custom::Ros1Mycobot_communicationSetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationSetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationSetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationSetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationSetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationSetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationSetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationSetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationSetCoordsRequest<T>::codec_identity =
        "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationSetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationSetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationSetCoordsRequest> :
        RecordMetadata_Ros1Mycobot_communicationSetCoordsRequest<uwvm_custom::Ros1Mycobot_communicationSetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationSetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationSetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationSetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationSetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationSetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationSetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationSetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationSetCoordsResponse<T>::codec_identity =
        "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationSetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationSetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationSetCoordsResponse> :
        RecordMetadata_Ros1Mycobot_communicationSetCoordsResponse<uwvm_custom::Ros1Mycobot_communicationSetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationSetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationSetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationSetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationSetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalAngles<T>::codec_identity =
        "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalAngles> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalAngles<uwvm_custom::Ros1Mypalletizer_communicationMypalAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalAngles& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalCoords<T>::codec_identity =
        "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalCoords> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalCoords<uwvm_custom::Ros1Mypalletizer_communicationMypalCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalCoords& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalGripperStatus<T>::codec_identity =
        "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalGripperStatus> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalGripperStatus<uwvm_custom::Ros1Mypalletizer_communicationMypalGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalGripperStatus& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalPumpStatus<T>::codec_identity =
        "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalPumpStatus> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalPumpStatus<uwvm_custom::Ros1Mypalletizer_communicationMypalPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalPumpStatus& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalSetAngles<T>::codec_identity =
        "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalSetAngles> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalSetAngles<uwvm_custom::Ros1Mypalletizer_communicationMypalSetAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalSetAngles& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 18;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalSetCoords<T>::codec_identity =
        "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalSetCoords> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalSetCoords<uwvm_custom::Ros1Mypalletizer_communicationMypalSetCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalSetCoords& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGetAnglesRequest<T>::codec_identity =
        "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationGetAnglesRequest<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGetAnglesResponse<T>::codec_identity =
        "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationGetAnglesResponse<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGetCoordsRequest<T>::codec_identity =
        "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationGetCoordsRequest<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGetCoordsResponse<T>::codec_identity =
        "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationGetCoordsResponse<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGripperStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGripperStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGripperStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGripperStatusRequest<T>::codec_identity =
        "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGripperStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGripperStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationGripperStatusRequest<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGripperStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGripperStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGripperStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGripperStatusRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGripperStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGripperStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGripperStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGripperStatusResponse<T>::codec_identity =
        "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGripperStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGripperStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationGripperStatusResponse<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGripperStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGripperStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGripperStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGripperStatusResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationPumpStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationPumpStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationPumpStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationPumpStatusRequest<T>::codec_identity =
        "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationPumpStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationPumpStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationPumpStatusRequest<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationPumpStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationPumpStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationPumpStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationPumpStatusRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationPumpStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationPumpStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationPumpStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationPumpStatusResponse<T>::codec_identity =
        "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationPumpStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationPumpStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationPumpStatusResponse<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationPumpStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationPumpStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationPumpStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationPumpStatusResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationSetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationSetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationSetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationSetAnglesRequest<T>::codec_identity =
        "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationSetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationSetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationSetAnglesRequest<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationSetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationSetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationSetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationSetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationSetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationSetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationSetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationSetAnglesResponse<T>::codec_identity =
        "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationSetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationSetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationSetAnglesResponse<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationSetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationSetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationSetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationSetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationSetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationSetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 18;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationSetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationSetCoordsRequest<T>::codec_identity =
        "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationSetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationSetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationSetCoordsRequest<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationSetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationSetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationSetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationSetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationSetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationSetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationSetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationSetCoordsResponse<T>::codec_identity =
        "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationSetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationSetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationSetCoordsResponse<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationSetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationSetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationSetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationSetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationUltraArmAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationUltraArmAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_wire_size
         */
        static const size_t max_wire_bytes = 12;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8fa11b8169b634ea7c786bef6ee5d8f0d42488b9841f06104ca8fd378c0fa88d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationUltraArmAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationUltraArmAngles<T>::codec_identity =
        "UWVMROS1_8fa11b8169b634ea7c786bef6ee5d8f0d42488b9841f06104ca8fd378c0fa88d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationUltraArmAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationUltraArmAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmAngles> :
        RecordMetadata_Ros1Ultraarm_communicationUltraArmAngles<uwvm_custom::Ros1Ultraarm_communicationUltraArmAngles>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationUltraArmAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationUltraArmAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationUltraArmAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationUltraArmAngles& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationUltraArmCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationUltraArmCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_wire_size
         */
        static const size_t max_wire_bytes = 12;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4e540a1f7d66110adec19bcf3114c44bbc8574efbfd05e911de8d56cc64f24fa";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationUltraArmCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationUltraArmCoords<T>::codec_identity =
        "UWVMROS1_4e540a1f7d66110adec19bcf3114c44bbc8574efbfd05e911de8d56cc64f24fa";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationUltraArmCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationUltraArmCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmCoords> :
        RecordMetadata_Ros1Ultraarm_communicationUltraArmCoords<uwvm_custom::Ros1Ultraarm_communicationUltraArmCoords>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationUltraArmCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationUltraArmCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationUltraArmCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationUltraArmCoords& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationUltraArmGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationUltraArmGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_60d9ded61184b6f51986afe42b42c786ffb71a13ee6af004c3836c6708b41f9c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationUltraArmGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationUltraArmGripperStatus<T>::codec_identity =
        "UWVMROS1_60d9ded61184b6f51986afe42b42c786ffb71a13ee6af004c3836c6708b41f9c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationUltraArmGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationUltraArmGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmGripperStatus> :
        RecordMetadata_Ros1Ultraarm_communicationUltraArmGripperStatus<uwvm_custom::Ros1Ultraarm_communicationUltraArmGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationUltraArmGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationUltraArmGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationUltraArmGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationUltraArmGripperStatus& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationUltraArmPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationUltraArmPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f765502e0a7c0a4fe18049032fe9d314512de56bc2d52e4b1a8cbaf01fbc68e1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationUltraArmPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationUltraArmPumpStatus<T>::codec_identity =
        "UWVMROS1_f765502e0a7c0a4fe18049032fe9d314512de56bc2d52e4b1a8cbaf01fbc68e1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationUltraArmPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationUltraArmPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmPumpStatus> :
        RecordMetadata_Ros1Ultraarm_communicationUltraArmPumpStatus<uwvm_custom::Ros1Ultraarm_communicationUltraArmPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationUltraArmPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationUltraArmPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationUltraArmPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationUltraArmPumpStatus& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationUltraArmSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationUltraArmSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 13;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0536de7f7a45a8d0a19b16b78557ec77c4ce5f99e1141df3c617da847cbb079c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationUltraArmSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationUltraArmSetAngles<T>::codec_identity =
        "UWVMROS1_0536de7f7a45a8d0a19b16b78557ec77c4ce5f99e1141df3c617da847cbb079c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationUltraArmSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationUltraArmSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmSetAngles> :
        RecordMetadata_Ros1Ultraarm_communicationUltraArmSetAngles<uwvm_custom::Ros1Ultraarm_communicationUltraArmSetAngles>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationUltraArmSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationUltraArmSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationUltraArmSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationUltraArmSetAngles& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_ULTRAARMSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationUltraArmSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationUltraArmSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 13;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4e59dd853f51fe18f9401ec6d0fffaa50a00ba7c96a12b8d09c9bfd5ad68f818";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationUltraArmSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationUltraArmSetCoords<T>::codec_identity =
        "UWVMROS1_4e59dd853f51fe18f9401ec6d0fffaa50a00ba7c96a12b8d09c9bfd5ad68f818";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationUltraArmSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationUltraArmSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationUltraArmSetCoords> :
        RecordMetadata_Ros1Ultraarm_communicationUltraArmSetCoords<uwvm_custom::Ros1Ultraarm_communicationUltraArmSetCoords>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationUltraArmSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationUltraArmSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationUltraArmSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationUltraArmSetCoords& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationGetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationGetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fd6922aabe6ec7f82731d19efb0963753d86a8f412de96f8bc67ea2615a7c860";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationGetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationGetAnglesRequest<T>::codec_identity =
        "UWVMROS1_fd6922aabe6ec7f82731d19efb0963753d86a8f412de96f8bc67ea2615a7c860";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationGetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationGetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationGetAnglesRequest> :
        RecordMetadata_Ros1Ultraarm_communicationGetAnglesRequest<uwvm_custom::Ros1Ultraarm_communicationGetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationGetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationGetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationGetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationGetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationGetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationGetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 12;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d7048c8ef416139a11a58bd7d5b865f4b6e0b5431c8e80cdd8c4c79de67cc128";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationGetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationGetAnglesResponse<T>::codec_identity =
        "UWVMROS1_d7048c8ef416139a11a58bd7d5b865f4b6e0b5431c8e80cdd8c4c79de67cc128";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationGetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationGetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationGetAnglesResponse> :
        RecordMetadata_Ros1Ultraarm_communicationGetAnglesResponse<uwvm_custom::Ros1Ultraarm_communicationGetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationGetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationGetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationGetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationGetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationGetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationGetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_40a6535b429baf0bbe0bc642ade7a8048e693633388ccd061bf12b6d795bbbd1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationGetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationGetCoordsRequest<T>::codec_identity =
        "UWVMROS1_40a6535b429baf0bbe0bc642ade7a8048e693633388ccd061bf12b6d795bbbd1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationGetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationGetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationGetCoordsRequest> :
        RecordMetadata_Ros1Ultraarm_communicationGetCoordsRequest<uwvm_custom::Ros1Ultraarm_communicationGetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationGetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationGetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationGetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationGetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationGetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationGetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 12;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9f19d8d2eb7284c4cbe2587ca0438d4680287759553d908340f5053ae4f4f036";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationGetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationGetCoordsResponse<T>::codec_identity =
        "UWVMROS1_9f19d8d2eb7284c4cbe2587ca0438d4680287759553d908340f5053ae4f4f036";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationGetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationGetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationGetCoordsResponse> :
        RecordMetadata_Ros1Ultraarm_communicationGetCoordsResponse<uwvm_custom::Ros1Ultraarm_communicationGetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationGetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationGetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationGetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationGetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationGripperStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGripperStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationGripperStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c435d39bef04bd7022e048c0cf364d100bf7a92855f04c816d2a22f0e672d586";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationGripperStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationGripperStatusRequest<T>::codec_identity =
        "UWVMROS1_c435d39bef04bd7022e048c0cf364d100bf7a92855f04c816d2a22f0e672d586";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationGripperStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationGripperStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationGripperStatusRequest> :
        RecordMetadata_Ros1Ultraarm_communicationGripperStatusRequest<uwvm_custom::Ros1Ultraarm_communicationGripperStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationGripperStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationGripperStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationGripperStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationGripperStatusRequest& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_GRIPPERSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationGripperStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationGripperStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationGripperStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fa0c99ff37acea63c5d507174f9725a9341ffaa007e722e21a8e0b93097e56d4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationGripperStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationGripperStatusResponse<T>::codec_identity =
        "UWVMROS1_fa0c99ff37acea63c5d507174f9725a9341ffaa007e722e21a8e0b93097e56d4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationGripperStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationGripperStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationGripperStatusResponse> :
        RecordMetadata_Ros1Ultraarm_communicationGripperStatusResponse<uwvm_custom::Ros1Ultraarm_communicationGripperStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationGripperStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationGripperStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationGripperStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationGripperStatusResponse& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_PUMPSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_PUMPSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationPumpStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationPumpStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationPumpStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_03df5de115870b7679c85e5dc64f996694578f1b7b41387e531a49ee6626e8b2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationPumpStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationPumpStatusRequest<T>::codec_identity =
        "UWVMROS1_03df5de115870b7679c85e5dc64f996694578f1b7b41387e531a49ee6626e8b2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationPumpStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationPumpStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationPumpStatusRequest> :
        RecordMetadata_Ros1Ultraarm_communicationPumpStatusRequest<uwvm_custom::Ros1Ultraarm_communicationPumpStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationPumpStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationPumpStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationPumpStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationPumpStatusRequest& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_PUMPSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_PUMPSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationPumpStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationPumpStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationPumpStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_693fd1ad36c534188f959fdb72df4f970432946c5706472c0bf41b27d054a4ee";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationPumpStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationPumpStatusResponse<T>::codec_identity =
        "UWVMROS1_693fd1ad36c534188f959fdb72df4f970432946c5706472c0bf41b27d054a4ee";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationPumpStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationPumpStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationPumpStatusResponse> :
        RecordMetadata_Ros1Ultraarm_communicationPumpStatusResponse<uwvm_custom::Ros1Ultraarm_communicationPumpStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationPumpStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationPumpStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationPumpStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationPumpStatusResponse& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationSetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationSetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationSetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 13;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fe8cdfa565c8aa8b77db9743af57d7c1ba14aa9dd31c8d4ca92bb7aec107bb42";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationSetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationSetAnglesRequest<T>::codec_identity =
        "UWVMROS1_fe8cdfa565c8aa8b77db9743af57d7c1ba14aa9dd31c8d4ca92bb7aec107bb42";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationSetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationSetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationSetAnglesRequest> :
        RecordMetadata_Ros1Ultraarm_communicationSetAnglesRequest<uwvm_custom::Ros1Ultraarm_communicationSetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationSetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationSetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationSetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationSetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationSetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationSetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationSetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f1ecaff9a60a47ef978b0faf2b9b2b9166ae308b3df718b0536536004dc8a3b4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationSetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationSetAnglesResponse<T>::codec_identity =
        "UWVMROS1_f1ecaff9a60a47ef978b0faf2b9b2b9166ae308b3df718b0536536004dc8a3b4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationSetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationSetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationSetAnglesResponse> :
        RecordMetadata_Ros1Ultraarm_communicationSetAnglesResponse<uwvm_custom::Ros1Ultraarm_communicationSetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationSetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationSetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationSetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationSetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationSetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationSetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationSetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 13;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2a4670c426b6cf566795b0e874018769fb7e852bd104770dff3e735608c3e3d5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationSetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationSetCoordsRequest<T>::codec_identity =
        "UWVMROS1_2a4670c426b6cf566795b0e874018769fb7e852bd104770dff3e735608c3e3d5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationSetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationSetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationSetCoordsRequest> :
        RecordMetadata_Ros1Ultraarm_communicationSetCoordsRequest<uwvm_custom::Ros1Ultraarm_communicationSetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationSetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationSetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationSetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationSetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_ULTRAARM_COMMUNICATION_SETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Ultraarm_communicationSetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Ultraarm_communicationSetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Ultraarm_communicationSetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_02aa6c82612c5ffd43e890bb173a59245e00cd91dbc38303dcbdc0fb30683431";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Ultraarm_communicationSetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Ultraarm_communicationSetCoordsResponse<T>::codec_identity =
        "UWVMROS1_02aa6c82612c5ffd43e890bb173a59245e00cd91dbc38303dcbdc0fb30683431";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Ultraarm_communicationSetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Ultraarm_communicationSetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Ultraarm_communicationSetCoordsResponse> :
        RecordMetadata_Ros1Ultraarm_communicationSetCoordsResponse<uwvm_custom::Ros1Ultraarm_communicationSetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Ultraarm_communicationSetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Ultraarm_communicationSetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Ultraarm_communicationSetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Ultraarm_communicationSetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
