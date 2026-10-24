/** @file Records.h
 * @brief Genuine Objective-C class messages over exact full vendor records.
 */
#pragma once
#include <universal_robots/c/ros1/universal-robots-ros1-trajectory-complete/bounded_interfaces.h>
#include <universal_robots/c/ros1/universal-robots-ros1-trajectory-complete/bounded_records.h>
/** @brief Complete original time codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Time
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
+ (uint32_t)encode:(roswasmc_bounded_1_time const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_time*)value;
@end
/** @brief Complete original std_msgs/Header codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Std_msgsHeader
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
+ (uint32_t)encode:(roswasmc_bounded_1_std_msgs_Header const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_std_msgs_Header*)value;
@end
/** @brief Complete original duration codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Duration
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
+ (uint32_t)encode:(roswasmc_bounded_1_duration const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_duration*)value;
@end
/** @brief Complete original trajectory_msgs/JointTrajectoryPoint codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Trajectory_msgsJointTrajectoryPoint
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
+ (uint32_t)encode:(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint*)value;
@end
/** @brief Complete original trajectory_msgs/JointTrajectory codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Trajectory_msgsJointTrajectory
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
+ (uint32_t)encode:(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_trajectory_msgs_JointTrajectory*)value;
@end
/** @brief Complete original control_msgs/JointTolerance codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Control_msgsJointTolerance
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
+ (uint32_t)encode:(roswasmc_bounded_1_control_msgs_JointTolerance const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_control_msgs_JointTolerance*)value;
@end
/** @brief Complete original control_msgs/FollowJointTrajectoryGoal codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Control_msgsFollowJointTrajectoryGoal
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
+ (uint32_t)encode:(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryGoal const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryGoal*)value;
@end
/** @brief Complete original control_msgs/FollowJointTrajectoryResult codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Control_msgsFollowJointTrajectoryResult
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
+ (uint32_t)encode:(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryResult const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryResult*)value;
@end
/** @brief Complete original control_msgs/FollowJointTrajectoryFeedback codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Control_msgsFollowJointTrajectoryFeedback
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
+ (uint32_t)encode:(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryFeedback const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryFeedback*)value;
@end
/** @brief Complete original geometry_msgs/Point codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Geometry_msgsPoint
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
+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Point const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_geometry_msgs_Point*)value;
@end
/** @brief Complete original geometry_msgs/Quaternion codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Geometry_msgsQuaternion
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
+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Quaternion const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_geometry_msgs_Quaternion*)value;
@end
/** @brief Complete original geometry_msgs/Pose codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Geometry_msgsPose
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
+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Pose const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_geometry_msgs_Pose*)value;
@end
/** @brief Complete original geometry_msgs/PoseStamped codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Geometry_msgsPoseStamped
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
+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_PoseStamped const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_geometry_msgs_PoseStamped*)value;
@end
/** @brief Complete original geometry_msgs/Vector3 codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Geometry_msgsVector3
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
+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Vector3 const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_geometry_msgs_Vector3*)value;
@end
/** @brief Complete original geometry_msgs/Twist codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Geometry_msgsTwist
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
+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Twist const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_geometry_msgs_Twist*)value;
@end
/** @brief Complete original geometry_msgs/Wrench codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Geometry_msgsWrench
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
+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Wrench const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_geometry_msgs_Wrench*)value;
@end
/** @brief Complete original sensor_msgs/JointState codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Sensor_msgsJointState
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
+ (uint32_t)encode:(roswasmc_bounded_1_sensor_msgs_JointState const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_sensor_msgs_JointState*)value;
@end
/** @brief Complete original ur_dashboard_msgs/AddToLogRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsAddToLogRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest*)value;
@end
/** @brief Complete original ur_dashboard_msgs/AddToLogResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsAddToLogResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse*)value;
@end
/** @brief Complete original ur_dashboard_msgs/GetLoadedProgramRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsGetLoadedProgramRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest*)value;
@end
/** @brief Complete original ur_dashboard_msgs/GetLoadedProgramResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsGetLoadedProgramResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse*)value;
@end
/** @brief Complete original ur_dashboard_msgs/GetProgramStateRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsGetProgramStateRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest*)value;
@end
/** @brief Complete original ur_dashboard_msgs/ProgramState codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsProgramState
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_ProgramState const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_ProgramState*)value;
@end
/** @brief Complete original ur_dashboard_msgs/GetProgramStateResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsGetProgramStateResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse*)value;
@end
/** @brief Complete original ur_dashboard_msgs/GetRobotModeRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsGetRobotModeRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest*)value;
@end
/** @brief Complete original ur_dashboard_msgs/RobotMode codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsRobotMode
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_RobotMode const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_RobotMode*)value;
@end
/** @brief Complete original ur_dashboard_msgs/GetRobotModeResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsGetRobotModeResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse*)value;
@end
/** @brief Complete original ur_dashboard_msgs/GetSafetyModeRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsGetSafetyModeRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest*)value;
@end
/** @brief Complete original ur_dashboard_msgs/SafetyMode codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsSafetyMode
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode*)value;
@end
/** @brief Complete original ur_dashboard_msgs/GetSafetyModeResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsGetSafetyModeResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse*)value;
@end
/** @brief Complete original ur_dashboard_msgs/IsInRemoteControlRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsIsInRemoteControlRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest*)value;
@end
/** @brief Complete original ur_dashboard_msgs/IsInRemoteControlResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsIsInRemoteControlResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse*)value;
@end
/** @brief Complete original ur_dashboard_msgs/IsProgramRunningRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsIsProgramRunningRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest*)value;
@end
/** @brief Complete original ur_dashboard_msgs/IsProgramRunningResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsIsProgramRunningResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse*)value;
@end
/** @brief Complete original ur_dashboard_msgs/IsProgramSavedRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsIsProgramSavedRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest*)value;
@end
/** @brief Complete original ur_dashboard_msgs/IsProgramSavedResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsIsProgramSavedResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse const*)value
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse*)value;
@end
/** @brief Complete original ur_dashboard_msgs/LoadRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsLoadRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest*)value;
@end
/** @brief Complete original ur_dashboard_msgs/LoadResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsLoadResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse*)value;
@end
/** @brief Complete original ur_dashboard_msgs/PopupRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsPopupRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest*)value;
@end
/** @brief Complete original ur_dashboard_msgs/PopupResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsPopupResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse*)value;
@end
/** @brief Complete original ur_dashboard_msgs/RawRequestRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsRawRequestRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest*)value;
@end
/** @brief Complete original ur_dashboard_msgs/RawRequestResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsRawRequestResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse*)value;
@end
/** @brief Complete original ur_dashboard_msgs/SetModeGoal codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsSetModeGoal
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal*)value;
@end
/** @brief Complete original ur_dashboard_msgs/SetModeResult codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsSetModeResult
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult*)value;
@end
/** @brief Complete original ur_dashboard_msgs/SetModeFeedback codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_dashboard_msgsSetModeFeedback
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback*)value;
@end
/** @brief Complete original ur_msgs/Analog codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsAnalog
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_Analog const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_Analog*)value;
@end
/** @brief Complete original ur_msgs/Digital codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsDigital
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_Digital const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_Digital*)value;
@end
/** @brief Complete original ur_msgs/GetRobotSoftwareVersionRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsGetRobotSoftwareVersionRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest*)value;
@end
/** @brief Complete original ur_msgs/GetRobotSoftwareVersionResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsGetRobotSoftwareVersionResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse*)value;
@end
/** @brief Complete original ur_msgs/IOStates codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsIOStates
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_IOStates const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_IOStates*)value;
@end
/** @brief Complete original ur_msgs/MasterboardDataMsg codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsMasterboardDataMsg
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_MasterboardDataMsg const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_MasterboardDataMsg*)value;
@end
/** @brief Complete original ur_msgs/RobotModeDataMsg codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsRobotModeDataMsg
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_RobotModeDataMsg const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_RobotModeDataMsg*)value;
@end
/** @brief Complete original ur_msgs/RobotStateRTMsg codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsRobotStateRTMsg
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_RobotStateRTMsg const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_RobotStateRTMsg*)value;
@end
/** @brief Complete original ur_msgs/SetAnalogOutputRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsSetAnalogOutputRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest*)value;
@end
/** @brief Complete original ur_msgs/SetAnalogOutputResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsSetAnalogOutputResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse*)value;
@end
/** @brief Complete original ur_msgs/SetForceModeRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsSetForceModeRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetForceModeRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_SetForceModeRequest*)value;
@end
/** @brief Complete original ur_msgs/SetForceModeResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsSetForceModeResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetForceModeResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_SetForceModeResponse*)value;
@end
/** @brief Complete original ur_msgs/SetIORequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsSetIORequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetIORequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_SetIORequest*)value;
@end
/** @brief Complete original ur_msgs/SetIOResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsSetIOResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetIOResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_SetIOResponse*)value;
@end
/** @brief Complete original ur_msgs/SetPayloadRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsSetPayloadRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetPayloadRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_SetPayloadRequest*)value;
@end
/** @brief Complete original ur_msgs/SetPayloadResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsSetPayloadResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetPayloadResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_SetPayloadResponse*)value;
@end
/** @brief Complete original ur_msgs/SetSpeedSliderFractionRequest codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsSetSpeedSliderFractionRequest
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest*)value;
@end
/** @brief Complete original ur_msgs/SetSpeedSliderFractionResponse codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsSetSpeedSliderFractionResponse
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse*)value;
@end
/** @brief Complete original ur_msgs/ToolDataMsg codec class. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRos1Ur_msgsToolDataMsg
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
+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_ToolDataMsg const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
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
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_ur_msgs_ToolDataMsg*)value;
@end

/** @brief Preserve complete typed service/action roles and results through real Objective-C messages. */
__attribute__((objc_root_class))
@interface UniversalRobotsUniversalRobotsRos1TrajectoryCompleteInterfaces
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_control_msgs_FollowJointTrajectory_send.
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
+ (roswasmc_result)roswasmc_bounded_1_control_msgs_FollowJointTrajectory_send:(roswasmc_action_bundle*)bundle
                                                                         goal:(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryGoal const*)goal
                                                                           id:(uint64_t*)id;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_control_msgs_FollowJointTrajectory_feedback.
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
+ (roswasmc_result)roswasmc_bounded_1_control_msgs_FollowJointTrajectory_feedback:(roswasmc_action_bundle const*)bundle
                                                                               id:(uint64_t)id
                                                                         feedback:(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryFeedback*)feedback;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_control_msgs_FollowJointTrajectory_result.
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
+ (roswasmc_result)roswasmc_bounded_1_control_msgs_FollowJointTrajectory_result:(roswasmc_action_bundle*)bundle
                                                                             id:(uint64_t)id
                                                                           kind:(uint8_t*)kind
                                                                         result:(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryResult*)result;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_control_msgs_FollowJointTrajectory_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_control_msgs_FollowJointTrajectory_poll:(roswasmc_capability const*)cap
                                                                           id:(uint64_t*)id
                                                                         goal:(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryGoal*)goal;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_control_msgs_FollowJointTrajectory_respond_feedback.
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
+ (roswasmc_result)roswasmc_bounded_1_control_msgs_FollowJointTrajectory_respond_feedback:(roswasmc_capability const*)cap
                                                                                       id:(uint64_t)id
                                                                                    value:(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryFeedback const*)
                                                                                              value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_control_msgs_FollowJointTrajectory_respond_result.
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
+ (roswasmc_result)roswasmc_bounded_1_control_msgs_FollowJointTrajectory_respond_result:(roswasmc_capability const*)cap
                                                                                     id:(uint64_t)id
                                                                                   kind:(uint8_t)kind
                                                                                  value:
                                                                                      (roswasmc_bounded_1_control_msgs_FollowJointTrajectoryResult const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest const*)request
                                                             response:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_poll:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t*)ticket
                                                              request:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_call:(roswasmc_capability const*)cap
                                                                      request:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest const*)request
                                                                     response:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_poll:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t*)ticket
                                                                      request:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_respond:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t)ticket
                                                                        response:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest const*)request
                                                                    response:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_call:(roswasmc_capability const*)cap
                                                                  request:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest const*)request
                                                                 response:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_poll:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t*)ticket
                                                                  request:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_respond:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t)ticket
                                                                    response:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_call:(roswasmc_capability const*)cap
                                                                   request:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest const*)request
                                                                  response:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_poll:(roswasmc_capability const*)cap
                                                                    ticket:(uint64_t*)ticket
                                                                   request:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_respond:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t)ticket
                                                                     response:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_call:(roswasmc_capability const*)cap
                                                                       request:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest const*)request
                                                                      response:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_poll:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t*)ticket
                                                                       request:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_respond:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t)ticket
                                                                         response:
                                                                             (roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_call:(roswasmc_capability const*)cap
                                                                      request:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest const*)request
                                                                     response:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_poll:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t*)ticket
                                                                      request:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_respond:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t)ticket
                                                                        response:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_call:(roswasmc_capability const*)cap
                                                                    request:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest const*)request
                                                                   response:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_poll:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t*)ticket
                                                                    request:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_respond:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t)ticket
                                                                      response:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_Load_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Load_call:(roswasmc_capability const*)cap
                                                          request:(roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest const*)request
                                                         response:(roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_Load_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Load_poll:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t*)ticket
                                                          request:(roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_Load_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Load_respond:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t)ticket
                                                            response:(roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_Popup_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Popup_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest const*)request
                                                          response:(roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_Popup_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Popup_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_Popup_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Popup_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_call:(roswasmc_capability const*)cap
                                                                request:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest const*)request
                                                               response:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_poll:(roswasmc_capability const*)cap
                                                                 ticket:(uint64_t*)ticket
                                                                request:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_respond:(roswasmc_capability const*)cap
                                                                    ticket:(uint64_t)ticket
                                                                  response:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_SetMode_send.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_send:(roswasmc_action_bundle*)bundle
                                                                goal:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal const*)goal
                                                                  id:(uint64_t*)id;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_SetMode_feedback.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_feedback:(roswasmc_action_bundle const*)bundle
                                                                      id:(uint64_t)id
                                                                feedback:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback*)feedback;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_SetMode_result.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_result:(roswasmc_action_bundle*)bundle
                                                                    id:(uint64_t)id
                                                                  kind:(uint8_t*)kind
                                                                result:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult*)result;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_SetMode_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_poll:(roswasmc_capability const*)cap
                                                                  id:(uint64_t*)id
                                                                goal:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal*)goal;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_feedback.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_feedback:(roswasmc_capability const*)cap
                                                                              id:(uint64_t)id
                                                                           value:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_result.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_result:(roswasmc_capability const*)cap
                                                                            id:(uint64_t)id
                                                                          kind:(uint8_t)kind
                                                                         value:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult const*)value;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_call:(roswasmc_capability const*)cap
                                                                   request:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest const*)request
                                                                  response:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_poll:(roswasmc_capability const*)cap
                                                                    ticket:(uint64_t*)ticket
                                                                   request:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_respond:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t)ticket
                                                                     response:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetAnalogOutput_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetAnalogOutput_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest const*)request
                                                          response:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetAnalogOutput_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetAnalogOutput_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetAnalogOutput_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetAnalogOutput_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetForceMode_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetForceMode_call:(roswasmc_capability const*)cap
                                                        request:(roswasmc_bounded_1_ur_msgs_SetForceModeRequest const*)request
                                                       response:(roswasmc_bounded_1_ur_msgs_SetForceModeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetForceMode_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetForceMode_poll:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t*)ticket
                                                        request:(roswasmc_bounded_1_ur_msgs_SetForceModeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetForceMode_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetForceMode_respond:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t)ticket
                                                          response:(roswasmc_bounded_1_ur_msgs_SetForceModeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetIO_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetIO_call:(roswasmc_capability const*)cap
                                                 request:(roswasmc_bounded_1_ur_msgs_SetIORequest const*)request
                                                response:(roswasmc_bounded_1_ur_msgs_SetIOResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetIO_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetIO_poll:(roswasmc_capability const*)cap
                                                  ticket:(uint64_t*)ticket
                                                 request:(roswasmc_bounded_1_ur_msgs_SetIORequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetIO_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetIO_respond:(roswasmc_capability const*)cap
                                                     ticket:(uint64_t)ticket
                                                   response:(roswasmc_bounded_1_ur_msgs_SetIOResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetPayload_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetPayload_call:(roswasmc_capability const*)cap
                                                      request:(roswasmc_bounded_1_ur_msgs_SetPayloadRequest const*)request
                                                     response:(roswasmc_bounded_1_ur_msgs_SetPayloadResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetPayload_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetPayload_poll:(roswasmc_capability const*)cap
                                                       ticket:(uint64_t*)ticket
                                                      request:(roswasmc_bounded_1_ur_msgs_SetPayloadRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetPayload_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetPayload_respond:(roswasmc_capability const*)cap
                                                          ticket:(uint64_t)ticket
                                                        response:(roswasmc_bounded_1_ur_msgs_SetPayloadResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_call.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_call:(roswasmc_capability const*)cap
                                                                  request:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest const*)request
                                                                 response:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_poll.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_poll:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t*)ticket
                                                                  request:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_respond.
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
+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_respond:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t)ticket
                                                                    response:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse const*)response;
@end
