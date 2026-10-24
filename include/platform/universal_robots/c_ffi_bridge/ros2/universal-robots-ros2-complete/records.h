/** @file records.h
 * @brief Explicit complete-record C FFI; all buffers remain caller-owned.
 */
#pragma once
#include <universal_robots/c/ros2/universal-robots-ros2-complete/bounded_interfaces.h>
#if defined(__cplusplus)
extern "C"
{
#endif
#include <universal_robots/c/ros2/universal-robots-ros2-complete/bounded_records.h>
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Builtin_interfacesMsgDuration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
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
        universal_robots_Ros2Builtin_interfacesMsgDuration_decode(void const* bytes, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Duration* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
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
    uint32_t universal_robots_Ros2Builtin_interfacesMsgTime_decode(void const* bytes, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Control_msgsMsgJointTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value,
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
        universal_robots_Ros2Control_msgsMsgJointTolerance_decode(void const* bytes, size_t length, roswasmc_bounded_2_control_msgs_msg_JointTolerance* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Geometry_msgsMsgPoint_encode(roswasmc_bounded_2_geometry_msgs_msg_Point const* value,
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
    uint32_t universal_robots_Ros2Geometry_msgsMsgPoint_decode(void const* bytes, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Point* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Geometry_msgsMsgQuaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value,
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
    uint32_t universal_robots_Ros2Geometry_msgsMsgQuaternion_decode(void const* bytes, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Geometry_msgsMsgPose_encode(roswasmc_bounded_2_geometry_msgs_msg_Pose const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t universal_robots_Ros2Geometry_msgsMsgPose_decode(void const* bytes, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Pose* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t universal_robots_Ros2Std_msgsMsgHeader_decode(void const* bytes, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Geometry_msgsMsgPoseStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const* value,
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
    uint32_t universal_robots_Ros2Geometry_msgsMsgPoseStamped_decode(void const* bytes, size_t length, roswasmc_bounded_2_geometry_msgs_msg_PoseStamped* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Geometry_msgsMsgVector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value,
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
    uint32_t universal_robots_Ros2Geometry_msgsMsgVector3_decode(void const* bytes, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Vector3* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Geometry_msgsMsgTwist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value,
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
    uint32_t universal_robots_Ros2Geometry_msgsMsgTwist_decode(void const* bytes, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Twist* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Geometry_msgsMsgVector3Stamped_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped const* value,
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
    uint32_t universal_robots_Ros2Geometry_msgsMsgVector3Stamped_decode(void const* bytes,
                                                                        size_t length,
                                                                        roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Geometry_msgsMsgWrench_encode(roswasmc_bounded_2_geometry_msgs_msg_Wrench const* value,
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
    uint32_t universal_robots_Ros2Geometry_msgsMsgWrench_decode(void const* bytes, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Wrench* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Trajectory_msgsMsgJointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
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
    uint32_t universal_robots_Ros2Trajectory_msgsMsgJointTrajectoryPoint_decode(void const* bytes,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Trajectory_msgsMsgJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
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
    uint32_t universal_robots_Ros2Trajectory_msgsMsgJointTrajectory_decode(void const* bytes,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Goal_encode(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Goal_decode(void const* bytes,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Result_encode(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Result_decode(void const* bytes,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Feedback_encode(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Feedback_decode(void const* bytes,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgOperationalMode_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgOperationalMode_decode(void const* bytes,
                                                                             size_t length,
                                                                             roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgProgramInformation_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgProgramInformation_decode(void const* bytes,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgProgramState_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgProgramState_decode(void const* bytes,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgRobotMode_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode const* value,
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
        universal_robots_Ros2Ur_dashboard_msgsMsgRobotMode_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgSafetyMode_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgSafetyMode_decode(void const* bytes,
                                                                        size_t length,
                                                                        roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgSafetyStatus_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgSafetyStatus_decode(void const* bytes,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgUserRole_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole const* value,
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
        universal_robots_Ros2Ur_dashboard_msgsMsgUserRole_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgVersionInformation_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgVersionInformation_decode(void const* bytes,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvAddToLog_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvAddToLog_Request_decode(void const* bytes,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvAddToLog_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvAddToLog_Response_decode(void const* bytes,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvDownloadProgram_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadProgram_Request_decode(void const* bytes,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvDownloadProgram_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadProgram_Response_decode(void const* bytes,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request_decode(
        void const* bytes,
        size_t length,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response_decode(
        void const* bytes,
        size_t length,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request_decode(
        void const* bytes,
        size_t length,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response_decode(
        void const* bytes,
        size_t length,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request_decode(
        void const* bytes,
        size_t length,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response_decode(
        void const* bytes,
        size_t length,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request_decode(void const* bytes,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response const* value,
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
        universal_robots_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request const* value,
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
        universal_robots_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response_decode(
        void const* bytes,
        size_t length,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request_decode(
        void const* bytes,
        size_t length,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response_decode(
        void const* bytes,
        size_t length,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvGetProgramState_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetProgramState_Request_decode(void const* bytes,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvGetProgramState_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetProgramState_Response_decode(void const* bytes,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPrograms_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPrograms_Request_decode(void const* bytes,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPrograms_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPrograms_Response_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotMode_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotMode_Request_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotMode_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotMode_Response_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotModel_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotModel_Request_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotModel_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotModel_Response_decode(void const* bytes,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response_decode(void const* bytes,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request_decode(void const* bytes,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response_decode(void const* bytes,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request_decode(void const* bytes,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response_decode(void const* bytes,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetUserRole_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetUserRole_Request_decode(void const* bytes,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetUserRole_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetUserRole_Response_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request const* value,
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
        universal_robots_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response const* value,
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
        universal_robots_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request_decode(void const* bytes,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response const* value,
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
        universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request_decode(void const* bytes,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response_decode(void const* bytes,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvLoad_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvLoad_Request_decode(void const* bytes,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvLoad_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvLoad_Response_decode(void const* bytes,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvPopup_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvPopup_Request_decode(void const* bytes,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvPopup_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvPopup_Response_decode(void const* bytes,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvRawRequest_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvRawRequest_Request_decode(void const* bytes,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvRawRequest_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvRawRequest_Response_decode(void const* bytes,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request const* value,
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
        universal_robots_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response_encode(
        roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response_decode(
        void const* bytes,
        size_t length,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetUserRole_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetUserRole_Request_decode(void const* bytes,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetUserRole_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetUserRole_Response_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvUploadProgram_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvUploadProgram_Request_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_dashboard_msgsSrvUploadProgram_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvUploadProgram_Response_decode(void const* bytes,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal_encode(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal_decode(void const* bytes,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result_encode(
        roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result const* value,
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
        universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback_encode(
        roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback_decode(
        void const* bytes,
        size_t length,
        roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsActionSendScript_Goal_encode(roswasmc_bounded_2_ur_msgs_action_SendScript_Goal const* value,
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
        universal_robots_Ros2Ur_msgsActionSendScript_Goal_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_action_SendScript_Goal* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsActionSendScript_Result_encode(roswasmc_bounded_2_ur_msgs_action_SendScript_Result const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsActionSendScript_Result_decode(void const* bytes,
                                                                        size_t length,
                                                                        roswasmc_bounded_2_ur_msgs_action_SendScript_Result* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsActionSendScript_Feedback_encode(roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsActionSendScript_Feedback_decode(void const* bytes,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsActionToolContact_Goal_encode(roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal const* value,
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
        universal_robots_Ros2Ur_msgsActionToolContact_Goal_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsActionToolContact_Result_encode(roswasmc_bounded_2_ur_msgs_action_ToolContact_Result const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsActionToolContact_Result_decode(void const* bytes,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_ur_msgs_action_ToolContact_Result* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsActionToolContact_Feedback_encode(roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsActionToolContact_Feedback_decode(void const* bytes,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsMsgAnalog_encode(roswasmc_bounded_2_ur_msgs_msg_Analog const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t universal_robots_Ros2Ur_msgsMsgAnalog_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_msg_Analog* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsMsgDigital_encode(roswasmc_bounded_2_ur_msgs_msg_Digital const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t universal_robots_Ros2Ur_msgsMsgDigital_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_msg_Digital* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsMsgFrictionModelParameters_encode(roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsMsgFrictionModelParameters_decode(void const* bytes,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsMsgIOStates_encode(roswasmc_bounded_2_ur_msgs_msg_IOStates const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t universal_robots_Ros2Ur_msgsMsgIOStates_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_msg_IOStates* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsMsgMasterboardDataMsg_encode(roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg const* value,
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
        universal_robots_Ros2Ur_msgsMsgMasterboardDataMsg_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsMsgRobotModeDataMsg_encode(roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsMsgRobotModeDataMsg_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsMsgRobotStateRTMsg_encode(roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsMsgRobotStateRTMsg_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsMsgToolDataMsg_encode(roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsMsgToolDataMsg_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request_encode(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response_encode(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response_decode(void const* bytes,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetAnalogOutput_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsSrvSetAnalogOutput_Request_decode(void const* bytes,
                                                                           size_t length,
                                                                           roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetAnalogOutput_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsSrvSetAnalogOutput_Response_decode(void const* bytes,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetForceMode_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsSrvSetForceMode_Request_decode(void const* bytes,
                                                                        size_t length,
                                                                        roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetForceMode_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsSrvSetForceMode_Response_decode(void const* bytes,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        universal_robots_Ros2Ur_msgsSrvSetFrictionModelParameters_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsSrvSetFrictionModelParameters_Request_decode(void const* bytes,
                                                                                      size_t length,
                                                                                      roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetFrictionModelParameters_Response_encode(
        roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response const* value,
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
        universal_robots_Ros2Ur_msgsSrvSetFrictionModelParameters_Response_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetGravity_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request const* value,
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
        universal_robots_Ros2Ur_msgsSrvSetGravity_Request_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetGravity_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response const* value,
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
        universal_robots_Ros2Ur_msgsSrvSetGravity_Response_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetIO_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetIO_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsSrvSetIO_Request_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_srv_SetIO_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetIO_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetIO_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsSrvSetIO_Response_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_srv_SetIO_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetPayload_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request const* value,
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
        universal_robots_Ros2Ur_msgsSrvSetPayload_Request_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetPayload_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response const* value,
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
        universal_robots_Ros2Ur_msgsSrvSetPayload_Response_decode(void const* bytes, size_t length, roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetSpeedSliderFraction_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsSrvSetSpeedSliderFraction_Request_decode(void const* bytes,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t universal_robots_Ros2Ur_msgsSrvSetSpeedSliderFraction_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response const* value,
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
    uint32_t universal_robots_Ros2Ur_msgsSrvSetSpeedSliderFraction_Response_decode(void const* bytes,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response* value);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_send(roswasmc_action_bundle* bundle,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal const* goal,
                                                                                  uint64_t* id);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_feedback(roswasmc_action_bundle const* bundle,
                                                                                      uint64_t id,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback* feedback);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_result(roswasmc_action_bundle* bundle,
                                                                                    uint64_t id,
                                                                                    uint8_t* kind,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result* result);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_poll(roswasmc_capability const* cap,
                                                                                              uint64_t* id,
                                                                                              roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal* goal);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_feedback(
        roswasmc_capability const* cap,
        uint64_t id,
        roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback const* value);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_result(
        roswasmc_capability const* cap,
        uint64_t id,
        uint8_t kind,
        roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result const* value);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request const* request,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_poll(roswasmc_capability const* cap,
                                                                                            uint64_t* ticket,
                                                                                            roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request* request);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response const* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request const* request,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response const* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request const* request,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_call(roswasmc_capability const* cap,
                                                                                        roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request const* request,
                                                                                        roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request* request);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_call(roswasmc_capability const* cap,
                                                                                         roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request const* request,
                                                                                         roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request* request);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response const* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request const* request,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response const* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request const* request,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request const* request,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_send(
        roswasmc_action_bundle* bundle,
        roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal const* goal,
        uint64_t* id);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_feedback(
        roswasmc_action_bundle const* bundle,
        uint64_t id,
        roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback* feedback);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_result(
        roswasmc_action_bundle* bundle,
        uint64_t id,
        uint8_t* kind,
        roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result* result);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_poll(
        roswasmc_capability const* cap,
        uint64_t* id,
        roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal* goal);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_feedback(
        roswasmc_capability const* cap,
        uint64_t id,
        roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback const* value);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_result(
        roswasmc_capability const* cap,
        uint64_t id,
        uint8_t kind,
        roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result const* value);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_send(roswasmc_action_bundle* bundle,
                                                                                       roswasmc_bounded_2_ur_msgs_action_SendScript_Goal const* goal,
                                                                                       uint64_t* id);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_feedback(roswasmc_action_bundle const* bundle,
                                                                                           uint64_t id,
                                                                                           roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback* feedback);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_result(roswasmc_action_bundle* bundle,
                                                                                         uint64_t id,
                                                                                         uint8_t* kind,
                                                                                         roswasmc_bounded_2_ur_msgs_action_SendScript_Result* result);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* id,
                                                                                       roswasmc_bounded_2_ur_msgs_action_SendScript_Goal* goal);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_respond_feedback(roswasmc_capability const* cap,
                                                                                       uint64_t id,
                                                                                       roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback const* value);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_respond_result(roswasmc_capability const* cap,
                                                                                     uint64_t id,
                                                                                     uint8_t kind,
                                                                                     roswasmc_bounded_2_ur_msgs_action_SendScript_Result const* value);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_send(roswasmc_action_bundle* bundle,
                                                                                        roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal const* goal,
                                                                                        uint64_t* id);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_feedback(roswasmc_action_bundle const* bundle,
                                                                                            uint64_t id,
                                                                                            roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback* feedback);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_result(roswasmc_action_bundle* bundle,
                                                                                          uint64_t id,
                                                                                          uint8_t* kind,
                                                                                          roswasmc_bounded_2_ur_msgs_action_ToolContact_Result* result);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* id,
                                                                                        roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal* goal);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_feedback(roswasmc_capability const* cap,
                                                                                        uint64_t id,
                                                                                        roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback const* value);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_result(roswasmc_capability const* cap,
                                                                                      uint64_t id,
                                                                                      uint8_t kind,
                                                                                      roswasmc_bounded_2_ur_msgs_action_ToolContact_Result const* value);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request const* request,
        roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_call(roswasmc_capability const* cap,
                                                                                         roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request const* request,
                                                                                         roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request* request);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetForceMode_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request const* request,
                                                                                      roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetForceMode_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetForceMode_respond(roswasmc_capability const* cap,
                                                                                         uint64_t ticket,
                                                                                         roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request const* request,
        roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_poll(
        roswasmc_capability const* cap,
        uint64_t* ticket,
        roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetGravity_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request const* request,
                                                                                    roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetGravity_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetGravity_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetIO_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_ur_msgs_srv_SetIO_Request const* request,
                                                                               roswasmc_bounded_2_ur_msgs_srv_SetIO_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetIO_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_ur_msgs_srv_SetIO_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetIO_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_ur_msgs_srv_SetIO_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetPayload_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request const* request,
                                                                                    roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetPayload_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetPayload_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response const* response);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_call(
        roswasmc_capability const* cap,
        roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request const* request,
        roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response* response);

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
    roswasmc_result
        universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request* request);

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
    roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_respond(
        roswasmc_capability const* cap,
        uint64_t ticket,
        roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response const* response);

#if defined(__cplusplus)
}
#endif
