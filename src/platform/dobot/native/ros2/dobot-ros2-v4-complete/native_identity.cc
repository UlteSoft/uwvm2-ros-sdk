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
#include <dobot_msgs_v4/msg/robot_status.hpp>
#include <dobot_msgs_v4/msg/tool_vector_actual.hpp>
#include <dobot_msgs_v4/srv/acc_j.hpp>
#include <dobot_msgs_v4/srv/acc_l.hpp>
#include <dobot_msgs_v4/srv/ai.hpp>
#include <dobot_msgs_v4/srv/ao.hpp>
#include <dobot_msgs_v4/srv/ao_instant.hpp>
#include <dobot_msgs_v4/srv/arc.hpp>
#include <dobot_msgs_v4/srv/brake_control.hpp>
#include <dobot_msgs_v4/srv/calc_tool.hpp>
#include <dobot_msgs_v4/srv/calc_user.hpp>
#include <dobot_msgs_v4/srv/check_odd_mov_c.hpp>
#include <dobot_msgs_v4/srv/check_odd_mov_j.hpp>
#include <dobot_msgs_v4/srv/check_odd_mov_l.hpp>
#include <dobot_msgs_v4/srv/circle.hpp>
#include <dobot_msgs_v4/srv/clear_error.hpp>
#include <dobot_msgs_v4/srv/continue.hpp>
#include <dobot_msgs_v4/srv/cp.hpp>
#include <dobot_msgs_v4/srv/di.hpp>
#include <dobot_msgs_v4/srv/di_group.hpp>
#include <dobot_msgs_v4/srv/di_group_dec.hpp>
#include <dobot_msgs_v4/srv/disable_robot.hpp>
#include <dobot_msgs_v4/srv/do.hpp>
#include <dobot_msgs_v4/srv/do_group.hpp>
#include <dobot_msgs_v4/srv/do_group_dec.hpp>
#include <dobot_msgs_v4/srv/do_instant.hpp>
#include <dobot_msgs_v4/srv/drag_sensivity.hpp>
#include <dobot_msgs_v4/srv/emergency_stop.hpp>
#include <dobot_msgs_v4/srv/enable_ft_sensor.hpp>
#include <dobot_msgs_v4/srv/enable_robot.hpp>
#include <dobot_msgs_v4/srv/enable_safe_skin.hpp>
#include <dobot_msgs_v4/srv/end_rt_offset.hpp>
#include <dobot_msgs_v4/srv/fc_collision_switch.hpp>
#include <dobot_msgs_v4/srv/fc_force_mode.hpp>
#include <dobot_msgs_v4/srv/fc_off.hpp>
#include <dobot_msgs_v4/srv/fc_set_damping.hpp>
#include <dobot_msgs_v4/srv/fc_set_deviation.hpp>
#include <dobot_msgs_v4/srv/fc_set_force.hpp>
#include <dobot_msgs_v4/srv/fc_set_force_limit.hpp>
#include <dobot_msgs_v4/srv/fc_set_force_speed_limit.hpp>
#include <dobot_msgs_v4/srv/fc_set_mass.hpp>
#include <dobot_msgs_v4/srv/fc_set_stiffness.hpp>
#include <dobot_msgs_v4/srv/force_drive_mode.hpp>
#include <dobot_msgs_v4/srv/force_drive_speed.hpp>
#include <dobot_msgs_v4/srv/get_angle.hpp>
#include <dobot_msgs_v4/srv/get_ao.hpp>
#include <dobot_msgs_v4/srv/get_coils.hpp>
#include <dobot_msgs_v4/srv/get_current_command_id.hpp>
#include <dobot_msgs_v4/srv/get_do.hpp>
#include <dobot_msgs_v4/srv/get_do_group.hpp>
#include <dobot_msgs_v4/srv/get_do_group_dec.hpp>
#include <dobot_msgs_v4/srv/get_error.hpp>
#include <dobot_msgs_v4/srv/get_error_id.hpp>
#include <dobot_msgs_v4/srv/get_force.hpp>
#include <dobot_msgs_v4/srv/get_hold_regs.hpp>
#include <dobot_msgs_v4/srv/get_in_bits.hpp>
#include <dobot_msgs_v4/srv/get_in_regs.hpp>
#include <dobot_msgs_v4/srv/get_input_bool.hpp>
#include <dobot_msgs_v4/srv/get_input_float.hpp>
#include <dobot_msgs_v4/srv/get_input_int.hpp>
#include <dobot_msgs_v4/srv/get_output_bool.hpp>
#include <dobot_msgs_v4/srv/get_output_float.hpp>
#include <dobot_msgs_v4/srv/get_output_int.hpp>
#include <dobot_msgs_v4/srv/get_pose.hpp>
#include <dobot_msgs_v4/srv/get_start_pose.hpp>
#include <dobot_msgs_v4/srv/get_tool_do.hpp>
#include <dobot_msgs_v4/srv/inverse_kin.hpp>
#include <dobot_msgs_v4/srv/inverse_solution.hpp>
#include <dobot_msgs_v4/srv/modbus_close.hpp>
#include <dobot_msgs_v4/srv/modbus_create.hpp>
#include <dobot_msgs_v4/srv/modbus_rtu_create.hpp>
#include <dobot_msgs_v4/srv/mov_j.hpp>
#include <dobot_msgs_v4/srv/mov_jio.hpp>
#include <dobot_msgs_v4/srv/mov_l.hpp>
#include <dobot_msgs_v4/srv/mov_lio.hpp>
#include <dobot_msgs_v4/srv/move_jog.hpp>
#include <dobot_msgs_v4/srv/pause.hpp>
#include <dobot_msgs_v4/srv/positive_kin.hpp>
#include <dobot_msgs_v4/srv/power_on.hpp>
#include <dobot_msgs_v4/srv/rel_joint_mov_j.hpp>
#include <dobot_msgs_v4/srv/rel_mov_j_tool.hpp>
#include <dobot_msgs_v4/srv/rel_mov_j_user.hpp>
#include <dobot_msgs_v4/srv/rel_mov_l_tool.hpp>
#include <dobot_msgs_v4/srv/rel_mov_l_user.hpp>
#include <dobot_msgs_v4/srv/request_control.hpp>
#include <dobot_msgs_v4/srv/reset_robot.hpp>
#include <dobot_msgs_v4/srv/robot_mode.hpp>
#include <dobot_msgs_v4/srv/run_script.hpp>
#include <dobot_msgs_v4/srv/run_to.hpp>
#include <dobot_msgs_v4/srv/servo_j.hpp>
#include <dobot_msgs_v4/srv/servo_p.hpp>
#include <dobot_msgs_v4/srv/set_back_distance.hpp>
#include <dobot_msgs_v4/srv/set_coils.hpp>
#include <dobot_msgs_v4/srv/set_collision_level.hpp>
#include <dobot_msgs_v4/srv/set_fc_collision.hpp>
#include <dobot_msgs_v4/srv/set_hold_regs.hpp>
#include <dobot_msgs_v4/srv/set_output_bool.hpp>
#include <dobot_msgs_v4/srv/set_output_float.hpp>
#include <dobot_msgs_v4/srv/set_output_int.hpp>
#include <dobot_msgs_v4/srv/set_payload.hpp>
#include <dobot_msgs_v4/srv/set_post_collision_mode.hpp>
#include <dobot_msgs_v4/srv/set_safe_skin.hpp>
#include <dobot_msgs_v4/srv/set_safe_wall_enable.hpp>
#include <dobot_msgs_v4/srv/set_tool.hpp>
#include <dobot_msgs_v4/srv/set_tool485.hpp>
#include <dobot_msgs_v4/srv/set_tool_mode.hpp>
#include <dobot_msgs_v4/srv/set_tool_power.hpp>
#include <dobot_msgs_v4/srv/set_user.hpp>
#include <dobot_msgs_v4/srv/set_work_zone_enable.hpp>
#include <dobot_msgs_v4/srv/six_force_home.hpp>
#include <dobot_msgs_v4/srv/speed_factor.hpp>
#include <dobot_msgs_v4/srv/start_drag.hpp>
#include <dobot_msgs_v4/srv/start_path.hpp>
#include <dobot_msgs_v4/srv/start_rt_offset.hpp>
#include <dobot_msgs_v4/srv/stop.hpp>
#include <dobot_msgs_v4/srv/stop_drag.hpp>
#include <dobot_msgs_v4/srv/stop_move_jog.hpp>
#include <dobot_msgs_v4/srv/tcp_dashboard.hpp>
#include <dobot_msgs_v4/srv/tool.hpp>
#include <dobot_msgs_v4/srv/tool_ai.hpp>
#include <dobot_msgs_v4/srv/tool_di.hpp>
#include <dobot_msgs_v4/srv/tool_do.hpp>
#include <dobot_msgs_v4/srv/tool_do_instant.hpp>
#include <dobot_msgs_v4/srv/user.hpp>
#include <dobot_msgs_v4/srv/vel_j.hpp>
#include <dobot_msgs_v4/srv/vel_l.hpp>
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
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::msg::RobotStatus>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::msg::RobotStatus>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::msg::ToolVectorActual>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::msg::ToolVectorActual>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::AI>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::AI::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::AI::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::AO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::AO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::AO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::AOInstant>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::AOInstant::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::AOInstant::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::AccJ>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::AccJ::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::AccJ::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::AccL>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::AccL::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::AccL::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Arc>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Arc::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Arc::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::BrakeControl>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::BrakeControl::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::BrakeControl::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CP>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CP::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CP::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CalcTool>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CalcTool::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CalcTool::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CalcUser>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CalcUser::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CalcUser::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovC>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovC::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovC::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovJ>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovJ::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovJ::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovL>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovL::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovL::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Circle>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Circle::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Circle::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ClearError>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ClearError::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ClearError::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Continue>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Continue::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Continue::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DI>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DI::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DI::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DIGroup>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DIGroup::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DIGroup::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DIGroupDEC>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DIGroupDEC::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DIGroupDEC::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DOGroup>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DOGroup::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DOGroup::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DOGroupDEC>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DOGroupDEC::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DOGroupDEC::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DOInstant>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DOInstant::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DOInstant::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DisableRobot>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DisableRobot::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DisableRobot::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DragSensivity>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DragSensivity::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::DragSensivity::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::EmergencyStop>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::EmergencyStop::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::EmergencyStop::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::EnableFTSensor>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::EnableFTSensor::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::EnableFTSensor::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::EnableRobot>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::EnableRobot::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::EnableRobot::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::EnableSafeSkin>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::EnableSafeSkin::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::EnableSafeSkin::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::EndRTOffset>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::EndRTOffset::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::EndRTOffset::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCCollisionSwitch>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCCollisionSwitch::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCCollisionSwitch::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCForceMode>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCForceMode::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCForceMode::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCOff>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCOff::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCOff::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetDamping>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetDamping::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetDamping::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetDeviation>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetDeviation::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetDeviation::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetForce>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetForce::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetForce::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetForceLimit>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetForceLimit::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetForceLimit::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetForceSpeedLimit>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetForceSpeedLimit::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetForceSpeedLimit::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetMass>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetMass::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetMass::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetStiffness>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetStiffness::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::FCSetStiffness::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ForceDriveMode>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ForceDriveMode::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ForceDriveMode::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ForceDriveSpeed>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ForceDriveSpeed::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ForceDriveSpeed::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetAO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetAO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetAO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetAngle>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetAngle::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetAngle::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetCoils>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetCoils::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetCoils::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetCurrentCommandId>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetCurrentCommandId::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetCurrentCommandId::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetDO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetDO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetDO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetDOGroup>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetDOGroup::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetDOGroup::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetDOGroupDEC>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetDOGroupDEC::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetDOGroupDEC::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetError>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetError::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetError::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetErrorID>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetErrorID::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetErrorID::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetForce>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetForce::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetForce::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetHoldRegs>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetHoldRegs::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetHoldRegs::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetInBits>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetInBits::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetInBits::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetInRegs>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetInRegs::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetInRegs::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetInputBool>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetInputBool::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetInputBool::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetInputFloat>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetInputFloat::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetInputFloat::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetInputInt>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetInputInt::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetInputInt::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetOutputBool>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetOutputBool::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetOutputBool::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetOutputFloat>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetOutputFloat::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetOutputFloat::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetOutputInt>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetOutputInt::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetOutputInt::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetPose>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetPose::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetPose::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetStartPose>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetStartPose::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetStartPose::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetToolDO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetToolDO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::GetToolDO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::InverseKin>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::InverseKin::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::InverseKin::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::InverseSolution>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::InverseSolution::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::InverseSolution::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ModbusClose>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ModbusClose::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ModbusClose::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ModbusCreate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ModbusCreate::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ModbusCreate::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ModbusRTUCreate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ModbusRTUCreate::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ModbusRTUCreate::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::MovJ>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::MovJ::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::MovJ::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::MovJIO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::MovJIO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::MovJIO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::MovL>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::MovL::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::MovL::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::MovLIO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::MovLIO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::MovLIO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::MoveJog>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::MoveJog::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::MoveJog::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Pause>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Pause::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Pause::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::PositiveKin>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::PositiveKin::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::PositiveKin::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::PowerOn>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::PowerOn::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::PowerOn::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RelJointMovJ>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RelJointMovJ::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RelJointMovJ::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RelMovJTool>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RelMovJTool::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RelMovJTool::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RelMovJUser>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RelMovJUser::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RelMovJUser::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RelMovLTool>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RelMovLTool::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RelMovLTool::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RelMovLUser>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RelMovLUser::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RelMovLUser::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RequestControl>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RequestControl::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RequestControl::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ResetRobot>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ResetRobot::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ResetRobot::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RobotMode>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RobotMode::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RobotMode::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RunScript>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RunScript::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RunScript::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RunTo>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RunTo::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::RunTo::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ServoJ>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ServoJ::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ServoJ::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ServoP>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ServoP::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ServoP::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetBackDistance>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetBackDistance::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetBackDistance::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetCoils>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetCoils::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetCoils::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetCollisionLevel>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetCollisionLevel::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetCollisionLevel::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetFCCollision>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetFCCollision::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetFCCollision::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetHoldRegs>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetHoldRegs::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetHoldRegs::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetOutputBool>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetOutputBool::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetOutputBool::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetOutputFloat>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetOutputFloat::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetOutputFloat::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetOutputInt>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetOutputInt::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetOutputInt::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetPayload>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetPayload::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetPayload::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetPostCollisionMode>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetPostCollisionMode::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetPostCollisionMode::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetSafeSkin>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetSafeSkin::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetSafeSkin::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetSafeWallEnable>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetSafeWallEnable::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetSafeWallEnable::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetTool>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetTool::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetTool::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetTool485>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetTool485::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetTool485::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetToolMode>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetToolMode::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetToolMode::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetToolPower>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetToolPower::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetToolPower::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetUser>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetUser::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetUser::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetWorkZoneEnable>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetWorkZoneEnable::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SetWorkZoneEnable::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SixForceHome>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SixForceHome::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SixForceHome::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SpeedFactor>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SpeedFactor::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::SpeedFactor::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::StartDrag>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::StartDrag::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::StartDrag::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::StartPath>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::StartPath::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::StartPath::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::StartRTOffset>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::StartRTOffset::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::StartRTOffset::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Stop>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Stop::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Stop::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::StopDrag>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::StopDrag::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::StopDrag::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::StopMoveJog>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::StopMoveJog::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::StopMoveJog::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::TcpDashboard>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::TcpDashboard::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::TcpDashboard::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Tool>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Tool::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::Tool::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ToolAI>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ToolAI::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ToolAI::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ToolDI>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ToolDI::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ToolDI::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ToolDO>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ToolDO::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ToolDO::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ToolDOInstant>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ToolDOInstant::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::ToolDOInstant::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::User>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::User::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::User::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::VelJ>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::VelJ::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::VelJ::Response>());
        industrial_warm(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::VelL>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::VelL::Request>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::srv::VelL::Response>());
        if(::raise(SIGSTOP) != 0)
            throw std::runtime_error{"owned mapping stop failed"};
        bounded_native_io::gate('I');
        bounded_native_io::print(
            output(),
            "{\"format\":\"uwvm-ros-industrial-native-v1\",\"ros_version\":",
            UWVM_CUSTOM_NATIVE_ROS_VERSION,
            ",\"source_profile\":\"uwvm-ros-vendor-complete-bounded-v1\",\"constant_schema_sha256\":\"ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356\",\"types\":{");
        quoted("dobot_msgs_v4/msg/RobotStatus");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::msg::RobotStatus>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::msg::RobotStatus>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/msg/ToolVectorActual");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::dobot_msgs_v4::msg::ToolVectorActual>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::msg::ToolVectorActual>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/AI");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::AI>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::AI::Request>("request", false);
        component<::dobot_msgs_v4::srv::AI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/AO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::AO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::AO::Request>("request", false);
        component<::dobot_msgs_v4::srv::AO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/AOInstant");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::AOInstant>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::AOInstant::Request>("request", false);
        component<::dobot_msgs_v4::srv::AOInstant::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/AccJ");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::AccJ>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::AccJ::Request>("request", false);
        component<::dobot_msgs_v4::srv::AccJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/AccL");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::AccL>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::AccL::Request>("request", false);
        component<::dobot_msgs_v4::srv::AccL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/Arc");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Arc>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::Arc::Request>("request", false);
        component<::dobot_msgs_v4::srv::Arc::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/BrakeControl");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::BrakeControl>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::BrakeControl::Request>("request", false);
        component<::dobot_msgs_v4::srv::BrakeControl::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/CP");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CP>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::CP::Request>("request", false);
        component<::dobot_msgs_v4::srv::CP::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/CalcTool");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CalcTool>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::CalcTool::Request>("request", false);
        component<::dobot_msgs_v4::srv::CalcTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/CalcUser");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CalcUser>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::CalcUser::Request>("request", false);
        component<::dobot_msgs_v4::srv::CalcUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/CheckOddMovC");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovC>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::CheckOddMovC::Request>("request", false);
        component<::dobot_msgs_v4::srv::CheckOddMovC::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/CheckOddMovJ");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovJ>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::CheckOddMovJ::Request>("request", false);
        component<::dobot_msgs_v4::srv::CheckOddMovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/CheckOddMovL");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::CheckOddMovL>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::CheckOddMovL::Request>("request", false);
        component<::dobot_msgs_v4::srv::CheckOddMovL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/Circle");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Circle>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::Circle::Request>("request", false);
        component<::dobot_msgs_v4::srv::Circle::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ClearError");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ClearError>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ClearError::Request>("request", false);
        component<::dobot_msgs_v4::srv::ClearError::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/Continue");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Continue>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::Continue::Request>("request", false);
        component<::dobot_msgs_v4::srv::Continue::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/DI");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DI>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::DI::Request>("request", false);
        component<::dobot_msgs_v4::srv::DI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/DIGroup");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DIGroup>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::DIGroup::Request>("request", false);
        component<::dobot_msgs_v4::srv::DIGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/DIGroupDEC");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DIGroupDEC>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::DIGroupDEC::Request>("request", false);
        component<::dobot_msgs_v4::srv::DIGroupDEC::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/DO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::DO::Request>("request", false);
        component<::dobot_msgs_v4::srv::DO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/DOGroup");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DOGroup>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::DOGroup::Request>("request", false);
        component<::dobot_msgs_v4::srv::DOGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/DOGroupDEC");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DOGroupDEC>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::DOGroupDEC::Request>("request", false);
        component<::dobot_msgs_v4::srv::DOGroupDEC::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/DOInstant");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DOInstant>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::DOInstant::Request>("request", false);
        component<::dobot_msgs_v4::srv::DOInstant::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/DisableRobot");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DisableRobot>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::DisableRobot::Request>("request", false);
        component<::dobot_msgs_v4::srv::DisableRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/DragSensivity");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::DragSensivity>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::DragSensivity::Request>("request", false);
        component<::dobot_msgs_v4::srv::DragSensivity::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/EmergencyStop");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::EmergencyStop>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::EmergencyStop::Request>("request", false);
        component<::dobot_msgs_v4::srv::EmergencyStop::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/EnableFTSensor");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::EnableFTSensor>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::EnableFTSensor::Request>("request", false);
        component<::dobot_msgs_v4::srv::EnableFTSensor::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/EnableRobot");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::EnableRobot>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::EnableRobot::Request>("request", false);
        component<::dobot_msgs_v4::srv::EnableRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/EnableSafeSkin");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::EnableSafeSkin>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::EnableSafeSkin::Request>("request", false);
        component<::dobot_msgs_v4::srv::EnableSafeSkin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/EndRTOffset");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::EndRTOffset>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::EndRTOffset::Request>("request", false);
        component<::dobot_msgs_v4::srv::EndRTOffset::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/FCCollisionSwitch");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCCollisionSwitch>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::FCCollisionSwitch::Request>("request", false);
        component<::dobot_msgs_v4::srv::FCCollisionSwitch::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/FCForceMode");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCForceMode>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::FCForceMode::Request>("request", false);
        component<::dobot_msgs_v4::srv::FCForceMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/FCOff");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCOff>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::FCOff::Request>("request", false);
        component<::dobot_msgs_v4::srv::FCOff::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/FCSetDamping");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetDamping>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::FCSetDamping::Request>("request", false);
        component<::dobot_msgs_v4::srv::FCSetDamping::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/FCSetDeviation");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetDeviation>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::FCSetDeviation::Request>("request", false);
        component<::dobot_msgs_v4::srv::FCSetDeviation::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/FCSetForce");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetForce>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::FCSetForce::Request>("request", false);
        component<::dobot_msgs_v4::srv::FCSetForce::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/FCSetForceLimit");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetForceLimit>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::FCSetForceLimit::Request>("request", false);
        component<::dobot_msgs_v4::srv::FCSetForceLimit::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/FCSetForceSpeedLimit");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetForceSpeedLimit>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::FCSetForceSpeedLimit::Request>("request", false);
        component<::dobot_msgs_v4::srv::FCSetForceSpeedLimit::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/FCSetMass");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetMass>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::FCSetMass::Request>("request", false);
        component<::dobot_msgs_v4::srv::FCSetMass::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/FCSetStiffness");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::FCSetStiffness>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::FCSetStiffness::Request>("request", false);
        component<::dobot_msgs_v4::srv::FCSetStiffness::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ForceDriveMode");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ForceDriveMode>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ForceDriveMode::Request>("request", false);
        component<::dobot_msgs_v4::srv::ForceDriveMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ForceDriveSpeed");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ForceDriveSpeed>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ForceDriveSpeed::Request>("request", false);
        component<::dobot_msgs_v4::srv::ForceDriveSpeed::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetAO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetAO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetAO::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetAO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetAngle");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetAngle>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetAngle::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetAngle::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetCoils");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetCoils>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetCoils::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetCoils::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetCurrentCommandId");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetCurrentCommandId>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetCurrentCommandId::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetCurrentCommandId::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetDO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetDO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetDO::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetDO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetDOGroup");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetDOGroup>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetDOGroup::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetDOGroup::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetDOGroupDEC");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetDOGroupDEC>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetDOGroupDEC::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetDOGroupDEC::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetError");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetError>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetError::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetError::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetErrorID");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetErrorID>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetErrorID::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetErrorID::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetForce");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetForce>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetForce::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetForce::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetHoldRegs");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetHoldRegs>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetHoldRegs::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetHoldRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetInBits");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetInBits>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetInBits::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetInBits::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetInRegs");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetInRegs>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetInRegs::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetInRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetInputBool");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetInputBool>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetInputBool::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetInputBool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetInputFloat");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetInputFloat>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetInputFloat::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetInputFloat::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetInputInt");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetInputInt>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetInputInt::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetInputInt::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetOutputBool");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetOutputBool>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetOutputBool::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetOutputBool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetOutputFloat");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetOutputFloat>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetOutputFloat::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetOutputFloat::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetOutputInt");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetOutputInt>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetOutputInt::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetOutputInt::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetPose");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetPose>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetPose::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetStartPose");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetStartPose>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetStartPose::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetStartPose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/GetToolDO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::GetToolDO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::GetToolDO::Request>("request", false);
        component<::dobot_msgs_v4::srv::GetToolDO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/InverseKin");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::InverseKin>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::InverseKin::Request>("request", false);
        component<::dobot_msgs_v4::srv::InverseKin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/InverseSolution");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::InverseSolution>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::InverseSolution::Request>("request", false);
        component<::dobot_msgs_v4::srv::InverseSolution::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ModbusClose");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ModbusClose>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ModbusClose::Request>("request", false);
        component<::dobot_msgs_v4::srv::ModbusClose::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ModbusCreate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ModbusCreate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ModbusCreate::Request>("request", false);
        component<::dobot_msgs_v4::srv::ModbusCreate::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ModbusRTUCreate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ModbusRTUCreate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ModbusRTUCreate::Request>("request", false);
        component<::dobot_msgs_v4::srv::ModbusRTUCreate::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/MovJ");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::MovJ>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::MovJ::Request>("request", false);
        component<::dobot_msgs_v4::srv::MovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/MovJIO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::MovJIO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::MovJIO::Request>("request", false);
        component<::dobot_msgs_v4::srv::MovJIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/MovL");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::MovL>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::MovL::Request>("request", false);
        component<::dobot_msgs_v4::srv::MovL::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/MovLIO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::MovLIO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::MovLIO::Request>("request", false);
        component<::dobot_msgs_v4::srv::MovLIO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/MoveJog");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::MoveJog>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::MoveJog::Request>("request", false);
        component<::dobot_msgs_v4::srv::MoveJog::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/Pause");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Pause>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::Pause::Request>("request", false);
        component<::dobot_msgs_v4::srv::Pause::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/PositiveKin");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::PositiveKin>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::PositiveKin::Request>("request", false);
        component<::dobot_msgs_v4::srv::PositiveKin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/PowerOn");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::PowerOn>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::PowerOn::Request>("request", false);
        component<::dobot_msgs_v4::srv::PowerOn::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/RelJointMovJ");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RelJointMovJ>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::RelJointMovJ::Request>("request", false);
        component<::dobot_msgs_v4::srv::RelJointMovJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/RelMovJTool");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RelMovJTool>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::RelMovJTool::Request>("request", false);
        component<::dobot_msgs_v4::srv::RelMovJTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/RelMovJUser");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RelMovJUser>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::RelMovJUser::Request>("request", false);
        component<::dobot_msgs_v4::srv::RelMovJUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/RelMovLTool");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RelMovLTool>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::RelMovLTool::Request>("request", false);
        component<::dobot_msgs_v4::srv::RelMovLTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/RelMovLUser");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RelMovLUser>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::RelMovLUser::Request>("request", false);
        component<::dobot_msgs_v4::srv::RelMovLUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/RequestControl");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RequestControl>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::RequestControl::Request>("request", false);
        component<::dobot_msgs_v4::srv::RequestControl::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ResetRobot");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ResetRobot>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ResetRobot::Request>("request", false);
        component<::dobot_msgs_v4::srv::ResetRobot::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/RobotMode");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RobotMode>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::RobotMode::Request>("request", false);
        component<::dobot_msgs_v4::srv::RobotMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/RunScript");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RunScript>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::RunScript::Request>("request", false);
        component<::dobot_msgs_v4::srv::RunScript::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/RunTo");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::RunTo>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::RunTo::Request>("request", false);
        component<::dobot_msgs_v4::srv::RunTo::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ServoJ");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ServoJ>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ServoJ::Request>("request", false);
        component<::dobot_msgs_v4::srv::ServoJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ServoP");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ServoP>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ServoP::Request>("request", false);
        component<::dobot_msgs_v4::srv::ServoP::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetBackDistance");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetBackDistance>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetBackDistance::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetBackDistance::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetCoils");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetCoils>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetCoils::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetCoils::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetCollisionLevel");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetCollisionLevel>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetCollisionLevel::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetCollisionLevel::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetFCCollision");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetFCCollision>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetFCCollision::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetFCCollision::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetHoldRegs");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetHoldRegs>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetHoldRegs::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetHoldRegs::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetOutputBool");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetOutputBool>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetOutputBool::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetOutputBool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetOutputFloat");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetOutputFloat>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetOutputFloat::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetOutputFloat::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetOutputInt");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetOutputInt>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetOutputInt::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetOutputInt::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetPayload");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetPayload>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetPayload::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetPayload::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetPostCollisionMode");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetPostCollisionMode>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetPostCollisionMode::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetPostCollisionMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetSafeSkin");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetSafeSkin>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetSafeSkin::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetSafeSkin::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetSafeWallEnable");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetSafeWallEnable>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetSafeWallEnable::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetSafeWallEnable::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetTool");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetTool>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetTool::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetTool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetTool485");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetTool485>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetTool485::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetTool485::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetToolMode");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetToolMode>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetToolMode::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetToolMode::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetToolPower");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetToolPower>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetToolPower::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetToolPower::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetUser");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetUser>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetUser::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetUser::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SetWorkZoneEnable");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SetWorkZoneEnable>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SetWorkZoneEnable::Request>("request", false);
        component<::dobot_msgs_v4::srv::SetWorkZoneEnable::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SixForceHome");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SixForceHome>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SixForceHome::Request>("request", false);
        component<::dobot_msgs_v4::srv::SixForceHome::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/SpeedFactor");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::SpeedFactor>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::SpeedFactor::Request>("request", false);
        component<::dobot_msgs_v4::srv::SpeedFactor::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/StartDrag");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::StartDrag>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::StartDrag::Request>("request", false);
        component<::dobot_msgs_v4::srv::StartDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/StartPath");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::StartPath>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::StartPath::Request>("request", false);
        component<::dobot_msgs_v4::srv::StartPath::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/StartRTOffset");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::StartRTOffset>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::StartRTOffset::Request>("request", false);
        component<::dobot_msgs_v4::srv::StartRTOffset::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/Stop");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Stop>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::Stop::Request>("request", false);
        component<::dobot_msgs_v4::srv::Stop::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/StopDrag");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::StopDrag>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::StopDrag::Request>("request", false);
        component<::dobot_msgs_v4::srv::StopDrag::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/StopMoveJog");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::StopMoveJog>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::StopMoveJog::Request>("request", false);
        component<::dobot_msgs_v4::srv::StopMoveJog::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/TcpDashboard");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::TcpDashboard>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::TcpDashboard::Request>("request", false);
        component<::dobot_msgs_v4::srv::TcpDashboard::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/Tool");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::Tool>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::Tool::Request>("request", false);
        component<::dobot_msgs_v4::srv::Tool::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ToolAI");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ToolAI>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ToolAI::Request>("request", false);
        component<::dobot_msgs_v4::srv::ToolAI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ToolDI");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ToolDI>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ToolDI::Request>("request", false);
        component<::dobot_msgs_v4::srv::ToolDI::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ToolDO");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ToolDO>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ToolDO::Request>("request", false);
        component<::dobot_msgs_v4::srv::ToolDO::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/ToolDOInstant");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::ToolDOInstant>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::ToolDOInstant::Request>("request", false);
        component<::dobot_msgs_v4::srv::ToolDOInstant::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/User");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::User>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::User::Request>("request", false);
        component<::dobot_msgs_v4::srv::User::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/VelJ");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::VelJ>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::VelJ::Request>("request", false);
        component<::dobot_msgs_v4::srv::VelJ::Response>("response", true);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("dobot_msgs_v4/srv/VelL");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_service_type_support_handle<::dobot_msgs_v4::srv::VelL>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::dobot_msgs_v4::srv::VelL::Request>("request", false);
        component<::dobot_msgs_v4::srv::VelL::Response>("response", true);
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
