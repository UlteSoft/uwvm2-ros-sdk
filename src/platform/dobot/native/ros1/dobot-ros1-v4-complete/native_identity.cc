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
#include <dobot_v4_bringup/AI.h>
#include <dobot_v4_bringup/AO.h>
#include <dobot_v4_bringup/AOInstant.h>
#include <dobot_v4_bringup/AccJ.h>
#include <dobot_v4_bringup/AccL.h>
#include <dobot_v4_bringup/Arc.h>
#include <dobot_v4_bringup/BrakeControl.h>
#include <dobot_v4_bringup/CP.h>
#include <dobot_v4_bringup/CalcTool.h>
#include <dobot_v4_bringup/CalcUser.h>
#include <dobot_v4_bringup/Circle.h>
#include <dobot_v4_bringup/ClearError.h>
#include <dobot_v4_bringup/Continue.h>
#include <dobot_v4_bringup/DI.h>
#include <dobot_v4_bringup/DIGroup.h>
#include <dobot_v4_bringup/DO.h>
#include <dobot_v4_bringup/DOGroup.h>
#include <dobot_v4_bringup/DOInstant.h>
#include <dobot_v4_bringup/DisableRobot.h>
#include <dobot_v4_bringup/DragSensivity.h>
#include <dobot_v4_bringup/EmergencyStop.h>
#include <dobot_v4_bringup/EnableRobot.h>
#include <dobot_v4_bringup/EnableSafeSkin.h>
#include <dobot_v4_bringup/GetAO.h>
#include <dobot_v4_bringup/GetAngle.h>
#include <dobot_v4_bringup/GetCoils.h>
#include <dobot_v4_bringup/GetCurrentCommandId.h>
#include <dobot_v4_bringup/GetDO.h>
#include <dobot_v4_bringup/GetDOGroup.h>
#include <dobot_v4_bringup/GetErrorID.h>
#include <dobot_v4_bringup/GetHoldRegs.h>
#include <dobot_v4_bringup/GetInBits.h>
#include <dobot_v4_bringup/GetInRegs.h>
#include <dobot_v4_bringup/GetInputBool.h>
#include <dobot_v4_bringup/GetInputFloat.h>
#include <dobot_v4_bringup/GetInputInt.h>
#include <dobot_v4_bringup/GetOutputBool.h>
#include <dobot_v4_bringup/GetOutputFloat.h>
#include <dobot_v4_bringup/GetOutputInt.h>
#include <dobot_v4_bringup/GetPose.h>
#include <dobot_v4_bringup/GetStartPose.h>
#include <dobot_v4_bringup/InverseKin.h>
#include <dobot_v4_bringup/InverseSolution.h>
#include <dobot_v4_bringup/ModbusClose.h>
#include <dobot_v4_bringup/ModbusCreate.h>
#include <dobot_v4_bringup/ModbusRTUCreate.h>
#include <dobot_v4_bringup/MovJ.h>
#include <dobot_v4_bringup/MovJIO.h>
#include <dobot_v4_bringup/MovL.h>
#include <dobot_v4_bringup/MovLIO.h>
#include <dobot_v4_bringup/MoveJog.h>
#include <dobot_v4_bringup/Pause.h>
#include <dobot_v4_bringup/PositiveKin.h>
#include <dobot_v4_bringup/PowerOn.h>
#include <dobot_v4_bringup/RelJointMovJ.h>
#include <dobot_v4_bringup/RelMovJTool.h>
#include <dobot_v4_bringup/RelMovJUser.h>
#include <dobot_v4_bringup/RelMovLTool.h>
#include <dobot_v4_bringup/RelMovLUser.h>
#include <dobot_v4_bringup/RobotMode.h>
#include <dobot_v4_bringup/RobotStatus.h>
#include <dobot_v4_bringup/RunScript.h>
#include <dobot_v4_bringup/ServoJ.h>
#include <dobot_v4_bringup/ServoP.h>
#include <dobot_v4_bringup/SetBackDistance.h>
#include <dobot_v4_bringup/SetCoils.h>
#include <dobot_v4_bringup/SetCollisionLevel.h>
#include <dobot_v4_bringup/SetHoldRegs.h>
#include <dobot_v4_bringup/SetOutputBool.h>
#include <dobot_v4_bringup/SetOutputFloat.h>
#include <dobot_v4_bringup/SetOutputInt.h>
#include <dobot_v4_bringup/SetPayload.h>
#include <dobot_v4_bringup/SetPostCollisionMode.h>
#include <dobot_v4_bringup/SetSafeSkin.h>
#include <dobot_v4_bringup/SetSafeWallEnable.h>
#include <dobot_v4_bringup/SetTool.h>
#include <dobot_v4_bringup/SetTool485.h>
#include <dobot_v4_bringup/SetToolMode.h>
#include <dobot_v4_bringup/SetToolPower.h>
#include <dobot_v4_bringup/SetUser.h>
#include <dobot_v4_bringup/SpeedFactor.h>
#include <dobot_v4_bringup/StartDrag.h>
#include <dobot_v4_bringup/StartPath.h>
#include <dobot_v4_bringup/Stop.h>
#include <dobot_v4_bringup/StopDrag.h>
#include <dobot_v4_bringup/StopMoveJog.h>
#include <dobot_v4_bringup/TcpDashboard.h>
#include <dobot_v4_bringup/Tool.h>
#include <dobot_v4_bringup/ToolAI.h>
#include <dobot_v4_bringup/ToolDI.h>
#include <dobot_v4_bringup/ToolDO.h>
#include <dobot_v4_bringup/ToolDOInstant.h>
#include <dobot_v4_bringup/ToolVectorActual.h>
#include <dobot_v4_bringup/User.h>
#include <dobot_v4_bringup/VelJ.h>
#include <dobot_v4_bringup/VelL.h>
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
        quoted("dobot_v4_bringup/RobotStatus");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::dobot_v4_bringup::RobotStatus>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::RobotStatus>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/ToolVectorActual");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::dobot_v4_bringup::ToolVectorActual>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::ToolVectorActual>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/AI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::AI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::AI::Request>("request", false);
        component<::dobot_v4_bringup::AI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/AO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::AO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::AO::Request>("request", false);
        component<::dobot_v4_bringup::AO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/AOInstant");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::AOInstant>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::AOInstant::Request>("request", false);
        component<::dobot_v4_bringup::AOInstant::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/AccJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::AccJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::AccJ::Request>("request", false);
        component<::dobot_v4_bringup::AccJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/AccL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::AccL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::AccL::Request>("request", false);
        component<::dobot_v4_bringup::AccL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/Arc");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::Arc>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::Arc::Request>("request", false);
        component<::dobot_v4_bringup::Arc::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/BrakeControl");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::BrakeControl>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::BrakeControl::Request>("request", false);
        component<::dobot_v4_bringup::BrakeControl::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/CP");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::CP>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::CP::Request>("request", false);
        component<::dobot_v4_bringup::CP::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/CalcTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::CalcTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::CalcTool::Request>("request", false);
        component<::dobot_v4_bringup::CalcTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/CalcUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::CalcUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::CalcUser::Request>("request", false);
        component<::dobot_v4_bringup::CalcUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/Circle");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::Circle>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::Circle::Request>("request", false);
        component<::dobot_v4_bringup::Circle::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/ClearError");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::ClearError>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::ClearError::Request>("request", false);
        component<::dobot_v4_bringup::ClearError::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/Continue");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::Continue>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::Continue::Request>("request", false);
        component<::dobot_v4_bringup::Continue::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/DI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::DI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::DI::Request>("request", false);
        component<::dobot_v4_bringup::DI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/DIGroup");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::DIGroup>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::DIGroup::Request>("request", false);
        component<::dobot_v4_bringup::DIGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/DO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::DO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::DO::Request>("request", false);
        component<::dobot_v4_bringup::DO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/DOGroup");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::DOGroup>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::DOGroup::Request>("request", false);
        component<::dobot_v4_bringup::DOGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/DOInstant");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::DOInstant>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::DOInstant::Request>("request", false);
        component<::dobot_v4_bringup::DOInstant::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/DisableRobot");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::DisableRobot>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::DisableRobot::Request>("request", false);
        component<::dobot_v4_bringup::DisableRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/DragSensivity");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::DragSensivity>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::DragSensivity::Request>("request", false);
        component<::dobot_v4_bringup::DragSensivity::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/EmergencyStop");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::EmergencyStop>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::EmergencyStop::Request>("request", false);
        component<::dobot_v4_bringup::EmergencyStop::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/EnableRobot");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::EnableRobot>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::EnableRobot::Request>("request", false);
        component<::dobot_v4_bringup::EnableRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/EnableSafeSkin");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::EnableSafeSkin>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::EnableSafeSkin::Request>("request", false);
        component<::dobot_v4_bringup::EnableSafeSkin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetAO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetAO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetAO::Request>("request", false);
        component<::dobot_v4_bringup::GetAO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetAngle");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetAngle>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetAngle::Request>("request", false);
        component<::dobot_v4_bringup::GetAngle::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetCoils");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetCoils>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetCoils::Request>("request", false);
        component<::dobot_v4_bringup::GetCoils::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetCurrentCommandId");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetCurrentCommandId>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetCurrentCommandId::Request>("request", false);
        component<::dobot_v4_bringup::GetCurrentCommandId::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetDO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetDO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetDO::Request>("request", false);
        component<::dobot_v4_bringup::GetDO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetDOGroup");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetDOGroup>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetDOGroup::Request>("request", false);
        component<::dobot_v4_bringup::GetDOGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetErrorID");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetErrorID>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetErrorID::Request>("request", false);
        component<::dobot_v4_bringup::GetErrorID::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetHoldRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetHoldRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetHoldRegs::Request>("request", false);
        component<::dobot_v4_bringup::GetHoldRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetInBits");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetInBits>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetInBits::Request>("request", false);
        component<::dobot_v4_bringup::GetInBits::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetInRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetInRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetInRegs::Request>("request", false);
        component<::dobot_v4_bringup::GetInRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetInputBool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetInputBool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetInputBool::Request>("request", false);
        component<::dobot_v4_bringup::GetInputBool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetInputFloat");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetInputFloat>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetInputFloat::Request>("request", false);
        component<::dobot_v4_bringup::GetInputFloat::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetInputInt");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetInputInt>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetInputInt::Request>("request", false);
        component<::dobot_v4_bringup::GetInputInt::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetOutputBool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetOutputBool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetOutputBool::Request>("request", false);
        component<::dobot_v4_bringup::GetOutputBool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetOutputFloat");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetOutputFloat>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetOutputFloat::Request>("request", false);
        component<::dobot_v4_bringup::GetOutputFloat::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetOutputInt");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetOutputInt>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetOutputInt::Request>("request", false);
        component<::dobot_v4_bringup::GetOutputInt::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetPose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetPose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetPose::Request>("request", false);
        component<::dobot_v4_bringup::GetPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/GetStartPose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::GetStartPose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::GetStartPose::Request>("request", false);
        component<::dobot_v4_bringup::GetStartPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/InverseKin");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::InverseKin>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::InverseKin::Request>("request", false);
        component<::dobot_v4_bringup::InverseKin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/InverseSolution");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::InverseSolution>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::InverseSolution::Request>("request", false);
        component<::dobot_v4_bringup::InverseSolution::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/ModbusClose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::ModbusClose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::ModbusClose::Request>("request", false);
        component<::dobot_v4_bringup::ModbusClose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/ModbusCreate");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::ModbusCreate>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::ModbusCreate::Request>("request", false);
        component<::dobot_v4_bringup::ModbusCreate::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/ModbusRTUCreate");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::ModbusRTUCreate>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::ModbusRTUCreate::Request>("request", false);
        component<::dobot_v4_bringup::ModbusRTUCreate::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/MovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::MovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::MovJ::Request>("request", false);
        component<::dobot_v4_bringup::MovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/MovJIO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::MovJIO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::MovJIO::Request>("request", false);
        component<::dobot_v4_bringup::MovJIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/MovL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::MovL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::MovL::Request>("request", false);
        component<::dobot_v4_bringup::MovL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/MovLIO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::MovLIO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::MovLIO::Request>("request", false);
        component<::dobot_v4_bringup::MovLIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/MoveJog");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::MoveJog>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::MoveJog::Request>("request", false);
        component<::dobot_v4_bringup::MoveJog::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/Pause");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::Pause>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::Pause::Request>("request", false);
        component<::dobot_v4_bringup::Pause::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/PositiveKin");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::PositiveKin>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::PositiveKin::Request>("request", false);
        component<::dobot_v4_bringup::PositiveKin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/PowerOn");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::PowerOn>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::PowerOn::Request>("request", false);
        component<::dobot_v4_bringup::PowerOn::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/RelJointMovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::RelJointMovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::RelJointMovJ::Request>("request", false);
        component<::dobot_v4_bringup::RelJointMovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/RelMovJTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::RelMovJTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::RelMovJTool::Request>("request", false);
        component<::dobot_v4_bringup::RelMovJTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/RelMovJUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::RelMovJUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::RelMovJUser::Request>("request", false);
        component<::dobot_v4_bringup::RelMovJUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/RelMovLTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::RelMovLTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::RelMovLTool::Request>("request", false);
        component<::dobot_v4_bringup::RelMovLTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/RelMovLUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::RelMovLUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::RelMovLUser::Request>("request", false);
        component<::dobot_v4_bringup::RelMovLUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/RobotMode");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::RobotMode>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::RobotMode::Request>("request", false);
        component<::dobot_v4_bringup::RobotMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/RunScript");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::RunScript>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::RunScript::Request>("request", false);
        component<::dobot_v4_bringup::RunScript::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/ServoJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::ServoJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::ServoJ::Request>("request", false);
        component<::dobot_v4_bringup::ServoJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/ServoP");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::ServoP>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::ServoP::Request>("request", false);
        component<::dobot_v4_bringup::ServoP::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetBackDistance");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetBackDistance>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetBackDistance::Request>("request", false);
        component<::dobot_v4_bringup::SetBackDistance::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetCoils");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetCoils>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetCoils::Request>("request", false);
        component<::dobot_v4_bringup::SetCoils::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetCollisionLevel");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetCollisionLevel>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetCollisionLevel::Request>("request", false);
        component<::dobot_v4_bringup::SetCollisionLevel::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetHoldRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetHoldRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetHoldRegs::Request>("request", false);
        component<::dobot_v4_bringup::SetHoldRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetOutputBool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetOutputBool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetOutputBool::Request>("request", false);
        component<::dobot_v4_bringup::SetOutputBool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetOutputFloat");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetOutputFloat>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetOutputFloat::Request>("request", false);
        component<::dobot_v4_bringup::SetOutputFloat::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetOutputInt");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetOutputInt>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetOutputInt::Request>("request", false);
        component<::dobot_v4_bringup::SetOutputInt::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetPayload");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetPayload>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetPayload::Request>("request", false);
        component<::dobot_v4_bringup::SetPayload::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetPostCollisionMode");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetPostCollisionMode>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetPostCollisionMode::Request>("request", false);
        component<::dobot_v4_bringup::SetPostCollisionMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetSafeSkin");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetSafeSkin>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetSafeSkin::Request>("request", false);
        component<::dobot_v4_bringup::SetSafeSkin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetSafeWallEnable");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetSafeWallEnable>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetSafeWallEnable::Request>("request", false);
        component<::dobot_v4_bringup::SetSafeWallEnable::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetTool::Request>("request", false);
        component<::dobot_v4_bringup::SetTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetTool485");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetTool485>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetTool485::Request>("request", false);
        component<::dobot_v4_bringup::SetTool485::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetToolMode");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetToolMode>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetToolMode::Request>("request", false);
        component<::dobot_v4_bringup::SetToolMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetToolPower");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetToolPower>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetToolPower::Request>("request", false);
        component<::dobot_v4_bringup::SetToolPower::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SetUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SetUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SetUser::Request>("request", false);
        component<::dobot_v4_bringup::SetUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/SpeedFactor");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::SpeedFactor>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::SpeedFactor::Request>("request", false);
        component<::dobot_v4_bringup::SpeedFactor::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/StartDrag");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::StartDrag>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::StartDrag::Request>("request", false);
        component<::dobot_v4_bringup::StartDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/StartPath");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::StartPath>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::StartPath::Request>("request", false);
        component<::dobot_v4_bringup::StartPath::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/Stop");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::Stop>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::Stop::Request>("request", false);
        component<::dobot_v4_bringup::Stop::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/StopDrag");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::StopDrag>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::StopDrag::Request>("request", false);
        component<::dobot_v4_bringup::StopDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/StopMoveJog");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::StopMoveJog>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::StopMoveJog::Request>("request", false);
        component<::dobot_v4_bringup::StopMoveJog::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/TcpDashboard");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::TcpDashboard>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::TcpDashboard::Request>("request", false);
        component<::dobot_v4_bringup::TcpDashboard::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/Tool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::Tool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::Tool::Request>("request", false);
        component<::dobot_v4_bringup::Tool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/ToolAI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::ToolAI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::ToolAI::Request>("request", false);
        component<::dobot_v4_bringup::ToolAI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/ToolDI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::ToolDI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::ToolDI::Request>("request", false);
        component<::dobot_v4_bringup::ToolDI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/ToolDO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::ToolDO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::ToolDO::Request>("request", false);
        component<::dobot_v4_bringup::ToolDO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/ToolDOInstant");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::ToolDOInstant>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::ToolDOInstant::Request>("request", false);
        component<::dobot_v4_bringup::ToolDOInstant::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/User");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::User>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::User::Request>("request", false);
        component<::dobot_v4_bringup::User::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/VelJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::VelJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::VelJ::Request>("request", false);
        component<::dobot_v4_bringup::VelJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_v4_bringup/VelL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::dobot_v4_bringup::VelL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_v4_bringup::VelL::Request>("request", false);
        component<::dobot_v4_bringup::VelL::Response>("response", true);
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
