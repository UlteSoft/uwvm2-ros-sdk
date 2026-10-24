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
#include <geometry_msgs/msg/point.hpp>
#include <geometry_msgs/msg/pose.hpp>
#include <geometry_msgs/msg/quaternion.hpp>
#include <rm_ros_interfaces/msg/alohastate.hpp>
#include <rm_ros_interfaces/msg/armcurrentstatus.hpp>
#include <rm_ros_interfaces/msg/armoriginalstate.hpp>
#include <rm_ros_interfaces/msg/armsoftversion.hpp>
#include <rm_ros_interfaces/msg/armsoftversionv3.hpp>
#include <rm_ros_interfaces/msg/armsoftversionv4.hpp>
#include <rm_ros_interfaces/msg/armstate.hpp>
#include <rm_ros_interfaces/msg/cartepos.hpp>
#include <rm_ros_interfaces/msg/carteposcustom.hpp>
#include <rm_ros_interfaces/msg/expandpos.hpp>
#include <rm_ros_interfaces/msg/expandstate.hpp>
#include <rm_ros_interfaces/msg/flowchartrunstate.hpp>
#include <rm_ros_interfaces/msg/force__position__state.hpp>
#include <rm_ros_interfaces/msg/forcepositionmove.hpp>
#include <rm_ros_interfaces/msg/forcepositionmovejoint.hpp>
#include <rm_ros_interfaces/msg/forcepositionmovepose.hpp>
#include <rm_ros_interfaces/msg/get_arm_state__command.hpp>
#include <rm_ros_interfaces/msg/getallframe.hpp>
#include <rm_ros_interfaces/msg/getmodbustcpmasterlist.hpp>
#include <rm_ros_interfaces/msg/gettrajectorylist.hpp>
#include <rm_ros_interfaces/msg/gripperpick.hpp>
#include <rm_ros_interfaces/msg/gripperset.hpp>
#include <rm_ros_interfaces/msg/handangle.hpp>
#include <rm_ros_interfaces/msg/handforce.hpp>
#include <rm_ros_interfaces/msg/handposture.hpp>
#include <rm_ros_interfaces/msg/handseq.hpp>
#include <rm_ros_interfaces/msg/handspeed.hpp>
#include <rm_ros_interfaces/msg/handstatus.hpp>
#include <rm_ros_interfaces/msg/jointcurrent.hpp>
#include <rm_ros_interfaces/msg/jointenflag.hpp>
#include <rm_ros_interfaces/msg/jointerrclear.hpp>
#include <rm_ros_interfaces/msg/jointerrorcode.hpp>
#include <rm_ros_interfaces/msg/jointpos.hpp>
#include <rm_ros_interfaces/msg/jointposcustom.hpp>
#include <rm_ros_interfaces/msg/jointposeeuler.hpp>
#include <rm_ros_interfaces/msg/jointspeed.hpp>
#include <rm_ros_interfaces/msg/jointteach.hpp>
#include <rm_ros_interfaces/msg/jointtemperature.hpp>
#include <rm_ros_interfaces/msg/jointversion.hpp>
#include <rm_ros_interfaces/msg/jointvoltage.hpp>
#include <rm_ros_interfaces/msg/liftheight.hpp>
#include <rm_ros_interfaces/msg/liftspeed.hpp>
#include <rm_ros_interfaces/msg/liftstate.hpp>
#include <rm_ros_interfaces/msg/mastername.hpp>
#include <rm_ros_interfaces/msg/modbusreaddata.hpp>
#include <rm_ros_interfaces/msg/modbusrtureadparams.hpp>
#include <rm_ros_interfaces/msg/modbusrtuwriteparams.hpp>
#include <rm_ros_interfaces/msg/modbustcpmasterinfo.hpp>
#include <rm_ros_interfaces/msg/modbustcpmasterlist.hpp>
#include <rm_ros_interfaces/msg/modbustcpmasterupdata.hpp>
#include <rm_ros_interfaces/msg/modbustcpreadparams.hpp>
#include <rm_ros_interfaces/msg/modbustcpwriteparams.hpp>
#include <rm_ros_interfaces/msg/movec.hpp>
#include <rm_ros_interfaces/msg/movej.hpp>
#include <rm_ros_interfaces/msg/movejp.hpp>
#include <rm_ros_interfaces/msg/movel.hpp>
#include <rm_ros_interfaces/msg/moveloffset.hpp>
#include <rm_ros_interfaces/msg/ortteach.hpp>
#include <rm_ros_interfaces/msg/posteach.hpp>
#include <rm_ros_interfaces/msg/programrunstate.hpp>
#include <rm_ros_interfaces/msg/rmerr.hpp>
#include <rm_ros_interfaces/msg/rmplusbase.hpp>
#include <rm_ros_interfaces/msg/rmplusstate.hpp>
#include <rm_ros_interfaces/msg/rmversion.hpp>
#include <rm_ros_interfaces/msg/robot_info.hpp>
#include <rm_ros_interfaces/msg/rs485params.hpp>
#include <rm_ros_interfaces/msg/sendproject.hpp>
#include <rm_ros_interfaces/msg/setforceposition.hpp>
#include <rm_ros_interfaces/msg/setrealtimepush.hpp>
#include <rm_ros_interfaces/msg/sixforce.hpp>
#include <rm_ros_interfaces/msg/softwarebuildinfo.hpp>
#include <rm_ros_interfaces/msg/stop.hpp>
#include <rm_ros_interfaces/msg/toolsoftwareversionv4.hpp>
#include <rm_ros_interfaces/msg/trajectoryinfo.hpp>
#include <rm_ros_interfaces/msg/trajectorylist.hpp>
#include <rm_ros_interfaces/msg/udpexpandstate.hpp>
#include <rm_ros_interfaces/msg/udpliftstate.hpp>
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
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Point>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Point>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Pose>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Pose>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Quaternion>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::geometry_msgs::msg::Quaternion>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Alohastate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Alohastate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armcurrentstatus>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armcurrentstatus>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armoriginalstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armoriginalstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armsoftversion>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armsoftversion>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armsoftversionv3>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armsoftversionv3>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armsoftversionv4>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armsoftversionv4>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Cartepos>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Cartepos>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Carteposcustom>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Carteposcustom>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Expandpos>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Expandpos>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Expandstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Expandstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Flowchartrunstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Flowchartrunstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Force_Position_State>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Force_Position_State>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Forcepositionmove>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Forcepositionmove>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Forcepositionmovejoint>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Forcepositionmovejoint>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Forcepositionmovepose>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Forcepositionmovepose>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::GetArmState_Command>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::GetArmState_Command>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Getallframe>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Getallframe>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Getmodbustcpmasterlist>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Getmodbustcpmasterlist>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Gettrajectorylist>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Gettrajectorylist>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Gripperpick>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Gripperpick>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Gripperset>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Gripperset>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handangle>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handangle>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handforce>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handforce>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handposture>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handposture>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handseq>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handseq>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handspeed>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handspeed>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handstatus>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handstatus>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointcurrent>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointcurrent>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointenflag>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointenflag>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointerrclear>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointerrclear>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointerrorcode>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointerrorcode>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointpos>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointpos>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointposcustom>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointposcustom>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointposeeuler>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointposeeuler>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointspeed>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointspeed>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointteach>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointteach>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointtemperature>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointtemperature>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointversion>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointversion>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointvoltage>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointvoltage>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Liftheight>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Liftheight>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Liftspeed>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Liftspeed>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Liftstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Liftstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Mastername>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Mastername>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbusreaddata>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbusreaddata>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbusrtureadparams>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbusrtureadparams>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbusrtuwriteparams>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbusrtuwriteparams>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpmasterinfo>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpmasterinfo>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpmasterlist>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpmasterlist>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpmasterupdata>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpmasterupdata>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpreadparams>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpreadparams>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpwriteparams>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpwriteparams>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movec>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movec>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movej>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movej>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movejp>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movejp>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movel>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movel>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Moveloffset>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Moveloffset>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Ortteach>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Ortteach>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Posteach>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Posteach>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Programrunstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Programrunstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::RS485params>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::RS485params>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmerr>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmerr>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmplusbase>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmplusbase>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmplusstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmplusstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmversion>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmversion>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::RobotInfo>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::RobotInfo>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Sendproject>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Sendproject>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Setforceposition>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Setforceposition>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Setrealtimepush>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Setrealtimepush>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Sixforce>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Sixforce>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Softwarebuildinfo>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Softwarebuildinfo>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Stop>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Stop>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Toolsoftwareversionv4>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Toolsoftwareversionv4>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Trajectoryinfo>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Trajectoryinfo>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Trajectorylist>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Trajectorylist>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Udpexpandstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Udpexpandstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Udpliftstate>());
        industrial_warm(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Udpliftstate>());
        if(::raise(SIGSTOP) != 0)
            throw std::runtime_error{"owned mapping stop failed"};
        bounded_native_io::gate('I');
        bounded_native_io::print(
            output(),
            "{\"format\":\"uwvm-ros-industrial-native-v1\",\"ros_version\":",
            UWVM_CUSTOM_NATIVE_ROS_VERSION,
            ",\"source_profile\":\"uwvm-ros-vendor-complete-bounded-v1\",\"constant_schema_sha256\":\"ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356\",\"types\":{");
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
        quoted("rm_ros_interfaces/msg/Alohastate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Alohastate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Alohastate>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Armcurrentstatus");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armcurrentstatus>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Armcurrentstatus>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Armoriginalstate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armoriginalstate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Armoriginalstate>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Armsoftversion");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armsoftversion>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Armsoftversion>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Armsoftversionv3");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armsoftversionv3>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Armsoftversionv3>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Armsoftversionv4");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armsoftversionv4>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Armsoftversionv4>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Armstate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Armstate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Armstate>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Cartepos");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Cartepos>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Cartepos>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Carteposcustom");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Carteposcustom>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Carteposcustom>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Expandpos");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Expandpos>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Expandpos>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Expandstate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Expandstate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Expandstate>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Flowchartrunstate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Flowchartrunstate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Flowchartrunstate>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Force_Position_State");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Force_Position_State>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Force_Position_State>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Forcepositionmove");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Forcepositionmove>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Forcepositionmove>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Forcepositionmovejoint");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Forcepositionmovejoint>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Forcepositionmovejoint>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Forcepositionmovepose");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Forcepositionmovepose>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Forcepositionmovepose>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/GetArmState_Command");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::GetArmState_Command>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::GetArmState_Command>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Getallframe");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Getallframe>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Getallframe>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Getmodbustcpmasterlist");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Getmodbustcpmasterlist>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Getmodbustcpmasterlist>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Gettrajectorylist");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Gettrajectorylist>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Gettrajectorylist>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Gripperpick");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Gripperpick>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Gripperpick>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Gripperset");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Gripperset>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Gripperset>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Handangle");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handangle>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Handangle>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Handforce");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handforce>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Handforce>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Handposture");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handposture>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Handposture>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Handseq");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handseq>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Handseq>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Handspeed");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handspeed>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Handspeed>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Handstatus");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Handstatus>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Handstatus>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointcurrent");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointcurrent>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointcurrent>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointenflag");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointenflag>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointenflag>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointerrclear");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointerrclear>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointerrclear>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointerrorcode");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointerrorcode>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointerrorcode>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointpos");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointpos>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointpos>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointposcustom");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointposcustom>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointposcustom>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointposeeuler");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointposeeuler>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointposeeuler>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointspeed");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointspeed>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointspeed>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointteach");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointteach>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointteach>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointtemperature");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointtemperature>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointtemperature>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointversion");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointversion>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointversion>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Jointvoltage");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Jointvoltage>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Jointvoltage>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Liftheight");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Liftheight>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Liftheight>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Liftspeed");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Liftspeed>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Liftspeed>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Liftstate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Liftstate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Liftstate>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Mastername");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Mastername>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Mastername>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Modbusreaddata");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbusreaddata>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Modbusreaddata>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Modbusrtureadparams");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbusrtureadparams>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Modbusrtureadparams>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Modbusrtuwriteparams");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbusrtuwriteparams>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Modbusrtuwriteparams>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Modbustcpmasterinfo");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpmasterinfo>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Modbustcpmasterinfo>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Modbustcpmasterlist");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpmasterlist>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Modbustcpmasterlist>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Modbustcpmasterupdata");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpmasterupdata>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Modbustcpmasterupdata>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Modbustcpreadparams");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpreadparams>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Modbustcpreadparams>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Modbustcpwriteparams");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Modbustcpwriteparams>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Modbustcpwriteparams>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Movec");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movec>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Movec>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Movej");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movej>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Movej>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Movejp");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movejp>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Movejp>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Movel");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Movel>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Movel>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Moveloffset");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Moveloffset>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Moveloffset>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Ortteach");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Ortteach>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Ortteach>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Posteach");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Posteach>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Posteach>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Programrunstate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Programrunstate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Programrunstate>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/RS485params");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::RS485params>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::RS485params>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Rmerr");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmerr>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Rmerr>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Rmplusbase");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmplusbase>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Rmplusbase>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Rmplusstate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmplusstate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Rmplusstate>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Rmversion");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Rmversion>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Rmversion>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/RobotInfo");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::RobotInfo>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::RobotInfo>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Sendproject");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Sendproject>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Sendproject>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Setforceposition");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Setforceposition>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Setforceposition>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Setrealtimepush");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Setrealtimepush>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Setrealtimepush>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Sixforce");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Sixforce>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Sixforce>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Softwarebuildinfo");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Softwarebuildinfo>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Softwarebuildinfo>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Stop");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Stop>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Stop>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Toolsoftwareversionv4");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Toolsoftwareversionv4>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Toolsoftwareversionv4>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Trajectoryinfo");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Trajectoryinfo>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Trajectoryinfo>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Trajectorylist");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Trajectorylist>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Trajectorylist>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Udpexpandstate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Udpexpandstate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Udpexpandstate>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_ros_interfaces/msg/Udpliftstate");
        bounded_native_io::print(output(), ":{\"official\":");
        metadata(rosidl_typesupport_cpp::get_message_type_support_handle<::rm_ros_interfaces::msg::Udpliftstate>());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_ros_interfaces::msg::Udpliftstate>("message", false);
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
