/** @file Records.h
 * @brief Genuine Objective-C class messages over exact full vendor records.
 */
#pragma once
#include <kuka/c/ros2/kuka-ros2-complete/bounded_interfaces.h>
#include <kuka/c/ros2/kuka-ros2-complete/bounded_records.h>
/** @brief Complete original builtin_interfaces/msg/Duration codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Builtin_interfacesMsgDuration
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
@interface KukaKukaRos2CompleteRos2Builtin_interfacesMsgTime
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
/** @brief Complete original std_msgs/msg/Header codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Std_msgsMsgHeader
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
/** @brief Complete original trajectory_msgs/msg/JointTrajectoryPoint codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Trajectory_msgsMsgJointTrajectoryPoint
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
@interface KukaKukaRos2CompleteRos2Trajectory_msgsMsgJointTrajectory
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
/** @brief Complete original geometry_msgs/msg/Vector3 codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Geometry_msgsMsgVector3
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
/** @brief Complete original geometry_msgs/msg/Quaternion codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Geometry_msgsMsgQuaternion
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
/** @brief Complete original geometry_msgs/msg/Transform codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Geometry_msgsMsgTransform
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
+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Transform const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_geometry_msgs_msg_Transform*)value;
@end
/** @brief Complete original geometry_msgs/msg/Twist codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Geometry_msgsMsgTwist
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
/** @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
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
+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint*)value;
@end
/** @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectory codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Trajectory_msgsMsgMultiDOFJointTrajectory
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
+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory*)value;
@end
/** @brief Complete original control_msgs/msg/JointTolerance codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Control_msgsMsgJointTolerance
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
/** @brief Complete original control_msgs/msg/JointComponentTolerance codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Control_msgsMsgJointComponentTolerance
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
+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance*)value;
@end
/** @brief Complete original control_msgs/action/FollowJointTrajectory_Goal codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Control_msgsActionFollowJointTrajectory_Goal
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
+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal*)value;
@end
/** @brief Complete original control_msgs/action/FollowJointTrajectory_Result codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Control_msgsActionFollowJointTrajectory_Result
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
+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result*)value;
@end
/** @brief Complete original control_msgs/action/FollowJointTrajectory_Feedback codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Control_msgsActionFollowJointTrajectory_Feedback
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
+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback*)value;
@end
/** @brief Complete original kuka_driver_interfaces/msg/FRIState codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgFRIState
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
+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState*)value;
@end
/** @brief Complete original kuka_driver_interfaces/msg/FRIStateArray codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgFRIStateArray
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
+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray*)value;
@end
/** @brief Complete original kuka_driver_interfaces/msg/FriConfiguration codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgFriConfiguration
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
+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration*)value;
@end
/** @brief Complete original kuka_driver_interfaces/msg/HardwareEvent codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgHardwareEvent
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
+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent*)value;
@end
/** @brief Complete original kuka_driver_interfaces/msg/KssStatus codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgKssStatus
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
+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus*)value;
@end
/** @brief Complete original kuka_driver_interfaces/msg/KssStatusArray codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgKssStatusArray
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
+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray*)value;
@end
/** @brief Complete original lifecycle_msgs/msg/State codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Lifecycle_msgsMsgState
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
+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_msg_State const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_lifecycle_msgs_msg_State*)value;
@end
/** @brief Complete original lifecycle_msgs/msg/Transition codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Lifecycle_msgsMsgTransition
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
+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_msg_Transition const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_lifecycle_msgs_msg_Transition*)value;
@end
/** @brief Complete original lifecycle_msgs/srv/ChangeState_Request codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Lifecycle_msgsSrvChangeState_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request*)value;
@end
/** @brief Complete original lifecycle_msgs/srv/ChangeState_Response codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Lifecycle_msgsSrvChangeState_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response*)value;
@end
/** @brief Complete original lifecycle_msgs/srv/GetState_Request codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Lifecycle_msgsSrvGetState_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request*)value;
@end
/** @brief Complete original lifecycle_msgs/srv/GetState_Response codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Lifecycle_msgsSrvGetState_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response*)value;
@end
/** @brief Complete original sensor_msgs/msg/JointState codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Sensor_msgsMsgJointState
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
+ (uint32_t)encode:(roswasmc_bounded_2_sensor_msgs_msg_JointState const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_sensor_msgs_msg_JointState*)value;
@end
/** @brief Complete original std_srvs/srv/Trigger_Request codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Std_srvsSrvTrigger_Request
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
+ (uint32_t)encode:(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_std_srvs_srv_Trigger_Request*)value;
@end
/** @brief Complete original std_srvs/srv/Trigger_Response codec class. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteRos2Std_srvsSrvTrigger_Response
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
+ (uint32_t)encode:(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_2_std_srvs_srv_Trigger_Response*)value;
@end

/** @brief Preserve complete typed service/action roles and results through real Objective-C messages. */
__attribute__((objc_root_class))
@interface KukaKukaRos2CompleteInterfaces
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send.
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
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send:(roswasmc_action_bundle*)bundle
                                                                 goal:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const*)goal
                                                                   id:(uint64_t*)id;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback.
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
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback:(roswasmc_action_bundle const*)bundle
                                                                       id:(uint64_t)id
                                                                 feedback:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback*)feedback;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result.
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
+ (roswasmc_result)roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result:(roswasmc_action_bundle*)bundle
                                                                                    id:(uint64_t)id
                                                                                  kind:(uint8_t*)kind
                                                                                result:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result*)
                                                                                           result;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll:(roswasmc_capability const*)cap
                                                                                  id:(uint64_t*)id
                                                                                goal:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal*)goal;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback.
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
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback:(roswasmc_capability const*)cap
                                                                               id:(uint64_t)id
                                                                            value:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const*)
                                                                                      value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result.
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
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result:(roswasmc_capability const*)cap
                                                                             id:(uint64_t)id
                                                                           kind:(uint8_t)kind
                                                                          value:
                                                                              (roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_call.
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
+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_call:(roswasmc_capability const*)cap
                                                                  request:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const*)request
                                                                 response:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_poll:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t*)ticket
                                                                  request:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_respond:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t)ticket
                                                                    response:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_lifecycle_msgs_srv_GetState_call.
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
+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_GetState_call:(roswasmc_capability const*)cap
                                                               request:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const*)request
                                                              response:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_lifecycle_msgs_srv_GetState_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_GetState_poll:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t*)ticket
                                                               request:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_lifecycle_msgs_srv_GetState_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_GetState_respond:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t)ticket
                                                                 response:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_std_srvs_srv_Trigger_call.
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
+ (roswasmc_result)roswasmc_bounded_2_std_srvs_srv_Trigger_call:(roswasmc_capability const*)cap
                                                        request:(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const*)request
                                                       response:(roswasmc_bounded_2_std_srvs_srv_Trigger_Response*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_std_srvs_srv_Trigger_poll.
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
+ (roswasmc_result)roswasmc_bounded_2_std_srvs_srv_Trigger_poll:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t*)ticket
                                                        request:(roswasmc_bounded_2_std_srvs_srv_Trigger_Request*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_2_std_srvs_srv_Trigger_respond.
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
+ (roswasmc_result)roswasmc_bounded_2_std_srvs_srv_Trigger_respond:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t)ticket
                                                          response:(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const*)response;
@end
