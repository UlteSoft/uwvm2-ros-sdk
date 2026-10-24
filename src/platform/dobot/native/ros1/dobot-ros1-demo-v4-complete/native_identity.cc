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
#include <rosdemo_v4/AI.h>
#include <rosdemo_v4/AO.h>
#include <rosdemo_v4/AOInstant.h>
#include <rosdemo_v4/AccJ.h>
#include <rosdemo_v4/AccL.h>
#include <rosdemo_v4/Arc.h>
#include <rosdemo_v4/BrakeControl.h>
#include <rosdemo_v4/CP.h>
#include <rosdemo_v4/CalcTool.h>
#include <rosdemo_v4/CalcUser.h>
#include <rosdemo_v4/Circle.h>
#include <rosdemo_v4/ClearError.h>
#include <rosdemo_v4/Continue.h>
#include <rosdemo_v4/DI.h>
#include <rosdemo_v4/DIGroup.h>
#include <rosdemo_v4/DO.h>
#include <rosdemo_v4/DOGroup.h>
#include <rosdemo_v4/DOInstant.h>
#include <rosdemo_v4/DisableRobot.h>
#include <rosdemo_v4/DragSensivity.h>
#include <rosdemo_v4/EmergencyStop.h>
#include <rosdemo_v4/EnableRobot.h>
#include <rosdemo_v4/EnableSafeSkin.h>
#include <rosdemo_v4/GetAO.h>
#include <rosdemo_v4/GetAngle.h>
#include <rosdemo_v4/GetCoils.h>
#include <rosdemo_v4/GetCurrentCommandId.h>
#include <rosdemo_v4/GetDO.h>
#include <rosdemo_v4/GetDOGroup.h>
#include <rosdemo_v4/GetErrorID.h>
#include <rosdemo_v4/GetHoldRegs.h>
#include <rosdemo_v4/GetInBits.h>
#include <rosdemo_v4/GetInRegs.h>
#include <rosdemo_v4/GetInputBool.h>
#include <rosdemo_v4/GetInputFloat.h>
#include <rosdemo_v4/GetInputInt.h>
#include <rosdemo_v4/GetOutputBool.h>
#include <rosdemo_v4/GetOutputFloat.h>
#include <rosdemo_v4/GetOutputInt.h>
#include <rosdemo_v4/GetPose.h>
#include <rosdemo_v4/GetStartPose.h>
#include <rosdemo_v4/InverseKin.h>
#include <rosdemo_v4/InverseSolution.h>
#include <rosdemo_v4/ModbusClose.h>
#include <rosdemo_v4/ModbusCreate.h>
#include <rosdemo_v4/ModbusRTUCreate.h>
#include <rosdemo_v4/MovJ.h>
#include <rosdemo_v4/MovJIO.h>
#include <rosdemo_v4/MovL.h>
#include <rosdemo_v4/MovLIO.h>
#include <rosdemo_v4/MoveJog.h>
#include <rosdemo_v4/Pause.h>
#include <rosdemo_v4/PositiveKin.h>
#include <rosdemo_v4/PowerOn.h>
#include <rosdemo_v4/RelJointMovJ.h>
#include <rosdemo_v4/RelMovJTool.h>
#include <rosdemo_v4/RelMovJUser.h>
#include <rosdemo_v4/RelMovLTool.h>
#include <rosdemo_v4/RelMovLUser.h>
#include <rosdemo_v4/RobotMode.h>
#include <rosdemo_v4/RunScript.h>
#include <rosdemo_v4/ServoJ.h>
#include <rosdemo_v4/ServoP.h>
#include <rosdemo_v4/SetBackDistance.h>
#include <rosdemo_v4/SetCoils.h>
#include <rosdemo_v4/SetCollisionLevel.h>
#include <rosdemo_v4/SetHoldRegs.h>
#include <rosdemo_v4/SetOutputBool.h>
#include <rosdemo_v4/SetOutputFloat.h>
#include <rosdemo_v4/SetOutputInt.h>
#include <rosdemo_v4/SetPayload.h>
#include <rosdemo_v4/SetPostCollisionMode.h>
#include <rosdemo_v4/SetSafeSkin.h>
#include <rosdemo_v4/SetSafeWallEnable.h>
#include <rosdemo_v4/SetTool.h>
#include <rosdemo_v4/SetTool485.h>
#include <rosdemo_v4/SetToolMode.h>
#include <rosdemo_v4/SetToolPower.h>
#include <rosdemo_v4/SetUser.h>
#include <rosdemo_v4/SpeedFactor.h>
#include <rosdemo_v4/StartDrag.h>
#include <rosdemo_v4/StartPath.h>
#include <rosdemo_v4/Stop.h>
#include <rosdemo_v4/StopDrag.h>
#include <rosdemo_v4/StopMoveJog.h>
#include <rosdemo_v4/TcpDashboard.h>
#include <rosdemo_v4/Tool.h>
#include <rosdemo_v4/ToolAI.h>
#include <rosdemo_v4/ToolDI.h>
#include <rosdemo_v4/ToolDO.h>
#include <rosdemo_v4/ToolDOInstant.h>
#include <rosdemo_v4/User.h>
#include <rosdemo_v4/VelJ.h>
#include <rosdemo_v4/VelL.h>
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
        quoted("rosdemo_v4/AI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::AI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::AI::Request>("request", false);
        component<::rosdemo_v4::AI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/AO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::AO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::AO::Request>("request", false);
        component<::rosdemo_v4::AO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/AOInstant");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::AOInstant>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::AOInstant::Request>("request", false);
        component<::rosdemo_v4::AOInstant::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/AccJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::AccJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::AccJ::Request>("request", false);
        component<::rosdemo_v4::AccJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/AccL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::AccL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::AccL::Request>("request", false);
        component<::rosdemo_v4::AccL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/Arc");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::Arc>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::Arc::Request>("request", false);
        component<::rosdemo_v4::Arc::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/BrakeControl");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::BrakeControl>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::BrakeControl::Request>("request", false);
        component<::rosdemo_v4::BrakeControl::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/CP");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::CP>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::CP::Request>("request", false);
        component<::rosdemo_v4::CP::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/CalcTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::CalcTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::CalcTool::Request>("request", false);
        component<::rosdemo_v4::CalcTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/CalcUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::CalcUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::CalcUser::Request>("request", false);
        component<::rosdemo_v4::CalcUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/Circle");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::Circle>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::Circle::Request>("request", false);
        component<::rosdemo_v4::Circle::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/ClearError");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::ClearError>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::ClearError::Request>("request", false);
        component<::rosdemo_v4::ClearError::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/Continue");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::Continue>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::Continue::Request>("request", false);
        component<::rosdemo_v4::Continue::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/DI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::DI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::DI::Request>("request", false);
        component<::rosdemo_v4::DI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/DIGroup");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::DIGroup>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::DIGroup::Request>("request", false);
        component<::rosdemo_v4::DIGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/DO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::DO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::DO::Request>("request", false);
        component<::rosdemo_v4::DO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/DOGroup");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::DOGroup>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::DOGroup::Request>("request", false);
        component<::rosdemo_v4::DOGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/DOInstant");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::DOInstant>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::DOInstant::Request>("request", false);
        component<::rosdemo_v4::DOInstant::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/DisableRobot");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::DisableRobot>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::DisableRobot::Request>("request", false);
        component<::rosdemo_v4::DisableRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/DragSensivity");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::DragSensivity>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::DragSensivity::Request>("request", false);
        component<::rosdemo_v4::DragSensivity::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/EmergencyStop");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::EmergencyStop>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::EmergencyStop::Request>("request", false);
        component<::rosdemo_v4::EmergencyStop::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/EnableRobot");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::EnableRobot>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::EnableRobot::Request>("request", false);
        component<::rosdemo_v4::EnableRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/EnableSafeSkin");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::EnableSafeSkin>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::EnableSafeSkin::Request>("request", false);
        component<::rosdemo_v4::EnableSafeSkin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetAO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetAO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetAO::Request>("request", false);
        component<::rosdemo_v4::GetAO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetAngle");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetAngle>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetAngle::Request>("request", false);
        component<::rosdemo_v4::GetAngle::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetCoils");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetCoils>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetCoils::Request>("request", false);
        component<::rosdemo_v4::GetCoils::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetCurrentCommandId");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetCurrentCommandId>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetCurrentCommandId::Request>("request", false);
        component<::rosdemo_v4::GetCurrentCommandId::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetDO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetDO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetDO::Request>("request", false);
        component<::rosdemo_v4::GetDO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetDOGroup");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetDOGroup>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetDOGroup::Request>("request", false);
        component<::rosdemo_v4::GetDOGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetErrorID");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetErrorID>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetErrorID::Request>("request", false);
        component<::rosdemo_v4::GetErrorID::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetHoldRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetHoldRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetHoldRegs::Request>("request", false);
        component<::rosdemo_v4::GetHoldRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetInBits");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetInBits>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetInBits::Request>("request", false);
        component<::rosdemo_v4::GetInBits::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetInRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetInRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetInRegs::Request>("request", false);
        component<::rosdemo_v4::GetInRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetInputBool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetInputBool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetInputBool::Request>("request", false);
        component<::rosdemo_v4::GetInputBool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetInputFloat");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetInputFloat>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetInputFloat::Request>("request", false);
        component<::rosdemo_v4::GetInputFloat::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetInputInt");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetInputInt>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetInputInt::Request>("request", false);
        component<::rosdemo_v4::GetInputInt::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetOutputBool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetOutputBool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetOutputBool::Request>("request", false);
        component<::rosdemo_v4::GetOutputBool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetOutputFloat");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetOutputFloat>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetOutputFloat::Request>("request", false);
        component<::rosdemo_v4::GetOutputFloat::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetOutputInt");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetOutputInt>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetOutputInt::Request>("request", false);
        component<::rosdemo_v4::GetOutputInt::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetPose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetPose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetPose::Request>("request", false);
        component<::rosdemo_v4::GetPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/GetStartPose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::GetStartPose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::GetStartPose::Request>("request", false);
        component<::rosdemo_v4::GetStartPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/InverseKin");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::InverseKin>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::InverseKin::Request>("request", false);
        component<::rosdemo_v4::InverseKin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/InverseSolution");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::InverseSolution>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::InverseSolution::Request>("request", false);
        component<::rosdemo_v4::InverseSolution::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/ModbusClose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::ModbusClose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::ModbusClose::Request>("request", false);
        component<::rosdemo_v4::ModbusClose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/ModbusCreate");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::ModbusCreate>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::ModbusCreate::Request>("request", false);
        component<::rosdemo_v4::ModbusCreate::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/ModbusRTUCreate");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::ModbusRTUCreate>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::ModbusRTUCreate::Request>("request", false);
        component<::rosdemo_v4::ModbusRTUCreate::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/MovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::MovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::MovJ::Request>("request", false);
        component<::rosdemo_v4::MovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/MovJIO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::MovJIO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::MovJIO::Request>("request", false);
        component<::rosdemo_v4::MovJIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/MovL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::MovL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::MovL::Request>("request", false);
        component<::rosdemo_v4::MovL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/MovLIO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::MovLIO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::MovLIO::Request>("request", false);
        component<::rosdemo_v4::MovLIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/MoveJog");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::MoveJog>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::MoveJog::Request>("request", false);
        component<::rosdemo_v4::MoveJog::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/Pause");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::Pause>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::Pause::Request>("request", false);
        component<::rosdemo_v4::Pause::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/PositiveKin");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::PositiveKin>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::PositiveKin::Request>("request", false);
        component<::rosdemo_v4::PositiveKin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/PowerOn");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::PowerOn>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::PowerOn::Request>("request", false);
        component<::rosdemo_v4::PowerOn::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/RelJointMovJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::RelJointMovJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::RelJointMovJ::Request>("request", false);
        component<::rosdemo_v4::RelJointMovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/RelMovJTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::RelMovJTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::RelMovJTool::Request>("request", false);
        component<::rosdemo_v4::RelMovJTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/RelMovJUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::RelMovJUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::RelMovJUser::Request>("request", false);
        component<::rosdemo_v4::RelMovJUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/RelMovLTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::RelMovLTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::RelMovLTool::Request>("request", false);
        component<::rosdemo_v4::RelMovLTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/RelMovLUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::RelMovLUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::RelMovLUser::Request>("request", false);
        component<::rosdemo_v4::RelMovLUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/RobotMode");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::RobotMode>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::RobotMode::Request>("request", false);
        component<::rosdemo_v4::RobotMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/RunScript");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::RunScript>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::RunScript::Request>("request", false);
        component<::rosdemo_v4::RunScript::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/ServoJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::ServoJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::ServoJ::Request>("request", false);
        component<::rosdemo_v4::ServoJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/ServoP");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::ServoP>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::ServoP::Request>("request", false);
        component<::rosdemo_v4::ServoP::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetBackDistance");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetBackDistance>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetBackDistance::Request>("request", false);
        component<::rosdemo_v4::SetBackDistance::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetCoils");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetCoils>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetCoils::Request>("request", false);
        component<::rosdemo_v4::SetCoils::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetCollisionLevel");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetCollisionLevel>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetCollisionLevel::Request>("request", false);
        component<::rosdemo_v4::SetCollisionLevel::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetHoldRegs");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetHoldRegs>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetHoldRegs::Request>("request", false);
        component<::rosdemo_v4::SetHoldRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetOutputBool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetOutputBool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetOutputBool::Request>("request", false);
        component<::rosdemo_v4::SetOutputBool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetOutputFloat");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetOutputFloat>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetOutputFloat::Request>("request", false);
        component<::rosdemo_v4::SetOutputFloat::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetOutputInt");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetOutputInt>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetOutputInt::Request>("request", false);
        component<::rosdemo_v4::SetOutputInt::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetPayload");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetPayload>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetPayload::Request>("request", false);
        component<::rosdemo_v4::SetPayload::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetPostCollisionMode");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetPostCollisionMode>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetPostCollisionMode::Request>("request", false);
        component<::rosdemo_v4::SetPostCollisionMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetSafeSkin");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetSafeSkin>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetSafeSkin::Request>("request", false);
        component<::rosdemo_v4::SetSafeSkin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetSafeWallEnable");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetSafeWallEnable>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetSafeWallEnable::Request>("request", false);
        component<::rosdemo_v4::SetSafeWallEnable::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetTool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetTool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetTool::Request>("request", false);
        component<::rosdemo_v4::SetTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetTool485");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetTool485>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetTool485::Request>("request", false);
        component<::rosdemo_v4::SetTool485::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetToolMode");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetToolMode>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetToolMode::Request>("request", false);
        component<::rosdemo_v4::SetToolMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetToolPower");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetToolPower>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetToolPower::Request>("request", false);
        component<::rosdemo_v4::SetToolPower::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SetUser");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SetUser>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SetUser::Request>("request", false);
        component<::rosdemo_v4::SetUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/SpeedFactor");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::SpeedFactor>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::SpeedFactor::Request>("request", false);
        component<::rosdemo_v4::SpeedFactor::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/StartDrag");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::StartDrag>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::StartDrag::Request>("request", false);
        component<::rosdemo_v4::StartDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/StartPath");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::StartPath>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::StartPath::Request>("request", false);
        component<::rosdemo_v4::StartPath::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/Stop");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::Stop>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::Stop::Request>("request", false);
        component<::rosdemo_v4::Stop::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/StopDrag");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::StopDrag>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::StopDrag::Request>("request", false);
        component<::rosdemo_v4::StopDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/StopMoveJog");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::StopMoveJog>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::StopMoveJog::Request>("request", false);
        component<::rosdemo_v4::StopMoveJog::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/TcpDashboard");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::TcpDashboard>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::TcpDashboard::Request>("request", false);
        component<::rosdemo_v4::TcpDashboard::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/Tool");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::Tool>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::Tool::Request>("request", false);
        component<::rosdemo_v4::Tool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/ToolAI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::ToolAI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::ToolAI::Request>("request", false);
        component<::rosdemo_v4::ToolAI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/ToolDI");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::ToolDI>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::ToolDI::Request>("request", false);
        component<::rosdemo_v4::ToolDI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/ToolDO");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::ToolDO>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::ToolDO::Request>("request", false);
        component<::rosdemo_v4::ToolDO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/ToolDOInstant");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::ToolDOInstant>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::ToolDOInstant::Request>("request", false);
        component<::rosdemo_v4::ToolDOInstant::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/User");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::User>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::User::Request>("request", false);
        component<::rosdemo_v4::User::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/VelJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::VelJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::VelJ::Request>("request", false);
        component<::rosdemo_v4::VelJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rosdemo_v4/VelL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::service_traits::MD5Sum<::rosdemo_v4::VelL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rosdemo_v4::VelL::Request>("request", false);
        component<::rosdemo_v4::VelL::Response>("response", true);
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
