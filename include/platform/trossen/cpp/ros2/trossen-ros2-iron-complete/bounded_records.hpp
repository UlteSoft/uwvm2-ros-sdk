/** @file C++20 typed bounded canonical records, independent of native ROS libraries.
 * Includes use the existing roswasmcpp Publisher/Subscription codecs and do not grant
 * aliases. Custom Service/Action component codecs also accept the raw typed RPC facade. */
#pragma once
#include <platform/trossen/c/ros2/trossen-ros2-iron-complete/bounded_records.h>
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>

namespace uwvm_custom
{
    /** @brief Complete bounded guest value for builtin_interfaces/msg/Duration. */
    using Ros2Builtin_interfacesMsgDuration = roswasmc_bounded_2_builtin_interfaces_msg_Duration;
    /** @brief Complete bounded guest value for builtin_interfaces/msg/Time. */
    using Ros2Builtin_interfacesMsgTime = roswasmc_bounded_2_builtin_interfaces_msg_Time;
    /** @brief Complete bounded guest value for std_msgs/msg/Header. */
    using Ros2Std_msgsMsgHeader = roswasmc_bounded_2_std_msgs_msg_Header;
    /** @brief Complete bounded guest value for interbotix_footswitch_msgs/msg/FootswitchState. */
    using Ros2Interbotix_footswitch_msgsMsgFootswitchState = roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState;
    /** @brief Complete bounded guest value for interbotix_slate_msgs/srv/SetLightState_Request. */
    using Ros2Interbotix_slate_msgsSrvSetLightState_Request = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request;
    /** @brief Complete bounded guest value for interbotix_slate_msgs/srv/SetLightState_Response. */
    using Ros2Interbotix_slate_msgsSrvSetLightState_Response = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response;
    /** @brief Complete bounded guest value for interbotix_slate_msgs/srv/SetString_Request. */
    using Ros2Interbotix_slate_msgsSrvSetString_Request = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request;
    /** @brief Complete bounded guest value for interbotix_slate_msgs/srv/SetString_Response. */
    using Ros2Interbotix_slate_msgsSrvSetString_Response = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/msg/ArmJoy. */
    using Ros2Interbotix_xs_msgsMsgArmJoy = roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/msg/HexJoy. */
    using Ros2Interbotix_xs_msgsMsgHexJoy = roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/msg/JointGroupCommand. */
    using Ros2Interbotix_xs_msgsMsgJointGroupCommand = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/msg/JointSingleCommand. */
    using Ros2Interbotix_xs_msgsMsgJointSingleCommand = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/msg/JointTemps. */
    using Ros2Interbotix_xs_msgsMsgJointTemps = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps;
    /** @brief Complete bounded guest value for trajectory_msgs/msg/JointTrajectoryPoint. */
    using Ros2Trajectory_msgsMsgJointTrajectoryPoint = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint;
    /** @brief Complete bounded guest value for trajectory_msgs/msg/JointTrajectory. */
    using Ros2Trajectory_msgsMsgJointTrajectory = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/msg/JointTrajectoryCommand. */
    using Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/msg/LocobotJoy. */
    using Ros2Interbotix_xs_msgsMsgLocobotJoy = roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/msg/TurretJoy. */
    using Ros2Interbotix_xs_msgsMsgTurretJoy = roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/MotorGains_Request. */
    using Ros2Interbotix_xs_msgsSrvMotorGains_Request = roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/MotorGains_Response. */
    using Ros2Interbotix_xs_msgsSrvMotorGains_Response = roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/OperatingModes_Request. */
    using Ros2Interbotix_xs_msgsSrvOperatingModes_Request = roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/OperatingModes_Response. */
    using Ros2Interbotix_xs_msgsSrvOperatingModes_Response = roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/Reboot_Request. */
    using Ros2Interbotix_xs_msgsSrvReboot_Request = roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/Reboot_Response. */
    using Ros2Interbotix_xs_msgsSrvReboot_Response = roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/RegisterValues_Request. */
    using Ros2Interbotix_xs_msgsSrvRegisterValues_Request = roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/RegisterValues_Response. */
    using Ros2Interbotix_xs_msgsSrvRegisterValues_Response = roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/RobotInfo_Request. */
    using Ros2Interbotix_xs_msgsSrvRobotInfo_Request = roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/RobotInfo_Response. */
    using Ros2Interbotix_xs_msgsSrvRobotInfo_Response = roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/TorqueEnable_Request. */
    using Ros2Interbotix_xs_msgsSrvTorqueEnable_Request = roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/srv/TorqueEnable_Response. */
    using Ros2Interbotix_xs_msgsSrvTorqueEnable_Response = roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response;
}  // namespace uwvm_custom

namespace roswasmcpp
{
    /** @brief Checked codec for builtin_interfaces/msg/Duration; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Builtin_interfacesMsgDuration>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";

        static bool encode(uwvm_custom::Ros2Builtin_interfacesMsgDuration const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Builtin_interfacesMsgDuration& out)
        {
            return !roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for builtin_interfaces/msg/Time; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Builtin_interfacesMsgTime>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";

        static bool encode(uwvm_custom::Ros2Builtin_interfacesMsgTime const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Builtin_interfacesMsgTime& out)
        {
            return !roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for std_msgs/msg/Header; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Std_msgsMsgHeader>
    {
        static constexpr size_t max_wire_bytes = 140;
        static constexpr char const* codec_identity = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";

        static bool encode(uwvm_custom::Ros2Std_msgsMsgHeader const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_std_msgs_msg_Header_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Std_msgsMsgHeader& out)
        {
            return !roswasmc_bounded_2_std_msgs_msg_Header_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_footswitch_msgs/msg/FootswitchState; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_footswitch_msgsMsgFootswitchState>
    {
        static constexpr size_t max_wire_bytes = 143;
        static constexpr char const* codec_identity = "UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c";

        static bool encode(uwvm_custom::Ros2Interbotix_footswitch_msgsMsgFootswitchState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_footswitch_msgsMsgFootswitchState& out)
        {
            return !roswasmc_bounded_2_interbotix_footswitch_msgs_msg_FootswitchState_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_slate_msgs/srv/SetLightState_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_slate_msgsSrvSetLightState_Request>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554";

        /** @brief Real C-value declared initialization; T{} intentionally remains zero aggregate storage. */
        static uwvm_custom::Ros2Interbotix_slate_msgsSrvSetLightState_Request default_value() noexcept
        {
            uwvm_custom::Ros2Interbotix_slate_msgsSrvSetLightState_Request value = {0};
            (void)roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_default(&value);
            return value;
        }

        static bool encode(uwvm_custom::Ros2Interbotix_slate_msgsSrvSetLightState_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_slate_msgsSrvSetLightState_Request& out)
        {
            return !roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_slate_msgs/srv/SetLightState_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_slate_msgsSrvSetLightState_Response>
    {
        static constexpr size_t max_wire_bytes = 133;
        static constexpr char const* codec_identity = "UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784";

        static bool encode(uwvm_custom::Ros2Interbotix_slate_msgsSrvSetLightState_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_slate_msgsSrvSetLightState_Response& out)
        {
            return !roswasmc_bounded_2_interbotix_slate_msgs_srv_SetLightState_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_slate_msgs/srv/SetString_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_slate_msgsSrvSetString_Request>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45";

        static bool encode(uwvm_custom::Ros2Interbotix_slate_msgsSrvSetString_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_slate_msgsSrvSetString_Request& out)
        {
            return !roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_slate_msgs/srv/SetString_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_slate_msgsSrvSetString_Response>
    {
        static constexpr size_t max_wire_bytes = 133;
        static constexpr char const* codec_identity = "UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33";

        static bool encode(uwvm_custom::Ros2Interbotix_slate_msgsSrvSetString_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_slate_msgsSrvSetString_Response& out)
        {
            return !roswasmc_bounded_2_interbotix_slate_msgs_srv_SetString_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/msg/ArmJoy; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsMsgArmJoy>
    {
        static constexpr size_t max_wire_bytes = 12;
        static constexpr char const* codec_identity = "UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsMsgArmJoy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsMsgArmJoy& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_msg_ArmJoy_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/msg/HexJoy; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsMsgHexJoy>
    {
        static constexpr size_t max_wire_bytes = 17;
        static constexpr char const* codec_identity = "UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsMsgHexJoy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsMsgHexJoy& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_msg_HexJoy_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/msg/JointGroupCommand; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsMsgJointGroupCommand>
    {
        static constexpr size_t max_wire_bytes = 392;
        static constexpr char const* codec_identity = "UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsMsgJointGroupCommand const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsMsgJointGroupCommand& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointGroupCommand_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/msg/JointSingleCommand; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsMsgJointSingleCommand>
    {
        static constexpr size_t max_wire_bytes = 136;
        static constexpr char const* codec_identity = "UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsMsgJointSingleCommand const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsMsgJointSingleCommand& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointSingleCommand_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/msg/JointTemps; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsMsgJointTemps>
    {
        static constexpr size_t max_wire_bytes = 8712;
        static constexpr char const* codec_identity = "UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsMsgJointTemps const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsMsgJointTemps& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTemps_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for trajectory_msgs/msg/JointTrajectoryPoint; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Trajectory_msgsMsgJointTrajectoryPoint>
    {
        static constexpr size_t max_wire_bytes = 536;
        static constexpr char const* codec_identity = "UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1";

        static bool encode(uwvm_custom::Ros2Trajectory_msgsMsgJointTrajectoryPoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Trajectory_msgsMsgJointTrajectoryPoint& out)
        {
            return !roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for trajectory_msgs/msg/JointTrajectory; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Trajectory_msgsMsgJointTrajectory>
    {
        static constexpr size_t max_wire_bytes = 4404;
        static constexpr char const* codec_identity = "UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7";

        static bool encode(uwvm_custom::Ros2Trajectory_msgsMsgJointTrajectory const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Trajectory_msgsMsgJointTrajectory& out)
        {
            return !roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/msg/JointTrajectoryCommand; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand>
    {
        static constexpr size_t max_wire_bytes = 4668;
        static constexpr char const* codec_identity = "UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_msg_JointTrajectoryCommand_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/msg/LocobotJoy; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsMsgLocobotJoy>
    {
        static constexpr size_t max_wire_bytes = 30;
        static constexpr char const* codec_identity = "UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsMsgLocobotJoy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsMsgLocobotJoy& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_msg_LocobotJoy_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/msg/TurretJoy; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsMsgTurretJoy>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsMsgTurretJoy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsMsgTurretJoy& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_msg_TurretJoy_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/MotorGains_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvMotorGains_Request>
    {
        static constexpr size_t max_wire_bytes = 292;
        static constexpr char const* codec_identity = "UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvMotorGains_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvMotorGains_Request& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/MotorGains_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvMotorGains_Response>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvMotorGains_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvMotorGains_Response& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_MotorGains_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/OperatingModes_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvOperatingModes_Request>
    {
        static constexpr size_t max_wire_bytes = 536;
        static constexpr char const* codec_identity = "UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvOperatingModes_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvOperatingModes_Request& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/OperatingModes_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvOperatingModes_Response>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvOperatingModes_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvOperatingModes_Response& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_OperatingModes_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/Reboot_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvReboot_Request>
    {
        static constexpr size_t max_wire_bytes = 266;
        static constexpr char const* codec_identity = "UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvReboot_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvReboot_Request& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/Reboot_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvReboot_Response>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvReboot_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvReboot_Response& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_Reboot_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/RegisterValues_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvRegisterValues_Request>
    {
        static constexpr size_t max_wire_bytes = 400;
        static constexpr char const* codec_identity = "UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvRegisterValues_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvRegisterValues_Request& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/RegisterValues_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvRegisterValues_Response>
    {
        static constexpr size_t max_wire_bytes = 68;
        static constexpr char const* codec_identity = "UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvRegisterValues_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvRegisterValues_Response& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_RegisterValues_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/RobotInfo_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvRobotInfo_Request>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvRobotInfo_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvRobotInfo_Request& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/RobotInfo_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvRobotInfo_Response>
    {
        static constexpr size_t max_wire_bytes = 18474;
        static constexpr char const* codec_identity = "UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvRobotInfo_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvRobotInfo_Response& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_RobotInfo_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/TorqueEnable_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvTorqueEnable_Request>
    {
        static constexpr size_t max_wire_bytes = 265;
        static constexpr char const* codec_identity = "UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvTorqueEnable_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvTorqueEnable_Request& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/srv/TorqueEnable_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Interbotix_xs_msgsSrvTorqueEnable_Response>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b";

        static bool encode(uwvm_custom::Ros2Interbotix_xs_msgsSrvTorqueEnable_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Interbotix_xs_msgsSrvTorqueEnable_Response& out)
        {
            return !roswasmc_bounded_2_interbotix_xs_msgs_srv_TorqueEnable_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
}  // namespace roswasmcpp
