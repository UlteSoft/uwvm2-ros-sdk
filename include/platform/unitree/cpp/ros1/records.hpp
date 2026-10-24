/**
 * @file records.hpp
 * @brief Preserve all complete original Unitree ROS 1 canonical records.
 * @details Every field retains its original width, signedness, order and finite quota. Caller-owned inline
 * records remain distinct from installed native ROS objects; construction grants no transport authority.
 */

// roswasm-cpp-documented-facade-v3
#pragma once
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
#include <unitree/c/ros1/records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros1Unitree_legged_msgsBmsCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_valid
     */
    typedef roswasmc_bounded_1_unitree_legged_msgs_BmsCmd Ros1Unitree_legged_msgsBmsCmd;
    /**
     * @brief Complete bounded storage for Ros1Unitree_legged_msgsBmsState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_BmsState_valid
     */
    typedef roswasmc_bounded_1_unitree_legged_msgs_BmsState Ros1Unitree_legged_msgsBmsState;
    /**
     * @brief Complete bounded storage for Ros1Unitree_legged_msgsCartesian.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid
     */
    typedef roswasmc_bounded_1_unitree_legged_msgs_Cartesian Ros1Unitree_legged_msgsCartesian;
    /**
     * @brief Complete bounded storage for Ros1Unitree_legged_msgsLED.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_LED_valid
     */
    typedef roswasmc_bounded_1_unitree_legged_msgs_LED Ros1Unitree_legged_msgsLED;
    /**
     * @brief Complete bounded storage for Ros1Unitree_legged_msgsHighCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_HighCmd_valid
     */
    typedef roswasmc_bounded_1_unitree_legged_msgs_HighCmd Ros1Unitree_legged_msgsHighCmd;
    /**
     * @brief Complete bounded storage for Ros1Unitree_legged_msgsIMU.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_IMU_valid
     */
    typedef roswasmc_bounded_1_unitree_legged_msgs_IMU Ros1Unitree_legged_msgsIMU;
    /**
     * @brief Complete bounded storage for Ros1Unitree_legged_msgsMotorState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_MotorState_valid
     */
    typedef roswasmc_bounded_1_unitree_legged_msgs_MotorState Ros1Unitree_legged_msgsMotorState;
    /**
     * @brief Complete bounded storage for Ros1Unitree_legged_msgsHighState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_HighState_valid
     */
    typedef roswasmc_bounded_1_unitree_legged_msgs_HighState Ros1Unitree_legged_msgsHighState;
    /**
     * @brief Complete bounded storage for Ros1Unitree_legged_msgsMotorCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_valid
     */
    typedef roswasmc_bounded_1_unitree_legged_msgs_MotorCmd Ros1Unitree_legged_msgsMotorCmd;
    /**
     * @brief Complete bounded storage for Ros1Unitree_legged_msgsLowCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_LowCmd_valid
     */
    typedef roswasmc_bounded_1_unitree_legged_msgs_LowCmd Ros1Unitree_legged_msgsLowCmd;
    /**
     * @brief Complete bounded storage for Ros1Unitree_legged_msgsLowState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_LowState_valid
     */
    typedef roswasmc_bounded_1_unitree_legged_msgs_LowState Ros1Unitree_legged_msgsLowState;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros1Unitree_legged_msgsBmsCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Unitree_legged_msgsBmsCmd>
     */
    template <class T>
    struct RecordMetadata_Ros1Unitree_legged_msgsBmsCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_wire_size
         */
        static size_t const max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Unitree_legged_msgsBmsCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Unitree_legged_msgsBmsCmd<T>::codec_identity =
        "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Unitree_legged_msgsBmsCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Unitree_legged_msgsBmsCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Unitree_legged_msgsBmsCmd> : RecordMetadata_Ros1Unitree_legged_msgsBmsCmd<uwvm_custom::Ros1Unitree_legged_msgsBmsCmd>
    {
        /**
         * @brief Encode all fields of Ros1Unitree_legged_msgsBmsCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_encode
         */
        static bool encode(uwvm_custom::Ros1Unitree_legged_msgsBmsCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Unitree_legged_msgsBmsCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Unitree_legged_msgsBmsCmd& out)
        {
            return !roswasmc_bounded_1_unitree_legged_msgs_BmsCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_BMSSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Unitree_legged_msgsBmsState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Unitree_legged_msgsBmsState>
     */
    template <class T>
    struct RecordMetadata_Ros1Unitree_legged_msgsBmsState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_unitree_legged_msgs_BmsState_wire_size
         */
        static size_t const max_wire_bytes = 34;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_unitree_legged_msgs_BmsState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Unitree_legged_msgsBmsState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Unitree_legged_msgsBmsState<T>::codec_identity =
        "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Unitree_legged_msgsBmsState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Unitree_legged_msgsBmsState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_BmsState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Unitree_legged_msgsBmsState> : RecordMetadata_Ros1Unitree_legged_msgsBmsState<uwvm_custom::Ros1Unitree_legged_msgsBmsState>
    {
        /**
         * @brief Encode all fields of Ros1Unitree_legged_msgsBmsState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_unitree_legged_msgs_BmsState_encode
         */
        static bool encode(uwvm_custom::Ros1Unitree_legged_msgsBmsState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_BmsState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_BmsState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_BmsState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Unitree_legged_msgsBmsState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_unitree_legged_msgs_BmsState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Unitree_legged_msgsBmsState& out)
        {
            return !roswasmc_bounded_1_unitree_legged_msgs_BmsState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_CARTESIAN 1

    /**
     * @brief ODR-safe wire metadata for Ros1Unitree_legged_msgsCartesian.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Unitree_legged_msgsCartesian>
     */
    template <class T>
    struct RecordMetadata_Ros1Unitree_legged_msgsCartesian
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size
         */
        static size_t const max_wire_bytes = 12;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Unitree_legged_msgsCartesian<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Unitree_legged_msgsCartesian<T>::codec_identity =
        "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Unitree_legged_msgsCartesian<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Unitree_legged_msgsCartesian.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_Cartesian_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Unitree_legged_msgsCartesian> : RecordMetadata_Ros1Unitree_legged_msgsCartesian<uwvm_custom::Ros1Unitree_legged_msgsCartesian>
    {
        /**
         * @brief Encode all fields of Ros1Unitree_legged_msgsCartesian transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_unitree_legged_msgs_Cartesian_encode
         */
        static bool encode(uwvm_custom::Ros1Unitree_legged_msgsCartesian const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_Cartesian_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Unitree_legged_msgsCartesian.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_unitree_legged_msgs_Cartesian_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Unitree_legged_msgsCartesian& out)
        {
            return !roswasmc_bounded_1_unitree_legged_msgs_Cartesian_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LED 1

    /**
     * @brief ODR-safe wire metadata for Ros1Unitree_legged_msgsLED.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Unitree_legged_msgsLED>
     */
    template <class T>
    struct RecordMetadata_Ros1Unitree_legged_msgsLED
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_unitree_legged_msgs_LED_wire_size
         */
        static size_t const max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_unitree_legged_msgs_LED_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Unitree_legged_msgsLED<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Unitree_legged_msgsLED<T>::codec_identity =
        "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Unitree_legged_msgsLED<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Unitree_legged_msgsLED.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_LED_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Unitree_legged_msgsLED> : RecordMetadata_Ros1Unitree_legged_msgsLED<uwvm_custom::Ros1Unitree_legged_msgsLED>
    {
        /**
         * @brief Encode all fields of Ros1Unitree_legged_msgsLED transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_unitree_legged_msgs_LED_encode
         */
        static bool encode(uwvm_custom::Ros1Unitree_legged_msgsLED const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_LED_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_LED_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_LED_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Unitree_legged_msgsLED.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_unitree_legged_msgs_LED_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Unitree_legged_msgsLED& out)
        {
            return !roswasmc_bounded_1_unitree_legged_msgs_LED_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros1Unitree_legged_msgsHighCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Unitree_legged_msgsHighCmd>
     */
    template <class T>
    struct RecordMetadata_Ros1Unitree_legged_msgsHighCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_unitree_legged_msgs_HighCmd_wire_size
         */
        static size_t const max_wire_bytes = 129;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_unitree_legged_msgs_HighCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Unitree_legged_msgsHighCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Unitree_legged_msgsHighCmd<T>::codec_identity =
        "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Unitree_legged_msgsHighCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Unitree_legged_msgsHighCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_HighCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Unitree_legged_msgsHighCmd> : RecordMetadata_Ros1Unitree_legged_msgsHighCmd<uwvm_custom::Ros1Unitree_legged_msgsHighCmd>
    {
        /**
         * @brief Encode all fields of Ros1Unitree_legged_msgsHighCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_unitree_legged_msgs_HighCmd_encode
         */
        static bool encode(uwvm_custom::Ros1Unitree_legged_msgsHighCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_HighCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_HighCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_HighCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Unitree_legged_msgsHighCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_unitree_legged_msgs_HighCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Unitree_legged_msgsHighCmd& out)
        {
            return !roswasmc_bounded_1_unitree_legged_msgs_HighCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_IMU 1

    /**
     * @brief ODR-safe wire metadata for Ros1Unitree_legged_msgsIMU.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Unitree_legged_msgsIMU>
     */
    template <class T>
    struct RecordMetadata_Ros1Unitree_legged_msgsIMU
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_unitree_legged_msgs_IMU_wire_size
         */
        static size_t const max_wire_bytes = 53;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_unitree_legged_msgs_IMU_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Unitree_legged_msgsIMU<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Unitree_legged_msgsIMU<T>::codec_identity =
        "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Unitree_legged_msgsIMU<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Unitree_legged_msgsIMU.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_IMU_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Unitree_legged_msgsIMU> : RecordMetadata_Ros1Unitree_legged_msgsIMU<uwvm_custom::Ros1Unitree_legged_msgsIMU>
    {
        /**
         * @brief Encode all fields of Ros1Unitree_legged_msgsIMU transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_unitree_legged_msgs_IMU_encode
         */
        static bool encode(uwvm_custom::Ros1Unitree_legged_msgsIMU const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_IMU_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_IMU_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_IMU_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Unitree_legged_msgsIMU.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_unitree_legged_msgs_IMU_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Unitree_legged_msgsIMU& out)
        {
            return !roswasmc_bounded_1_unitree_legged_msgs_IMU_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Unitree_legged_msgsMotorState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Unitree_legged_msgsMotorState>
     */
    template <class T>
    struct RecordMetadata_Ros1Unitree_legged_msgsMotorState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_unitree_legged_msgs_MotorState_wire_size
         */
        static size_t const max_wire_bytes = 38;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_unitree_legged_msgs_MotorState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Unitree_legged_msgsMotorState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Unitree_legged_msgsMotorState<T>::codec_identity =
        "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Unitree_legged_msgsMotorState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Unitree_legged_msgsMotorState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_MotorState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Unitree_legged_msgsMotorState> :
        RecordMetadata_Ros1Unitree_legged_msgsMotorState<uwvm_custom::Ros1Unitree_legged_msgsMotorState>
    {
        /**
         * @brief Encode all fields of Ros1Unitree_legged_msgsMotorState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_unitree_legged_msgs_MotorState_encode
         */
        static bool encode(uwvm_custom::Ros1Unitree_legged_msgsMotorState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_MotorState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_MotorState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_MotorState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Unitree_legged_msgsMotorState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_unitree_legged_msgs_MotorState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Unitree_legged_msgsMotorState& out)
        {
            return !roswasmc_bounded_1_unitree_legged_msgs_MotorState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_HIGHSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Unitree_legged_msgsHighState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Unitree_legged_msgsHighState>
     */
    template <class T>
    struct RecordMetadata_Ros1Unitree_legged_msgsHighState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_unitree_legged_msgs_HighState_wire_size
         */
        static size_t const max_wire_bytes = 1087;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_unitree_legged_msgs_HighState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Unitree_legged_msgsHighState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Unitree_legged_msgsHighState<T>::codec_identity =
        "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Unitree_legged_msgsHighState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Unitree_legged_msgsHighState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_HighState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Unitree_legged_msgsHighState> : RecordMetadata_Ros1Unitree_legged_msgsHighState<uwvm_custom::Ros1Unitree_legged_msgsHighState>
    {
        /**
         * @brief Encode all fields of Ros1Unitree_legged_msgsHighState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_unitree_legged_msgs_HighState_encode
         */
        static bool encode(uwvm_custom::Ros1Unitree_legged_msgsHighState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_HighState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_HighState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_HighState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Unitree_legged_msgsHighState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_unitree_legged_msgs_HighState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Unitree_legged_msgsHighState& out)
        {
            return !roswasmc_bounded_1_unitree_legged_msgs_HighState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_MOTORCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros1Unitree_legged_msgsMotorCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Unitree_legged_msgsMotorCmd>
     */
    template <class T>
    struct RecordMetadata_Ros1Unitree_legged_msgsMotorCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_wire_size
         */
        static size_t const max_wire_bytes = 33;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Unitree_legged_msgsMotorCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Unitree_legged_msgsMotorCmd<T>::codec_identity =
        "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Unitree_legged_msgsMotorCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Unitree_legged_msgsMotorCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Unitree_legged_msgsMotorCmd> : RecordMetadata_Ros1Unitree_legged_msgsMotorCmd<uwvm_custom::Ros1Unitree_legged_msgsMotorCmd>
    {
        /**
         * @brief Encode all fields of Ros1Unitree_legged_msgsMotorCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_encode
         */
        static bool encode(uwvm_custom::Ros1Unitree_legged_msgsMotorCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Unitree_legged_msgsMotorCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Unitree_legged_msgsMotorCmd& out)
        {
            return !roswasmc_bounded_1_unitree_legged_msgs_MotorCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros1Unitree_legged_msgsLowCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Unitree_legged_msgsLowCmd>
     */
    template <class T>
    struct RecordMetadata_Ros1Unitree_legged_msgsLowCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_unitree_legged_msgs_LowCmd_wire_size
         */
        static size_t const max_wire_bytes = 734;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_unitree_legged_msgs_LowCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Unitree_legged_msgsLowCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Unitree_legged_msgsLowCmd<T>::codec_identity =
        "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Unitree_legged_msgsLowCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Unitree_legged_msgsLowCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_LowCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Unitree_legged_msgsLowCmd> : RecordMetadata_Ros1Unitree_legged_msgsLowCmd<uwvm_custom::Ros1Unitree_legged_msgsLowCmd>
    {
        /**
         * @brief Encode all fields of Ros1Unitree_legged_msgsLowCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_unitree_legged_msgs_LowCmd_encode
         */
        static bool encode(uwvm_custom::Ros1Unitree_legged_msgsLowCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_LowCmd_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_LowCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_LowCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Unitree_legged_msgsLowCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_unitree_legged_msgs_LowCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Unitree_legged_msgsLowCmd& out)
        {
            return !roswasmc_bounded_1_unitree_legged_msgs_LowCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_UNITREE_LEGGED_MSGS_LOWSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Unitree_legged_msgsLowState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Unitree_legged_msgsLowState>
     */
    template <class T>
    struct RecordMetadata_Ros1Unitree_legged_msgsLowState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_unitree_legged_msgs_LowState_wire_size
         */
        static size_t const max_wire_bytes = 1069;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_unitree_legged_msgs_LowState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Unitree_legged_msgsLowState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Unitree_legged_msgsLowState<T>::codec_identity =
        "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Unitree_legged_msgsLowState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Unitree_legged_msgsLowState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_unitree_legged_msgs_LowState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Unitree_legged_msgsLowState> : RecordMetadata_Ros1Unitree_legged_msgsLowState<uwvm_custom::Ros1Unitree_legged_msgsLowState>
    {
        /**
         * @brief Encode all fields of Ros1Unitree_legged_msgsLowState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_unitree_legged_msgs_LowState_encode
         */
        static bool encode(uwvm_custom::Ros1Unitree_legged_msgsLowState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_unitree_legged_msgs_LowState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_LowState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_LowState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Unitree_legged_msgsLowState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_unitree_legged_msgs_LowState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Unitree_legged_msgsLowState& out)
        {
            return !roswasmc_bounded_1_unitree_legged_msgs_LowState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
