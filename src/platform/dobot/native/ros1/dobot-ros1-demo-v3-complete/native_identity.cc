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
#include <rosdemo_v3/AI.h>
#include <rosdemo_v3/AO.h>
#include <rosdemo_v3/AOExecute.h>
#include <rosdemo_v3/AccJ.h>
#include <rosdemo_v3/AccL.h>
#include <rosdemo_v3/Arc.h>
#include <rosdemo_v3/Arch.h>
#include <rosdemo_v3/BrakeControl.h>
#include <rosdemo_v3/CP.h>
#include <rosdemo_v3/Circle.h>
#include <rosdemo_v3/ClearError.h>
#include <rosdemo_v3/ContinueScript.h>
#include <rosdemo_v3/Continues.h>
#include <rosdemo_v3/DI.h>
#include <rosdemo_v3/DIGroup.h>
#include <rosdemo_v3/DO.h>
#include <rosdemo_v3/DOExecute.h>
#include <rosdemo_v3/DOGroup.h>
#include <rosdemo_v3/DigitalOutputs.h>
#include <rosdemo_v3/DisableRobot.h>
#include <rosdemo_v3/EmergencyStop.h>
#include <rosdemo_v3/EnableRobot.h>
#include <rosdemo_v3/GetAngle.h>
#include <rosdemo_v3/GetCoils.h>
#include <rosdemo_v3/GetErrorID.h>
#include <rosdemo_v3/GetHoldRegs.h>
#include <rosdemo_v3/GetInBits.h>
#include <rosdemo_v3/GetInRegs.h>
#include <rosdemo_v3/GetPathStartPose.h>
#include <rosdemo_v3/GetPose.h>
#include <rosdemo_v3/GetSixForceData.h>
#include <rosdemo_v3/GetTerminal485.h>
#include <rosdemo_v3/GetTraceStartPose.h>
#include <rosdemo_v3/HandleTrajPoints.h>
#include <rosdemo_v3/InverseSolution.h>
#include <rosdemo_v3/JointMovJ.h>
#include <rosdemo_v3/Jump.h>
#include <rosdemo_v3/LimZ.h>
#include <rosdemo_v3/LoadSwitch.h>
#include <rosdemo_v3/ModbusClose.h>
#include <rosdemo_v3/ModbusCreate.h>
#include <rosdemo_v3/MovJ.h>
#include <rosdemo_v3/MovJExt.h>
#include <rosdemo_v3/MovJIO.h>
#include <rosdemo_v3/MovL.h>
#include <rosdemo_v3/MovLIO.h>
#include <rosdemo_v3/MoveJog.h>
#include <rosdemo_v3/PauseScript.h>
#include <rosdemo_v3/PayLoad.h>
#include <rosdemo_v3/PositiveSolution.h>
#include <rosdemo_v3/PowerOn.h>
#include <rosdemo_v3/RelJointMovJ.h>
#include <rosdemo_v3/RelMovJ.h>
#include <rosdemo_v3/RelMovJTool.h>
#include <rosdemo_v3/RelMovJUser.h>
#include <rosdemo_v3/RelMovL.h>
#include <rosdemo_v3/RelMovLTool.h>
#include <rosdemo_v3/RelMovLUser.h>
#include <rosdemo_v3/ResetRobot.h>
#include <rosdemo_v3/RobotMode.h>
#include <rosdemo_v3/RunScript.h>
#include <rosdemo_v3/ServoJ.h>
#include <rosdemo_v3/ServoP.h>
#include <rosdemo_v3/SetArmOrientation.h>
#include <rosdemo_v3/SetCoils.h>
#include <rosdemo_v3/SetCollideDrag.h>
#include <rosdemo_v3/SetCollisionLevel.h>
#include <rosdemo_v3/SetHoldRegs.h>
#include <rosdemo_v3/SetObstacleAvoid.h>
#include <rosdemo_v3/SetPayload.h>
#include <rosdemo_v3/SetSafeSkin.h>
#include <rosdemo_v3/SetTerminal485.h>
#include <rosdemo_v3/SetTerminalKeys.h>
#include <rosdemo_v3/SpeedFactor.h>
#include <rosdemo_v3/SpeedJ.h>
#include <rosdemo_v3/SpeedL.h>
#include <rosdemo_v3/StartDrag.h>
#include <rosdemo_v3/StartFCTrace.h>
#include <rosdemo_v3/StartPath.h>
#include <rosdemo_v3/StartTrace.h>
#include <rosdemo_v3/StopDrag.h>
#include <rosdemo_v3/StopScript.h>
#include <rosdemo_v3/StopmoveJog.h>
#include <rosdemo_v3/Sync.h>
#include <rosdemo_v3/SyncAll.h>
#include <rosdemo_v3/TCPSpeed.h>
#include <rosdemo_v3/TCPSpeedEnd.h>
#include <rosdemo_v3/Tool.h>
#include <rosdemo_v3/ToolAI.h>
#include <rosdemo_v3/ToolDI.h>
#include <rosdemo_v3/ToolDO.h>
#include <rosdemo_v3/ToolDOExecute.h>
#include <rosdemo_v3/User.h>
#include <rosdemo_v3/Wait.h>
#include <rosdemo_v3/pause.h>
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
        quoted("rosdemo_v3/AI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::AI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::AI::Request>("request", false);
        component<::rosdemo_v3::AI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/AO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::AO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::AO::Request>("request", false);
        component<::rosdemo_v3::AO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/AOExecute");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::AOExecute>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::AOExecute::Request>("request", false);
        component<::rosdemo_v3::AOExecute::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/AccJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::AccJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::AccJ::Request>("request", false);
        component<::rosdemo_v3::AccJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/AccL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::AccL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::AccL::Request>("request", false);
        component<::rosdemo_v3::AccL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/Arc");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::Arc>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::Arc::Request>("request", false);
        component<::rosdemo_v3::Arc::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/Arch");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::Arch>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::Arch::Request>("request", false);
        component<::rosdemo_v3::Arch::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/BrakeControl");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::BrakeControl>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::BrakeControl::Request>("request", false);
        component<::rosdemo_v3::BrakeControl::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/CP");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::CP>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::CP::Request>("request", false);
        component<::rosdemo_v3::CP::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/Circle");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::Circle>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::Circle::Request>("request", false);
        component<::rosdemo_v3::Circle::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/ClearError");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::ClearError>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::ClearError::Request>("request", false);
        component<::rosdemo_v3::ClearError::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/ContinueScript");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::ContinueScript>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::ContinueScript::Request>("request", false);
        component<::rosdemo_v3::ContinueScript::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/Continues");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::Continues>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::Continues::Request>("request", false);
        component<::rosdemo_v3::Continues::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/DI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::DI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::DI::Request>("request", false);
        component<::rosdemo_v3::DI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/DIGroup");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::DIGroup>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::DIGroup::Request>("request", false);
        component<::rosdemo_v3::DIGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/DO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::DO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::DO::Request>("request", false);
        component<::rosdemo_v3::DO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/DOExecute");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::DOExecute>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::DOExecute::Request>("request", false);
        component<::rosdemo_v3::DOExecute::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/DOGroup");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::DOGroup>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::DOGroup::Request>("request", false);
        component<::rosdemo_v3::DOGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/DigitalOutputs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::DigitalOutputs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::DigitalOutputs::Request>("request", false);
        component<::rosdemo_v3::DigitalOutputs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/DisableRobot");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::DisableRobot>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::DisableRobot::Request>("request", false);
        component<::rosdemo_v3::DisableRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/EmergencyStop");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::EmergencyStop>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::EmergencyStop::Request>("request", false);
        component<::rosdemo_v3::EmergencyStop::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/EnableRobot");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::EnableRobot>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::EnableRobot::Request>("request", false);
        component<::rosdemo_v3::EnableRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/GetAngle");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::GetAngle>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::GetAngle::Request>("request", false);
        component<::rosdemo_v3::GetAngle::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/GetCoils");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::GetCoils>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::GetCoils::Request>("request", false);
        component<::rosdemo_v3::GetCoils::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/GetErrorID");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::GetErrorID>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::GetErrorID::Request>("request", false);
        component<::rosdemo_v3::GetErrorID::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/GetHoldRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::GetHoldRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::GetHoldRegs::Request>("request", false);
        component<::rosdemo_v3::GetHoldRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/GetInBits");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::GetInBits>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::GetInBits::Request>("request", false);
        component<::rosdemo_v3::GetInBits::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/GetInRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::GetInRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::GetInRegs::Request>("request", false);
        component<::rosdemo_v3::GetInRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/GetPathStartPose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::GetPathStartPose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::GetPathStartPose::Request>("request", false);
        component<::rosdemo_v3::GetPathStartPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/GetPose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::GetPose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::GetPose::Request>("request", false);
        component<::rosdemo_v3::GetPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/GetSixForceData");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::GetSixForceData>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::GetSixForceData::Request>("request", false);
        component<::rosdemo_v3::GetSixForceData::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/GetTerminal485");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::GetTerminal485>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::GetTerminal485::Request>("request", false);
        component<::rosdemo_v3::GetTerminal485::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/GetTraceStartPose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::GetTraceStartPose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::GetTraceStartPose::Request>("request", false);
        component<::rosdemo_v3::GetTraceStartPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/HandleTrajPoints");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::HandleTrajPoints>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::HandleTrajPoints::Request>("request", false);
        component<::rosdemo_v3::HandleTrajPoints::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/InverseSolution");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::InverseSolution>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::InverseSolution::Request>("request", false);
        component<::rosdemo_v3::InverseSolution::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/JointMovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::JointMovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::JointMovJ::Request>("request", false);
        component<::rosdemo_v3::JointMovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/Jump");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::Jump>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::Jump::Request>("request", false);
        component<::rosdemo_v3::Jump::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/LimZ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::LimZ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::LimZ::Request>("request", false);
        component<::rosdemo_v3::LimZ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/LoadSwitch");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::LoadSwitch>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::LoadSwitch::Request>("request", false);
        component<::rosdemo_v3::LoadSwitch::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/ModbusClose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::ModbusClose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::ModbusClose::Request>("request", false);
        component<::rosdemo_v3::ModbusClose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/ModbusCreate");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::ModbusCreate>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::ModbusCreate::Request>("request", false);
        component<::rosdemo_v3::ModbusCreate::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/MovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::MovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::MovJ::Request>("request", false);
        component<::rosdemo_v3::MovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/MovJExt");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::MovJExt>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::MovJExt::Request>("request", false);
        component<::rosdemo_v3::MovJExt::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/MovJIO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::MovJIO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::MovJIO::Request>("request", false);
        component<::rosdemo_v3::MovJIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/MovL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::MovL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::MovL::Request>("request", false);
        component<::rosdemo_v3::MovL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/MovLIO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::MovLIO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::MovLIO::Request>("request", false);
        component<::rosdemo_v3::MovLIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/MoveJog");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::MoveJog>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::MoveJog::Request>("request", false);
        component<::rosdemo_v3::MoveJog::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/PauseScript");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::PauseScript>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::PauseScript::Request>("request", false);
        component<::rosdemo_v3::PauseScript::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/PayLoad");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::PayLoad>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::PayLoad::Request>("request", false);
        component<::rosdemo_v3::PayLoad::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/PositiveSolution");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::PositiveSolution>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::PositiveSolution::Request>("request", false);
        component<::rosdemo_v3::PositiveSolution::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/PowerOn");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::PowerOn>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::PowerOn::Request>("request", false);
        component<::rosdemo_v3::PowerOn::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/RelJointMovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::RelJointMovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::RelJointMovJ::Request>("request", false);
        component<::rosdemo_v3::RelJointMovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/RelMovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::RelMovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::RelMovJ::Request>("request", false);
        component<::rosdemo_v3::RelMovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/RelMovJTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::RelMovJTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::RelMovJTool::Request>("request", false);
        component<::rosdemo_v3::RelMovJTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/RelMovJUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::RelMovJUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::RelMovJUser::Request>("request", false);
        component<::rosdemo_v3::RelMovJUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/RelMovL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::RelMovL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::RelMovL::Request>("request", false);
        component<::rosdemo_v3::RelMovL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/RelMovLTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::RelMovLTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::RelMovLTool::Request>("request", false);
        component<::rosdemo_v3::RelMovLTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/RelMovLUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::RelMovLUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::RelMovLUser::Request>("request", false);
        component<::rosdemo_v3::RelMovLUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/ResetRobot");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::ResetRobot>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::ResetRobot::Request>("request", false);
        component<::rosdemo_v3::ResetRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/RobotMode");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::RobotMode>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::RobotMode::Request>("request", false);
        component<::rosdemo_v3::RobotMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/RunScript");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::RunScript>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::RunScript::Request>("request", false);
        component<::rosdemo_v3::RunScript::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/ServoJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::ServoJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::ServoJ::Request>("request", false);
        component<::rosdemo_v3::ServoJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/ServoP");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::ServoP>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::ServoP::Request>("request", false);
        component<::rosdemo_v3::ServoP::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SetArmOrientation");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SetArmOrientation>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SetArmOrientation::Request>("request", false);
        component<::rosdemo_v3::SetArmOrientation::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SetCoils");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SetCoils>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SetCoils::Request>("request", false);
        component<::rosdemo_v3::SetCoils::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SetCollideDrag");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SetCollideDrag>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SetCollideDrag::Request>("request", false);
        component<::rosdemo_v3::SetCollideDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SetCollisionLevel");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SetCollisionLevel>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SetCollisionLevel::Request>("request", false);
        component<::rosdemo_v3::SetCollisionLevel::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SetHoldRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SetHoldRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SetHoldRegs::Request>("request", false);
        component<::rosdemo_v3::SetHoldRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SetObstacleAvoid");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SetObstacleAvoid>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SetObstacleAvoid::Request>("request", false);
        component<::rosdemo_v3::SetObstacleAvoid::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SetPayload");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SetPayload>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SetPayload::Request>("request", false);
        component<::rosdemo_v3::SetPayload::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SetSafeSkin");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SetSafeSkin>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SetSafeSkin::Request>("request", false);
        component<::rosdemo_v3::SetSafeSkin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SetTerminal485");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SetTerminal485>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SetTerminal485::Request>("request", false);
        component<::rosdemo_v3::SetTerminal485::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SetTerminalKeys");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SetTerminalKeys>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SetTerminalKeys::Request>("request", false);
        component<::rosdemo_v3::SetTerminalKeys::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SpeedFactor");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SpeedFactor>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SpeedFactor::Request>("request", false);
        component<::rosdemo_v3::SpeedFactor::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SpeedJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SpeedJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SpeedJ::Request>("request", false);
        component<::rosdemo_v3::SpeedJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SpeedL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SpeedL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SpeedL::Request>("request", false);
        component<::rosdemo_v3::SpeedL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/StartDrag");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::StartDrag>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::StartDrag::Request>("request", false);
        component<::rosdemo_v3::StartDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/StartFCTrace");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::StartFCTrace>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::StartFCTrace::Request>("request", false);
        component<::rosdemo_v3::StartFCTrace::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/StartPath");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::StartPath>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::StartPath::Request>("request", false);
        component<::rosdemo_v3::StartPath::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/StartTrace");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::StartTrace>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::StartTrace::Request>("request", false);
        component<::rosdemo_v3::StartTrace::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/StopDrag");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::StopDrag>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::StopDrag::Request>("request", false);
        component<::rosdemo_v3::StopDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/StopScript");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::StopScript>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::StopScript::Request>("request", false);
        component<::rosdemo_v3::StopScript::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/StopmoveJog");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::StopmoveJog>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::StopmoveJog::Request>("request", false);
        component<::rosdemo_v3::StopmoveJog::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/Sync");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::Sync>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::Sync::Request>("request", false);
        component<::rosdemo_v3::Sync::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/SyncAll");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::SyncAll>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::SyncAll::Request>("request", false);
        component<::rosdemo_v3::SyncAll::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/TCPSpeed");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::TCPSpeed>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::TCPSpeed::Request>("request", false);
        component<::rosdemo_v3::TCPSpeed::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/TCPSpeedEnd");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::TCPSpeedEnd>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::TCPSpeedEnd::Request>("request", false);
        component<::rosdemo_v3::TCPSpeedEnd::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/Tool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::Tool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::Tool::Request>("request", false);
        component<::rosdemo_v3::Tool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/ToolAI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::ToolAI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::ToolAI::Request>("request", false);
        component<::rosdemo_v3::ToolAI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/ToolDI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::ToolDI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::ToolDI::Request>("request", false);
        component<::rosdemo_v3::ToolDI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/ToolDO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::ToolDO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::ToolDO::Request>("request", false);
        component<::rosdemo_v3::ToolDO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/ToolDOExecute");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::ToolDOExecute>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::ToolDOExecute::Request>("request", false);
        component<::rosdemo_v3::ToolDOExecute::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/User");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::User>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::User::Request>("request", false);
        component<::rosdemo_v3::User::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/Wait");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::Wait>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::Wait::Request>("request", false);
        component<::rosdemo_v3::Wait::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v3/pause");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v3::pause>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v3::pause::Request>("request", false);
        component<::rosdemo_v3::pause::Response>("response", true);
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
