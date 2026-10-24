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
#if UWVM_CUSTOM_NATIVE_ROS_VERSION != 2
# error "Select the exact source-reviewed ROS major"
#endif
#include <builtin_interfaces/msg/time.hpp>
#include <geometry_msgs/msg/point.hpp>
#include <geometry_msgs/msg/pose.hpp>
#include <geometry_msgs/msg/quaternion.hpp>
#include <std_msgs/msg/header.hpp>
#include <xarm_msgs/msg/cio_state.hpp>
#include <xarm_msgs/msg/io_state.hpp>
#include <xarm_msgs/msg/move_velocity.hpp>
#include <xarm_msgs/msg/robot_msg.hpp>
#include <xarm_msgs/srv/bio_gripper_ctrl.hpp>
#include <xarm_msgs/srv/bio_gripper_enable.hpp>
#include <xarm_msgs/srv/call.hpp>
#include <xarm_msgs/srv/ft_admittance_params.hpp>
#include <xarm_msgs/srv/ft_cali_load.hpp>
#include <xarm_msgs/srv/ft_force_config.hpp>
#include <xarm_msgs/srv/ft_force_params.hpp>
#include <xarm_msgs/srv/ft_force_pid.hpp>
#include <xarm_msgs/srv/ft_impedance.hpp>
#include <xarm_msgs/srv/get_analog_io.hpp>
#include <xarm_msgs/srv/get_digital_io.hpp>
#include <xarm_msgs/srv/get_float32.hpp>
#include <xarm_msgs/srv/get_float32_list.hpp>
#include <xarm_msgs/srv/get_int16.hpp>
#include <xarm_msgs/srv/get_int16_list.hpp>
#include <xarm_msgs/srv/get_int32.hpp>
#include <xarm_msgs/srv/get_int32_by_type.hpp>
#include <xarm_msgs/srv/get_set_modbus_data.hpp>
#include <xarm_msgs/srv/gripper_move.hpp>
#include <xarm_msgs/srv/iden_load.hpp>
#include <xarm_msgs/srv/linear_motor_back_origin.hpp>
#include <xarm_msgs/srv/linear_motor_set_pos.hpp>
#include <xarm_msgs/srv/linear_track_back_origin.hpp>
#include <xarm_msgs/srv/linear_track_set_pos.hpp>
#include <xarm_msgs/srv/move_cartesian.hpp>
#include <xarm_msgs/srv/move_circle.hpp>
#include <xarm_msgs/srv/move_home.hpp>
#include <xarm_msgs/srv/move_joint.hpp>
#include <xarm_msgs/srv/move_velocity.hpp>
#include <xarm_msgs/srv/plan_exec.hpp>
#include <xarm_msgs/srv/plan_joint.hpp>
#include <xarm_msgs/srv/plan_pose.hpp>
#include <xarm_msgs/srv/plan_single_straight.hpp>
#include <xarm_msgs/srv/robotiq_activate.hpp>
#include <xarm_msgs/srv/robotiq_get_status.hpp>
#include <xarm_msgs/srv/robotiq_move.hpp>
#include <xarm_msgs/srv/robotiq_reset.hpp>
#include <xarm_msgs/srv/set_analog_io.hpp>
#include <xarm_msgs/srv/set_digital_io.hpp>
#include <xarm_msgs/srv/set_float32.hpp>
#include <xarm_msgs/srv/set_float32_list.hpp>
#include <xarm_msgs/srv/set_int16.hpp>
#include <xarm_msgs/srv/set_int16_by_id.hpp>
#include <xarm_msgs/srv/set_int16_list.hpp>
#include <xarm_msgs/srv/set_int32.hpp>
#include <xarm_msgs/srv/set_int32_by_type.hpp>
#include <xarm_msgs/srv/set_modbus_timeout.hpp>
#include <xarm_msgs/srv/set_tcp_load.hpp>
#include <xarm_msgs/srv/traj_ctrl.hpp>
#include <xarm_msgs/srv/traj_play.hpp>
#include <xarm_msgs/srv/vacuum_gripper_ctrl.hpp>
#include <rosidl_typesupport_cpp/message_type_support.hpp>
#include <rosidl_typesupport_cpp/service_type_support.hpp>
#include <rosidl_typesupport_cpp/action_type_support.hpp>
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

namespace
{
    template <class S>
    void industrial_warm(S const* s)
    {
        if(!s || !s->get_type_hash_func || !s->get_type_description_func)
            throw std::runtime_error{"modern native metadata unavailable"};
        auto h = s->get_type_hash_func(s);
        auto d = s->get_type_description_func(s);
        if(!h || h->version != 1 || !d)
            throw std::runtime_error{"native metadata warm failed"};
    }
}  // namespace

int main()
{
    try
    {
        if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            throw std::runtime_error{"native source constants differ"};
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::builtin_interfaces::msg::Time>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::builtin_interfaces::msg::Time>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Point>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Point>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Pose>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Pose>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Quaternion>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Quaternion>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::std_msgs::msg::Header>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::std_msgs::msg::Header>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::CIOState>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::CIOState>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::IOState>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::IOState>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::MoveVelocity>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::MoveVelocity>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::RobotMsg>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::RobotMsg>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::BioGripperCtrl>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::BioGripperCtrl::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::BioGripperCtrl::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::BioGripperEnable>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::BioGripperEnable::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::BioGripperEnable::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::Call>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::Call::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::Call::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtAdmittanceParams>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtAdmittanceParams::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtAdmittanceParams::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtCaliLoad>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtCaliLoad::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtCaliLoad::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtForceConfig>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtForceConfig::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtForceConfig::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtForceParams>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtForceParams::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtForceParams::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtForcePid>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtForcePid::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtForcePid::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtImpedance>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtImpedance::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::FtImpedance::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetAnalogIO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetAnalogIO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetAnalogIO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetDigitalIO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetDigitalIO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetDigitalIO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetFloat32>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetFloat32::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetFloat32::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetFloat32List>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetFloat32List::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetFloat32List::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetInt16>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetInt16::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetInt16::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetInt16List>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetInt16List::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetInt16List::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetInt32>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetInt32::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetInt32::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetInt32ByType>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetInt32ByType::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetInt32ByType::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetSetModbusData>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetSetModbusData::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GetSetModbusData::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GripperMove>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GripperMove::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::GripperMove::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::IdenLoad>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::IdenLoad::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::IdenLoad::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::LinearMotorBackOrigin>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::LinearMotorBackOrigin::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::LinearMotorBackOrigin::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::LinearMotorSetPos>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::LinearMotorSetPos::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::LinearMotorSetPos::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::LinearTrackBackOrigin>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::LinearTrackBackOrigin::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::LinearTrackBackOrigin::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::LinearTrackSetPos>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::LinearTrackSetPos::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::LinearTrackSetPos::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::MoveCartesian>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::MoveCartesian::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::MoveCartesian::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::MoveCircle>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::MoveCircle::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::MoveCircle::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::MoveHome>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::MoveHome::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::MoveHome::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::MoveJoint>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::MoveJoint::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::MoveJoint::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::MoveVelocity>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::MoveVelocity::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::MoveVelocity::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::PlanExec>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::PlanExec::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::PlanExec::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::PlanJoint>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::PlanJoint::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::PlanJoint::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::PlanPose>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::PlanPose::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::PlanPose::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::PlanSingleStraight>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::PlanSingleStraight::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::PlanSingleStraight::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::RobotiqActivate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::RobotiqActivate::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::RobotiqActivate::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::RobotiqGetStatus>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::RobotiqGetStatus::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::RobotiqGetStatus::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::RobotiqMove>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::RobotiqMove::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::RobotiqMove::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::RobotiqReset>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::RobotiqReset::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::RobotiqReset::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetAnalogIO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetAnalogIO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetAnalogIO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetDigitalIO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetDigitalIO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetDigitalIO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetFloat32>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetFloat32::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetFloat32::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetFloat32List>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetFloat32List::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetFloat32List::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetInt16>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetInt16::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetInt16::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetInt16ById>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetInt16ById::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetInt16ById::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetInt16List>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetInt16List::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetInt16List::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetInt32>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetInt32::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetInt32::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetInt32ByType>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetInt32ByType::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetInt32ByType::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetModbusTimeout>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetModbusTimeout::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetModbusTimeout::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetTcpLoad>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetTcpLoad::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::SetTcpLoad::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::TrajCtrl>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::TrajCtrl::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::TrajCtrl::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::TrajPlay>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::TrajPlay::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::TrajPlay::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::VacuumGripperCtrl>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::VacuumGripperCtrl::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::srv::VacuumGripperCtrl::Response>());
        if(::raise(SIGSTOP) != 0)
            throw std::runtime_error{"owned mapping stop failed"};
        bounded_native_io::gate('I');
        bounded_native_io::print(
            output(),
            "{\"format\":\"uwvm-ros-industrial-native-v1\",\"ros_version\":",
            UWVM_CUSTOM_NATIVE_ROS_VERSION,
            ",\"source_profile\":\"uwvm-ros-vendor-complete-bounded-v1\",\"constant_schema_sha256\":\"ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356\",\"types\":{");
        quoted("builtin_interfaces/msg/Time");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::builtin_interfaces::msg::Time>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::builtin_interfaces::msg::Time>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("geometry_msgs/msg/Point");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Point>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::geometry_msgs::msg::Point>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("geometry_msgs/msg/Pose");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Pose>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::geometry_msgs::msg::Pose>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("geometry_msgs/msg/Quaternion");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Quaternion>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::geometry_msgs::msg::Quaternion>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("std_msgs/msg/Header");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::std_msgs::msg::Header>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::std_msgs::msg::Header>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/msg/CIOState");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::CIOState>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::msg::CIOState>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/msg/IOState");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::IOState>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::msg::IOState>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/msg/MoveVelocity");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::MoveVelocity>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::msg::MoveVelocity>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/msg/RobotMsg");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::xarm_msgs::msg::RobotMsg>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::msg::RobotMsg>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/BioGripperCtrl");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::BioGripperCtrl>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::BioGripperCtrl::Request>("request", false);
        component<::xarm_msgs::srv::BioGripperCtrl::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/BioGripperEnable");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::BioGripperEnable>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::BioGripperEnable::Request>("request", false);
        component<::xarm_msgs::srv::BioGripperEnable::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/Call");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::Call>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::Call::Request>("request", false);
        component<::xarm_msgs::srv::Call::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/FtAdmittanceParams");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtAdmittanceParams>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::FtAdmittanceParams::Request>("request", false);
        component<::xarm_msgs::srv::FtAdmittanceParams::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/FtCaliLoad");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtCaliLoad>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::FtCaliLoad::Request>("request", false);
        component<::xarm_msgs::srv::FtCaliLoad::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/FtForceConfig");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtForceConfig>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::FtForceConfig::Request>("request", false);
        component<::xarm_msgs::srv::FtForceConfig::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/FtForceParams");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtForceParams>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::FtForceParams::Request>("request", false);
        component<::xarm_msgs::srv::FtForceParams::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/FtForcePid");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtForcePid>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::FtForcePid::Request>("request", false);
        component<::xarm_msgs::srv::FtForcePid::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/FtImpedance");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::FtImpedance>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::FtImpedance::Request>("request", false);
        component<::xarm_msgs::srv::FtImpedance::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/GetAnalogIO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetAnalogIO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::GetAnalogIO::Request>("request", false);
        component<::xarm_msgs::srv::GetAnalogIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/GetDigitalIO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetDigitalIO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::GetDigitalIO::Request>("request", false);
        component<::xarm_msgs::srv::GetDigitalIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/GetFloat32");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetFloat32>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::GetFloat32::Request>("request", false);
        component<::xarm_msgs::srv::GetFloat32::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/GetFloat32List");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetFloat32List>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::GetFloat32List::Request>("request", false);
        component<::xarm_msgs::srv::GetFloat32List::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/GetInt16");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetInt16>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::GetInt16::Request>("request", false);
        component<::xarm_msgs::srv::GetInt16::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/GetInt16List");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetInt16List>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::GetInt16List::Request>("request", false);
        component<::xarm_msgs::srv::GetInt16List::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/GetInt32");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetInt32>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::GetInt32::Request>("request", false);
        component<::xarm_msgs::srv::GetInt32::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/GetInt32ByType");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetInt32ByType>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::GetInt32ByType::Request>("request", false);
        component<::xarm_msgs::srv::GetInt32ByType::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/GetSetModbusData");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GetSetModbusData>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::GetSetModbusData::Request>("request", false);
        component<::xarm_msgs::srv::GetSetModbusData::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/GripperMove");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::GripperMove>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::GripperMove::Request>("request", false);
        component<::xarm_msgs::srv::GripperMove::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/IdenLoad");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::IdenLoad>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::IdenLoad::Request>("request", false);
        component<::xarm_msgs::srv::IdenLoad::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/LinearMotorBackOrigin");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::LinearMotorBackOrigin>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::LinearMotorBackOrigin::Request>("request", false);
        component<::xarm_msgs::srv::LinearMotorBackOrigin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/LinearMotorSetPos");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::LinearMotorSetPos>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::LinearMotorSetPos::Request>("request", false);
        component<::xarm_msgs::srv::LinearMotorSetPos::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/LinearTrackBackOrigin");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::LinearTrackBackOrigin>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::LinearTrackBackOrigin::Request>("request", false);
        component<::xarm_msgs::srv::LinearTrackBackOrigin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/LinearTrackSetPos");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::LinearTrackSetPos>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::LinearTrackSetPos::Request>("request", false);
        component<::xarm_msgs::srv::LinearTrackSetPos::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/MoveCartesian");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::MoveCartesian>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::MoveCartesian::Request>("request", false);
        component<::xarm_msgs::srv::MoveCartesian::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/MoveCircle");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::MoveCircle>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::MoveCircle::Request>("request", false);
        component<::xarm_msgs::srv::MoveCircle::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/MoveHome");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::MoveHome>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::MoveHome::Request>("request", false);
        component<::xarm_msgs::srv::MoveHome::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/MoveJoint");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::MoveJoint>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::MoveJoint::Request>("request", false);
        component<::xarm_msgs::srv::MoveJoint::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/MoveVelocity");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::MoveVelocity>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::MoveVelocity::Request>("request", false);
        component<::xarm_msgs::srv::MoveVelocity::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/PlanExec");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::PlanExec>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::PlanExec::Request>("request", false);
        component<::xarm_msgs::srv::PlanExec::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/PlanJoint");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::PlanJoint>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::PlanJoint::Request>("request", false);
        component<::xarm_msgs::srv::PlanJoint::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/PlanPose");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::PlanPose>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::PlanPose::Request>("request", false);
        component<::xarm_msgs::srv::PlanPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/PlanSingleStraight");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::PlanSingleStraight>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::PlanSingleStraight::Request>("request", false);
        component<::xarm_msgs::srv::PlanSingleStraight::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/RobotiqActivate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::RobotiqActivate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::RobotiqActivate::Request>("request", false);
        component<::xarm_msgs::srv::RobotiqActivate::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/RobotiqGetStatus");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::RobotiqGetStatus>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::RobotiqGetStatus::Request>("request", false);
        component<::xarm_msgs::srv::RobotiqGetStatus::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/RobotiqMove");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::RobotiqMove>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::RobotiqMove::Request>("request", false);
        component<::xarm_msgs::srv::RobotiqMove::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/RobotiqReset");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::RobotiqReset>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::RobotiqReset::Request>("request", false);
        component<::xarm_msgs::srv::RobotiqReset::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/SetAnalogIO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetAnalogIO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::SetAnalogIO::Request>("request", false);
        component<::xarm_msgs::srv::SetAnalogIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/SetDigitalIO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetDigitalIO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::SetDigitalIO::Request>("request", false);
        component<::xarm_msgs::srv::SetDigitalIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/SetFloat32");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetFloat32>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::SetFloat32::Request>("request", false);
        component<::xarm_msgs::srv::SetFloat32::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/SetFloat32List");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetFloat32List>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::SetFloat32List::Request>("request", false);
        component<::xarm_msgs::srv::SetFloat32List::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/SetInt16");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetInt16>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::SetInt16::Request>("request", false);
        component<::xarm_msgs::srv::SetInt16::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/SetInt16ById");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetInt16ById>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::SetInt16ById::Request>("request", false);
        component<::xarm_msgs::srv::SetInt16ById::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/SetInt16List");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetInt16List>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::SetInt16List::Request>("request", false);
        component<::xarm_msgs::srv::SetInt16List::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/SetInt32");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetInt32>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::SetInt32::Request>("request", false);
        component<::xarm_msgs::srv::SetInt32::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/SetInt32ByType");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetInt32ByType>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::SetInt32ByType::Request>("request", false);
        component<::xarm_msgs::srv::SetInt32ByType::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/SetModbusTimeout");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetModbusTimeout>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::SetModbusTimeout::Request>("request", false);
        component<::xarm_msgs::srv::SetModbusTimeout::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/SetTcpLoad");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::SetTcpLoad>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::SetTcpLoad::Request>("request", false);
        component<::xarm_msgs::srv::SetTcpLoad::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/TrajCtrl");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::TrajCtrl>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::TrajCtrl::Request>("request", false);
        component<::xarm_msgs::srv::TrajCtrl::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/TrajPlay");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::TrajPlay>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::TrajPlay::Request>("request", false);
        component<::xarm_msgs::srv::TrajPlay::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("xarm_msgs/srv/VacuumGripperCtrl");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::xarm_msgs::srv::VacuumGripperCtrl>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::xarm_msgs::srv::VacuumGripperCtrl::Request>("request", false);
        component<::xarm_msgs::srv::VacuumGripperCtrl::Response>("response", true);
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
