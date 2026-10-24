/** @file Records.h
 * @brief Genuine Objective-C class messages over exact full vendor records.
 */
#pragma once
#include <universal_robots/c/ros2/universal-robots-polyscopex-complete/bounded_interfaces.h>
#include <universal_robots/c/ros2/universal-robots-polyscopex-complete/bounded_records.h>
/** @brief Complete original builtin_interfaces/msg/Time codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Builtin_interfacesMsgTime
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_builtin_interfaces_msg_Time const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_builtin_interfaces_msg_Time*)value;
@end
/** @brief Complete original geometry_msgs/msg/Point codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Geometry_msgsMsgPoint
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Point const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_geometry_msgs_msg_Point*)value;
@end
/** @brief Complete original geometry_msgs/msg/Quaternion codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Geometry_msgsMsgQuaternion
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion*)value;
@end
/** @brief Complete original geometry_msgs/msg/Pose codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Geometry_msgsMsgPose
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Pose const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_geometry_msgs_msg_Pose*)value;
@end
/** @brief Complete original geometry_msgs/msg/Vector3 codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Geometry_msgsMsgVector3
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_geometry_msgs_msg_Vector3*)value;
@end
/** @brief Complete original geometry_msgs/msg/Twist codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Geometry_msgsMsgTwist
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Twist const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_geometry_msgs_msg_Twist*)value;
@end
/** @brief Complete original std_msgs/msg/Header codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Std_msgsMsgHeader
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_std_msgs_msg_Header const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_std_msgs_msg_Header*)value;
@end
/** @brief Complete original std_msgs/msg/String codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2Std_msgsMsgString
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_std_msgs_msg_String const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_std_msgs_msg_String*)value;
@end
/** @brief Complete original urinterfaces/msg/RobotMode codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgRobotMode
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_RobotMode const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_RobotMode*)value;
@end
/** @brief Complete original urinterfaces/action/SetMode_Goal codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesActionSetMode_Goal
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal*)value;
@end
/** @brief Complete original urinterfaces/action/SetMode_Result codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesActionSetMode_Result
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_action_SetMode_Result const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_action_SetMode_Result*)value;
@end
/** @brief Complete original urinterfaces/action/SetMode_Feedback codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesActionSetMode_Feedback
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback*)value;
@end
/** @brief Complete original urinterfaces/msg/ActiveTCP codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgActiveTCP
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_ActiveTCP const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_ActiveTCP*)value;
@end
/** @brief Complete original urinterfaces/msg/Analog codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgAnalog
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_Analog const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_Analog*)value;
@end
/** @brief Complete original urinterfaces/msg/AnalogIO codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgAnalogIO
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_AnalogIO const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_AnalogIO*)value;
@end
/** @brief Complete original urinterfaces/msg/AnalogIOStateStamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgAnalogIOStateStamped
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_AnalogIOStateStamped*)value;
@end
/** @brief Complete original urinterfaces/msg/AnalogStamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgAnalogStamped
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_AnalogStamped const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_AnalogStamped*)value;
@end
/** @brief Complete original urinterfaces/msg/BoolStamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgBoolStamped
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_BoolStamped const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_BoolStamped*)value;
@end
/** @brief Complete original urinterfaces/msg/ControlCycle codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgControlCycle
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_ControlCycle const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_ControlCycle*)value;
@end
/** @brief Complete original urinterfaces/msg/Current codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgCurrent
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_Current const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_Current*)value;
@end
/** @brief Complete original urinterfaces/msg/Digital codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgDigital
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_Digital const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_Digital*)value;
@end
/** @brief Complete original urinterfaces/msg/DigitalIO codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgDigitalIO
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_DigitalIO const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_DigitalIO*)value;
@end
/** @brief Complete original urinterfaces/msg/DigitalIOStateStamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgDigitalIOStateStamped
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_DigitalIOStateStamped*)value;
@end
/** @brief Complete original urinterfaces/msg/DigitalStamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgDigitalStamped
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_DigitalStamped const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_DigitalStamped*)value;
@end
/** @brief Complete original urinterfaces/msg/DoubleMultiArrayStamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgDoubleMultiArrayStamped
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_DoubleMultiArrayStamped*)value;
@end
/** @brief Complete original urinterfaces/msg/Float32Stamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgFloat32Stamped
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_Float32Stamped const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_Float32Stamped*)value;
@end
/** @brief Complete original urinterfaces/msg/Float64Stamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgFloat64Stamped
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_Float64Stamped const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_Float64Stamped*)value;
@end
/** @brief Complete original urinterfaces/msg/JointMode codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgJointMode
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_JointMode const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_JointMode*)value;
@end
/** @brief Complete original urinterfaces/msg/JointTemperature codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgJointTemperature
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_JointTemperature const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_JointTemperature*)value;
@end
/** @brief Complete original urinterfaces/msg/JointVoltage codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgJointVoltage
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_JointVoltage const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_JointVoltage*)value;
@end
/** @brief Complete original urinterfaces/msg/JsonStringType codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgJsonStringType
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_JsonStringType const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_JsonStringType*)value;
@end
/** @brief Complete original urinterfaces/msg/RuntimeState codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgRuntimeState
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_RuntimeState const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_RuntimeState*)value;
@end
/** @brief Complete original urinterfaces/msg/SafetyStatus codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgSafetyStatus
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_SafetyStatus const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_SafetyStatus*)value;
@end
/** @brief Complete original urinterfaces/msg/SharedVariablesEditResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgSharedVariablesEditResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_SharedVariablesEditResponse*)value;
@end
/** @brief Complete original urinterfaces/msg/SpeedSliderFraction codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgSpeedSliderFraction
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_SpeedSliderFraction*)value;
@end
/** @brief Complete original urinterfaces/msg/TCPState codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgTCPState
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_TCPState const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_TCPState*)value;
@end
/** @brief Complete original urinterfaces/msg/ToolOutputMode codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgToolOutputMode
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_ToolOutputMode*)value;
@end
/** @brief Complete original urinterfaces/msg/VariableUpdate codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgVariableUpdate
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_VariableUpdate const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_VariableUpdate*)value;
@end
/** @brief Complete original urinterfaces/msg/VoltageCurrentStamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgVoltageCurrentStamped
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_VoltageCurrentStamped*)value;
@end
/** @brief Complete original urinterfaces/msg/WorldModelNames codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesMsgWorldModelNames
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_msg_WorldModelNames const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_msg_WorldModelNames*)value;
@end
/** @brief Complete original urinterfaces/srv/SetAnalogOutput_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetAnalogOutput_Request
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request*)value;
@end
/** @brief Complete original urinterfaces/srv/SetAnalogOutput_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetAnalogOutput_Response
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response*)value;
@end
/** @brief Complete original urinterfaces/srv/SetDigitalOutput_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetDigitalOutput_Request
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request*)value;
@end
/** @brief Complete original urinterfaces/srv/SetDigitalOutput_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetDigitalOutput_Response
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response*)value;
@end
/** @brief Complete original urinterfaces/srv/SetSpeedFraction_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetSpeedFraction_Request
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request*)value;
@end
/** @brief Complete original urinterfaces/srv/SetSpeedFraction_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSetSpeedFraction_Response
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response*)value;
@end
/** @brief Complete original urinterfaces/srv/SharedVariablesEditor_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSharedVariablesEditor_Request
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request*)value;
@end
/** @brief Complete original urinterfaces/srv/SharedVariablesEditor_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvSharedVariablesEditor_Response
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response*)value;
@end
/** @brief Complete original urinterfaces/srv/VariablesViewer_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvVariablesViewer_Request
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request*)value;
@end
/** @brief Complete original urinterfaces/srv/VariablesViewer_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteRos2UrinterfacesSrvVariablesViewer_Response
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response*)value;
@end

/** @brief Preserve complete typed service/action roles and results through real Objective-C messages. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsPolyscopexCompleteInterfaces
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_action_SetMode_send.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param bundle Caller-owned role bundle and goal table; retain its context and exclusive mutable state.
 * @param goal Complete immutable selected canonical value; keep its storage stable through return.
 * @param id Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_send:(roswasmc_action_bundle*)bundle
                                                                  goal:(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal const*)goal
                                                                    id:(uint64_t*)id;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_action_SetMode_feedback.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param bundle Caller-owned role bundle and goal table; retain its context and exclusive mutable state.
 * @param id Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param feedback Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_feedback:(roswasmc_action_bundle const*)bundle
                                                                        id:(uint64_t)id
                                                                  feedback:(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback*)feedback;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_action_SetMode_result.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param bundle Caller-owned role bundle and goal table; retain its context and exclusive mutable state.
 * @param id Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param kind Exclusive caller destination; consume only when the full returned result reports success.
 * @param result Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_result:(roswasmc_action_bundle*)bundle
                                                                      id:(uint64_t)id
                                                                    kind:(uint8_t*)kind
                                                                  result:(roswasmc_bounded_2_urinterfaces_action_SetMode_Result*)result;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_action_SetMode_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param id Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param goal Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_poll:(roswasmc_capability const*)cap
                                                                    id:(uint64_t*)id
                                                                  goal:(roswasmc_bounded_2_urinterfaces_action_SetMode_Goal*)goal;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_action_SetMode_respond_feedback.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param id Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param value Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_respond_feedback:(roswasmc_capability const*)cap
                                                                                id:(uint64_t)id
                                                                             value:(roswasmc_bounded_2_urinterfaces_action_SetMode_Feedback const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_action_SetMode_respond_result.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param id Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param kind Exclusive caller destination; consume only when the full returned result reports success.
 * @param value Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_action_SetMode_respond_result:(roswasmc_capability const*)cap
                                                                              id:(uint64_t)id
                                                                            kind:(uint8_t)kind
                                                                           value:(roswasmc_bounded_2_urinterfaces_action_SetMode_Result const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_call:(roswasmc_capability const*)cap
                                                                    request:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request const*)request
                                                                   response:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_poll:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t*)ticket
                                                                    request:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_respond:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t)ticket
                                                                      response:(roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request const*)request
                                                                    response:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request const*)request
                                                                    response:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_2_urinterfaces_srv_SetSpeedFraction_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_call:(roswasmc_capability const*)cap
                                                                          request:
                                                                              (roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request const*)request
                                                                         response:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_poll:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t*)ticket
                                                                          request:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_respond:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t)ticket
                                                                            response:(roswasmc_bounded_2_urinterfaces_srv_SharedVariablesEditor_Response const*)
                                                                                         response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_call:(roswasmc_capability const*)cap
                                                                    request:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request const*)request
                                                                   response:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_poll:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t*)ticket
                                                                    request:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_respond:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t)ticket
                                                                      response:(roswasmc_bounded_2_urinterfaces_srv_VariablesViewer_Response const*)response;
@end
