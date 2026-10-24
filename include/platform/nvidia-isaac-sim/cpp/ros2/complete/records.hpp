/** @file Macro-selected C++ full-field bounded records. */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <nvidia-isaac-sim/c/ros2/complete/records.h>
#include <ros/cpp/roswasm/roswasmcpp.hpp>

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
     * @brief Complete bounded storage for Ros2Uwvm_isaac_sim_bridgeMsgClockEvent.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_valid
     */
    typedef roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent Ros2Uwvm_isaac_sim_bridgeMsgClockEvent;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_valid
     */
    typedef roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_valid
     */
    typedef roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response;
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
        static const size_t max_wire_bytes = 76;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_std_msgs_msg_Header_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Std_msgsMsgHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Std_msgsMsgHeader<T>::codec_identity = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
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
        static const size_t max_wire_bytes = 5980;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_sensor_msgs_msg_JointState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Sensor_msgsMsgJointState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Sensor_msgsMsgJointState<T>::codec_identity =
        "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac";
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
                return false;
            size_t n = roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_MSG_CLOCKEVENT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_isaac_sim_bridgeMsgClockEvent.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_isaac_sim_bridgeMsgClockEvent>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_wire_size
         */
        static const size_t max_wire_bytes = 14;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent<T>::codec_identity =
        "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_isaac_sim_bridgeMsgClockEvent.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_isaac_sim_bridgeMsgClockEvent> :
        RecordMetadata_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent<uwvm_custom::Ros2Uwvm_isaac_sim_bridgeMsgClockEvent>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_isaac_sim_bridgeMsgClockEvent transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_isaac_sim_bridgeMsgClockEvent const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_isaac_sim_bridgeMsgClockEvent.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_isaac_sim_bridgeMsgClockEvent& out)
        {
            return !roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_wire_size
         */
        static const size_t max_wire_bytes = 22;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request<T>::codec_identity =
        "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request> :
        RecordMetadata_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request<uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request& out)
        {
            return !roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_ISAAC_SIM_BRIDGE_SRV_CLOCKCONTROL_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_wire_size
         */
        static const size_t max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response<T>::codec_identity =
        "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response> :
        RecordMetadata_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response<uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response& out)
        {
            return !roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
