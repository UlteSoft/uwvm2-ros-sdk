/**
 * @file native_identity.cc
 * @brief Export/check installed original native ROS metadata for this complete source domain.
 * @details This is a native preparation tool or its original constant table, not a guest application.
 * Build against the exact selected installed native packages and the common public native protocol.
 * Canonical codec identities cannot establish native identities. No exporter result here claims a
 * qualified runtime/gateway pair or actual ROS delivery.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
/** Industrial native metadata source; no Node, endpoint or grant. */
#include "ros/native/native_protocol.h"
#include <array>
#include <string_view>
#include <stdexcept>
#include <csignal>
#include <cstdint>
#if UWVM_CUSTOM_NATIVE_ROS_VERSION != 1
# error "Select the exact source-reviewed ROS major"
#endif
#include <dobot_bringup/AI.h>
#include <dobot_bringup/AO.h>
#include <dobot_bringup/AOExecute.h>
#include <dobot_bringup/AccJ.h>
#include <dobot_bringup/AccL.h>
#include <dobot_bringup/Arc.h>
#include <dobot_bringup/Arch.h>
#include <dobot_bringup/BrakeControl.h>
#include <dobot_bringup/CP.h>
#include <dobot_bringup/Circle.h>
#include <dobot_bringup/ClearError.h>
#include <dobot_bringup/ContinueScript.h>
#include <dobot_bringup/Continues.h>
#include <dobot_bringup/DI.h>
#include <dobot_bringup/DIGroup.h>
#include <dobot_bringup/DO.h>
#include <dobot_bringup/DOExecute.h>
#include <dobot_bringup/DOGroup.h>
#include <dobot_bringup/DigitalOutputs.h>
#include <dobot_bringup/DisableRobot.h>
#include <dobot_bringup/EmergencyStop.h>
#include <dobot_bringup/EnableRobot.h>
#include <dobot_bringup/GetAngle.h>
#include <dobot_bringup/GetCoils.h>
#include <dobot_bringup/GetErrorID.h>
#include <dobot_bringup/GetHoldRegs.h>
#include <dobot_bringup/GetInBits.h>
#include <dobot_bringup/GetInRegs.h>
#include <dobot_bringup/GetPathStartPose.h>
#include <dobot_bringup/GetPose.h>
#include <dobot_bringup/GetSixForceData.h>
#include <dobot_bringup/GetTerminal485.h>
#include <dobot_bringup/GetTraceStartPose.h>
#include <dobot_bringup/HandleTrajPoints.h>
#include <dobot_bringup/InverseSolution.h>
#include <dobot_bringup/JointMovJ.h>
#include <dobot_bringup/Jump.h>
#include <dobot_bringup/LimZ.h>
#include <dobot_bringup/LoadSwitch.h>
#include <dobot_bringup/ModbusClose.h>
#include <dobot_bringup/ModbusCreate.h>
#include <dobot_bringup/MovJ.h>
#include <dobot_bringup/MovJExt.h>
#include <dobot_bringup/MovJIO.h>
#include <dobot_bringup/MovL.h>
#include <dobot_bringup/MovLIO.h>
#include <dobot_bringup/MoveJog.h>
#include <dobot_bringup/PauseScript.h>
#include <dobot_bringup/PayLoad.h>
#include <dobot_bringup/PositiveSolution.h>
#include <dobot_bringup/PowerOn.h>
#include <dobot_bringup/RelJointMovJ.h>
#include <dobot_bringup/RelMovJ.h>
#include <dobot_bringup/RelMovJTool.h>
#include <dobot_bringup/RelMovJUser.h>
#include <dobot_bringup/RelMovL.h>
#include <dobot_bringup/RelMovLTool.h>
#include <dobot_bringup/RelMovLUser.h>
#include <dobot_bringup/ResetRobot.h>
#include <dobot_bringup/RobotMode.h>
#include <dobot_bringup/RobotStatus.h>
#include <dobot_bringup/RunScript.h>
#include <dobot_bringup/ServoJ.h>
#include <dobot_bringup/ServoJParam.h>
#include <dobot_bringup/ServoP.h>
#include <dobot_bringup/SetArmOrientation.h>
#include <dobot_bringup/SetCoils.h>
#include <dobot_bringup/SetCollideDrag.h>
#include <dobot_bringup/SetCollisionLevel.h>
#include <dobot_bringup/SetHoldRegs.h>
#include <dobot_bringup/SetObstacleAvoid.h>
#include <dobot_bringup/SetPayload.h>
#include <dobot_bringup/SetSafeSkin.h>
#include <dobot_bringup/SetTerminal485.h>
#include <dobot_bringup/SetTerminalKeys.h>
#include <dobot_bringup/SpeedFactor.h>
#include <dobot_bringup/SpeedJ.h>
#include <dobot_bringup/SpeedL.h>
#include <dobot_bringup/StartDrag.h>
#include <dobot_bringup/StartFCTrace.h>
#include <dobot_bringup/StartPath.h>
#include <dobot_bringup/StartTrace.h>
#include <dobot_bringup/StopDrag.h>
#include <dobot_bringup/StopScript.h>
#include <dobot_bringup/StopmoveJog.h>
#include <dobot_bringup/Sync.h>
#include <dobot_bringup/SyncAll.h>
#include <dobot_bringup/TCPSpeed.h>
#include <dobot_bringup/TCPSpeedEnd.h>
#include <dobot_bringup/TcpDashboard.h>
#include <dobot_bringup/TcpRealData.h>
#include <dobot_bringup/Tool.h>
#include <dobot_bringup/ToolAI.h>
#include <dobot_bringup/ToolDI.h>
#include <dobot_bringup/ToolDO.h>
#include <dobot_bringup/ToolDOExecute.h>
#include <dobot_bringup/ToolVectorActual.h>
#include <dobot_bringup/User.h>
#include <dobot_bringup/Wait.h>
#include <dobot_bringup/pause.h>
#include <ros/message_traits.h>
#include <ros/service_traits.h>
#include "native_constants.hpp"

namespace
{
    int output()
    {
        return STDOUT_FILENO;
    }

    /** Emit bounded JSON text with checked Unicode metadata supplied by ROS.
     * Escape ASCII controls and quotes; no arbitrary filename or code is loaded. */
    void quoted(std::string_view value)
    {
        if(value.size() > 1048576)
        {
            throw std::length_error("native metadata ceiling");
        }
        size_t length{2};
        for(unsigned char c: value)
        {
            length += c < 32 ? 6 : c == '"' || c == '\\' ? 2 : 1;
        }
        std::string escaped;
        escaped.reserve(length);
        escaped.push_back('"');
        constexpr char digits[]{"0123456789abcdef"};
        for(unsigned char c: value)
        {
            if(c == '"' || c == '\\')
            {
                escaped.push_back('\\');
                escaped.push_back(static_cast<char>(c));
            }
            else if(c < 32)
            {
                for(char prefix: std::string_view{"\\u00"})
                {
                    escaped.push_back(prefix);
                }
                escaped.push_back(digits[c >> 4]);
                escaped.push_back(digits[c & 15]);
            }
            else
            {
                escaped.push_back(static_cast<char>(c));
            }
        }
        escaped.push_back('"');
        bounded_native_io::emit(output(), escaped);
    }
#if UWVM_CUSTOM_NATIVE_ROS_VERSION == 1
    template <class Message>
    void component(char const* role, bool comma)
    {
        if(comma)
        {
            bounded_native_io::print(output(), ',');
        }
        quoted(role);
        bounded_native_io::print(output(), ":{");
        bounded_native_io::print(output(), "\"type\":");
        quoted(::ros::message_traits::DataType<Message>::value());
        bounded_native_io::print(output(), ",\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<Message>::value());
        bounded_native_io::print(output(), ",\"definition\":");
        quoted(::ros::message_traits::Definition<Message>::value());
        bounded_native_io::print(output(), '}');
    }

    template <class Message>
    void message(char const* name, bool comma)
    {
        if(comma)
        {
            bounded_native_io::print(output(), ',');
        }
        quoted(name);
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<Message>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<Message>("message", false);
        bounded_native_io::print(output(), "}}");
    }

    template <class Service>
    void service(char const* name)
    {
        bounded_native_io::print(output(), ',');
        quoted(name);
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<Service>::value());
        bounded_native_io::print(output(), ",\"official_type\":");
        quoted(::ros::service_traits::DataType<Service>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<typename Service::Request>("request", false);
        component<typename Service::Response>("response", true);
        bounded_native_io::print(output(), "}}");
    }
#else
    /** Official static borrowed description strings may report capacity equal
     * to size, excluding the separately emitted NUL. Check that actual NUL,
     * pointer and finite length; this is not the Guest string admission rule. */
    template <class Text>
    std::string_view text(Text const& value)
    {
        if(value.size > 1048576 || value.size > value.capacity || !value.data || value.data[value.size] != 0)
        {
            throw std::runtime_error("invalid official metadata text");
        }
        return {value.data, value.size};
    }

    void record(rosidl_runtime_c__type_description__IndividualTypeDescription const& value)
    {
        if(value.fields.size > 4096 || value.fields.size > value.fields.capacity || (value.fields.size && !value.fields.data))
        {
            throw std::runtime_error("native field table ceiling");
        }
        bounded_native_io::print(output(), "{\"type\":");
        quoted(text(value.type_name));
        bounded_native_io::print(output(), ",\"fields\":[");
        for(size_t i{}; i != value.fields.size; ++i)
        {
            auto const& f{value.fields.data[i]};
            if(i)
            {
                bounded_native_io::print(output(), ',');
            }
            bounded_native_io::print(output(), "{\"name\":");
            quoted(text(f.name));
            bounded_native_io::print(output(),
                                     ",\"type_id\":",
                                     static_cast<unsigned>(f.type.type_id),
                                     ",\"capacity\":",
                                     f.type.capacity,
                                     ",\"string_capacity\":",
                                     f.type.string_capacity,
                                     ",\"nested_type_name\":");
            if(!f.type.nested_type_name.data && !f.type.nested_type_name.size && !f.type.nested_type_name.capacity)
            {
                quoted("");
            }
            else
            {
                quoted(text(f.type.nested_type_name));
            }
            bounded_native_io::print(output(), ",\"default_value\":");
            if(!f.default_value.data && !f.default_value.size && !f.default_value.capacity)
            {
                quoted("");
            }
            else
            {
                quoted(text(f.default_value));
            }
            bounded_native_io::print(output(), '}');
        }
        bounded_native_io::print(output(), "]}");
    }

    template <class Support>
    void metadata(Support const* support)
    {
        if(!support || !support->get_type_hash_func || !support->get_type_description_func)
        {
            throw std::runtime_error("official metadata unavailable");
        }
        auto hash{support->get_type_hash_func(support)};
        auto description{support->get_type_description_func(support)};
        if(!hash || hash->version != 1 || !description || description->referenced_type_descriptions.size > 512 ||
           description->referenced_type_descriptions.size > description->referenced_type_descriptions.capacity ||
           (description->referenced_type_descriptions.size && !description->referenced_type_descriptions.data))
        {
            throw std::runtime_error("official type description ceiling");
        }
        std::array<char, 71> identity{};
        constexpr char hex[]{"0123456789abcdef"};
        constexpr char prefix[]{"RIHS01_"};
        for(unsigned i{}; i != 7; ++i)
        {
            identity[i] = prefix[i];
        }
        for(unsigned i{}; i != 32; ++i)
        {
            identity[7 + 2 * i] = hex[hash->value[i] >> 4];
            identity[8 + 2 * i] = hex[hash->value[i] & 15];
        }
        bounded_native_io::print(output(), "{\"native_identity\":");
        quoted({identity.data(), identity.size()});
        bounded_native_io::print(output(), ",\"root\":");
        record(description->type_description);
        bounded_native_io::print(output(), ",\"references\":[");
        for(size_t i{}; i != description->referenced_type_descriptions.size; ++i)
        {
            if(i)
            {
                bounded_native_io::print(output(), ',');
            }
            record(description->referenced_type_descriptions.data[i]);
        }
        bounded_native_io::print(output(), "]}");
    }

    template <class Message>
    void component(char const* name, bool comma)
    {
        if(comma)
        {
            bounded_native_io::print(output(), ',');
        }
        quoted(name);
        bounded_native_io::print(output(), ':');
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<Message>());
    }

    template <class Message>
    void message(char const* name, bool comma)
    {
        if(comma)
        {
            bounded_native_io::print(output(), ',');
        }
        quoted(name);
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<Message>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<Message>("message", false);
        bounded_native_io::print(output(), "}}");
    }

    template <class Service>
    void service(char const* name)
    {
        bounded_native_io::print(output(), ',');
        quoted(name);
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<Service>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<typename Service::Request>("request", false);
        component<typename Service::Response>("response", true);
        bounded_native_io::print(output(), "}}");
    }
#endif
}  // namespace

int main()
{
    try
    {
        if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            throw std::runtime_error{"native source constants differ"};
        if(::raise(SIGSTOP) != 0)
            throw std::runtime_error{"owned mapping stop failed"};
        bounded_native_io::gate('I');
        bounded_native_io::print(
            output(),
            "{\"format\":\"uwvm-ros-industrial-native-v1\",\"ros_version\":",
            UWVM_CUSTOM_NATIVE_ROS_VERSION,
            ",\"source_profile\":\"uwvm-ros-vendor-complete-bounded-v1\",\"constant_schema_sha256\":\"ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356\",\"types\":{");
        quoted("dobot_bringup/RobotStatus");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::dobot_bringup::RobotStatus>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::RobotStatus>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ToolVectorActual");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::dobot_bringup::ToolVectorActual>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ToolVectorActual>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/AI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::AI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::AI::Request>("request", false);
        component<::dobot_bringup::AI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/AO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::AO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::AO::Request>("request", false);
        component<::dobot_bringup::AO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/AOExecute");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::AOExecute>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::AOExecute::Request>("request", false);
        component<::dobot_bringup::AOExecute::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/AccJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::AccJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::AccJ::Request>("request", false);
        component<::dobot_bringup::AccJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/AccL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::AccL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::AccL::Request>("request", false);
        component<::dobot_bringup::AccL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/Arc");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::Arc>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::Arc::Request>("request", false);
        component<::dobot_bringup::Arc::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/Arch");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::Arch>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::Arch::Request>("request", false);
        component<::dobot_bringup::Arch::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/BrakeControl");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::BrakeControl>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::BrakeControl::Request>("request", false);
        component<::dobot_bringup::BrakeControl::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/CP");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::CP>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::CP::Request>("request", false);
        component<::dobot_bringup::CP::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/Circle");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::Circle>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::Circle::Request>("request", false);
        component<::dobot_bringup::Circle::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ClearError");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ClearError>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ClearError::Request>("request", false);
        component<::dobot_bringup::ClearError::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ContinueScript");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ContinueScript>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ContinueScript::Request>("request", false);
        component<::dobot_bringup::ContinueScript::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/Continues");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::Continues>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::Continues::Request>("request", false);
        component<::dobot_bringup::Continues::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/DI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::DI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::DI::Request>("request", false);
        component<::dobot_bringup::DI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/DIGroup");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::DIGroup>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::DIGroup::Request>("request", false);
        component<::dobot_bringup::DIGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/DO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::DO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::DO::Request>("request", false);
        component<::dobot_bringup::DO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/DOExecute");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::DOExecute>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::DOExecute::Request>("request", false);
        component<::dobot_bringup::DOExecute::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/DOGroup");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::DOGroup>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::DOGroup::Request>("request", false);
        component<::dobot_bringup::DOGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/DigitalOutputs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::DigitalOutputs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::DigitalOutputs::Request>("request", false);
        component<::dobot_bringup::DigitalOutputs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/DisableRobot");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::DisableRobot>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::DisableRobot::Request>("request", false);
        component<::dobot_bringup::DisableRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/EmergencyStop");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::EmergencyStop>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::EmergencyStop::Request>("request", false);
        component<::dobot_bringup::EmergencyStop::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/EnableRobot");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::EnableRobot>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::EnableRobot::Request>("request", false);
        component<::dobot_bringup::EnableRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/GetAngle");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::GetAngle>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::GetAngle::Request>("request", false);
        component<::dobot_bringup::GetAngle::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/GetCoils");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::GetCoils>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::GetCoils::Request>("request", false);
        component<::dobot_bringup::GetCoils::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/GetErrorID");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::GetErrorID>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::GetErrorID::Request>("request", false);
        component<::dobot_bringup::GetErrorID::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/GetHoldRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::GetHoldRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::GetHoldRegs::Request>("request", false);
        component<::dobot_bringup::GetHoldRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/GetInBits");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::GetInBits>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::GetInBits::Request>("request", false);
        component<::dobot_bringup::GetInBits::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/GetInRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::GetInRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::GetInRegs::Request>("request", false);
        component<::dobot_bringup::GetInRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/GetPathStartPose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::GetPathStartPose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::GetPathStartPose::Request>("request", false);
        component<::dobot_bringup::GetPathStartPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/GetPose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::GetPose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::GetPose::Request>("request", false);
        component<::dobot_bringup::GetPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/GetSixForceData");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::GetSixForceData>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::GetSixForceData::Request>("request", false);
        component<::dobot_bringup::GetSixForceData::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/GetTerminal485");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::GetTerminal485>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::GetTerminal485::Request>("request", false);
        component<::dobot_bringup::GetTerminal485::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/GetTraceStartPose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::GetTraceStartPose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::GetTraceStartPose::Request>("request", false);
        component<::dobot_bringup::GetTraceStartPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/HandleTrajPoints");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::HandleTrajPoints>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::HandleTrajPoints::Request>("request", false);
        component<::dobot_bringup::HandleTrajPoints::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/InverseSolution");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::InverseSolution>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::InverseSolution::Request>("request", false);
        component<::dobot_bringup::InverseSolution::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/JointMovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::JointMovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::JointMovJ::Request>("request", false);
        component<::dobot_bringup::JointMovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/Jump");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::Jump>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::Jump::Request>("request", false);
        component<::dobot_bringup::Jump::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/LimZ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::LimZ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::LimZ::Request>("request", false);
        component<::dobot_bringup::LimZ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/LoadSwitch");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::LoadSwitch>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::LoadSwitch::Request>("request", false);
        component<::dobot_bringup::LoadSwitch::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ModbusClose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ModbusClose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ModbusClose::Request>("request", false);
        component<::dobot_bringup::ModbusClose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ModbusCreate");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ModbusCreate>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ModbusCreate::Request>("request", false);
        component<::dobot_bringup::ModbusCreate::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/MovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::MovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::MovJ::Request>("request", false);
        component<::dobot_bringup::MovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/MovJExt");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::MovJExt>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::MovJExt::Request>("request", false);
        component<::dobot_bringup::MovJExt::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/MovJIO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::MovJIO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::MovJIO::Request>("request", false);
        component<::dobot_bringup::MovJIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/MovL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::MovL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::MovL::Request>("request", false);
        component<::dobot_bringup::MovL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/MovLIO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::MovLIO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::MovLIO::Request>("request", false);
        component<::dobot_bringup::MovLIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/MoveJog");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::MoveJog>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::MoveJog::Request>("request", false);
        component<::dobot_bringup::MoveJog::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/PauseScript");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::PauseScript>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::PauseScript::Request>("request", false);
        component<::dobot_bringup::PauseScript::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/PayLoad");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::PayLoad>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::PayLoad::Request>("request", false);
        component<::dobot_bringup::PayLoad::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/PositiveSolution");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::PositiveSolution>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::PositiveSolution::Request>("request", false);
        component<::dobot_bringup::PositiveSolution::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/PowerOn");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::PowerOn>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::PowerOn::Request>("request", false);
        component<::dobot_bringup::PowerOn::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/RelJointMovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::RelJointMovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::RelJointMovJ::Request>("request", false);
        component<::dobot_bringup::RelJointMovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/RelMovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::RelMovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::RelMovJ::Request>("request", false);
        component<::dobot_bringup::RelMovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/RelMovJTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::RelMovJTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::RelMovJTool::Request>("request", false);
        component<::dobot_bringup::RelMovJTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/RelMovJUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::RelMovJUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::RelMovJUser::Request>("request", false);
        component<::dobot_bringup::RelMovJUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/RelMovL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::RelMovL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::RelMovL::Request>("request", false);
        component<::dobot_bringup::RelMovL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/RelMovLTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::RelMovLTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::RelMovLTool::Request>("request", false);
        component<::dobot_bringup::RelMovLTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/RelMovLUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::RelMovLUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::RelMovLUser::Request>("request", false);
        component<::dobot_bringup::RelMovLUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ResetRobot");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ResetRobot>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ResetRobot::Request>("request", false);
        component<::dobot_bringup::ResetRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/RobotMode");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::RobotMode>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::RobotMode::Request>("request", false);
        component<::dobot_bringup::RobotMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/RunScript");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::RunScript>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::RunScript::Request>("request", false);
        component<::dobot_bringup::RunScript::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ServoJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ServoJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ServoJ::Request>("request", false);
        component<::dobot_bringup::ServoJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ServoJParam");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ServoJParam>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ServoJParam::Request>("request", false);
        component<::dobot_bringup::ServoJParam::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ServoP");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ServoP>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ServoP::Request>("request", false);
        component<::dobot_bringup::ServoP::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SetArmOrientation");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SetArmOrientation>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SetArmOrientation::Request>("request", false);
        component<::dobot_bringup::SetArmOrientation::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SetCoils");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SetCoils>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SetCoils::Request>("request", false);
        component<::dobot_bringup::SetCoils::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SetCollideDrag");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SetCollideDrag>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SetCollideDrag::Request>("request", false);
        component<::dobot_bringup::SetCollideDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SetCollisionLevel");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SetCollisionLevel>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SetCollisionLevel::Request>("request", false);
        component<::dobot_bringup::SetCollisionLevel::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SetHoldRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SetHoldRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SetHoldRegs::Request>("request", false);
        component<::dobot_bringup::SetHoldRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SetObstacleAvoid");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SetObstacleAvoid>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SetObstacleAvoid::Request>("request", false);
        component<::dobot_bringup::SetObstacleAvoid::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SetPayload");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SetPayload>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SetPayload::Request>("request", false);
        component<::dobot_bringup::SetPayload::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SetSafeSkin");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SetSafeSkin>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SetSafeSkin::Request>("request", false);
        component<::dobot_bringup::SetSafeSkin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SetTerminal485");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SetTerminal485>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SetTerminal485::Request>("request", false);
        component<::dobot_bringup::SetTerminal485::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SetTerminalKeys");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SetTerminalKeys>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SetTerminalKeys::Request>("request", false);
        component<::dobot_bringup::SetTerminalKeys::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SpeedFactor");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SpeedFactor>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SpeedFactor::Request>("request", false);
        component<::dobot_bringup::SpeedFactor::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SpeedJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SpeedJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SpeedJ::Request>("request", false);
        component<::dobot_bringup::SpeedJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SpeedL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SpeedL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SpeedL::Request>("request", false);
        component<::dobot_bringup::SpeedL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/StartDrag");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::StartDrag>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::StartDrag::Request>("request", false);
        component<::dobot_bringup::StartDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/StartFCTrace");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::StartFCTrace>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::StartFCTrace::Request>("request", false);
        component<::dobot_bringup::StartFCTrace::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/StartPath");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::StartPath>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::StartPath::Request>("request", false);
        component<::dobot_bringup::StartPath::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/StartTrace");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::StartTrace>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::StartTrace::Request>("request", false);
        component<::dobot_bringup::StartTrace::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/StopDrag");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::StopDrag>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::StopDrag::Request>("request", false);
        component<::dobot_bringup::StopDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/StopScript");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::StopScript>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::StopScript::Request>("request", false);
        component<::dobot_bringup::StopScript::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/StopmoveJog");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::StopmoveJog>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::StopmoveJog::Request>("request", false);
        component<::dobot_bringup::StopmoveJog::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/Sync");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::Sync>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::Sync::Request>("request", false);
        component<::dobot_bringup::Sync::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/SyncAll");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::SyncAll>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::SyncAll::Request>("request", false);
        component<::dobot_bringup::SyncAll::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/TCPSpeed");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::TCPSpeed>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::TCPSpeed::Request>("request", false);
        component<::dobot_bringup::TCPSpeed::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/TCPSpeedEnd");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::TCPSpeedEnd>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::TCPSpeedEnd::Request>("request", false);
        component<::dobot_bringup::TCPSpeedEnd::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/TcpDashboard");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::TcpDashboard>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::TcpDashboard::Request>("request", false);
        component<::dobot_bringup::TcpDashboard::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/TcpRealData");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::TcpRealData>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::TcpRealData::Request>("request", false);
        component<::dobot_bringup::TcpRealData::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/Tool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::Tool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::Tool::Request>("request", false);
        component<::dobot_bringup::Tool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ToolAI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ToolAI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ToolAI::Request>("request", false);
        component<::dobot_bringup::ToolAI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ToolDI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ToolDI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ToolDI::Request>("request", false);
        component<::dobot_bringup::ToolDI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ToolDO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ToolDO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ToolDO::Request>("request", false);
        component<::dobot_bringup::ToolDO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/ToolDOExecute");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::ToolDOExecute>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::ToolDOExecute::Request>("request", false);
        component<::dobot_bringup::ToolDOExecute::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/User");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::User>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::User::Request>("request", false);
        component<::dobot_bringup::User::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/Wait");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::Wait>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::Wait::Request>("request", false);
        component<::dobot_bringup::Wait::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_bringup/pause");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_bringup::pause>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_bringup::pause::Request>("request", false);
        component<::dobot_bringup::pause::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), "}}\n");
        return 0;
    }
    catch(std::exception const&)
    {
        bounded_native_io::print(STDERR_FILENO, "native industrial metadata refused\n");
        return 1;
    }
}
