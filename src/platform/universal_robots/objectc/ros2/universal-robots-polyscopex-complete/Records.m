/**
 * @file Records.m
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-polyscopex-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

#include <universal_robots/objectc/ros2/universal-robots-polyscopex-complete/Records.h>
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Builtin_interfacesMsgTime

+ (uint32_t)encode:(roswasmc_bounded_2_builtin_interfaces_msg_Time const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_builtin_interfaces_msg_Time*)v
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Geometry_msgsMsgPoint

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Point const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Point*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Geometry_msgsMsgQuaternion

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Geometry_msgsMsgPose

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Pose const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Pose*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Geometry_msgsMsgVector3

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Vector3*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Geometry_msgsMsgTwist

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Twist const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Twist*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Std_msgsMsgHeader

+ (uint32_t)encode:(roswasmc_bounded_2_std_msgs_msg_Header const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_std_msgs_msg_Header*)v
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Std_msgsMsgString

+ (uint32_t)encode:(roswasmc_bounded_2_std_msgs_msg_String const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_std_msgs_msg_String_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_std_msgs_msg_String*)v
{
    return roswasmc_bounded_2_std_msgs_msg_String_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgRobotMode

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_RobotMode const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_RobotMode_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_RobotMode*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_RobotMode_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesActionSetMode_Goal

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal*)v
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Goal_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesActionSetMode_Result

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_action_SetMode_Result const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Result_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_action_SetMode_Result*)v
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Result_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesActionSetMode_Feedback

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback*)v
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgActiveTCP

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_ActiveTCP const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_ActiveTCP*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_ActiveTCP_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgAnalog

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_Analog const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_Analog_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_Analog*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_Analog_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgAnalogIO

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_AnalogIO const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogIO_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_AnalogIO*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogIO_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgAnalogIOStateStamped

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgAnalogStamped

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_AnalogStamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_AnalogStamped*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_AnalogStamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgBoolStamped

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_BoolStamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_BoolStamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_BoolStamped*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_BoolStamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgControlCycle

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_ControlCycle const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_ControlCycle_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_ControlCycle*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_ControlCycle_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgCurrent

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_Current const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_Current_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_Current*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_Current_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgDigital

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_Digital const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_Digital_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_Digital*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_Digital_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgDigitalIO

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_DigitalIO const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalIO_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_DigitalIO*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalIO_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgDigitalIOStateStamped

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgDigitalStamped

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_DigitalStamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_DigitalStamped*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_DigitalStamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgDoubleMultiArrayStamped

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgFloat32Stamped

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_Float32Stamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_Float32Stamped*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_Float32Stamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgFloat64Stamped

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_Float64Stamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_Float64Stamped*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_Float64Stamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgJointMode

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_JointMode const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_JointMode_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_JointMode*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_JointMode_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgJointTemperature

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_JointTemperature const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_JointTemperature_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_JointTemperature*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_JointTemperature_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgJointVoltage

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_JointVoltage const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_JointVoltage_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_JointVoltage*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_JointVoltage_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgJsonStringType

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_JsonStringType const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_JsonStringType_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_JsonStringType*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_JsonStringType_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgRuntimeState

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_RuntimeState const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_RuntimeState_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_RuntimeState*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_RuntimeState_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgSafetyStatus

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_SafetyStatus const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_SafetyStatus*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_SafetyStatus_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgSharedVariablesEditResponse

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgSpeedSliderFraction

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgTCPState

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_TCPState const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_TCPState_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_TCPState*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_TCPState_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgToolOutputMode

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgVariableUpdate

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_VariableUpdate const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_VariableUpdate*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_VariableUpdate_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgVoltageCurrentStamped

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgWorldModelNames

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_WorldModelNames const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_msg_WorldModelNames*)v
{
    return roswasmc_bounded_2_urinterfaces_msg_WorldModelNames_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetAnalogOutput_Request

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request*)v
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetAnalogOutput_Response

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response*)v
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetDigitalOutput_Request

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request*)v
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetDigitalOutput_Response

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response*)v
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetSpeedFraction_Request

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request*)v
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetSpeedFraction_Response

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response*)v
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSharedVariablesEditor_Request

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request*)v
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSharedVariablesEditor_Response

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response*)v
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvVariablesViewer_Request

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request*)v
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvVariablesViewer_Response

+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response*)v
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response_decode(b, n, v);
}

@end

@implementation UniversalRobotsUniversalRobotsPolyscopexCompleteInterfaces

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_send:(roswasmc_action_bundle*)bundle
                                                                  goal:(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal const*)goal
                                                                    id:(uint64_t*)id
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_send(bundle, goal, id);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_feedback:(roswasmc_action_bundle const*)bundle
                                                                        id:(uint64_t)id
                                                                  feedback:(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback*)feedback
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_feedback(bundle, id, feedback);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_result:(roswasmc_action_bundle*)bundle
                                                                      id:(uint64_t)id
                                                                    kind:(uint8_t*)kind
                                                                  result:(roswasmc_bounded_2_urinterfaces_action_SetMode_Result*)result
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_result(bundle, id, kind, result);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_poll:(roswasmc_capability const*)cap
                                                                    id:(uint64_t*)id
                                                                  goal:(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal*)goal
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_poll(cap, id, goal);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_respond_feedback:(roswasmc_capability const*)cap
                                                                                id:(uint64_t)id
                                                                             value:(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback const*)value
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_respond_feedback(cap, id, value);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_respond_result:(roswasmc_capability const*)cap
                                                                              id:(uint64_t)id
                                                                            kind:(uint8_t)kind
                                                                           value:(roswasmc_bounded_2_urinterfaces_action_SetMode_Result const*)value
{
    return roswasmc_bounded_2_urinterfaces_action_SetMode_respond_result(cap, id, kind, value);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_call:(roswasmc_capability const*)cap
                                                                    request:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request const*)request
                                                                   response:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response*)response
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_poll:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t*)ticket
                                                                    request:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request*)request
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_respond:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t)ticket
                                                                      response:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response const*)response
{
    return roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request const*)request
                                                                    response:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response*)response
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request*)request
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response const*)response
{
    return roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request const*)request
                                                                    response:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response*)response
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request*)request
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response const*)response
{
    return roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_call:(roswasmc_capability const*)cap
                                                                          request:
                                                                              (roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request const*)request
                                                                         response:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response*)response
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_poll:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t*)ticket
                                                                          request:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request*)request
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_respond:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t)ticket
                                                                            response:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response const*)
                                                                                         response
{
    return roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_call:(roswasmc_capability const*)cap
                                                                    request:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request const*)request
                                                                   response:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response*)response
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_poll:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t*)ticket
                                                                    request:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request*)request
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_respond:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t)ticket
                                                                      response:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response const*)response
{
    return roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_respond(cap, ticket, response);
}

@end
