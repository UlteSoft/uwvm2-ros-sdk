/** @file records.h
 * @brief Explicit complete-record C FFI; all buffers remain caller-owned.
 */
#pragma once
#include <universal_robots/c/ros1/universal-robots-ros1-trajectory-complete/bounded_interfaces.h>
#if defined(__cplusplus)
extern "C"
{
#endif
#include <universal_robots/c/ros1/universal-robots-ros1-trajectory-complete/bounded_records.h>
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
    uint32_t universal_robots_Ros1Time_encode(roswasmc_bounded_1_time const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Time_decode(void const* bytes, size_t length, roswasmc_bounded_1_time* value);
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
    uint32_t universal_robots_Ros1Std_msgsHeader_encode(roswasmc_bounded_1_std_msgs_Header const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Std_msgsHeader_decode(void const* bytes, size_t length, roswasmc_bounded_1_std_msgs_Header* value);
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
    uint32_t universal_robots_Ros1Duration_encode(roswasmc_bounded_1_duration const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Duration_decode(void const* bytes, size_t length, roswasmc_bounded_1_duration* value);
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
    uint32_t universal_robots_Ros1Trajectory_msgsJointTrajectoryPoint_encode(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const* value,
                                                                             void* bytes,
                                                                             size_t capacity,
                                                                             size_t* length);
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
    uint32_t universal_robots_Ros1Trajectory_msgsJointTrajectoryPoint_decode(void const* bytes,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint* value);
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
    uint32_t universal_robots_Ros1Trajectory_msgsJointTrajectory_encode(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const* value,
                                                                        void* bytes,
                                                                        size_t capacity,
                                                                        size_t* length);
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
    uint32_t
        universal_robots_Ros1Trajectory_msgsJointTrajectory_decode(void const* bytes, size_t length, roswasmc_bounded_1_trajectory_msgs_JointTrajectory* value);
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
    uint32_t universal_robots_Ros1Control_msgsJointTolerance_encode(roswasmc_bounded_1_control_msgs_JointTolerance const* value,
                                                                    void* bytes,
                                                                    size_t capacity,
                                                                    size_t* length);
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
    uint32_t universal_robots_Ros1Control_msgsJointTolerance_decode(void const* bytes, size_t length, roswasmc_bounded_1_control_msgs_JointTolerance* value);
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
    uint32_t universal_robots_Ros1Control_msgsFollowJointTrajectoryGoal_encode(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryGoal const* value,
                                                                               void* bytes,
                                                                               size_t capacity,
                                                                               size_t* length);
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
    uint32_t universal_robots_Ros1Control_msgsFollowJointTrajectoryGoal_decode(void const* bytes,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_control_msgs_FollowJointTrajectoryGoal* value);
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
    uint32_t universal_robots_Ros1Control_msgsFollowJointTrajectoryResult_encode(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryResult const* value,
                                                                                 void* bytes,
                                                                                 size_t capacity,
                                                                                 size_t* length);
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
    uint32_t universal_robots_Ros1Control_msgsFollowJointTrajectoryResult_decode(void const* bytes,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_control_msgs_FollowJointTrajectoryResult* value);
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
    uint32_t universal_robots_Ros1Control_msgsFollowJointTrajectoryFeedback_encode(roswasmc_bounded_1_control_msgs_FollowJointTrajectoryFeedback const* value,
                                                                                   void* bytes,
                                                                                   size_t capacity,
                                                                                   size_t* length);
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
    uint32_t universal_robots_Ros1Control_msgsFollowJointTrajectoryFeedback_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_control_msgs_FollowJointTrajectoryFeedback* value);
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
    uint32_t universal_robots_Ros1Geometry_msgsPoint_encode(roswasmc_bounded_1_geometry_msgs_Point const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Geometry_msgsPoint_decode(void const* bytes, size_t length, roswasmc_bounded_1_geometry_msgs_Point* value);
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
    uint32_t universal_robots_Ros1Geometry_msgsQuaternion_encode(roswasmc_bounded_1_geometry_msgs_Quaternion const* value,
                                                                 void* bytes,
                                                                 size_t capacity,
                                                                 size_t* length);
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
    uint32_t universal_robots_Ros1Geometry_msgsQuaternion_decode(void const* bytes, size_t length, roswasmc_bounded_1_geometry_msgs_Quaternion* value);
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
    uint32_t universal_robots_Ros1Geometry_msgsPose_encode(roswasmc_bounded_1_geometry_msgs_Pose const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Geometry_msgsPose_decode(void const* bytes, size_t length, roswasmc_bounded_1_geometry_msgs_Pose* value);
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
    uint32_t universal_robots_Ros1Geometry_msgsPoseStamped_encode(roswasmc_bounded_1_geometry_msgs_PoseStamped const* value,
                                                                  void* bytes,
                                                                  size_t capacity,
                                                                  size_t* length);
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
    uint32_t universal_robots_Ros1Geometry_msgsPoseStamped_decode(void const* bytes, size_t length, roswasmc_bounded_1_geometry_msgs_PoseStamped* value);
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
    uint32_t
        universal_robots_Ros1Geometry_msgsVector3_encode(roswasmc_bounded_1_geometry_msgs_Vector3 const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Geometry_msgsVector3_decode(void const* bytes, size_t length, roswasmc_bounded_1_geometry_msgs_Vector3* value);
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
    uint32_t universal_robots_Ros1Geometry_msgsTwist_encode(roswasmc_bounded_1_geometry_msgs_Twist const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Geometry_msgsTwist_decode(void const* bytes, size_t length, roswasmc_bounded_1_geometry_msgs_Twist* value);
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
    uint32_t
        universal_robots_Ros1Geometry_msgsWrench_encode(roswasmc_bounded_1_geometry_msgs_Wrench const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Geometry_msgsWrench_decode(void const* bytes, size_t length, roswasmc_bounded_1_geometry_msgs_Wrench* value);
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
    uint32_t
        universal_robots_Ros1Sensor_msgsJointState_encode(roswasmc_bounded_1_sensor_msgs_JointState const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Sensor_msgsJointState_decode(void const* bytes, size_t length, roswasmc_bounded_1_sensor_msgs_JointState* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsAddToLogRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest const* value,
                                                                          void* bytes,
                                                                          size_t capacity,
                                                                          size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsAddToLogRequest_decode(void const* bytes,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsAddToLogResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse const* value,
                                                                           void* bytes,
                                                                           size_t capacity,
                                                                           size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsAddToLogResponse_decode(void const* bytes,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetLoadedProgramRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest const* value,
                                                                                  void* bytes,
                                                                                  size_t capacity,
                                                                                  size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetLoadedProgramRequest_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetLoadedProgramResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse const* value,
                                                                                   void* bytes,
                                                                                   size_t capacity,
                                                                                   size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetLoadedProgramResponse_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetProgramStateRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest const* value,
                                                                                 void* bytes,
                                                                                 size_t capacity,
                                                                                 size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetProgramStateRequest_decode(void const* bytes,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsProgramState_encode(roswasmc_bounded_1_ur_dashboard_msgs_ProgramState const* value,
                                                                       void* bytes,
                                                                       size_t capacity,
                                                                       size_t* length);
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
    uint32_t
        universal_robots_Ros1Ur_dashboard_msgsProgramState_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_dashboard_msgs_ProgramState* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetProgramStateResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse const* value,
                                                                                  void* bytes,
                                                                                  size_t capacity,
                                                                                  size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetProgramStateResponse_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetRobotModeRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest const* value,
                                                                              void* bytes,
                                                                              size_t capacity,
                                                                              size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetRobotModeRequest_decode(void const* bytes,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsRobotMode_encode(roswasmc_bounded_1_ur_dashboard_msgs_RobotMode const* value,
                                                                    void* bytes,
                                                                    size_t capacity,
                                                                    size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsRobotMode_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_dashboard_msgs_RobotMode* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetRobotModeResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse const* value,
                                                                               void* bytes,
                                                                               size_t capacity,
                                                                               size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetRobotModeResponse_decode(void const* bytes,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetSafetyModeRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest const* value,
                                                                               void* bytes,
                                                                               size_t capacity,
                                                                               size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetSafetyModeRequest_decode(void const* bytes,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsSafetyMode_encode(roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode const* value,
                                                                     void* bytes,
                                                                     size_t capacity,
                                                                     size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsSafetyMode_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetSafetyModeResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse const* value,
                                                                                void* bytes,
                                                                                size_t capacity,
                                                                                size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsGetSafetyModeResponse_decode(void const* bytes,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsInRemoteControlRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest const* value,
                                                                                   void* bytes,
                                                                                   size_t capacity,
                                                                                   size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsInRemoteControlRequest_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsInRemoteControlResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse const* value,
                                                                                    void* bytes,
                                                                                    size_t capacity,
                                                                                    size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsInRemoteControlResponse_decode(void const* bytes,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramRunningRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest const* value,
                                                                                  void* bytes,
                                                                                  size_t capacity,
                                                                                  size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramRunningRequest_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramRunningResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse const* value,
                                                                                   void* bytes,
                                                                                   size_t capacity,
                                                                                   size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramRunningResponse_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramSavedRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest const* value,
                                                                                void* bytes,
                                                                                size_t capacity,
                                                                                size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramSavedRequest_decode(void const* bytes,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramSavedResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse const* value,
                                                                                 void* bytes,
                                                                                 size_t capacity,
                                                                                 size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramSavedResponse_decode(void const* bytes,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsLoadRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest const* value,
                                                                      void* bytes,
                                                                      size_t capacity,
                                                                      size_t* length);
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
    uint32_t
        universal_robots_Ros1Ur_dashboard_msgsLoadRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsLoadResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse const* value,
                                                                       void* bytes,
                                                                       size_t capacity,
                                                                       size_t* length);
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
    uint32_t
        universal_robots_Ros1Ur_dashboard_msgsLoadResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsPopupRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest const* value,
                                                                       void* bytes,
                                                                       size_t capacity,
                                                                       size_t* length);
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
    uint32_t
        universal_robots_Ros1Ur_dashboard_msgsPopupRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsPopupResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse const* value,
                                                                        void* bytes,
                                                                        size_t capacity,
                                                                        size_t* length);
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
    uint32_t
        universal_robots_Ros1Ur_dashboard_msgsPopupResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsRawRequestRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest const* value,
                                                                            void* bytes,
                                                                            size_t capacity,
                                                                            size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsRawRequestRequest_decode(void const* bytes,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsRawRequestResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse const* value,
                                                                             void* bytes,
                                                                             size_t capacity,
                                                                             size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsRawRequestResponse_decode(void const* bytes,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsSetModeGoal_encode(roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal const* value,
                                                                      void* bytes,
                                                                      size_t capacity,
                                                                      size_t* length);
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
    uint32_t
        universal_robots_Ros1Ur_dashboard_msgsSetModeGoal_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsSetModeResult_encode(roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult const* value,
                                                                        void* bytes,
                                                                        size_t capacity,
                                                                        size_t* length);
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
    uint32_t
        universal_robots_Ros1Ur_dashboard_msgsSetModeResult_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult* value);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsSetModeFeedback_encode(roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback const* value,
                                                                          void* bytes,
                                                                          size_t capacity,
                                                                          size_t* length);
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
    uint32_t universal_robots_Ros1Ur_dashboard_msgsSetModeFeedback_decode(void const* bytes,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback* value);
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
    uint32_t universal_robots_Ros1Ur_msgsAnalog_encode(roswasmc_bounded_1_ur_msgs_Analog const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsAnalog_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_Analog* value);
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
    uint32_t universal_robots_Ros1Ur_msgsDigital_encode(roswasmc_bounded_1_ur_msgs_Digital const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsDigital_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_Digital* value);
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
    uint32_t universal_robots_Ros1Ur_msgsGetRobotSoftwareVersionRequest_encode(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest const* value,
                                                                               void* bytes,
                                                                               size_t capacity,
                                                                               size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsGetRobotSoftwareVersionRequest_decode(void const* bytes,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest* value);
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
    uint32_t universal_robots_Ros1Ur_msgsGetRobotSoftwareVersionResponse_encode(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse const* value,
                                                                                void* bytes,
                                                                                size_t capacity,
                                                                                size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsGetRobotSoftwareVersionResponse_decode(void const* bytes,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse* value);
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
    uint32_t universal_robots_Ros1Ur_msgsIOStates_encode(roswasmc_bounded_1_ur_msgs_IOStates const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsIOStates_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_IOStates* value);
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
    uint32_t universal_robots_Ros1Ur_msgsMasterboardDataMsg_encode(roswasmc_bounded_1_ur_msgs_MasterboardDataMsg const* value,
                                                                   void* bytes,
                                                                   size_t capacity,
                                                                   size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsMasterboardDataMsg_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_MasterboardDataMsg* value);
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
    uint32_t universal_robots_Ros1Ur_msgsRobotModeDataMsg_encode(roswasmc_bounded_1_ur_msgs_RobotModeDataMsg const* value,
                                                                 void* bytes,
                                                                 size_t capacity,
                                                                 size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsRobotModeDataMsg_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_RobotModeDataMsg* value);
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
    uint32_t universal_robots_Ros1Ur_msgsRobotStateRTMsg_encode(roswasmc_bounded_1_ur_msgs_RobotStateRTMsg const* value,
                                                                void* bytes,
                                                                size_t capacity,
                                                                size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsRobotStateRTMsg_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_RobotStateRTMsg* value);
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
    uint32_t universal_robots_Ros1Ur_msgsSetAnalogOutputRequest_encode(roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest const* value,
                                                                       void* bytes,
                                                                       size_t capacity,
                                                                       size_t* length);
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
    uint32_t
        universal_robots_Ros1Ur_msgsSetAnalogOutputRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest* value);
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
    uint32_t universal_robots_Ros1Ur_msgsSetAnalogOutputResponse_encode(roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse const* value,
                                                                        void* bytes,
                                                                        size_t capacity,
                                                                        size_t* length);
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
    uint32_t
        universal_robots_Ros1Ur_msgsSetAnalogOutputResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse* value);
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
    uint32_t universal_robots_Ros1Ur_msgsSetForceModeRequest_encode(roswasmc_bounded_1_ur_msgs_SetForceModeRequest const* value,
                                                                    void* bytes,
                                                                    size_t capacity,
                                                                    size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsSetForceModeRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_SetForceModeRequest* value);
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
    uint32_t universal_robots_Ros1Ur_msgsSetForceModeResponse_encode(roswasmc_bounded_1_ur_msgs_SetForceModeResponse const* value,
                                                                     void* bytes,
                                                                     size_t capacity,
                                                                     size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsSetForceModeResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_SetForceModeResponse* value);
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
    uint32_t
        universal_robots_Ros1Ur_msgsSetIORequest_encode(roswasmc_bounded_1_ur_msgs_SetIORequest const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsSetIORequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_SetIORequest* value);
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
    uint32_t
        universal_robots_Ros1Ur_msgsSetIOResponse_encode(roswasmc_bounded_1_ur_msgs_SetIOResponse const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsSetIOResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_SetIOResponse* value);
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
    uint32_t universal_robots_Ros1Ur_msgsSetPayloadRequest_encode(roswasmc_bounded_1_ur_msgs_SetPayloadRequest const* value,
                                                                  void* bytes,
                                                                  size_t capacity,
                                                                  size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsSetPayloadRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_SetPayloadRequest* value);
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
    uint32_t universal_robots_Ros1Ur_msgsSetPayloadResponse_encode(roswasmc_bounded_1_ur_msgs_SetPayloadResponse const* value,
                                                                   void* bytes,
                                                                   size_t capacity,
                                                                   size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsSetPayloadResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_SetPayloadResponse* value);
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
    uint32_t universal_robots_Ros1Ur_msgsSetSpeedSliderFractionRequest_encode(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest const* value,
                                                                              void* bytes,
                                                                              size_t capacity,
                                                                              size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsSetSpeedSliderFractionRequest_decode(void const* bytes,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest* value);
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
    uint32_t universal_robots_Ros1Ur_msgsSetSpeedSliderFractionResponse_encode(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse const* value,
                                                                               void* bytes,
                                                                               size_t capacity,
                                                                               size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsSetSpeedSliderFractionResponse_decode(void const* bytes,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse* value);
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
    uint32_t universal_robots_Ros1Ur_msgsToolDataMsg_encode(roswasmc_bounded_1_ur_msgs_ToolDataMsg const* value, void* bytes, size_t capacity, size_t* length);
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
    uint32_t universal_robots_Ros1Ur_msgsToolDataMsg_decode(void const* bytes, size_t length, roswasmc_bounded_1_ur_msgs_ToolDataMsg* value);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_control_msgs_FollowJointTrajectory_send(roswasmc_action_bundle* bundle,
                                                                                    roswasmc_bounded_1_control_msgs_FollowJointTrajectoryGoal const* goal,
                                                                                    uint64_t* id);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_control_msgs_FollowJointTrajectory_feedback(
        roswasmc_action_bundle const* bundle,
        uint64_t id,
        roswasmc_bounded_1_control_msgs_FollowJointTrajectoryFeedback* feedback);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_control_msgs_FollowJointTrajectory_result(roswasmc_action_bundle* bundle,
                                                                                      uint64_t id,
                                                                                      uint8_t* kind,
                                                                                      roswasmc_bounded_1_control_msgs_FollowJointTrajectoryResult* result);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_control_msgs_FollowJointTrajectory_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* id,
                                                                                    roswasmc_bounded_1_control_msgs_FollowJointTrajectoryGoal* goal);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_control_msgs_FollowJointTrajectory_respond_feedback(
        roswasmc_capability const* cap,
        uint64_t id,
        roswasmc_bounded_1_control_msgs_FollowJointTrajectoryFeedback const* value);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_control_msgs_FollowJointTrajectory_respond_result(
        roswasmc_capability const* cap,
        uint64_t id,
        uint8_t kind,
        roswasmc_bounded_1_control_msgs_FollowJointTrajectoryResult const* value);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_call(roswasmc_capability const* cap,
                                                                                        roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest const* request,
                                                                                        roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest* request);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse const* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest const* request,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse const* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest const* request,
                                                                                   roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse const* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest const* request,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_poll(roswasmc_capability const* cap,
                                                                                            uint64_t* ticket,
                                                                                            roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest* request);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse const* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest const* request,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest* request);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest const* request,
        roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse const* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest const* request,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse const* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest const* request,
                                                                                  roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Load_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest const* request,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Load_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Load_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Popup_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest const* request,
                                                                                     roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Popup_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Popup_respond(roswasmc_capability const* cap,
                                                                                        uint64_t ticket,
                                                                                        roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_call(roswasmc_capability const* cap,
                                                                                          roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest const* request,
                                                                                          roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_poll(roswasmc_capability const* cap,
                                                                                          uint64_t* ticket,
                                                                                          roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest* request);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_send(roswasmc_action_bundle* bundle,
                                                                                       roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal const* goal,
                                                                                       uint64_t* id);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_feedback(roswasmc_action_bundle const* bundle,
                                                                                           uint64_t id,
                                                                                           roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback* feedback);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_result(roswasmc_action_bundle* bundle,
                                                                                         uint64_t id,
                                                                                         uint8_t* kind,
                                                                                         roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult* result);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* id,
                                                                                       roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal* goal);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_feedback(roswasmc_capability const* cap,
                                                                                       uint64_t id,
                                                                                       roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback const* value);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_result(roswasmc_capability const* cap,
                                                                                     uint64_t id,
                                                                                     uint8_t kind,
                                                                                     roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult const* value);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest const* request,
                                                                                 roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest* request);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetAnalogOutput_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest const* request,
                                                                                     roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetAnalogOutput_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetAnalogOutput_respond(roswasmc_capability const* cap,
                                                                                        uint64_t ticket,
                                                                                        roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetForceMode_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_ur_msgs_SetForceModeRequest const* request,
                                                                                  roswasmc_bounded_1_ur_msgs_SetForceModeResponse* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetForceMode_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_ur_msgs_SetForceModeRequest* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetForceMode_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_ur_msgs_SetForceModeResponse const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetIO_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_ur_msgs_SetIORequest const* request,
                                                                           roswasmc_bounded_1_ur_msgs_SetIOResponse* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetIO_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_ur_msgs_SetIORequest* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetIO_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_ur_msgs_SetIOResponse const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetPayload_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_ur_msgs_SetPayloadRequest const* request,
                                                                                roswasmc_bounded_1_ur_msgs_SetPayloadResponse* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetPayload_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_ur_msgs_SetPayloadRequest* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetPayload_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_ur_msgs_SetPayloadResponse const* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest const* request,
                                                                                roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_poll(roswasmc_capability const* cap,
                                                                                            uint64_t* ticket,
                                                                                            roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest* request);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse const* response);

#if defined(__cplusplus)
}
#endif
