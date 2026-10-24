/** @file Records.h
 * @brief Genuine Objective-C class messages over exact full vendor records.
 */
#pragma once
#include <universal_robots/c/ros2/universal-robots-ros2-complete/bounded_interfaces.h>
#include <universal_robots/c/ros2/universal-robots-ros2-complete/bounded_records.h>
/** @brief Complete original builtin_interfaces/msg/Duration codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Builtin_interfacesMsgDuration
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
+ (uint32_t)encode:(roswasmc_bounded_2_builtin_interfaces_msg_Duration const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_builtin_interfaces_msg_Duration*)value;
@end
/** @brief Complete original builtin_interfaces/msg/Time codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Builtin_interfacesMsgTime
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
/** @brief Complete original control_msgs/msg/JointTolerance codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Control_msgsMsgJointTolerance
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
+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_msg_JointTolerance const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_control_msgs_msg_JointTolerance*)value;
@end
/** @brief Complete original geometry_msgs/msg/Point codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Geometry_msgsMsgPoint
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
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Geometry_msgsMsgQuaternion
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
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Geometry_msgsMsgPose
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
/** @brief Complete original std_msgs/msg/Header codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Std_msgsMsgHeader
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
/** @brief Complete original geometry_msgs/msg/PoseStamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Geometry_msgsMsgPoseStamped
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
+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped*)value;
@end
/** @brief Complete original geometry_msgs/msg/Vector3 codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Geometry_msgsMsgVector3
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
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Geometry_msgsMsgTwist
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
/** @brief Complete original geometry_msgs/msg/Vector3Stamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Geometry_msgsMsgVector3Stamped
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
+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped*)value;
@end
/** @brief Complete original geometry_msgs/msg/Wrench codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Geometry_msgsMsgWrench
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
+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Wrench const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_geometry_msgs_msg_Wrench*)value;
@end
/** @brief Complete original trajectory_msgs/msg/JointTrajectoryPoint codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Trajectory_msgsMsgJointTrajectoryPoint
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
+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint*)value;
@end
/** @brief Complete original trajectory_msgs/msg/JointTrajectory codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Trajectory_msgsMsgJointTrajectory
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
+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory*)value;
@end
/** @brief Complete original ur_dashboard_msgs/action/SetMode_Goal codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsActionSetMode_Goal
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal*)value;
@end
/** @brief Complete original ur_dashboard_msgs/action/SetMode_Result codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsActionSetMode_Result
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result*)value;
@end
/** @brief Complete original ur_dashboard_msgs/action/SetMode_Feedback codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsActionSetMode_Feedback
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback*)value;
@end
/** @brief Complete original ur_dashboard_msgs/msg/OperationalMode codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsMsgOperationalMode
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode*)value;
@end
/** @brief Complete original ur_dashboard_msgs/msg/ProgramInformation codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsMsgProgramInformation
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation*)value;
@end
/** @brief Complete original ur_dashboard_msgs/msg/ProgramState codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsMsgProgramState
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState*)value;
@end
/** @brief Complete original ur_dashboard_msgs/msg/RobotMode codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsMsgRobotMode
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode*)value;
@end
/** @brief Complete original ur_dashboard_msgs/msg/SafetyMode codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsMsgSafetyMode
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode*)value;
@end
/** @brief Complete original ur_dashboard_msgs/msg/SafetyStatus codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsMsgSafetyStatus
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus*)value;
@end
/** @brief Complete original ur_dashboard_msgs/msg/UserRole codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsMsgUserRole
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole*)value;
@end
/** @brief Complete original ur_dashboard_msgs/msg/VersionInformation codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsMsgVersionInformation
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/AddToLog_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvAddToLog_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/AddToLog_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvAddToLog_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/DownloadProgram_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvDownloadProgram_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/DownloadProgram_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvDownloadProgram_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/DownloadSupportFile_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvDownloadSupportFile_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/DownloadSupportFile_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvDownloadSupportFile_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GenerateFlightReport_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGenerateFlightReport_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GenerateFlightReport_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGenerateFlightReport_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GenerateSupportFile_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGenerateSupportFile_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GenerateSupportFile_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGenerateSupportFile_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetLoadedProgram_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetLoadedProgram_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetLoadedProgram_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetLoadedProgram_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetOperationalMode_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetOperationalMode_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetOperationalMode_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetOperationalMode_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetPolyScopeVersion_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetPolyScopeVersion_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetProgramState_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetProgramState_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetProgramState_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetProgramState_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetPrograms_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetPrograms_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetPrograms_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetPrograms_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetRobotMode_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetRobotMode_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetRobotMode_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetRobotMode_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetRobotModel_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetRobotModel_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetRobotModel_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetRobotModel_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetSafetyMode_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetSafetyMode_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetSafetyMode_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetSafetyMode_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetSafetyStatus_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetSafetyStatus_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetSafetyStatus_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetSafetyStatus_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetSerialNumber_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetSerialNumber_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetSerialNumber_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetSerialNumber_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetUserRole_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetUserRole_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/GetUserRole_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvGetUserRole_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/IsInRemoteControl_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvIsInRemoteControl_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/IsInRemoteControl_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvIsInRemoteControl_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/IsProgramRunning_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvIsProgramRunning_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/IsProgramRunning_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvIsProgramRunning_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/IsProgramSaved_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvIsProgramSaved_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/IsProgramSaved_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvIsProgramSaved_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/Load_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvLoad_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/Load_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvLoad_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/Popup_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvPopup_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/Popup_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvPopup_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/RawRequest_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvRawRequest_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/RawRequest_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvRawRequest_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/SetOperationalMode_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvSetOperationalMode_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/SetOperationalMode_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvSetOperationalMode_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/SetUserRole_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvSetUserRole_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/SetUserRole_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvSetUserRole_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/UploadProgram_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvUploadProgram_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request*)value;
@end
/** @brief Complete original ur_dashboard_msgs/srv/UploadProgram_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_dashboard_msgsSrvUploadProgram_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response*)value;
@end
/** @brief Complete original ur_msgs/action/FollowJointTrajectoryUntil_Goal codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionFollowJointTrajectoryUntil_Goal
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal*)value;
@end
/** @brief Complete original ur_msgs/action/FollowJointTrajectoryUntil_Result codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionFollowJointTrajectoryUntil_Result
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result*)value;
@end
/** @brief Complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback*)value;
@end
/** @brief Complete original ur_msgs/action/SendScript_Goal codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionSendScript_Goal
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_SendScript_Goal const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_action_SendScript_Goal*)value;
@end
/** @brief Complete original ur_msgs/action/SendScript_Result codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionSendScript_Result
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_SendScript_Result const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_action_SendScript_Result*)value;
@end
/** @brief Complete original ur_msgs/action/SendScript_Feedback codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionSendScript_Feedback
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback*)value;
@end
/** @brief Complete original ur_msgs/action/ToolContact_Goal codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionToolContact_Goal
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal*)value;
@end
/** @brief Complete original ur_msgs/action/ToolContact_Result codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionToolContact_Result
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Result const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Result*)value;
@end
/** @brief Complete original ur_msgs/action/ToolContact_Feedback codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsActionToolContact_Feedback
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback*)value;
@end
/** @brief Complete original ur_msgs/msg/Analog codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsMsgAnalog
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_Analog const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_msg_Analog*)value;
@end
/** @brief Complete original ur_msgs/msg/Digital codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsMsgDigital
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_Digital const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_msg_Digital*)value;
@end
/** @brief Complete original ur_msgs/msg/FrictionModelParameters codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsMsgFrictionModelParameters
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters*)value;
@end
/** @brief Complete original ur_msgs/msg/IOStates codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsMsgIOStates
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_IOStates const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_msg_IOStates*)value;
@end
/** @brief Complete original ur_msgs/msg/MasterboardDataMsg codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsMsgMasterboardDataMsg
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg*)value;
@end
/** @brief Complete original ur_msgs/msg/RobotModeDataMsg codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsMsgRobotModeDataMsg
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg*)value;
@end
/** @brief Complete original ur_msgs/msg/RobotStateRTMsg codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsMsgRobotStateRTMsg
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg*)value;
@end
/** @brief Complete original ur_msgs/msg/ToolDataMsg codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsMsgToolDataMsg
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg*)value;
@end
/** @brief Complete original ur_msgs/srv/GetRobotSoftwareVersion_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvGetRobotSoftwareVersion_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request*)value;
@end
/** @brief Complete original ur_msgs/srv/GetRobotSoftwareVersion_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvGetRobotSoftwareVersion_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response*)value;
@end
/** @brief Complete original ur_msgs/srv/SetAnalogOutput_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetAnalogOutput_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request*)value;
@end
/** @brief Complete original ur_msgs/srv/SetAnalogOutput_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetAnalogOutput_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response*)value;
@end
/** @brief Complete original ur_msgs/srv/SetForceMode_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetForceMode_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request*)value;
@end
/** @brief Complete original ur_msgs/srv/SetForceMode_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetForceMode_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response*)value;
@end
/** @brief Complete original ur_msgs/srv/SetFrictionModelParameters_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetFrictionModelParameters_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request*)value;
@end
/** @brief Complete original ur_msgs/srv/SetFrictionModelParameters_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetFrictionModelParameters_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response*)value;
@end
/** @brief Complete original ur_msgs/srv/SetGravity_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetGravity_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request*)value;
@end
/** @brief Complete original ur_msgs/srv/SetGravity_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetGravity_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response*)value;
@end
/** @brief Complete original ur_msgs/srv/SetIO_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetIO_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Request const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Request*)value;
@end
/** @brief Complete original ur_msgs/srv/SetIO_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetIO_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Response const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Response*)value;
@end
/** @brief Complete original ur_msgs/srv/SetPayload_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetPayload_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request*)value;
@end
/** @brief Complete original ur_msgs/srv/SetPayload_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetPayload_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response*)value;
@end
/** @brief Complete original ur_msgs/srv/SetSpeedSliderFraction_Request codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetSpeedSliderFraction_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request*)value;
@end
/** @brief Complete original ur_msgs/srv/SetSpeedSliderFraction_Response codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteRos2Ur_msgsSrvSetSpeedSliderFraction_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response*)value;
@end

/** @brief Preserve complete typed service/action roles and results through real Objective-C messages. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos2CompleteInterfaces
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_send.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_send:(roswasmc_action_bundle*)bundle
                                                                       goal:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal const*)goal
                                                                         id:(uint64_t*)id;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_feedback.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_feedback:(roswasmc_action_bundle const*)bundle
                                                                             id:(uint64_t)id
                                                                       feedback:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback*)feedback;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_result.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_result:(roswasmc_action_bundle*)bundle
                                                                           id:(uint64_t)id
                                                                         kind:(uint8_t*)kind
                                                                       result:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result*)result;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_poll:(roswasmc_capability const*)cap
                                                                         id:(uint64_t*)id
                                                                       goal:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal*)goal;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_feedback.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_feedback:(roswasmc_capability const*)cap
                                                                                     id:(uint64_t)id
                                                                                  value:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback const*)
                                                                                            value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_result.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_result:(roswasmc_capability const*)cap
                                                                                   id:(uint64_t)id
                                                                                 kind:(uint8_t)kind
                                                                                value:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_call:(roswasmc_capability const*)cap
                                                                  request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request const*)request
                                                                 response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_poll:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t*)ticket
                                                                  request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_respond:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t)ticket
                                                                    response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_call:(roswasmc_capability const*)cap
                                                                         request:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request const*)request
                                                                        response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_poll:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t*)ticket
                                                                         request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_respond:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t)ticket
                                                                           response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response const*)
                                                                                        response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_call.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request const*)request
                                                             response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_poll:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t*)ticket
                                                                             request:
                                                                                 (roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_respond.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_call.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_call:(roswasmc_capability const*)cap
                                                               request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request const*)request
                                                              response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_poll:(roswasmc_capability const*)cap
                                                                               ticket:(uint64_t*)ticket
                                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request*)
                                                                                          request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_respond.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_respond:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t)ticket
                                                                 response:
                                                                     (roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_call.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request const*)request
                                                             response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_poll:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t*)ticket
                                                                             request:
                                                                                 (roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_respond.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_call:(roswasmc_capability const*)cap
                                                                          request:
                                                                              (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request const*)request
                                                                         response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_poll:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t*)ticket
                                                                          request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_respond:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t)ticket
                                                                            response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response const*)
                                                                                         response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_call.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_call:(roswasmc_capability const*)cap
                                                             request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request const*)request
                                                            response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_poll:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t*)ticket
                                                                            request:
                                                                                (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_respond.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_respond:(roswasmc_capability const*)cap
                                                                 ticket:(uint64_t)ticket
                                                               response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_call.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request const*)request
                                                             response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_poll:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t*)ticket
                                                                             request:
                                                                                 (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_respond.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_call:(roswasmc_capability const*)cap
                                                                         request:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request const*)request
                                                                        response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_poll:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t*)ticket
                                                                         request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_respond:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t)ticket
                                                                           response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response const*)
                                                                                        response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request const*)request
                                                                    response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_call:(roswasmc_capability const*)cap
                                                                      request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request const*)request
                                                                     response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_poll:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t*)ticket
                                                                      request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_respond:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t)ticket
                                                                        response:
                                                                            (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_call:(roswasmc_capability const*)cap
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request const*)request
                                                                      response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_poll:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t*)ticket
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_respond:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t)ticket
                                                                         response:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_call:(roswasmc_capability const*)cap
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request const*)request
                                                                      response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_poll:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t*)ticket
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_respond:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t)ticket
                                                                         response:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_call:(roswasmc_capability const*)cap
                                                                         request:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request const*)request
                                                                        response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_poll:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t*)ticket
                                                                         request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_respond:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t)ticket
                                                                           response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response const*)
                                                                                        response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_call:(roswasmc_capability const*)cap
                                                                         request:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request const*)request
                                                                        response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_poll:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t*)ticket
                                                                         request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_respond:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t)ticket
                                                                           response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response const*)
                                                                                        response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request const*)request
                                                                    response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_call.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_call:(roswasmc_capability const*)cap
                                                            request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request const*)request
                                                           response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_poll:(roswasmc_capability const*)cap
                                                                            ticket:(uint64_t*)ticket
                                                                           request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_respond.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_respond:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t)ticket
                                                              response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_call:(roswasmc_capability const*)cap
                                                                          request:
                                                                              (roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request const*)request
                                                                         response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_poll:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t*)ticket
                                                                          request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_respond:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t)ticket
                                                                            response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response const*)
                                                                                         response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_call:(roswasmc_capability const*)cap
                                                                        request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request const*)request
                                                                       response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_poll:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t*)ticket
                                                                        request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_respond:(roswasmc_capability const*)cap
                                                                            ticket:(uint64_t)ticket
                                                                          response:
                                                                              (roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request const*)request
                                                             response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_poll:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t*)ticket
                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_call:(roswasmc_capability const*)cap
                                                               request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request const*)request
                                                              response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_poll:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t*)ticket
                                                               request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_respond:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t)ticket
                                                                 response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_call:(roswasmc_capability const*)cap
                                                                    request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request const*)request
                                                                   response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_poll:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t*)ticket
                                                                    request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_respond:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t)ticket
                                                                      response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_call.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_call:(roswasmc_capability const*)cap
                                                             request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request const*)request
                                                            response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_poll:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t*)ticket
                                                                            request:
                                                                                (roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_respond.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_respond:(roswasmc_capability const*)cap
                                                                 ticket:(uint64_t)ticket
                                                               response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request const*)request
                                                                    response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_call:(roswasmc_capability const*)cap
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request const*)request
                                                                      response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_poll:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t*)ticket
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_respond:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t)ticket
                                                                         response:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_send.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_send:(roswasmc_action_bundle*)bundle
                                                                 goal:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal const*)goal
                                                                   id:(uint64_t*)id;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_feedback.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_feedback:(roswasmc_action_bundle const*)bundle
                                                                       id:(uint64_t)id
                                                                 feedback:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback*)feedback;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_result.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_result:(roswasmc_action_bundle*)bundle
                                                                                    id:(uint64_t)id
                                                                                  kind:(uint8_t*)kind
                                                                                result:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result*)
                                                                                           result;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_poll:(roswasmc_capability const*)cap
                                                                                  id:(uint64_t*)id
                                                                                goal:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal*)goal;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_feedback.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_feedback:(roswasmc_capability const*)cap
                                                                               id:(uint64_t)id
                                                                            value:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback const*)
                                                                                      value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_result.
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
+ (roswasmc_result)
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_result:(roswasmc_capability const*)cap
                                                                             id:(uint64_t)id
                                                                           kind:(uint8_t)kind
                                                                          value:
                                                                              (roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_SendScript_send.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_send:(roswasmc_action_bundle*)bundle
                                                                goal:(roswasmc_bounded_2_ur_msgs_action_SendScript_Goal const*)goal
                                                                  id:(uint64_t*)id;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_SendScript_feedback.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_feedback:(roswasmc_action_bundle const*)bundle
                                                                      id:(uint64_t)id
                                                                feedback:(roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback*)feedback;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_SendScript_result.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_result:(roswasmc_action_bundle*)bundle
                                                                    id:(uint64_t)id
                                                                  kind:(uint8_t*)kind
                                                                result:(roswasmc_bounded_2_ur_msgs_action_SendScript_Result*)result;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_SendScript_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_poll:(roswasmc_capability const*)cap
                                                                  id:(uint64_t*)id
                                                                goal:(roswasmc_bounded_2_ur_msgs_action_SendScript_Goal*)goal;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_SendScript_respond_feedback.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_respond_feedback:(roswasmc_capability const*)cap
                                                                              id:(uint64_t)id
                                                                           value:(roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_SendScript_respond_result.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_respond_result:(roswasmc_capability const*)cap
                                                                            id:(uint64_t)id
                                                                          kind:(uint8_t)kind
                                                                         value:(roswasmc_bounded_2_ur_msgs_action_SendScript_Result const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_ToolContact_send.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_send:(roswasmc_action_bundle*)bundle
                                                                 goal:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal const*)goal
                                                                   id:(uint64_t*)id;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_ToolContact_feedback.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_feedback:(roswasmc_action_bundle const*)bundle
                                                                       id:(uint64_t)id
                                                                 feedback:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback*)feedback;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_ToolContact_result.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_result:(roswasmc_action_bundle*)bundle
                                                                     id:(uint64_t)id
                                                                   kind:(uint8_t*)kind
                                                                 result:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Result*)result;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_ToolContact_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_poll:(roswasmc_capability const*)cap
                                                                   id:(uint64_t*)id
                                                                 goal:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal*)goal;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_feedback.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_feedback:(roswasmc_capability const*)cap
                                                                               id:(uint64_t)id
                                                                            value:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_result.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_result:(roswasmc_capability const*)cap
                                                                             id:(uint64_t)id
                                                                           kind:(uint8_t)kind
                                                                          value:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Result const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_call:(roswasmc_capability const*)cap
                                                                       request:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request const*)request
                                                                      response:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_poll:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t*)ticket
                                                                       request:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_respond:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t)ticket
                                                                         response:
                                                                             (roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_call:(roswasmc_capability const*)cap
                                                               request:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request const*)request
                                                              response:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_poll:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t*)ticket
                                                               request:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_respond:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t)ticket
                                                                 response:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetForceMode_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetForceMode_call:(roswasmc_capability const*)cap
                                                            request:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request const*)request
                                                           response:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetForceMode_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetForceMode_poll:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t*)ticket
                                                            request:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetForceMode_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetForceMode_respond:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t)ticket
                                                              response:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_call:(roswasmc_capability const*)cap
                                                                          request:
                                                                              (roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request const*)request
                                                                         response:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_poll:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t*)ticket
                                                                          request:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_respond:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t)ticket
                                                                            response:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response const*)
                                                                                         response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetGravity_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetGravity_call:(roswasmc_capability const*)cap
                                                          request:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request const*)request
                                                         response:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetGravity_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetGravity_poll:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t*)ticket
                                                          request:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetGravity_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetGravity_respond:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t)ticket
                                                            response:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetIO_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetIO_call:(roswasmc_capability const*)cap
                                                     request:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Request const*)request
                                                    response:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetIO_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetIO_poll:(roswasmc_capability const*)cap
                                                      ticket:(uint64_t*)ticket
                                                     request:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetIO_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetIO_respond:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t)ticket
                                                       response:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetPayload_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetPayload_call:(roswasmc_capability const*)cap
                                                          request:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request const*)request
                                                         response:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetPayload_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetPayload_poll:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t*)ticket
                                                          request:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetPayload_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetPayload_respond:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t)ticket
                                                            response:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_call.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_call:(roswasmc_capability const*)cap
                                                                      request:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request const*)request
                                                                     response:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_poll:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t*)ticket
                                                                      request:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_respond:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t)ticket
                                                                        response:
                                                                            (roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response const*)response;
@end
