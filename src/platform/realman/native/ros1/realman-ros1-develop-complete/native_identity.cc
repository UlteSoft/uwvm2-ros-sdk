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
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Quaternion.h>
#include <rm_msgs/ArmState.h>
#include <rm_msgs/Arm_Analog_Output.h>
#include <rm_msgs/Arm_Current_State.h>
#include <rm_msgs/Arm_Current_Status.h>
#include <rm_msgs/Arm_Digital_Output.h>
#include <rm_msgs/Arm_IO_State.h>
#include <rm_msgs/Arm_Joint_Speed_Max.h>
#include <rm_msgs/Arm_Softversion_v3.h>
#include <rm_msgs/Arm_Softversion_v4.h>
#include <rm_msgs/Arm_Software_Version.h>
#include <rm_msgs/Cabinet.h>
#include <rm_msgs/CartePos.h>
#include <rm_msgs/CartePosCustom.h>
#include <rm_msgs/ChangeTool_Name.h>
#include <rm_msgs/ChangeTool_State.h>
#include <rm_msgs/ChangeWorkFrame_Name.h>
#include <rm_msgs/ChangeWorkFrame_State.h>
#include <rm_msgs/Err.h>
#include <rm_msgs/Flowchartrunstate.h>
#include <rm_msgs/Force_Position_Move_Joint.h>
#include <rm_msgs/Force_Position_Move_Pose.h>
#include <rm_msgs/Force_Position_Move_Pose_Custom.h>
#include <rm_msgs/Force_Position_State.h>
#include <rm_msgs/GetArmState_Command.h>
#include <rm_msgs/Get_TCP_Master_List_Param.h>
#include <rm_msgs/Gettrajectorylist.h>
#include <rm_msgs/Gripper_Pick.h>
#include <rm_msgs/Gripper_Set.h>
#include <rm_msgs/Hand_Angle.h>
#include <rm_msgs/Hand_Force.h>
#include <rm_msgs/Hand_Posture.h>
#include <rm_msgs/Hand_Seq.h>
#include <rm_msgs/Hand_Speed.h>
#include <rm_msgs/Hand_Status.h>
#include <rm_msgs/IO_Update.h>
#include <rm_msgs/JointPos.h>
#include <rm_msgs/JointPosCustom.h>
#include <rm_msgs/Joint_Current.h>
#include <rm_msgs/Joint_En_Flag.h>
#include <rm_msgs/Joint_Enable.h>
#include <rm_msgs/Joint_Error_Code.h>
#include <rm_msgs/Joint_Max_Speed.h>
#include <rm_msgs/Joint_PoseEuler.h>
#include <rm_msgs/Joint_Speed.h>
#include <rm_msgs/Joint_Step.h>
#include <rm_msgs/Joint_Teach.h>
#include <rm_msgs/Joint_Temperature.h>
#include <rm_msgs/Joint_Voltage.h>
#include <rm_msgs/Jointversion.h>
#include <rm_msgs/LiftState.h>
#include <rm_msgs/Lift_Height.h>
#include <rm_msgs/Lift_In_Position.h>
#include <rm_msgs/Lift_Speed.h>
#include <rm_msgs/Manual_Set_Force_Pose.h>
#include <rm_msgs/Mastername.h>
#include <rm_msgs/Modbusreaddata.h>
#include <rm_msgs/Modbustcpmasterinfo.h>
#include <rm_msgs/Modbustcpmasterlist.h>
#include <rm_msgs/MoveC.h>
#include <rm_msgs/MoveJ.h>
#include <rm_msgs/MoveJ_P.h>
#include <rm_msgs/MoveL.h>
#include <rm_msgs/Moveloffset.h>
#include <rm_msgs/Ort_Teach.h>
#include <rm_msgs/Plan_State.h>
#include <rm_msgs/Pos_Teach.h>
#include <rm_msgs/Programrunstate.h>
#include <rm_msgs/RS485_Mode.h>
#include <rm_msgs/RS485params.h>
#include <rm_msgs/Read_ModbusRTU.h>
#include <rm_msgs/Read_Register.h>
#include <rm_msgs/Read_TCPandRTU.h>
#include <rm_msgs/Register_Data.h>
#include <rm_msgs/Rm_Plus_Base.h>
#include <rm_msgs/Rm_Plus_State.h>
#include <rm_msgs/Servo_GetAngle.h>
#include <rm_msgs/Servo_Move.h>
#include <rm_msgs/Set_Force_Position.h>
#include <rm_msgs/Set_Modbus_Mode.h>
#include <rm_msgs/Set_Realtime_Push.h>
#include <rm_msgs/Six_Force.h>
#include <rm_msgs/Socket_Command.h>
#include <rm_msgs/Softwarebuildinfo.h>
#include <rm_msgs/Start_Multi_Drag_Teach.h>
#include <rm_msgs/Stop.h>
#include <rm_msgs/Stop_Teach.h>
#include <rm_msgs/Tool_Analog_Output.h>
#include <rm_msgs/Tool_Digital_Output.h>
#include <rm_msgs/Tool_IO_State.h>
#include <rm_msgs/Trajectoryinfo.h>
#include <rm_msgs/Trajectorylist.h>
#include <rm_msgs/Turtle_Driver.h>
#include <rm_msgs/UpdateTCPmasterparam.h>
#include <rm_msgs/Write_ModbusRTU.h>
#include <rm_msgs/Write_Register.h>
#include <rm_msgs/Write_TCPandRTU.h>
#include <std_msgs/Header.h>
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
        quoted("geometry_msgs/Point");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::geometry_msgs::Point>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::geometry_msgs::Point>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("geometry_msgs/Pose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::geometry_msgs::Pose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::geometry_msgs::Pose>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("geometry_msgs/Quaternion");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::geometry_msgs::Quaternion>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::geometry_msgs::Quaternion>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/ArmState");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::ArmState>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::ArmState>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Arm_Analog_Output");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Arm_Analog_Output>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Arm_Analog_Output>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Arm_Current_State");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Arm_Current_State>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Arm_Current_State>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Arm_Current_Status");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Arm_Current_Status>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Arm_Current_Status>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Arm_Digital_Output");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Arm_Digital_Output>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Arm_Digital_Output>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Arm_IO_State");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Arm_IO_State>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Arm_IO_State>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Arm_Joint_Speed_Max");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Arm_Joint_Speed_Max>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Arm_Joint_Speed_Max>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Arm_Softversion_v3");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Arm_Softversion_v3>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Arm_Softversion_v3>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Arm_Softversion_v4");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Arm_Softversion_v4>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Arm_Softversion_v4>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Arm_Software_Version");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Arm_Software_Version>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Arm_Software_Version>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Cabinet");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Cabinet>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Cabinet>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/CartePos");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::CartePos>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::CartePos>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/CartePosCustom");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::CartePosCustom>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::CartePosCustom>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/ChangeTool_Name");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::ChangeTool_Name>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::ChangeTool_Name>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/ChangeTool_State");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::ChangeTool_State>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::ChangeTool_State>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/ChangeWorkFrame_Name");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::ChangeWorkFrame_Name>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::ChangeWorkFrame_Name>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/ChangeWorkFrame_State");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::ChangeWorkFrame_State>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::ChangeWorkFrame_State>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Err");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Err>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Err>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Flowchartrunstate");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Flowchartrunstate>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Flowchartrunstate>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Force_Position_Move_Joint");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Force_Position_Move_Joint>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Force_Position_Move_Joint>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Force_Position_Move_Pose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Force_Position_Move_Pose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Force_Position_Move_Pose>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Force_Position_Move_Pose_Custom");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Force_Position_Move_Pose_Custom>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Force_Position_Move_Pose_Custom>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Force_Position_State");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Force_Position_State>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Force_Position_State>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/GetArmState_Command");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::GetArmState_Command>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::GetArmState_Command>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Get_TCP_Master_List_Param");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Get_TCP_Master_List_Param>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Get_TCP_Master_List_Param>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Gettrajectorylist");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Gettrajectorylist>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Gettrajectorylist>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Gripper_Pick");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Gripper_Pick>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Gripper_Pick>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Gripper_Set");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Gripper_Set>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Gripper_Set>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Hand_Angle");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Hand_Angle>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Hand_Angle>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Hand_Force");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Hand_Force>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Hand_Force>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Hand_Posture");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Hand_Posture>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Hand_Posture>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Hand_Seq");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Hand_Seq>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Hand_Seq>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Hand_Speed");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Hand_Speed>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Hand_Speed>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Hand_Status");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Hand_Status>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Hand_Status>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/IO_Update");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::IO_Update>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::IO_Update>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/JointPos");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::JointPos>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::JointPos>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/JointPosCustom");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::JointPosCustom>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::JointPosCustom>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Joint_Current");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Joint_Current>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Joint_Current>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Joint_En_Flag");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Joint_En_Flag>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Joint_En_Flag>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Joint_Enable");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Joint_Enable>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Joint_Enable>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Joint_Error_Code");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Joint_Error_Code>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Joint_Error_Code>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Joint_Max_Speed");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Joint_Max_Speed>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Joint_Max_Speed>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Joint_PoseEuler");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Joint_PoseEuler>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Joint_PoseEuler>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Joint_Speed");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Joint_Speed>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Joint_Speed>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Joint_Step");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Joint_Step>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Joint_Step>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Joint_Teach");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Joint_Teach>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Joint_Teach>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Joint_Temperature");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Joint_Temperature>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Joint_Temperature>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Joint_Voltage");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Joint_Voltage>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Joint_Voltage>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Jointversion");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Jointversion>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Jointversion>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/LiftState");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::LiftState>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::LiftState>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Lift_Height");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Lift_Height>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Lift_Height>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Lift_In_Position");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Lift_In_Position>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Lift_In_Position>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Lift_Speed");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Lift_Speed>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Lift_Speed>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Manual_Set_Force_Pose");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Manual_Set_Force_Pose>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Manual_Set_Force_Pose>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Mastername");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Mastername>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Mastername>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Modbusreaddata");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Modbusreaddata>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Modbusreaddata>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Modbustcpmasterinfo");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Modbustcpmasterinfo>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Modbustcpmasterinfo>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Modbustcpmasterlist");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Modbustcpmasterlist>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Modbustcpmasterlist>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/MoveC");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::MoveC>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::MoveC>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/MoveJ");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::MoveJ>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::MoveJ>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/MoveJ_P");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::MoveJ_P>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::MoveJ_P>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/MoveL");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::MoveL>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::MoveL>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Moveloffset");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Moveloffset>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Moveloffset>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Ort_Teach");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Ort_Teach>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Ort_Teach>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Plan_State");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Plan_State>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Plan_State>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Pos_Teach");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Pos_Teach>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Pos_Teach>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Programrunstate");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Programrunstate>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Programrunstate>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/RS485_Mode");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::RS485_Mode>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::RS485_Mode>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/RS485params");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::RS485params>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::RS485params>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Read_ModbusRTU");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Read_ModbusRTU>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Read_ModbusRTU>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Read_Register");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Read_Register>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Read_Register>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Read_TCPandRTU");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Read_TCPandRTU>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Read_TCPandRTU>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Register_Data");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Register_Data>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Register_Data>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Rm_Plus_Base");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Rm_Plus_Base>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Rm_Plus_Base>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Rm_Plus_State");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Rm_Plus_State>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Rm_Plus_State>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Servo_GetAngle");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Servo_GetAngle>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Servo_GetAngle>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Servo_Move");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Servo_Move>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Servo_Move>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Set_Force_Position");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Set_Force_Position>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Set_Force_Position>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Set_Modbus_Mode");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Set_Modbus_Mode>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Set_Modbus_Mode>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Set_Realtime_Push");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Set_Realtime_Push>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Set_Realtime_Push>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Six_Force");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Six_Force>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Six_Force>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Socket_Command");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Socket_Command>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Socket_Command>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Softwarebuildinfo");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Softwarebuildinfo>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Softwarebuildinfo>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Start_Multi_Drag_Teach");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Start_Multi_Drag_Teach>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Start_Multi_Drag_Teach>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Stop");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Stop>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Stop>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Stop_Teach");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Stop_Teach>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Stop_Teach>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Tool_Analog_Output");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Tool_Analog_Output>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Tool_Analog_Output>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Tool_Digital_Output");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Tool_Digital_Output>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Tool_Digital_Output>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Tool_IO_State");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Tool_IO_State>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Tool_IO_State>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Trajectoryinfo");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Trajectoryinfo>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Trajectoryinfo>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Trajectorylist");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Trajectorylist>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Trajectorylist>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Turtle_Driver");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Turtle_Driver>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Turtle_Driver>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/UpdateTCPmasterparam");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::UpdateTCPmasterparam>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::UpdateTCPmasterparam>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Write_ModbusRTU");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Write_ModbusRTU>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Write_ModbusRTU>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Write_Register");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Write_Register>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Write_Register>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("rm_msgs/Write_TCPandRTU");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::rm_msgs::Write_TCPandRTU>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::rm_msgs::Write_TCPandRTU>("message", false);
        bounded_native_io::print(output(), "}}");
        bounded_native_io::print(output(), ',');
        quoted("std_msgs/Header");
        bounded_native_io::print(output(), ":{\"native_identity\":");
        quoted(::ros::message_traits::MD5Sum<::std_msgs::Header>::value());
        bounded_native_io::print(output(), ",\"components\":{");
        component<::std_msgs::Header>("message", false);
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
