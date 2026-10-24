/**
 * @file records.hpp
 * @brief Preserve all complete original Unitree ROS 2 canonical records.
 * @details Every field retains its original width, signedness, order and finite quota. Caller-owned inline
 * records remain distinct from installed native ROS objects; construction grants no transport authority.
 */

// roswasm-cpp-documented-facade-v3
#pragma once
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
#include <unitree/c/ros2/records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros2Unitree_apiMsgRequestIdentity.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_RequestIdentity_valid
     */
    typedef roswasmc_bounded_2_unitree_api_msg_RequestIdentity Ros2Unitree_apiMsgRequestIdentity;
    /**
     * @brief Complete bounded storage for Ros2Unitree_apiMsgRequestLease.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_RequestLease_valid
     */
    typedef roswasmc_bounded_2_unitree_api_msg_RequestLease Ros2Unitree_apiMsgRequestLease;
    /**
     * @brief Complete bounded storage for Ros2Unitree_apiMsgRequestPolicy.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_RequestPolicy_valid
     */
    typedef roswasmc_bounded_2_unitree_api_msg_RequestPolicy Ros2Unitree_apiMsgRequestPolicy;
    /**
     * @brief Complete bounded storage for Ros2Unitree_apiMsgRequestHeader.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_RequestHeader_valid
     */
    typedef roswasmc_bounded_2_unitree_api_msg_RequestHeader Ros2Unitree_apiMsgRequestHeader;
    /**
     * @brief Complete bounded storage for Ros2Unitree_apiMsgRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_Request_valid
     */
    typedef roswasmc_bounded_2_unitree_api_msg_Request Ros2Unitree_apiMsgRequest;
    /**
     * @brief Complete bounded storage for Ros2Unitree_apiMsgResponseStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_ResponseStatus_valid
     */
    typedef roswasmc_bounded_2_unitree_api_msg_ResponseStatus Ros2Unitree_apiMsgResponseStatus;
    /**
     * @brief Complete bounded storage for Ros2Unitree_apiMsgResponseHeader.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_ResponseHeader_valid
     */
    typedef roswasmc_bounded_2_unitree_api_msg_ResponseHeader Ros2Unitree_apiMsgResponseHeader;
    /**
     * @brief Complete bounded storage for Ros2Unitree_apiMsgResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_Response_valid
     */
    typedef roswasmc_bounded_2_unitree_api_msg_Response Ros2Unitree_apiMsgResponse;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgAudioData.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_AudioData_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_AudioData Ros2Unitree_goMsgAudioData;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgBmsCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_BmsCmd_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_BmsCmd Ros2Unitree_goMsgBmsCmd;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgBmsState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_BmsState_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_BmsState Ros2Unitree_goMsgBmsState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgError.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_Error_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_Error Ros2Unitree_goMsgError;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgGo2FrontVideoData.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData Ros2Unitree_goMsgGo2FrontVideoData;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgHeightMap.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_HeightMap_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_HeightMap Ros2Unitree_goMsgHeightMap;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgIMUState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_IMUState_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_IMUState Ros2Unitree_goMsgIMUState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgInterfaceConfig.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_InterfaceConfig Ros2Unitree_goMsgInterfaceConfig;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgLidarState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_LidarState_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_LidarState Ros2Unitree_goMsgLidarState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgMotorCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_MotorCmd_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_MotorCmd Ros2Unitree_goMsgMotorCmd;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgLowCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_LowCmd_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_LowCmd Ros2Unitree_goMsgLowCmd;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgMotorState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_MotorState_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_MotorState Ros2Unitree_goMsgMotorState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgLowState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_LowState_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_LowState Ros2Unitree_goMsgLowState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgMotorCmds.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_MotorCmds_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_MotorCmds Ros2Unitree_goMsgMotorCmds;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgMotorStates.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_MotorStates_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_MotorStates Ros2Unitree_goMsgMotorStates;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgPathPoint.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_PathPoint_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_PathPoint Ros2Unitree_goMsgPathPoint;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgReq.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_Req_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_Req Ros2Unitree_goMsgReq;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgRes.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_Res_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_Res Ros2Unitree_goMsgRes;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgSportModeCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_SportModeCmd_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_SportModeCmd Ros2Unitree_goMsgSportModeCmd;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgTimeSpec.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_TimeSpec_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_TimeSpec Ros2Unitree_goMsgTimeSpec;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgSportModeState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_SportModeState_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_SportModeState Ros2Unitree_goMsgSportModeState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgUwbState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_UwbState_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_UwbState Ros2Unitree_goMsgUwbState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgUwbSwitch.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_UwbSwitch_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_UwbSwitch Ros2Unitree_goMsgUwbSwitch;
    /**
     * @brief Complete bounded storage for Ros2Unitree_goMsgWirelessController.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_WirelessController_valid
     */
    typedef roswasmc_bounded_2_unitree_go_msg_WirelessController Ros2Unitree_goMsgWirelessController;
    /**
     * @brief Complete bounded storage for Ros2Unitree_hgMsgBmsCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_BmsCmd_valid
     */
    typedef roswasmc_bounded_2_unitree_hg_msg_BmsCmd Ros2Unitree_hgMsgBmsCmd;
    /**
     * @brief Complete bounded storage for Ros2Unitree_hgMsgBmsState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_BmsState_valid
     */
    typedef roswasmc_bounded_2_unitree_hg_msg_BmsState Ros2Unitree_hgMsgBmsState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_hgMsgMotorCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_MotorCmd_valid
     */
    typedef roswasmc_bounded_2_unitree_hg_msg_MotorCmd Ros2Unitree_hgMsgMotorCmd;
    /**
     * @brief Complete bounded storage for Ros2Unitree_hgMsgHandCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_HandCmd_valid
     */
    typedef roswasmc_bounded_2_unitree_hg_msg_HandCmd Ros2Unitree_hgMsgHandCmd;
    /**
     * @brief Complete bounded storage for Ros2Unitree_hgMsgMotorState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_MotorState_valid
     */
    typedef roswasmc_bounded_2_unitree_hg_msg_MotorState Ros2Unitree_hgMsgMotorState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_hgMsgPressSensorState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_PressSensorState_valid
     */
    typedef roswasmc_bounded_2_unitree_hg_msg_PressSensorState Ros2Unitree_hgMsgPressSensorState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_hgMsgIMUState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_IMUState_valid
     */
    typedef roswasmc_bounded_2_unitree_hg_msg_IMUState Ros2Unitree_hgMsgIMUState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_hgMsgHandState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_HandState_valid
     */
    typedef roswasmc_bounded_2_unitree_hg_msg_HandState Ros2Unitree_hgMsgHandState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_hgMsgLowCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_LowCmd_valid
     */
    typedef roswasmc_bounded_2_unitree_hg_msg_LowCmd Ros2Unitree_hgMsgLowCmd;
    /**
     * @brief Complete bounded storage for Ros2Unitree_hgMsgLowState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_LowState_valid
     */
    typedef roswasmc_bounded_2_unitree_hg_msg_LowState Ros2Unitree_hgMsgLowState;
    /**
     * @brief Complete bounded storage for Ros2Unitree_hgMsgMainBoardState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_MainBoardState_valid
     */
    typedef roswasmc_bounded_2_unitree_hg_msg_MainBoardState Ros2Unitree_hgMsgMainBoardState;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTIDENTITY 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_apiMsgRequestIdentity.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_apiMsgRequestIdentity>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_apiMsgRequestIdentity
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestIdentity_wire_size
         */
        static size_t const max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_api_msg_RequestIdentity_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_apiMsgRequestIdentity<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_apiMsgRequestIdentity<T>::codec_identity =
        "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_apiMsgRequestIdentity<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_apiMsgRequestIdentity.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_RequestIdentity_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_apiMsgRequestIdentity> :
        RecordMetadata_Ros2Unitree_apiMsgRequestIdentity<uwvm_custom::Ros2Unitree_apiMsgRequestIdentity>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_apiMsgRequestIdentity transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestIdentity_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_apiMsgRequestIdentity const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_api_msg_RequestIdentity_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_api_msg_RequestIdentity_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_api_msg_RequestIdentity_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_apiMsgRequestIdentity.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestIdentity_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_apiMsgRequestIdentity& out)
        {
            return !roswasmc_bounded_2_unitree_api_msg_RequestIdentity_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTLEASE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_apiMsgRequestLease.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_apiMsgRequestLease>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_apiMsgRequestLease
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestLease_wire_size
         */
        static size_t const max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_api_msg_RequestLease_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_apiMsgRequestLease<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_apiMsgRequestLease<T>::codec_identity =
        "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_apiMsgRequestLease<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_apiMsgRequestLease.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_RequestLease_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_apiMsgRequestLease> : RecordMetadata_Ros2Unitree_apiMsgRequestLease<uwvm_custom::Ros2Unitree_apiMsgRequestLease>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_apiMsgRequestLease transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestLease_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_apiMsgRequestLease const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_api_msg_RequestLease_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_api_msg_RequestLease_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_api_msg_RequestLease_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_apiMsgRequestLease.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestLease_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_apiMsgRequestLease& out)
        {
            return !roswasmc_bounded_2_unitree_api_msg_RequestLease_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTPOLICY 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_apiMsgRequestPolicy.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_apiMsgRequestPolicy>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_apiMsgRequestPolicy
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestPolicy_wire_size
         */
        static size_t const max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_api_msg_RequestPolicy_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_apiMsgRequestPolicy<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_apiMsgRequestPolicy<T>::codec_identity =
        "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_apiMsgRequestPolicy<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_apiMsgRequestPolicy.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_RequestPolicy_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_apiMsgRequestPolicy> : RecordMetadata_Ros2Unitree_apiMsgRequestPolicy<uwvm_custom::Ros2Unitree_apiMsgRequestPolicy>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_apiMsgRequestPolicy transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestPolicy_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_apiMsgRequestPolicy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_api_msg_RequestPolicy_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_api_msg_RequestPolicy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_api_msg_RequestPolicy_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_apiMsgRequestPolicy.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestPolicy_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_apiMsgRequestPolicy& out)
        {
            return !roswasmc_bounded_2_unitree_api_msg_RequestPolicy_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUESTHEADER 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_apiMsgRequestHeader.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_apiMsgRequestHeader>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_apiMsgRequestHeader
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestHeader_wire_size
         */
        static size_t const max_wire_bytes = 29;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_api_msg_RequestHeader_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_apiMsgRequestHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_apiMsgRequestHeader<T>::codec_identity =
        "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_apiMsgRequestHeader<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_apiMsgRequestHeader.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_RequestHeader_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_apiMsgRequestHeader> : RecordMetadata_Ros2Unitree_apiMsgRequestHeader<uwvm_custom::Ros2Unitree_apiMsgRequestHeader>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_apiMsgRequestHeader transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestHeader_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_apiMsgRequestHeader const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_api_msg_RequestHeader_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_api_msg_RequestHeader_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_api_msg_RequestHeader_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_apiMsgRequestHeader.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_api_msg_RequestHeader_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_apiMsgRequestHeader& out)
        {
            return !roswasmc_bounded_2_unitree_api_msg_RequestHeader_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_apiMsgRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_apiMsgRequest>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_apiMsgRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_api_msg_Request_wire_size
         */
        static size_t const max_wire_bytes = 4133;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_api_msg_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_apiMsgRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_apiMsgRequest<T>::codec_identity = "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_apiMsgRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_apiMsgRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_apiMsgRequest> : RecordMetadata_Ros2Unitree_apiMsgRequest<uwvm_custom::Ros2Unitree_apiMsgRequest>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_apiMsgRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_api_msg_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_apiMsgRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_api_msg_Request_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_api_msg_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_api_msg_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_apiMsgRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_api_msg_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_apiMsgRequest& out)
        {
            return !roswasmc_bounded_2_unitree_api_msg_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSESTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_apiMsgResponseStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_apiMsgResponseStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_apiMsgResponseStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_api_msg_ResponseStatus_wire_size
         */
        static size_t const max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_api_msg_ResponseStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_apiMsgResponseStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_apiMsgResponseStatus<T>::codec_identity =
        "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_apiMsgResponseStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_apiMsgResponseStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_ResponseStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_apiMsgResponseStatus> : RecordMetadata_Ros2Unitree_apiMsgResponseStatus<uwvm_custom::Ros2Unitree_apiMsgResponseStatus>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_apiMsgResponseStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_api_msg_ResponseStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_apiMsgResponseStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_api_msg_ResponseStatus_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_api_msg_ResponseStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_api_msg_ResponseStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_apiMsgResponseStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_api_msg_ResponseStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_apiMsgResponseStatus& out)
        {
            return !roswasmc_bounded_2_unitree_api_msg_ResponseStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSEHEADER 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_apiMsgResponseHeader.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_apiMsgResponseHeader>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_apiMsgResponseHeader
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_api_msg_ResponseHeader_wire_size
         */
        static size_t const max_wire_bytes = 20;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_api_msg_ResponseHeader_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_apiMsgResponseHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_apiMsgResponseHeader<T>::codec_identity =
        "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_apiMsgResponseHeader<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_apiMsgResponseHeader.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_ResponseHeader_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_apiMsgResponseHeader> : RecordMetadata_Ros2Unitree_apiMsgResponseHeader<uwvm_custom::Ros2Unitree_apiMsgResponseHeader>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_apiMsgResponseHeader transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_api_msg_ResponseHeader_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_apiMsgResponseHeader const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_api_msg_ResponseHeader_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_api_msg_ResponseHeader_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_api_msg_ResponseHeader_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_apiMsgResponseHeader.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_api_msg_ResponseHeader_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_apiMsgResponseHeader& out)
        {
            return !roswasmc_bounded_2_unitree_api_msg_ResponseHeader_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_API_MSG_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_apiMsgResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_apiMsgResponse>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_apiMsgResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_api_msg_Response_wire_size
         */
        static size_t const max_wire_bytes = 2108;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_api_msg_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_apiMsgResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_apiMsgResponse<T>::codec_identity =
        "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_apiMsgResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_apiMsgResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_api_msg_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_apiMsgResponse> : RecordMetadata_Ros2Unitree_apiMsgResponse<uwvm_custom::Ros2Unitree_apiMsgResponse>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_apiMsgResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_api_msg_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_apiMsgResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_api_msg_Response_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_api_msg_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_api_msg_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_apiMsgResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_api_msg_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_apiMsgResponse& out)
        {
            return !roswasmc_bounded_2_unitree_api_msg_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_AUDIODATA 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgAudioData.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgAudioData>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgAudioData
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_AudioData_wire_size
         */
        static size_t const max_wire_bytes = 2060;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_AudioData_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgAudioData<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgAudioData<T>::codec_identity =
        "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgAudioData<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgAudioData.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_AudioData_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgAudioData> : RecordMetadata_Ros2Unitree_goMsgAudioData<uwvm_custom::Ros2Unitree_goMsgAudioData>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgAudioData transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_AudioData_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgAudioData const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_AudioData_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_AudioData_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_AudioData_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgAudioData.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_AudioData_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgAudioData& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_AudioData_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgBmsCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgBmsCmd>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgBmsCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_BmsCmd_wire_size
         */
        static size_t const max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_BmsCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgBmsCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgBmsCmd<T>::codec_identity = "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgBmsCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgBmsCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_BmsCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgBmsCmd> : RecordMetadata_Ros2Unitree_goMsgBmsCmd<uwvm_custom::Ros2Unitree_goMsgBmsCmd>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgBmsCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_BmsCmd_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgBmsCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_BmsCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_BmsCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_BmsCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgBmsCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_BmsCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgBmsCmd& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_BmsCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_BMSSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgBmsState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgBmsState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgBmsState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_BmsState_wire_size
         */
        static size_t const max_wire_bytes = 44;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_BmsState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgBmsState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgBmsState<T>::codec_identity = "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgBmsState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgBmsState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_BmsState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgBmsState> : RecordMetadata_Ros2Unitree_goMsgBmsState<uwvm_custom::Ros2Unitree_goMsgBmsState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgBmsState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_BmsState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgBmsState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_BmsState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_BmsState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_BmsState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgBmsState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_BmsState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgBmsState& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_BmsState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_ERROR 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgError.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgError>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgError
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_Error_wire_size
         */
        static size_t const max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_Error_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgError<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgError<T>::codec_identity = "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgError<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgError.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_Error_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgError> : RecordMetadata_Ros2Unitree_goMsgError<uwvm_custom::Ros2Unitree_goMsgError>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgError transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_Error_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgError const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_Error_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_Error_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_Error_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgError.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_Error_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgError& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_Error_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_GO2FRONTVIDEODATA 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgGo2FrontVideoData.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgGo2FrontVideoData>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgGo2FrontVideoData
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_wire_size
         */
        static size_t const max_wire_bytes = 6164;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgGo2FrontVideoData<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgGo2FrontVideoData<T>::codec_identity =
        "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgGo2FrontVideoData<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgGo2FrontVideoData.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgGo2FrontVideoData> :
        RecordMetadata_Ros2Unitree_goMsgGo2FrontVideoData<uwvm_custom::Ros2Unitree_goMsgGo2FrontVideoData>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgGo2FrontVideoData transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgGo2FrontVideoData const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgGo2FrontVideoData.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgGo2FrontVideoData& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_Go2FrontVideoData_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_HEIGHTMAP 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgHeightMap.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgHeightMap>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgHeightMap
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_HeightMap_wire_size
         */
        static size_t const max_wire_bytes = 2212;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_HeightMap_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgHeightMap<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgHeightMap<T>::codec_identity =
        "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgHeightMap<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgHeightMap.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_HeightMap_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgHeightMap> : RecordMetadata_Ros2Unitree_goMsgHeightMap<uwvm_custom::Ros2Unitree_goMsgHeightMap>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgHeightMap transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_HeightMap_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgHeightMap const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_HeightMap_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_HeightMap_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_HeightMap_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgHeightMap.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_HeightMap_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgHeightMap& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_HeightMap_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_IMUSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgIMUState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgIMUState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgIMUState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_IMUState_wire_size
         */
        static size_t const max_wire_bytes = 53;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_IMUState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgIMUState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgIMUState<T>::codec_identity = "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgIMUState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgIMUState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_IMUState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgIMUState> : RecordMetadata_Ros2Unitree_goMsgIMUState<uwvm_custom::Ros2Unitree_goMsgIMUState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgIMUState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_IMUState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgIMUState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_IMUState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_IMUState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_IMUState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgIMUState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_IMUState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgIMUState& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_IMUState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_INTERFACECONFIG 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgInterfaceConfig.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgInterfaceConfig>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgInterfaceConfig
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_wire_size
         */
        static size_t const max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgInterfaceConfig<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgInterfaceConfig<T>::codec_identity =
        "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgInterfaceConfig<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgInterfaceConfig.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgInterfaceConfig> : RecordMetadata_Ros2Unitree_goMsgInterfaceConfig<uwvm_custom::Ros2Unitree_goMsgInterfaceConfig>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgInterfaceConfig transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgInterfaceConfig const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgInterfaceConfig.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgInterfaceConfig& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_InterfaceConfig_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LIDARSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgLidarState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgLidarState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgLidarState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_LidarState_wire_size
         */
        static size_t const max_wire_bytes = 6225;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_LidarState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgLidarState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgLidarState<T>::codec_identity =
        "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgLidarState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgLidarState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_LidarState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgLidarState> : RecordMetadata_Ros2Unitree_goMsgLidarState<uwvm_custom::Ros2Unitree_goMsgLidarState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgLidarState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_LidarState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgLidarState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_LidarState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_LidarState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_LidarState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgLidarState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_LidarState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgLidarState& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_LidarState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgMotorCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgMotorCmd>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgMotorCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorCmd_wire_size
         */
        static size_t const max_wire_bytes = 33;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_MotorCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgMotorCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgMotorCmd<T>::codec_identity = "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgMotorCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgMotorCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_MotorCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgMotorCmd> : RecordMetadata_Ros2Unitree_goMsgMotorCmd<uwvm_custom::Ros2Unitree_goMsgMotorCmd>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgMotorCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorCmd_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgMotorCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_MotorCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_MotorCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgMotorCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgMotorCmd& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_MotorCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgLowCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgLowCmd>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgLowCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_LowCmd_wire_size
         */
        static size_t const max_wire_bytes = 749;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_LowCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgLowCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgLowCmd<T>::codec_identity = "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgLowCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgLowCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_LowCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgLowCmd> : RecordMetadata_Ros2Unitree_goMsgLowCmd<uwvm_custom::Ros2Unitree_goMsgLowCmd>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgLowCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_LowCmd_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgLowCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_LowCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_LowCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_LowCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgLowCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_LowCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgLowCmd& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_LowCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgMotorState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgMotorState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgMotorState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorState_wire_size
         */
        static size_t const max_wire_bytes = 42;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_MotorState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgMotorState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgMotorState<T>::codec_identity =
        "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgMotorState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgMotorState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_MotorState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgMotorState> : RecordMetadata_Ros2Unitree_goMsgMotorState<uwvm_custom::Ros2Unitree_goMsgMotorState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgMotorState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgMotorState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_MotorState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_MotorState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgMotorState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgMotorState& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_MotorState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_LOWSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgLowState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgLowState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgLowState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_LowState_wire_size
         */
        static size_t const max_wire_bytes = 1050;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_LowState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgLowState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgLowState<T>::codec_identity = "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgLowState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgLowState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_LowState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgLowState> : RecordMetadata_Ros2Unitree_goMsgLowState<uwvm_custom::Ros2Unitree_goMsgLowState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgLowState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_LowState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgLowState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_LowState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_LowState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_LowState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgLowState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_LowState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgLowState& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_LowState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORCMDS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgMotorCmds.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgMotorCmds>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgMotorCmds
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorCmds_wire_size
         */
        static size_t const max_wire_bytes = 1060;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_MotorCmds_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgMotorCmds<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgMotorCmds<T>::codec_identity =
        "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgMotorCmds<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgMotorCmds.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_MotorCmds_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgMotorCmds> : RecordMetadata_Ros2Unitree_goMsgMotorCmds<uwvm_custom::Ros2Unitree_goMsgMotorCmds>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgMotorCmds transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorCmds_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgMotorCmds const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorCmds_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_MotorCmds_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_MotorCmds_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgMotorCmds.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorCmds_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgMotorCmds& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_MotorCmds_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_MOTORSTATES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgMotorStates.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgMotorStates>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgMotorStates
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorStates_wire_size
         */
        static size_t const max_wire_bytes = 1348;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_MotorStates_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgMotorStates<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgMotorStates<T>::codec_identity =
        "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgMotorStates<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgMotorStates.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_MotorStates_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgMotorStates> : RecordMetadata_Ros2Unitree_goMsgMotorStates<uwvm_custom::Ros2Unitree_goMsgMotorStates>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgMotorStates transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorStates_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgMotorStates const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_MotorStates_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_MotorStates_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_MotorStates_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgMotorStates.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_MotorStates_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgMotorStates& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_MotorStates_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_PATHPOINT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgPathPoint.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgPathPoint>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgPathPoint
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_PathPoint_wire_size
         */
        static size_t const max_wire_bytes = 28;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_PathPoint_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgPathPoint<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgPathPoint<T>::codec_identity =
        "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgPathPoint<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgPathPoint.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_PathPoint_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgPathPoint> : RecordMetadata_Ros2Unitree_goMsgPathPoint<uwvm_custom::Ros2Unitree_goMsgPathPoint>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgPathPoint transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_PathPoint_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgPathPoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_PathPoint_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_PathPoint_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_PathPoint_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgPathPoint.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_PathPoint_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgPathPoint& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_PathPoint_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_REQ 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgReq.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgReq>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgReq
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_Req_wire_size
         */
        static size_t const max_wire_bytes = 4104;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_Req_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgReq<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgReq<T>::codec_identity = "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgReq<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgReq.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_Req_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgReq> : RecordMetadata_Ros2Unitree_goMsgReq<uwvm_custom::Ros2Unitree_goMsgReq>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgReq transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_Req_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgReq const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_Req_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_Req_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_Req_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgReq.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_Req_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgReq& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_Req_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_RES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgRes.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgRes>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgRes
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_Res_wire_size
         */
        static size_t const max_wire_bytes = 6156;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_Res_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgRes<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgRes<T>::codec_identity = "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgRes<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgRes.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_Res_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgRes> : RecordMetadata_Ros2Unitree_goMsgRes<uwvm_custom::Ros2Unitree_goMsgRes>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgRes transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_Res_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgRes const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_Res_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_Res_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_Res_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgRes.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_Res_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgRes& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_Res_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODECMD 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgSportModeCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgSportModeCmd>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgSportModeCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_SportModeCmd_wire_size
         */
        static size_t const max_wire_bytes = 887;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_SportModeCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgSportModeCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgSportModeCmd<T>::codec_identity =
        "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgSportModeCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgSportModeCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_SportModeCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgSportModeCmd> : RecordMetadata_Ros2Unitree_goMsgSportModeCmd<uwvm_custom::Ros2Unitree_goMsgSportModeCmd>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgSportModeCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_SportModeCmd_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgSportModeCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_SportModeCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_SportModeCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_SportModeCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgSportModeCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_SportModeCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgSportModeCmd& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_SportModeCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_TIMESPEC 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgTimeSpec.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgTimeSpec>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgTimeSpec
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_TimeSpec_wire_size
         */
        static size_t const max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_TimeSpec_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgTimeSpec<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgTimeSpec<T>::codec_identity = "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgTimeSpec<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgTimeSpec.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_TimeSpec_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgTimeSpec> : RecordMetadata_Ros2Unitree_goMsgTimeSpec<uwvm_custom::Ros2Unitree_goMsgTimeSpec>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgTimeSpec transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_TimeSpec_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgTimeSpec const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_TimeSpec_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_TimeSpec_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_TimeSpec_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgTimeSpec.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_TimeSpec_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgTimeSpec& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_TimeSpec_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_SPORTMODESTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgSportModeState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgSportModeState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgSportModeState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_SportModeState_wire_size
         */
        static size_t const max_wire_bytes = 227;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_SportModeState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgSportModeState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgSportModeState<T>::codec_identity =
        "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgSportModeState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgSportModeState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_SportModeState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgSportModeState> : RecordMetadata_Ros2Unitree_goMsgSportModeState<uwvm_custom::Ros2Unitree_goMsgSportModeState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgSportModeState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_SportModeState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgSportModeState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_SportModeState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_SportModeState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_SportModeState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgSportModeState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_SportModeState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgSportModeState& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_SportModeState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgUwbState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgUwbState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgUwbState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_UwbState_wire_size
         */
        static size_t const max_wire_bytes = 55;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_UwbState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgUwbState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgUwbState<T>::codec_identity = "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgUwbState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgUwbState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_UwbState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgUwbState> : RecordMetadata_Ros2Unitree_goMsgUwbState<uwvm_custom::Ros2Unitree_goMsgUwbState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgUwbState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_UwbState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgUwbState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_UwbState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_UwbState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_UwbState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgUwbState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_UwbState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgUwbState& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_UwbState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_UWBSWITCH 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgUwbSwitch.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgUwbSwitch>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgUwbSwitch
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_UwbSwitch_wire_size
         */
        static size_t const max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_UwbSwitch_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgUwbSwitch<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgUwbSwitch<T>::codec_identity =
        "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgUwbSwitch<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgUwbSwitch.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_UwbSwitch_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgUwbSwitch> : RecordMetadata_Ros2Unitree_goMsgUwbSwitch<uwvm_custom::Ros2Unitree_goMsgUwbSwitch>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgUwbSwitch transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_UwbSwitch_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgUwbSwitch const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_UwbSwitch_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_UwbSwitch_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_UwbSwitch_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgUwbSwitch.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_UwbSwitch_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgUwbSwitch& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_UwbSwitch_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_GO_MSG_WIRELESSCONTROLLER 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_goMsgWirelessController.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_goMsgWirelessController>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_goMsgWirelessController
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_go_msg_WirelessController_wire_size
         */
        static size_t const max_wire_bytes = 18;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_go_msg_WirelessController_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_goMsgWirelessController<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_goMsgWirelessController<T>::codec_identity =
        "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_goMsgWirelessController<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_goMsgWirelessController.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_go_msg_WirelessController_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_goMsgWirelessController> :
        RecordMetadata_Ros2Unitree_goMsgWirelessController<uwvm_custom::Ros2Unitree_goMsgWirelessController>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_goMsgWirelessController transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_go_msg_WirelessController_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_goMsgWirelessController const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_go_msg_WirelessController_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_go_msg_WirelessController_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_go_msg_WirelessController_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_goMsgWirelessController.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_go_msg_WirelessController_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_goMsgWirelessController& out)
        {
            return !roswasmc_bounded_2_unitree_go_msg_WirelessController_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_hgMsgBmsCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_hgMsgBmsCmd>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_hgMsgBmsCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_hg_msg_BmsCmd_wire_size
         */
        static size_t const max_wire_bytes = 41;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_hg_msg_BmsCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_hgMsgBmsCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_hgMsgBmsCmd<T>::codec_identity = "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_hgMsgBmsCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_hgMsgBmsCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_BmsCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_hgMsgBmsCmd> : RecordMetadata_Ros2Unitree_hgMsgBmsCmd<uwvm_custom::Ros2Unitree_hgMsgBmsCmd>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_hgMsgBmsCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_hg_msg_BmsCmd_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_hgMsgBmsCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_BmsCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_hg_msg_BmsCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_hg_msg_BmsCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_hgMsgBmsCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_hg_msg_BmsCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_hgMsgBmsCmd& out)
        {
            return !roswasmc_bounded_2_unitree_hg_msg_BmsCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_BMSSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_hgMsgBmsState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_hgMsgBmsState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_hgMsgBmsState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_hg_msg_BmsState_wire_size
         */
        static size_t const max_wire_bytes = 161;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_hg_msg_BmsState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_hgMsgBmsState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_hgMsgBmsState<T>::codec_identity = "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_hgMsgBmsState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_hgMsgBmsState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_BmsState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_hgMsgBmsState> : RecordMetadata_Ros2Unitree_hgMsgBmsState<uwvm_custom::Ros2Unitree_hgMsgBmsState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_hgMsgBmsState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_hg_msg_BmsState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_hgMsgBmsState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_BmsState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_hg_msg_BmsState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_hg_msg_BmsState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_hgMsgBmsState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_hg_msg_BmsState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_hgMsgBmsState& out)
        {
            return !roswasmc_bounded_2_unitree_hg_msg_BmsState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_hgMsgMotorCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_hgMsgMotorCmd>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_hgMsgMotorCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_hg_msg_MotorCmd_wire_size
         */
        static size_t const max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_hg_msg_MotorCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_hgMsgMotorCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_hgMsgMotorCmd<T>::codec_identity = "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_hgMsgMotorCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_hgMsgMotorCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_MotorCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_hgMsgMotorCmd> : RecordMetadata_Ros2Unitree_hgMsgMotorCmd<uwvm_custom::Ros2Unitree_hgMsgMotorCmd>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_hgMsgMotorCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_hg_msg_MotorCmd_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_hgMsgMotorCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_MotorCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_hg_msg_MotorCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_hg_msg_MotorCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_hgMsgMotorCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_hg_msg_MotorCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_hgMsgMotorCmd& out)
        {
            return !roswasmc_bounded_2_unitree_hg_msg_MotorCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_hgMsgHandCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_hgMsgHandCmd>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_hgMsgHandCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_hg_msg_HandCmd_wire_size
         */
        static size_t const max_wire_bytes = 820;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_hg_msg_HandCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_hgMsgHandCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_hgMsgHandCmd<T>::codec_identity = "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_hgMsgHandCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_hgMsgHandCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_HandCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_hgMsgHandCmd> : RecordMetadata_Ros2Unitree_hgMsgHandCmd<uwvm_custom::Ros2Unitree_hgMsgHandCmd>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_hgMsgHandCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_hg_msg_HandCmd_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_hgMsgHandCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_HandCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_hg_msg_HandCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_hg_msg_HandCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_hgMsgHandCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_hg_msg_HandCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_hgMsgHandCmd& out)
        {
            return !roswasmc_bounded_2_unitree_hg_msg_HandCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MOTORSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_hgMsgMotorState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_hgMsgMotorState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_hgMsgMotorState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_hg_msg_MotorState_wire_size
         */
        static size_t const max_wire_bytes = 53;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_hg_msg_MotorState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_hgMsgMotorState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_hgMsgMotorState<T>::codec_identity =
        "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_hgMsgMotorState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_hgMsgMotorState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_MotorState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_hgMsgMotorState> : RecordMetadata_Ros2Unitree_hgMsgMotorState<uwvm_custom::Ros2Unitree_hgMsgMotorState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_hgMsgMotorState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_hg_msg_MotorState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_hgMsgMotorState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_MotorState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_hg_msg_MotorState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_hg_msg_MotorState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_hgMsgMotorState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_hg_msg_MotorState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_hgMsgMotorState& out)
        {
            return !roswasmc_bounded_2_unitree_hg_msg_MotorState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_PRESSSENSORSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_hgMsgPressSensorState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_hgMsgPressSensorState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_hgMsgPressSensorState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_hg_msg_PressSensorState_wire_size
         */
        static size_t const max_wire_bytes = 104;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_hg_msg_PressSensorState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_hgMsgPressSensorState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_hgMsgPressSensorState<T>::codec_identity =
        "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_hgMsgPressSensorState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_hgMsgPressSensorState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_PressSensorState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_hgMsgPressSensorState> :
        RecordMetadata_Ros2Unitree_hgMsgPressSensorState<uwvm_custom::Ros2Unitree_hgMsgPressSensorState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_hgMsgPressSensorState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_hg_msg_PressSensorState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_hgMsgPressSensorState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_PressSensorState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_hg_msg_PressSensorState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_hg_msg_PressSensorState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_hgMsgPressSensorState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_hg_msg_PressSensorState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_hgMsgPressSensorState& out)
        {
            return !roswasmc_bounded_2_unitree_hg_msg_PressSensorState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_IMUSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_hgMsgIMUState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_hgMsgIMUState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_hgMsgIMUState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_hg_msg_IMUState_wire_size
         */
        static size_t const max_wire_bytes = 54;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_hg_msg_IMUState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_hgMsgIMUState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_hgMsgIMUState<T>::codec_identity = "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_hgMsgIMUState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_hgMsgIMUState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_IMUState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_hgMsgIMUState> : RecordMetadata_Ros2Unitree_hgMsgIMUState<uwvm_custom::Ros2Unitree_hgMsgIMUState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_hgMsgIMUState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_hg_msg_IMUState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_hgMsgIMUState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_IMUState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_hg_msg_IMUState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_hg_msg_IMUState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_hgMsgIMUState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_hg_msg_IMUState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_hgMsgIMUState& out)
        {
            return !roswasmc_bounded_2_unitree_hg_msg_IMUState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_HANDSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_hgMsgHandState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_hgMsgHandState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_hgMsgHandState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_hg_msg_HandState_wire_size
         */
        static size_t const max_wire_bytes = 5118;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_hg_msg_HandState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_hgMsgHandState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_hgMsgHandState<T>::codec_identity =
        "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_hgMsgHandState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_hgMsgHandState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_HandState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_hgMsgHandState> : RecordMetadata_Ros2Unitree_hgMsgHandState<uwvm_custom::Ros2Unitree_hgMsgHandState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_hgMsgHandState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_hg_msg_HandState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_hgMsgHandState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_HandState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_hg_msg_HandState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_hg_msg_HandState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_hgMsgHandState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_hg_msg_HandState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_hgMsgHandState& out)
        {
            return !roswasmc_bounded_2_unitree_hg_msg_HandState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_hgMsgLowCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_hgMsgLowCmd>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_hgMsgLowCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_hg_msg_LowCmd_wire_size
         */
        static size_t const max_wire_bytes = 897;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_hg_msg_LowCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_hgMsgLowCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_hgMsgLowCmd<T>::codec_identity = "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_hgMsgLowCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_hgMsgLowCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_LowCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_hgMsgLowCmd> : RecordMetadata_Ros2Unitree_hgMsgLowCmd<uwvm_custom::Ros2Unitree_hgMsgLowCmd>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_hgMsgLowCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_hg_msg_LowCmd_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_hgMsgLowCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_LowCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_hg_msg_LowCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_hg_msg_LowCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_hgMsgLowCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_hg_msg_LowCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_hgMsgLowCmd& out)
        {
            return !roswasmc_bounded_2_unitree_hg_msg_LowCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_LOWSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_hgMsgLowState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_hgMsgLowState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_hgMsgLowState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_hg_msg_LowState_wire_size
         */
        static size_t const max_wire_bytes = 1983;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_hg_msg_LowState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_hgMsgLowState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_hgMsgLowState<T>::codec_identity = "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_hgMsgLowState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_hgMsgLowState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_LowState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_hgMsgLowState> : RecordMetadata_Ros2Unitree_hgMsgLowState<uwvm_custom::Ros2Unitree_hgMsgLowState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_hgMsgLowState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_hg_msg_LowState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_hgMsgLowState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_LowState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_hg_msg_LowState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_hg_msg_LowState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_hgMsgLowState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_hg_msg_LowState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_hgMsgLowState& out)
        {
            return !roswasmc_bounded_2_unitree_hg_msg_LowState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UNITREE_HG_MSG_MAINBOARDSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Unitree_hgMsgMainBoardState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Unitree_hgMsgMainBoardState>
     */
    template <class T>
    struct RecordMetadata_Ros2Unitree_hgMsgMainBoardState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_unitree_hg_msg_MainBoardState_wire_size
         */
        static size_t const max_wire_bytes = 72;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_unitree_hg_msg_MainBoardState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Unitree_hgMsgMainBoardState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Unitree_hgMsgMainBoardState<T>::codec_identity =
        "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Unitree_hgMsgMainBoardState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Unitree_hgMsgMainBoardState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_unitree_hg_msg_MainBoardState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Unitree_hgMsgMainBoardState> : RecordMetadata_Ros2Unitree_hgMsgMainBoardState<uwvm_custom::Ros2Unitree_hgMsgMainBoardState>
    {
        /**
         * @brief Encode all fields of Ros2Unitree_hgMsgMainBoardState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_unitree_hg_msg_MainBoardState_encode
         */
        static bool encode(uwvm_custom::Ros2Unitree_hgMsgMainBoardState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_unitree_hg_msg_MainBoardState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_unitree_hg_msg_MainBoardState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_unitree_hg_msg_MainBoardState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Unitree_hgMsgMainBoardState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_unitree_hg_msg_MainBoardState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Unitree_hgMsgMainBoardState& out)
        {
            return !roswasmc_bounded_2_unitree_hg_msg_MainBoardState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
