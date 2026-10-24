/**
 * @file records.c
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-polyscopex-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

#include <universal_robots/c_ffi_bridge/ros2/universal-robots-polyscopex-complete/records.h>

uint32_t universal_robots_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Builtin_interfacesMsgTime_decode(void const* b, size_t n, roswasmc_bounded_2_builtin_interfaces_msg_Time* v)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgPoint_encode(roswasmc_bounded_2_geometry_msgs_msg_Point const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgPoint_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Point* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgQuaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgQuaternion_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgPose_encode(roswasmc_bounded_2_geometry_msgs_msg_Pose const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgPose_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Pose* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgVector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgVector3_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Vector3* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgTwist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgTwist_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Twist* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(b, n, v);
}

uint32_t universal_robots_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Std_msgsMsgHeader_decode(void const* b, size_t n, roswasmc_bounded_2_std_msgs_msg_Header* v)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(b, n, v);
}

uint32_t universal_robots_Ros2Std_msgsMsgString_encode(roswasmc_bounded_2_std_msgs_msg_String const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_std_msgs_msg_String_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Std_msgsMsgString_decode(void const* b, size_t n, roswasmc_bounded_2_std_msgs_msg_String* v)
{
    return roswasmc_bounded_2_std_msgs_msg_String_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgRobotMode_encode(roswasmc_bounded_2_urinterfaces_msg_RobotMode const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_RobotMode_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgRobotMode_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_RobotMode* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_RobotMode_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2UrinterfacesActionSetMode_Goal_encode(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesActionSetMode_Goal_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_action_SetMode_Goal* v)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesActionSetMode_Result_encode(roswasmc_bounded_2_urinterfaces_action_SetMode_Result const* v,
                                                                      void* b,
                                                                      size_t n,
                                                                      size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Result_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesActionSetMode_Result_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_action_SetMode_Result* v)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Result_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesActionSetMode_Feedback_encode(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback const* v,
                                                                        void* b,
                                                                        size_t n,
                                                                        size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesActionSetMode_Feedback_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback* v)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgActiveTCP_encode(roswasmc_bounded_2_urinterfaces_msg_ActiveTCP const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgActiveTCP_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_ActiveTCP* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgAnalog_encode(roswasmc_bounded_2_urinterfaces_msg_Analog const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_Analog_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgAnalog_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_Analog* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_Analog_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgAnalogIO_encode(roswasmc_bounded_2_urinterfaces_msg_AnalogIO const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogIO_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgAnalogIO_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_AnalogIO* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogIO_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgAnalogIOStateStamped_encode(roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped const* v,
                                                                         void* b,
                                                                         size_t n,
                                                                         size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgAnalogIOStateStamped_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgAnalogStamped_encode(roswasmc_bounded_2_urinterfaces_msg_AnalogStamped const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgAnalogStamped_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_AnalogStamped* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgBoolStamped_encode(roswasmc_bounded_2_urinterfaces_msg_BoolStamped const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_BoolStamped_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgBoolStamped_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_BoolStamped* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_BoolStamped_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgControlCycle_encode(roswasmc_bounded_2_urinterfaces_msg_ControlCycle const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_ControlCycle_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgControlCycle_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_ControlCycle* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_ControlCycle_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgCurrent_encode(roswasmc_bounded_2_urinterfaces_msg_Current const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_Current_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgCurrent_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_Current* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_Current_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgDigital_encode(roswasmc_bounded_2_urinterfaces_msg_Digital const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_Digital_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgDigital_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_Digital* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_Digital_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgDigitalIO_encode(roswasmc_bounded_2_urinterfaces_msg_DigitalIO const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalIO_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgDigitalIO_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_DigitalIO* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalIO_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgDigitalIOStateStamped_encode(roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped const* v,
                                                                          void* b,
                                                                          size_t n,
                                                                          size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgDigitalIOStateStamped_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2UrinterfacesMsgDigitalStamped_encode(roswasmc_bounded_2_urinterfaces_msg_DigitalStamped const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgDigitalStamped_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_DigitalStamped* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgDoubleMultiArrayStamped_encode(roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped const* v,
                                                                            void* b,
                                                                            size_t n,
                                                                            size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros2UrinterfacesMsgDoubleMultiArrayStamped_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2UrinterfacesMsgFloat32Stamped_encode(roswasmc_bounded_2_urinterfaces_msg_Float32Stamped const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgFloat32Stamped_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_Float32Stamped* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2UrinterfacesMsgFloat64Stamped_encode(roswasmc_bounded_2_urinterfaces_msg_Float64Stamped const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgFloat64Stamped_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_Float64Stamped* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgJointMode_encode(roswasmc_bounded_2_urinterfaces_msg_JointMode const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_JointMode_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgJointMode_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_JointMode* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_JointMode_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgJointTemperature_encode(roswasmc_bounded_2_urinterfaces_msg_JointTemperature const* v,
                                                                     void* b,
                                                                     size_t n,
                                                                     size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_JointTemperature_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgJointTemperature_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_JointTemperature* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_JointTemperature_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgJointVoltage_encode(roswasmc_bounded_2_urinterfaces_msg_JointVoltage const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_JointVoltage_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgJointVoltage_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_JointVoltage* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_JointVoltage_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2UrinterfacesMsgJsonStringType_encode(roswasmc_bounded_2_urinterfaces_msg_JsonStringType const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_JsonStringType_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgJsonStringType_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_JsonStringType* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_JsonStringType_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgRuntimeState_encode(roswasmc_bounded_2_urinterfaces_msg_RuntimeState const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_RuntimeState_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgRuntimeState_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_RuntimeState* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_RuntimeState_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgSafetyStatus_encode(roswasmc_bounded_2_urinterfaces_msg_SafetyStatus const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgSafetyStatus_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_SafetyStatus* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgSharedVariablesEditResponse_encode(roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgSharedVariablesEditResponse_decode(void const* b,
                                                                                size_t n,
                                                                                roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgSpeedSliderFraction_encode(roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction const* v,
                                                                        void* b,
                                                                        size_t n,
                                                                        size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgSpeedSliderFraction_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgTCPState_encode(roswasmc_bounded_2_urinterfaces_msg_TCPState const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_TCPState_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgTCPState_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_TCPState* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_TCPState_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2UrinterfacesMsgToolOutputMode_encode(roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgToolOutputMode_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2UrinterfacesMsgVariableUpdate_encode(roswasmc_bounded_2_urinterfaces_msg_VariableUpdate const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgVariableUpdate_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_VariableUpdate* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesMsgVoltageCurrentStamped_encode(roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped const* v,
                                                                          void* b,
                                                                          size_t n,
                                                                          size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgVoltageCurrentStamped_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2UrinterfacesMsgWorldModelNames_encode(roswasmc_bounded_2_urinterfaces_msg_WorldModelNames const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesMsgWorldModelNames_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_msg_WorldModelNames* v)
{
    return roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSetAnalogOutput_Request_encode(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request const* v,
                                                                            void* b,
                                                                            size_t n,
                                                                            size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros2UrinterfacesSrvSetAnalogOutput_Request_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request* v)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSetAnalogOutput_Response_encode(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response const* v,
                                                                             void* b,
                                                                             size_t n,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSetAnalogOutput_Response_decode(void const* b,
                                                                             size_t n,
                                                                             roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response* v)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSetDigitalOutput_Request_encode(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request const* v,
                                                                             void* b,
                                                                             size_t n,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSetDigitalOutput_Request_decode(void const* b,
                                                                             size_t n,
                                                                             roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request* v)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSetDigitalOutput_Response_encode(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response const* v,
                                                                              void* b,
                                                                              size_t n,
                                                                              size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSetDigitalOutput_Response_decode(void const* b,
                                                                              size_t n,
                                                                              roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response* v)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSetSpeedFraction_Request_encode(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request const* v,
                                                                             void* b,
                                                                             size_t n,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSetSpeedFraction_Request_decode(void const* b,
                                                                             size_t n,
                                                                             roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request* v)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSetSpeedFraction_Response_encode(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response const* v,
                                                                              void* b,
                                                                              size_t n,
                                                                              size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSetSpeedFraction_Response_decode(void const* b,
                                                                              size_t n,
                                                                              roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response* v)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSharedVariablesEditor_Request_encode(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request const* v,
                                                                                  void* b,
                                                                                  size_t n,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSharedVariablesEditor_Request_decode(void const* b,
                                                                                  size_t n,
                                                                                  roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request* v)
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSharedVariablesEditor_Response_encode(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response const* v,
                                                                                   void* b,
                                                                                   size_t n,
                                                                                   size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesSrvSharedVariablesEditor_Response_decode(void const* b,
                                                                                   size_t n,
                                                                                   roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response* v)
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesSrvVariablesViewer_Request_encode(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request const* v,
                                                                            void* b,
                                                                            size_t n,
                                                                            size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros2UrinterfacesSrvVariablesViewer_Request_decode(void const* b, size_t n, roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request* v)
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2UrinterfacesSrvVariablesViewer_Response_encode(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response const* v,
                                                                             void* b,
                                                                             size_t n,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2UrinterfacesSrvVariablesViewer_Response_decode(void const* b,
                                                                             size_t n,
                                                                             roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response* v)
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_decode(b, n, v);
}

roswasmc_result universal_robots_roswasmc_bounded_2_urinterfaces_action_SetMode_send(roswasmc_action_bundle* bundle,
                                                                                     roswasmc_bounded_2_urinterfaces_action_SetMode_Goal const* goal,
                                                                                     uint64_t* id)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_send(bundle, goal, id);
}

roswasmc_result universal_robots_roswasmc_bounded_2_urinterfaces_action_SetMode_feedback(roswasmc_action_bundle const* bundle,
                                                                                         uint64_t id,
                                                                                         roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback* feedback)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_feedback(bundle, id, feedback);
}

roswasmc_result universal_robots_roswasmc_bounded_2_urinterfaces_action_SetMode_result(roswasmc_action_bundle* bundle,
                                                                                       uint64_t id,
                                                                                       uint8_t* kind,
                                                                                       roswasmc_bounded_2_urinterfaces_action_SetMode_Result* result)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_result(bundle, id, kind, result);
}

roswasmc_result universal_robots_roswasmc_bounded_2_urinterfaces_action_SetMode_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* id,
                                                                                     roswasmc_bounded_2_urinterfaces_action_SetMode_Goal* goal)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_poll(cap, id, goal);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_action_SetMode_respond_feedback(roswasmc_capability const* cap,
                                                                                     uint64_t id,
                                                                                     roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback const* value)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_respond_feedback(cap, id, value);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_action_SetMode_respond_result(roswasmc_capability const* cap,
                                                                                   uint64_t id,
                                                                                   uint8_t kind,
                                                                                   roswasmc_bounded_2_urinterfaces_action_SetMode_Result const* value)
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_respond_result(cap, id, kind, value);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request const* request,
                                                                              roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response* response)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_poll(roswasmc_capability const* cap,
                                                                                          uint64_t* ticket,
                                                                                          roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request* request)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response const* response)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request const* request,
                                                                               roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response* response)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request* request)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response const* response)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request const* request,
                                                                               roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response* response)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request* request)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response const* response)
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request const* request,
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response* response)
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request* request)
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response const* response)
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request const* request,
                                                                              roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response* response)
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_poll(roswasmc_capability const* cap,
                                                                                          uint64_t* ticket,
                                                                                          roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request* request)
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response const* response)
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_respond(cap, ticket, response);
}
