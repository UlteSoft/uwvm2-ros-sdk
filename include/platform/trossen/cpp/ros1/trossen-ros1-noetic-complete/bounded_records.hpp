/** @file C++20 typed bounded canonical records, independent of native ROS libraries.
 * Includes use the existing roswasmcpp Publisher/Subscription codecs and do not grant
 * aliases. Custom Service/Action component codecs also accept the raw typed RPC facade. */
#pragma once
#include <platform/trossen/c/ros1/trossen-ros1-noetic-complete/bounded_records.h>
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>

namespace uwvm_custom
{
    /** @brief Complete bounded guest value for interbotix_slate_msgs/SetStringRequest. */
    using Ros1Interbotix_slate_msgsSetStringRequest = roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest;
    /** @brief Complete bounded guest value for interbotix_slate_msgs/SetStringResponse. */
    using Ros1Interbotix_slate_msgsSetStringResponse = roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/ArmJoy. */
    using Ros1Interbotix_xs_msgsArmJoy = roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/HexJoy. */
    using Ros1Interbotix_xs_msgsHexJoy = roswasmc_bounded_1_interbotix_xs_msgs_HexJoy;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/JointGroupCommand. */
    using Ros1Interbotix_xs_msgsJointGroupCommand = roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/JointSingleCommand. */
    using Ros1Interbotix_xs_msgsJointSingleCommand = roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/JointTemps. */
    using Ros1Interbotix_xs_msgsJointTemps = roswasmc_bounded_1_interbotix_xs_msgs_JointTemps;
    /** @brief Complete bounded guest value for time. */
    using Ros1Time = roswasmc_bounded_1_time;
    /** @brief Complete bounded guest value for std_msgs/Header. */
    using Ros1Std_msgsHeader = roswasmc_bounded_1_std_msgs_Header;
    /** @brief Complete bounded guest value for duration. */
    using Ros1Duration = roswasmc_bounded_1_duration;
    /** @brief Complete bounded guest value for trajectory_msgs/JointTrajectoryPoint. */
    using Ros1Trajectory_msgsJointTrajectoryPoint = roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint;
    /** @brief Complete bounded guest value for trajectory_msgs/JointTrajectory. */
    using Ros1Trajectory_msgsJointTrajectory = roswasmc_bounded_1_trajectory_msgs_JointTrajectory;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/JointTrajectoryCommand. */
    using Ros1Interbotix_xs_msgsJointTrajectoryCommand = roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/LocobotJoy. */
    using Ros1Interbotix_xs_msgsLocobotJoy = roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/MotorGainsRequest. */
    using Ros1Interbotix_xs_msgsMotorGainsRequest = roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/MotorGainsResponse. */
    using Ros1Interbotix_xs_msgsMotorGainsResponse = roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/OperatingModesRequest. */
    using Ros1Interbotix_xs_msgsOperatingModesRequest = roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/OperatingModesResponse. */
    using Ros1Interbotix_xs_msgsOperatingModesResponse = roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/RebootRequest. */
    using Ros1Interbotix_xs_msgsRebootRequest = roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/RebootResponse. */
    using Ros1Interbotix_xs_msgsRebootResponse = roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/RegisterValuesRequest. */
    using Ros1Interbotix_xs_msgsRegisterValuesRequest = roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/RegisterValuesResponse. */
    using Ros1Interbotix_xs_msgsRegisterValuesResponse = roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/RobotInfoRequest. */
    using Ros1Interbotix_xs_msgsRobotInfoRequest = roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/RobotInfoResponse. */
    using Ros1Interbotix_xs_msgsRobotInfoResponse = roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/TorqueEnableRequest. */
    using Ros1Interbotix_xs_msgsTorqueEnableRequest = roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/TorqueEnableResponse. */
    using Ros1Interbotix_xs_msgsTorqueEnableResponse = roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse;
    /** @brief Complete bounded guest value for interbotix_xs_msgs/TurretJoy. */
    using Ros1Interbotix_xs_msgsTurretJoy = roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy;
    /** @brief Complete bounded guest value for xarm_msgs/ClearErrRequest. */
    using Ros1Xarm_msgsClearErrRequest = roswasmc_bounded_1_xarm_msgs_ClearErrRequest;
    /** @brief Complete bounded guest value for xarm_msgs/ClearErrResponse. */
    using Ros1Xarm_msgsClearErrResponse = roswasmc_bounded_1_xarm_msgs_ClearErrResponse;
    /** @brief Complete bounded guest value for xarm_msgs/ConfigToolModbusRequest. */
    using Ros1Xarm_msgsConfigToolModbusRequest = roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest;
    /** @brief Complete bounded guest value for xarm_msgs/ConfigToolModbusResponse. */
    using Ros1Xarm_msgsConfigToolModbusResponse = roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse;
    /** @brief Complete bounded guest value for xarm_msgs/GetAnalogIORequest. */
    using Ros1Xarm_msgsGetAnalogIORequest = roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest;
    /** @brief Complete bounded guest value for xarm_msgs/GetAnalogIOResponse. */
    using Ros1Xarm_msgsGetAnalogIOResponse = roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse;
    /** @brief Complete bounded guest value for xarm_msgs/GetControllerDigitalIORequest. */
    using Ros1Xarm_msgsGetControllerDigitalIORequest = roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest;
    /** @brief Complete bounded guest value for xarm_msgs/GetControllerDigitalIOResponse. */
    using Ros1Xarm_msgsGetControllerDigitalIOResponse = roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse;
    /** @brief Complete bounded guest value for xarm_msgs/GetDigitalIORequest. */
    using Ros1Xarm_msgsGetDigitalIORequest = roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest;
    /** @brief Complete bounded guest value for xarm_msgs/GetDigitalIOResponse. */
    using Ros1Xarm_msgsGetDigitalIOResponse = roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse;
    /** @brief Complete bounded guest value for xarm_msgs/GetErrRequest. */
    using Ros1Xarm_msgsGetErrRequest = roswasmc_bounded_1_xarm_msgs_GetErrRequest;
    /** @brief Complete bounded guest value for xarm_msgs/GetErrResponse. */
    using Ros1Xarm_msgsGetErrResponse = roswasmc_bounded_1_xarm_msgs_GetErrResponse;
    /** @brief Complete bounded guest value for xarm_msgs/GripperConfigRequest. */
    using Ros1Xarm_msgsGripperConfigRequest = roswasmc_bounded_1_xarm_msgs_GripperConfigRequest;
    /** @brief Complete bounded guest value for xarm_msgs/GripperConfigResponse. */
    using Ros1Xarm_msgsGripperConfigResponse = roswasmc_bounded_1_xarm_msgs_GripperConfigResponse;
    /** @brief Complete bounded guest value for xarm_msgs/GripperMoveRequest. */
    using Ros1Xarm_msgsGripperMoveRequest = roswasmc_bounded_1_xarm_msgs_GripperMoveRequest;
    /** @brief Complete bounded guest value for xarm_msgs/GripperMoveResponse. */
    using Ros1Xarm_msgsGripperMoveResponse = roswasmc_bounded_1_xarm_msgs_GripperMoveResponse;
    /** @brief Complete bounded guest value for xarm_msgs/GripperStateRequest. */
    using Ros1Xarm_msgsGripperStateRequest = roswasmc_bounded_1_xarm_msgs_GripperStateRequest;
    /** @brief Complete bounded guest value for xarm_msgs/GripperStateResponse. */
    using Ros1Xarm_msgsGripperStateResponse = roswasmc_bounded_1_xarm_msgs_GripperStateResponse;
    /** @brief Complete bounded guest value for xarm_msgs/IOState. */
    using Ros1Xarm_msgsIOState = roswasmc_bounded_1_xarm_msgs_IOState;
    /** @brief Complete bounded guest value for xarm_msgs/MoveRequest. */
    using Ros1Xarm_msgsMoveRequest = roswasmc_bounded_1_xarm_msgs_MoveRequest;
    /** @brief Complete bounded guest value for xarm_msgs/MoveResponse. */
    using Ros1Xarm_msgsMoveResponse = roswasmc_bounded_1_xarm_msgs_MoveResponse;
    /** @brief Complete bounded guest value for xarm_msgs/RobotMsg. */
    using Ros1Xarm_msgsRobotMsg = roswasmc_bounded_1_xarm_msgs_RobotMsg;
    /** @brief Complete bounded guest value for xarm_msgs/SetAxisRequest. */
    using Ros1Xarm_msgsSetAxisRequest = roswasmc_bounded_1_xarm_msgs_SetAxisRequest;
    /** @brief Complete bounded guest value for xarm_msgs/SetAxisResponse. */
    using Ros1Xarm_msgsSetAxisResponse = roswasmc_bounded_1_xarm_msgs_SetAxisResponse;
    /** @brief Complete bounded guest value for xarm_msgs/SetDigitalIORequest. */
    using Ros1Xarm_msgsSetDigitalIORequest = roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest;
    /** @brief Complete bounded guest value for xarm_msgs/SetDigitalIOResponse. */
    using Ros1Xarm_msgsSetDigitalIOResponse = roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse;
    /** @brief Complete bounded guest value for xarm_msgs/SetInt16Request. */
    using Ros1Xarm_msgsSetInt16Request = roswasmc_bounded_1_xarm_msgs_SetInt16Request;
    /** @brief Complete bounded guest value for xarm_msgs/SetInt16Response. */
    using Ros1Xarm_msgsSetInt16Response = roswasmc_bounded_1_xarm_msgs_SetInt16Response;
    /** @brief Complete bounded guest value for xarm_msgs/SetLoadRequest. */
    using Ros1Xarm_msgsSetLoadRequest = roswasmc_bounded_1_xarm_msgs_SetLoadRequest;
    /** @brief Complete bounded guest value for xarm_msgs/SetLoadResponse. */
    using Ros1Xarm_msgsSetLoadResponse = roswasmc_bounded_1_xarm_msgs_SetLoadResponse;
    /** @brief Complete bounded guest value for xarm_msgs/SetToolModbusRequest. */
    using Ros1Xarm_msgsSetToolModbusRequest = roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest;
    /** @brief Complete bounded guest value for xarm_msgs/SetToolModbusResponse. */
    using Ros1Xarm_msgsSetToolModbusResponse = roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse;
    /** @brief Complete bounded guest value for xarm_msgs/TCPOffsetRequest. */
    using Ros1Xarm_msgsTCPOffsetRequest = roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest;
    /** @brief Complete bounded guest value for xarm_msgs/TCPOffsetResponse. */
    using Ros1Xarm_msgsTCPOffsetResponse = roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse;
}  // namespace uwvm_custom

namespace roswasmcpp
{
    /** @brief Checked codec for interbotix_slate_msgs/SetStringRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_slate_msgsSetStringRequest>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105";

        static bool encode(uwvm_custom::Ros1Interbotix_slate_msgsSetStringRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_slate_msgsSetStringRequest& out)
        {
            return !roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_slate_msgs/SetStringResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_slate_msgsSetStringResponse>
    {
        static constexpr size_t max_wire_bytes = 133;
        static constexpr char const* codec_identity = "UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c";

        static bool encode(uwvm_custom::Ros1Interbotix_slate_msgsSetStringResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_slate_msgsSetStringResponse& out)
        {
            return !roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/ArmJoy; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsArmJoy>
    {
        static constexpr size_t max_wire_bytes = 12;
        static constexpr char const* codec_identity = "UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsArmJoy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsArmJoy& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/HexJoy; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsHexJoy>
    {
        static constexpr size_t max_wire_bytes = 17;
        static constexpr char const* codec_identity = "UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsHexJoy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsHexJoy& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/JointGroupCommand; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsJointGroupCommand>
    {
        static constexpr size_t max_wire_bytes = 392;
        static constexpr char const* codec_identity = "UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsJointGroupCommand const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsJointGroupCommand& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/JointSingleCommand; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsJointSingleCommand>
    {
        static constexpr size_t max_wire_bytes = 136;
        static constexpr char const* codec_identity = "UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsJointSingleCommand const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsJointSingleCommand& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/JointTemps; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsJointTemps>
    {
        static constexpr size_t max_wire_bytes = 8712;
        static constexpr char const* codec_identity = "UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsJointTemps const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsJointTemps& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for time; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Time>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";

        static bool encode(uwvm_custom::Ros1Time const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_time_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_time_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_time_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Time& out)
        {
            return !roswasmc_bounded_1_time_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for std_msgs/Header; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsHeader>
    {
        static constexpr size_t max_wire_bytes = 144;
        static constexpr char const* codec_identity = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";

        static bool encode(uwvm_custom::Ros1Std_msgsHeader const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_Header_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_Header_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_Header_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Std_msgsHeader& out)
        {
            return !roswasmc_bounded_1_std_msgs_Header_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for duration; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Duration>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8";

        static bool encode(uwvm_custom::Ros1Duration const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_duration_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_duration_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_duration_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Duration& out)
        {
            return !roswasmc_bounded_1_duration_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for trajectory_msgs/JointTrajectoryPoint; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Trajectory_msgsJointTrajectoryPoint>
    {
        static constexpr size_t max_wire_bytes = 536;
        static constexpr char const* codec_identity = "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81";

        static bool encode(uwvm_custom::Ros1Trajectory_msgsJointTrajectoryPoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Trajectory_msgsJointTrajectoryPoint& out)
        {
            return !roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for trajectory_msgs/JointTrajectory; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Trajectory_msgsJointTrajectory>
    {
        static constexpr size_t max_wire_bytes = 4408;
        static constexpr char const* codec_identity = "UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9";

        static bool encode(uwvm_custom::Ros1Trajectory_msgsJointTrajectory const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_trajectory_msgs_JointTrajectory_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_trajectory_msgs_JointTrajectory_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_trajectory_msgs_JointTrajectory_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Trajectory_msgsJointTrajectory& out)
        {
            return !roswasmc_bounded_1_trajectory_msgs_JointTrajectory_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/JointTrajectoryCommand; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsJointTrajectoryCommand>
    {
        static constexpr size_t max_wire_bytes = 4672;
        static constexpr char const* codec_identity = "UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsJointTrajectoryCommand const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsJointTrajectoryCommand& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/LocobotJoy; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsLocobotJoy>
    {
        static constexpr size_t max_wire_bytes = 30;
        static constexpr char const* codec_identity = "UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsLocobotJoy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsLocobotJoy& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/MotorGainsRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsMotorGainsRequest>
    {
        static constexpr size_t max_wire_bytes = 292;
        static constexpr char const* codec_identity = "UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsMotorGainsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsMotorGainsRequest& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/MotorGainsResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsMotorGainsResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsMotorGainsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsMotorGainsResponse& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/OperatingModesRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsOperatingModesRequest>
    {
        static constexpr size_t max_wire_bytes = 536;
        static constexpr char const* codec_identity = "UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsOperatingModesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsOperatingModesRequest& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/OperatingModesResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsOperatingModesResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsOperatingModesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsOperatingModesResponse& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/RebootRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsRebootRequest>
    {
        static constexpr size_t max_wire_bytes = 266;
        static constexpr char const* codec_identity = "UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsRebootRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsRebootRequest& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/RebootResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsRebootResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsRebootResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsRebootResponse& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/RegisterValuesRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsRegisterValuesRequest>
    {
        static constexpr size_t max_wire_bytes = 400;
        static constexpr char const* codec_identity = "UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsRegisterValuesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsRegisterValuesRequest& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/RegisterValuesResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsRegisterValuesResponse>
    {
        static constexpr size_t max_wire_bytes = 68;
        static constexpr char const* codec_identity = "UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsRegisterValuesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsRegisterValuesResponse& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/RobotInfoRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsRobotInfoRequest>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsRobotInfoRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsRobotInfoRequest& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/RobotInfoResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsRobotInfoResponse>
    {
        static constexpr size_t max_wire_bytes = 18474;
        static constexpr char const* codec_identity = "UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsRobotInfoResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsRobotInfoResponse& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/TorqueEnableRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsTorqueEnableRequest>
    {
        static constexpr size_t max_wire_bytes = 265;
        static constexpr char const* codec_identity = "UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsTorqueEnableRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsTorqueEnableRequest& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/TorqueEnableResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsTorqueEnableResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsTorqueEnableResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsTorqueEnableResponse& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for interbotix_xs_msgs/TurretJoy; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_xs_msgsTurretJoy>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70";

        static bool encode(uwvm_custom::Ros1Interbotix_xs_msgsTurretJoy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_xs_msgsTurretJoy& out)
        {
            return !roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/ClearErrRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsClearErrRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";

        static bool encode(uwvm_custom::Ros1Xarm_msgsClearErrRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_ClearErrRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsClearErrRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_ClearErrRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/ClearErrResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsClearErrResponse>
    {
        static constexpr size_t max_wire_bytes = 134;
        static constexpr char const* codec_identity = "UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1";

        static bool encode(uwvm_custom::Ros1Xarm_msgsClearErrResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_ClearErrResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsClearErrResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_ClearErrResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/ConfigToolModbusRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsConfigToolModbusRequest>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5";

        static bool encode(uwvm_custom::Ros1Xarm_msgsConfigToolModbusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsConfigToolModbusRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/ConfigToolModbusResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsConfigToolModbusResponse>
    {
        static constexpr size_t max_wire_bytes = 134;
        static constexpr char const* codec_identity = "UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b";

        static bool encode(uwvm_custom::Ros1Xarm_msgsConfigToolModbusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsConfigToolModbusResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GetAnalogIORequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GetAnalogIOResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse>
    {
        static constexpr size_t max_wire_bytes = 138;
        static constexpr char const* codec_identity = "UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GetControllerDigitalIORequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIORequest>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GetControllerDigitalIOResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIOResponse>
    {
        static constexpr size_t max_wire_bytes = 136;
        static constexpr char const* codec_identity = "UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGetControllerDigitalIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GetDigitalIORequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GetDigitalIOResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse>
    {
        static constexpr size_t max_wire_bytes = 142;
        static constexpr char const* codec_identity = "UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GetErrRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetErrRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGetErrRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetErrRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetErrRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetErrRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGetErrRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetErrRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GetErrResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetErrResponse>
    {
        static constexpr size_t max_wire_bytes = 134;
        static constexpr char const* codec_identity = "UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGetErrResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetErrResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetErrResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetErrResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGetErrResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetErrResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GripperConfigRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperConfigRequest>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperConfigRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGripperConfigRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GripperConfigResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperConfigResponse>
    {
        static constexpr size_t max_wire_bytes = 134;
        static constexpr char const* codec_identity = "UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperConfigResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGripperConfigResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GripperMoveRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperMoveRequest>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperMoveRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGripperMoveRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GripperMoveResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperMoveResponse>
    {
        static constexpr size_t max_wire_bytes = 134;
        static constexpr char const* codec_identity = "UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperMoveResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGripperMoveResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GripperStateRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperStateRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperStateRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperStateRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperStateRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperStateRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGripperStateRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperStateRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/GripperStateResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGripperStateResponse>
    {
        static constexpr size_t max_wire_bytes = 6;
        static constexpr char const* codec_identity = "UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4";

        static bool encode(uwvm_custom::Ros1Xarm_msgsGripperStateResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GripperStateResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GripperStateResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GripperStateResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsGripperStateResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GripperStateResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/IOState; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsIOState>
    {
        static constexpr size_t max_wire_bytes = 16;
        static constexpr char const* codec_identity = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";

        static bool encode(uwvm_custom::Ros1Xarm_msgsIOState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_IOState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_IOState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_IOState_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsIOState& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_IOState_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/MoveRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveRequest>
    {
        static constexpr size_t max_wire_bytes = 84;
        static constexpr char const* codec_identity = "UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5";

        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsMoveRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/MoveResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveResponse>
    {
        static constexpr size_t max_wire_bytes = 134;
        static constexpr char const* codec_identity = "UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658";

        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsMoveResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/RobotMsg; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsRobotMsg>
    {
        static constexpr size_t max_wire_bytes = 130;
        static constexpr char const* codec_identity = "UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41";

        static bool encode(uwvm_custom::Ros1Xarm_msgsRobotMsg const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_RobotMsg_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_RobotMsg_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_RobotMsg_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsRobotMsg& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_RobotMsg_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/SetAxisRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetAxisRequest>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";

        static bool encode(uwvm_custom::Ros1Xarm_msgsSetAxisRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetAxisRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsSetAxisRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetAxisRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/SetAxisResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetAxisResponse>
    {
        static constexpr size_t max_wire_bytes = 134;
        static constexpr char const* codec_identity = "UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7";

        static bool encode(uwvm_custom::Ros1Xarm_msgsSetAxisResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetAxisResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsSetAxisResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetAxisResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/SetDigitalIORequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";

        static bool encode(uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/SetDigitalIOResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse>
    {
        static constexpr size_t max_wire_bytes = 134;
        static constexpr char const* codec_identity = "UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c";

        static bool encode(uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/SetInt16Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Request>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";

        static bool encode(uwvm_custom::Ros1Xarm_msgsSetInt16Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetInt16Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsSetInt16Request& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetInt16Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/SetInt16Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Response>
    {
        static constexpr size_t max_wire_bytes = 134;
        static constexpr char const* codec_identity = "UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d";

        static bool encode(uwvm_custom::Ros1Xarm_msgsSetInt16Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetInt16Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsSetInt16Response& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetInt16Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/SetLoadRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetLoadRequest>
    {
        static constexpr size_t max_wire_bytes = 16;
        static constexpr char const* codec_identity = "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";

        static bool encode(uwvm_custom::Ros1Xarm_msgsSetLoadRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetLoadRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetLoadRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetLoadRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsSetLoadRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetLoadRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/SetLoadResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetLoadResponse>
    {
        static constexpr size_t max_wire_bytes = 134;
        static constexpr char const* codec_identity = "UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3";

        static bool encode(uwvm_custom::Ros1Xarm_msgsSetLoadResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetLoadResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetLoadResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetLoadResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsSetLoadResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetLoadResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/SetToolModbusRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetToolModbusRequest>
    {
        static constexpr size_t max_wire_bytes = 262;
        static constexpr char const* codec_identity = "UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a";

        static bool encode(uwvm_custom::Ros1Xarm_msgsSetToolModbusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsSetToolModbusRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/SetToolModbusResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetToolModbusResponse>
    {
        static constexpr size_t max_wire_bytes = 262;
        static constexpr char const* codec_identity = "UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15";

        static bool encode(uwvm_custom::Ros1Xarm_msgsSetToolModbusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsSetToolModbusResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/TCPOffsetRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest>
    {
        static constexpr size_t max_wire_bytes = 24;
        static constexpr char const* codec_identity = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";

        static bool encode(uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for xarm_msgs/TCPOffsetResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse>
    {
        static constexpr size_t max_wire_bytes = 134;
        static constexpr char const* codec_identity = "UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773";

        static bool encode(uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
}  // namespace roswasmcpp
