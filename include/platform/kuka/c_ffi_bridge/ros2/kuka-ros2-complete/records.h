/** @file records.h
 * @brief Explicit complete-record C FFI; all buffers remain caller-owned.
 */
#pragma once
#include <kuka/c/ros2/kuka-ros2-complete/bounded_interfaces.h>
#if defined(__cplusplus)
extern "C"
{
#endif
#include <kuka/c/ros2/kuka-ros2-complete/bounded_records.h>
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Builtin_interfacesMsgDuration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* value,
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
    uint32_t kuka_Ros2Builtin_interfacesMsgDuration_decode(void const* bytes, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Duration* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        kuka_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t kuka_Ros2Builtin_interfacesMsgTime_decode(void const* bytes, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t kuka_Ros2Std_msgsMsgHeader_decode(void const* bytes, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Trajectory_msgsMsgJointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* value,
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
    uint32_t kuka_Ros2Trajectory_msgsMsgJointTrajectoryPoint_decode(void const* bytes,
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
    uint32_t kuka_Ros2Trajectory_msgsMsgJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* value,
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
    uint32_t kuka_Ros2Trajectory_msgsMsgJointTrajectory_decode(void const* bytes, size_t length, roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Geometry_msgsMsgVector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t kuka_Ros2Geometry_msgsMsgVector3_decode(void const* bytes, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Vector3* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        kuka_Ros2Geometry_msgsMsgQuaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t kuka_Ros2Geometry_msgsMsgQuaternion_decode(void const* bytes, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        kuka_Ros2Geometry_msgsMsgTransform_encode(roswasmc_bounded_2_geometry_msgs_msg_Transform const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t kuka_Ros2Geometry_msgsMsgTransform_decode(void const* bytes, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Transform* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Geometry_msgsMsgTwist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t kuka_Ros2Geometry_msgsMsgTwist_decode(void const* bytes, size_t length, roswasmc_bounded_2_geometry_msgs_msg_Twist* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* value,
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
    uint32_t kuka_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_decode(void const* bytes,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* value,
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
    uint32_t kuka_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_decode(void const* bytes,
                                                                       size_t length,
                                                                       roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Control_msgsMsgJointTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* value,
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
    uint32_t kuka_Ros2Control_msgsMsgJointTolerance_decode(void const* bytes, size_t length, roswasmc_bounded_2_control_msgs_msg_JointTolerance* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Control_msgsMsgJointComponentTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* value,
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
    uint32_t kuka_Ros2Control_msgsMsgJointComponentTolerance_decode(void const* bytes,
                                                                    size_t length,
                                                                    roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Control_msgsActionFollowJointTrajectory_Goal_encode(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* value,
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
    uint32_t kuka_Ros2Control_msgsActionFollowJointTrajectory_Goal_decode(void const* bytes,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Control_msgsActionFollowJointTrajectory_Result_encode(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value,
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
    uint32_t kuka_Ros2Control_msgsActionFollowJointTrajectory_Result_decode(void const* bytes,
                                                                            size_t length,
                                                                            roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        kuka_Ros2Control_msgsActionFollowJointTrajectory_Feedback_encode(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value,
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
    uint32_t kuka_Ros2Control_msgsActionFollowJointTrajectory_Feedback_decode(void const* bytes,
                                                                              size_t length,
                                                                              roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Kuka_driver_interfacesMsgFRIState_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState const* value,
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
    uint32_t kuka_Ros2Kuka_driver_interfacesMsgFRIState_decode(void const* bytes, size_t length, roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Kuka_driver_interfacesMsgFRIStateArray_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray const* value,
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
    uint32_t kuka_Ros2Kuka_driver_interfacesMsgFRIStateArray_decode(void const* bytes,
                                                                    size_t length,
                                                                    roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Kuka_driver_interfacesMsgFriConfiguration_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration const* value,
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
    uint32_t kuka_Ros2Kuka_driver_interfacesMsgFriConfiguration_decode(void const* bytes,
                                                                       size_t length,
                                                                       roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Kuka_driver_interfacesMsgHardwareEvent_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent const* value,
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
    uint32_t kuka_Ros2Kuka_driver_interfacesMsgHardwareEvent_decode(void const* bytes,
                                                                    size_t length,
                                                                    roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Kuka_driver_interfacesMsgKssStatus_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus const* value,
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
        kuka_Ros2Kuka_driver_interfacesMsgKssStatus_decode(void const* bytes, size_t length, roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Kuka_driver_interfacesMsgKssStatusArray_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray const* value,
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
    uint32_t kuka_Ros2Kuka_driver_interfacesMsgKssStatusArray_decode(void const* bytes,
                                                                     size_t length,
                                                                     roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Lifecycle_msgsMsgState_encode(roswasmc_bounded_2_lifecycle_msgs_msg_State const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t kuka_Ros2Lifecycle_msgsMsgState_decode(void const* bytes, size_t length, roswasmc_bounded_2_lifecycle_msgs_msg_State* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Lifecycle_msgsMsgTransition_encode(roswasmc_bounded_2_lifecycle_msgs_msg_Transition const* value,
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
    uint32_t kuka_Ros2Lifecycle_msgsMsgTransition_decode(void const* bytes, size_t length, roswasmc_bounded_2_lifecycle_msgs_msg_Transition* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Lifecycle_msgsSrvChangeState_Request_encode(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const* value,
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
    uint32_t kuka_Ros2Lifecycle_msgsSrvChangeState_Request_decode(void const* bytes,
                                                                  size_t length,
                                                                  roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Lifecycle_msgsSrvChangeState_Response_encode(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const* value,
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
    uint32_t kuka_Ros2Lifecycle_msgsSrvChangeState_Response_decode(void const* bytes,
                                                                   size_t length,
                                                                   roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Lifecycle_msgsSrvGetState_Request_encode(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const* value,
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
    uint32_t kuka_Ros2Lifecycle_msgsSrvGetState_Request_decode(void const* bytes, size_t length, roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Lifecycle_msgsSrvGetState_Response_encode(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const* value,
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
        kuka_Ros2Lifecycle_msgsSrvGetState_Response_decode(void const* bytes, size_t length, roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Sensor_msgsMsgJointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t kuka_Ros2Sensor_msgsMsgJointState_decode(void const* bytes, size_t length, roswasmc_bounded_2_sensor_msgs_msg_JointState* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        kuka_Ros2Std_srvsSrvTrigger_Request_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t kuka_Ros2Std_srvsSrvTrigger_Request_decode(void const* bytes, size_t length, roswasmc_bounded_2_std_srvs_srv_Trigger_Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t kuka_Ros2Std_srvsSrvTrigger_Response_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* value,
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
    uint32_t kuka_Ros2Std_srvsSrvTrigger_Response_decode(void const* bytes, size_t length, roswasmc_bounded_2_std_srvs_srv_Trigger_Response* value);

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
    roswasmc_result
        kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(roswasmc_action_bundle* bundle,
                                                                               roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* goal,
                                                                               uint64_t* id);

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
    roswasmc_result kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(
        roswasmc_action_bundle const* bundle,
        uint64_t id,
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* feedback);

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
    roswasmc_result
        kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(roswasmc_action_bundle* bundle,
                                                                                 uint64_t id,
                                                                                 uint8_t* kind,
                                                                                 roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result* result);

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
    roswasmc_result
        kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll(roswasmc_capability const* cap,
                                                                               uint64_t* id,
                                                                               roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* goal);

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
    roswasmc_result kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback(
        roswasmc_capability const* cap,
        uint64_t id,
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value);

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
    roswasmc_result kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result(
        roswasmc_capability const* cap,
        uint64_t id,
        uint8_t kind,
        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value);

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
    roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const* request,
                                                                                roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response* response);

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
    roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request* request);

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
    roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const* response);

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
    roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_GetState_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const* request,
                                                                             roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response* response);

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
    roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_GetState_poll(roswasmc_capability const* cap,
                                                                             uint64_t* ticket,
                                                                             roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request* request);

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
    roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_GetState_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const* response);

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
    roswasmc_result kuka_roswasmc_bounded_2_std_srvs_srv_Trigger_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* request,
                                                                      roswasmc_bounded_2_std_srvs_srv_Trigger_Response* response);

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
    roswasmc_result kuka_roswasmc_bounded_2_std_srvs_srv_Trigger_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_2_std_srvs_srv_Trigger_Request* request);

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
    roswasmc_result kuka_roswasmc_bounded_2_std_srvs_srv_Trigger_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* response);

#if defined(__cplusplus)
}
#endif
