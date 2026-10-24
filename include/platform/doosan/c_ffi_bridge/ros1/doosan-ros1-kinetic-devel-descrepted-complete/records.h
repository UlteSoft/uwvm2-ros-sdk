/** @file records.h
 * @brief Explicit complete-record C FFI; all buffers remain caller-owned.
 */
#pragma once
#include <doosan/c/ros1/doosan-ros1-kinetic-devel-descrepted-complete/bounded_interfaces.h>
#if defined(__cplusplus)
extern "C"
{
#endif
#include <doosan/c/ros1/doosan-ros1-kinetic-devel-descrepted-complete/bounded_records.h>
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsAlignAxis1Request_encode(roswasmc_bounded_1_dsr_msgs_AlignAxis1Request const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsAlignAxis1Request_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_AlignAxis1Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsAlignAxis1Response_encode(roswasmc_bounded_1_dsr_msgs_AlignAxis1Response const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsAlignAxis1Response_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_AlignAxis1Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsAlignAxis2Request_encode(roswasmc_bounded_1_dsr_msgs_AlignAxis2Request const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsAlignAxis2Request_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_AlignAxis2Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsAlignAxis2Response_encode(roswasmc_bounded_1_dsr_msgs_AlignAxis2Response const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsAlignAxis2Response_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_AlignAxis2Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsAlterMotionRequest_encode(roswasmc_bounded_1_dsr_msgs_AlterMotionRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsAlterMotionRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_AlterMotionRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsAlterMotionResponse_encode(roswasmc_bounded_1_dsr_msgs_AlterMotionResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsAlterMotionResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_AlterMotionResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsCalcCoordRequest_encode(roswasmc_bounded_1_dsr_msgs_CalcCoordRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsCalcCoordRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_CalcCoordRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsCalcCoordResponse_encode(roswasmc_bounded_1_dsr_msgs_CalcCoordResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsCalcCoordResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_CalcCoordResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsChangeOperationSpeedRequest_encode(roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest const* value,
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
        doosan_Ros1Dsr_msgsChangeOperationSpeedRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsChangeOperationSpeedResponse_encode(roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsChangeOperationSpeedResponse_decode(void const* bytes,
                                                                    size_t length,
                                                                    roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsCheckForceConditionRequest_encode(roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest const* value,
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
        doosan_Ros1Dsr_msgsCheckForceConditionRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsCheckForceConditionResponse_encode(roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse const* value,
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
        doosan_Ros1Dsr_msgsCheckForceConditionResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsCheckMotionRequest_encode(roswasmc_bounded_1_dsr_msgs_CheckMotionRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsCheckMotionRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_CheckMotionRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsCheckMotionResponse_encode(roswasmc_bounded_1_dsr_msgs_CheckMotionResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsCheckMotionResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_CheckMotionResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsCheckOrientationCondition1Request_encode(roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request const* value,
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
    uint32_t doosan_Ros1Dsr_msgsCheckOrientationCondition1Request_decode(void const* bytes,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsCheckOrientationCondition1Response_encode(roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response const* value,
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
    uint32_t doosan_Ros1Dsr_msgsCheckOrientationCondition1Response_decode(void const* bytes,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsCheckOrientationCondition2Request_encode(roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request const* value,
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
    uint32_t doosan_Ros1Dsr_msgsCheckOrientationCondition2Request_decode(void const* bytes,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsCheckOrientationCondition2Response_encode(roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response const* value,
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
    uint32_t doosan_Ros1Dsr_msgsCheckOrientationCondition2Response_decode(void const* bytes,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsCheckPositionConditionRequest_encode(roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsCheckPositionConditionRequest_decode(void const* bytes,
                                                                     size_t length,
                                                                     roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsCheckPositionConditionResponse_encode(roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsCheckPositionConditionResponse_decode(void const* bytes,
                                                                      size_t length,
                                                                      roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigCreateModbusRequest_encode(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest const* value,
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
        doosan_Ros1Dsr_msgsConfigCreateModbusRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigCreateModbusResponse_encode(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse const* value,
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
        doosan_Ros1Dsr_msgsConfigCreateModbusResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigCreateTcpRequest_encode(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsConfigCreateTcpRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigCreateTcpResponse_encode(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsConfigCreateTcpResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigCreateToolRequest_encode(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsConfigCreateToolRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigCreateToolResponse_encode(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsConfigCreateToolResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigDeleteModbusRequest_encode(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest const* value,
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
        doosan_Ros1Dsr_msgsConfigDeleteModbusRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigDeleteModbusResponse_encode(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse const* value,
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
        doosan_Ros1Dsr_msgsConfigDeleteModbusResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigDeleteTcpRequest_encode(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsConfigDeleteTcpRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigDeleteTcpResponse_encode(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsConfigDeleteTcpResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigDeleteToolRequest_encode(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsConfigDeleteToolRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsConfigDeleteToolResponse_encode(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsConfigDeleteToolResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsCoordTransformRequest_encode(roswasmc_bounded_1_dsr_msgs_CoordTransformRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsCoordTransformRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_CoordTransformRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsCoordTransformResponse_encode(roswasmc_bounded_1_dsr_msgs_CoordTransformResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsCoordTransformResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_CoordTransformResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsDisableAlterMotionRequest_encode(roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest const* value,
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
        doosan_Ros1Dsr_msgsDisableAlterMotionRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsDisableAlterMotionResponse_encode(roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse const* value,
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
        doosan_Ros1Dsr_msgsDisableAlterMotionResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlPauseRequest_encode(roswasmc_bounded_1_dsr_msgs_DrlPauseRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlPauseRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_DrlPauseRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsDrlPauseResponse_encode(roswasmc_bounded_1_dsr_msgs_DrlPauseResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlPauseResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_DrlPauseResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsDrlResumeRequest_encode(roswasmc_bounded_1_dsr_msgs_DrlResumeRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlResumeRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_DrlResumeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsDrlResumeResponse_encode(roswasmc_bounded_1_dsr_msgs_DrlResumeResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlResumeResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_DrlResumeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlStartRequest_encode(roswasmc_bounded_1_dsr_msgs_DrlStartRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlStartRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_DrlStartRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsDrlStartResponse_encode(roswasmc_bounded_1_dsr_msgs_DrlStartResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlStartResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_DrlStartResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlStopRequest_encode(roswasmc_bounded_1_dsr_msgs_DrlStopRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlStopRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_DrlStopRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlStopResponse_encode(roswasmc_bounded_1_dsr_msgs_DrlStopResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsDrlStopResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_DrlStopResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsEnableAlterMotionRequest_encode(roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsEnableAlterMotionRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsEnableAlterMotionResponse_encode(roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse const* value,
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
        doosan_Ros1Dsr_msgsEnableAlterMotionResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsFkinRequest_encode(roswasmc_bounded_1_dsr_msgs_FkinRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsFkinRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_FkinRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsFkinResponse_encode(roswasmc_bounded_1_dsr_msgs_FkinResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsFkinResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_FkinResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetControlModeRequest_encode(roswasmc_bounded_1_dsr_msgs_GetControlModeRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetControlModeRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetControlModeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetControlModeResponse_encode(roswasmc_bounded_1_dsr_msgs_GetControlModeResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetControlModeResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetControlModeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetControlSpaceRequest_encode(roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetControlSpaceRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetControlSpaceResponse_encode(roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetControlSpaceResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest_decode(void const* bytes,
                                                                    size_t length,
                                                                    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse_decode(void const* bytes,
                                                                     size_t length,
                                                                     roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest_decode(void const* bytes,
                                                                     size_t length,
                                                                     roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse_decode(void const* bytes,
                                                                      size_t length,
                                                                      roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest_decode(void const* bytes,
                                                                      size_t length,
                                                                      roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse_decode(void const* bytes,
                                                                       size_t length,
                                                                       roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPoseRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPoseRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPoseResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPoseResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPosjRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPosjRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPosjResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPosjResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPosxRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPosxRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Std_msgsMultiArrayDimension_encode(roswasmc_bounded_1_std_msgs_MultiArrayDimension const* value,
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
    uint32_t doosan_Ros1Std_msgsMultiArrayDimension_decode(void const* bytes, size_t length, roswasmc_bounded_1_std_msgs_MultiArrayDimension* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Std_msgsMultiArrayLayout_encode(roswasmc_bounded_1_std_msgs_MultiArrayLayout const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Std_msgsMultiArrayLayout_decode(void const* bytes, size_t length, roswasmc_bounded_1_std_msgs_MultiArrayLayout* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Std_msgsFloat64MultiArray_encode(roswasmc_bounded_1_std_msgs_Float64MultiArray const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Std_msgsFloat64MultiArray_decode(void const* bytes, size_t length, roswasmc_bounded_1_std_msgs_Float64MultiArray* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPosxResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentPosxResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentRotmRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentRotmRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentRotmResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentRotmResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentSolutionSpaceRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentSolutionSpaceRequest_decode(void const* bytes,
                                                                      size_t length,
                                                                      roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentSolutionSpaceResponse_decode(void const* bytes,
                                                                       size_t length,
                                                                       roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentTcpRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentTcpRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentTcpResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentTcpResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentToolRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentToolRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentToolResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentToolResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentToolFlangePosxRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentToolFlangePosxRequest_decode(void const* bytes,
                                                                       size_t length,
                                                                       roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentToolFlangePosxResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentToolFlangePosxResponse_decode(void const* bytes,
                                                                        size_t length,
                                                                        roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentVeljRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentVeljRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentVeljResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentVeljResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentVelxRequest_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentVelxRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetCurrentVelxResponse_encode(roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetCurrentVelxResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetDesiredPosjRequest_encode(roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetDesiredPosjRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetDesiredPosjResponse_encode(roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetDesiredPosjResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetDesiredPosxRequest_encode(roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetDesiredPosxRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetDesiredPosxResponse_encode(roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetDesiredPosxResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetDesiredVeljRequest_encode(roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetDesiredVeljRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetDesiredVeljResponse_encode(roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetDesiredVeljResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetDesiredVelxRequest_encode(roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetDesiredVelxRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetDesiredVelxResponse_encode(roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetDesiredVelxResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsGetDrlStateRequest_encode(roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsGetDrlStateRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetDrlStateResponse_encode(roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetDrlStateResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetExternalTorqueRequest_encode(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetExternalTorqueRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetExternalTorqueResponse_encode(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse const* value,
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
        doosan_Ros1Dsr_msgsGetExternalTorqueResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetJointTorqueRequest_encode(roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetJointTorqueRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetJointTorqueResponse_encode(roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetJointTorqueResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetLastAlarmRequest_encode(roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetLastAlarmRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsLogAlarm_encode(roswasmc_bounded_1_dsr_msgs_LogAlarm const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsLogAlarm_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_LogAlarm* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetLastAlarmResponse_encode(roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetLastAlarmResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetModbusInputRequest_encode(roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetModbusInputRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetModbusInputResponse_encode(roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetModbusInputResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetOrientationErrorRequest_encode(roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest const* value,
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
        doosan_Ros1Dsr_msgsGetOrientationErrorRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetOrientationErrorResponse_encode(roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse const* value,
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
        doosan_Ros1Dsr_msgsGetOrientationErrorResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetRobotModeRequest_encode(roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetRobotModeRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetRobotModeResponse_encode(roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetRobotModeResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetRobotSpeedModeRequest_encode(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetRobotSpeedModeRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetRobotSpeedModeResponse_encode(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse const* value,
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
        doosan_Ros1Dsr_msgsGetRobotSpeedModeResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetRobotStateRequest_encode(roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetRobotStateRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetRobotStateResponse_encode(roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetRobotStateResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetRobotSystemRequest_encode(roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetRobotSystemRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetRobotSystemResponse_encode(roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetRobotSystemResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetSolutionSpaceRequest_encode(roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetSolutionSpaceRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetSolutionSpaceResponse_encode(roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetSolutionSpaceResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetToolDigitalInputRequest_encode(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest const* value,
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
        doosan_Ros1Dsr_msgsGetToolDigitalInputRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetToolDigitalInputResponse_encode(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse const* value,
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
        doosan_Ros1Dsr_msgsGetToolDigitalInputResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetToolDigitalOutputRequest_encode(roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest const* value,
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
        doosan_Ros1Dsr_msgsGetToolDigitalOutputRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetToolDigitalOutputResponse_encode(roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetToolDigitalOutputResponse_decode(void const* bytes,
                                                                    size_t length,
                                                                    roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetToolForceRequest_encode(roswasmc_bounded_1_dsr_msgs_GetToolForceRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetToolForceRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetToolForceRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetToolForceResponse_encode(roswasmc_bounded_1_dsr_msgs_GetToolForceResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetToolForceResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetToolForceResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetUserCartCoordRequest_encode(roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetUserCartCoordRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetUserCartCoordResponse_encode(roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsGetUserCartCoordResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetWorkpieceWeightRequest_encode(roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest const* value,
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
        doosan_Ros1Dsr_msgsGetWorkpieceWeightRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsGetWorkpieceWeightResponse_encode(roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse const* value,
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
        doosan_Ros1Dsr_msgsGetWorkpieceWeightResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsIkinRequest_encode(roswasmc_bounded_1_dsr_msgs_IkinRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsIkinRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_IkinRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsIkinResponse_encode(roswasmc_bounded_1_dsr_msgs_IkinResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsIkinResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_IkinResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsIsDoneBoltTighteningRequest_encode(roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest const* value,
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
        doosan_Ros1Dsr_msgsIsDoneBoltTighteningRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsIsDoneBoltTighteningResponse_encode(roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsIsDoneBoltTighteningResponse_decode(void const* bytes,
                                                                    size_t length,
                                                                    roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsJogRequest_encode(roswasmc_bounded_1_dsr_msgs_JogRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsJogRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_JogRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsJogResponse_encode(roswasmc_bounded_1_dsr_msgs_JogResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsJogResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_JogResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsJogMultiRequest_encode(roswasmc_bounded_1_dsr_msgs_JogMultiRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsJogMultiRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_JogMultiRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsJogMultiResponse_encode(roswasmc_bounded_1_dsr_msgs_JogMultiResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsJogMultiResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_JogMultiResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsJogMultiAxis_encode(roswasmc_bounded_1_dsr_msgs_JogMultiAxis const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsJogMultiAxis_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_JogMultiAxis* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsModbusState_encode(roswasmc_bounded_1_dsr_msgs_ModbusState const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsModbusState_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ModbusState* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveBlendingRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsMoveBlendingRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveBlendingResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsMoveBlendingResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveCircleRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveCircleRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveCircleRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveCircleRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveCircleResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveCircleResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveCircleResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveCircleResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveHomeRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveHomeRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveHomeRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveHomeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveHomeResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveHomeResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveHomeResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveHomeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveJointRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveJointRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveJointRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveJointRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveJointResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveJointResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveJointResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveJointResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveJointxRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveJointxRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveJointxRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveJointxRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveJointxResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveJointxResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveJointxResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveJointxResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveLineRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveLineRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveLineRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveLineRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveLineResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveLineResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveLineResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveLineResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMovePauseRequest_encode(roswasmc_bounded_1_dsr_msgs_MovePauseRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMovePauseRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MovePauseRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMovePauseResponse_encode(roswasmc_bounded_1_dsr_msgs_MovePauseResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMovePauseResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MovePauseResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMovePeriodicRequest_encode(roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsMovePeriodicRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMovePeriodicResponse_encode(roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsMovePeriodicResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveResumeRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveResumeRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveResumeRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveResumeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveResumeResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveResumeResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveResumeResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveResumeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveSpiralRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveSpiralRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveSpiralResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveSpiralResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveSplineJointRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsMoveSplineJointRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveSplineJointResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsMoveSplineJointResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveSplineTaskRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsMoveSplineTaskRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveSplineTaskResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsMoveSplineTaskResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveStopRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveStopRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveStopRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveStopRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveStopResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveStopResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveStopResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveStopResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveWaitRequest_encode(roswasmc_bounded_1_dsr_msgs_MoveWaitRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveWaitRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveWaitRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsMoveWaitResponse_encode(roswasmc_bounded_1_dsr_msgs_MoveWaitResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsMoveWaitResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_MoveWaitResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsOverwriteUserCartCoordRequest_encode(roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsOverwriteUserCartCoordRequest_decode(void const* bytes,
                                                                     size_t length,
                                                                     roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsOverwriteUserCartCoordResponse_encode(roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsOverwriteUserCartCoordResponse_decode(void const* bytes,
                                                                      size_t length,
                                                                      roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsParallelAxis1Request_encode(roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request const* value,
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
    uint32_t doosan_Ros1Dsr_msgsParallelAxis1Request_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsParallelAxis1Response_encode(roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response const* value,
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
    uint32_t doosan_Ros1Dsr_msgsParallelAxis1Response_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsParallelAxis2Request_encode(roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request const* value,
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
    uint32_t doosan_Ros1Dsr_msgsParallelAxis2Request_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsParallelAxis2Response_encode(roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response const* value,
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
    uint32_t doosan_Ros1Dsr_msgsParallelAxis2Response_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsReleaseComplianceCtrlRequest_encode(roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsReleaseComplianceCtrlRequest_decode(void const* bytes,
                                                                    size_t length,
                                                                    roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsReleaseComplianceCtrlResponse_encode(roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsReleaseComplianceCtrlResponse_decode(void const* bytes,
                                                                     size_t length,
                                                                     roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsReleaseForceRequest_encode(roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsReleaseForceRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsReleaseForceResponse_encode(roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsReleaseForceResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsResetWorkpieceWeightRequest_encode(roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest const* value,
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
        doosan_Ros1Dsr_msgsResetWorkpieceWeightRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsResetWorkpieceWeightResponse_encode(roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsResetWorkpieceWeightResponse_decode(void const* bytes,
                                                                    size_t length,
                                                                    roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotError_encode(roswasmc_bounded_1_dsr_msgs_RobotError const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotError_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_RobotError* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotState_encode(roswasmc_bounded_1_dsr_msgs_RobotState const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotState_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_RobotState* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotStop_encode(roswasmc_bounded_1_dsr_msgs_RobotStop const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotStop_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_RobotStop* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FCloseRequest_encode(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FCloseRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FCloseResponse_encode(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FCloseResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FMoveRequest_encode(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FMoveRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FMoveResponse_encode(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FMoveResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FOpenRequest_encode(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FOpenRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FOpenResponse_encode(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsRobotiq2FOpenResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSerialSendDataRequest_encode(roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSerialSendDataRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSerialSendDataResponse_encode(roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSerialSendDataResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest_encode(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest_decode(void const* bytes,
                                                                        size_t length,
                                                                        roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse_encode(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse_decode(void const* bytes,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest_encode(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest_decode(void const* bytes,
                                                                     size_t length,
                                                                     roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse_encode(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse_decode(void const* bytes,
                                                                      size_t length,
                                                                      roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest_encode(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest_decode(void const* bytes,
                                                                         size_t length,
                                                                         roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse_encode(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse_decode(void const* bytes,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest_encode(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest_decode(void const* bytes,
                                                                      size_t length,
                                                                      roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse_encode(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse_decode(void const* bytes,
                                                                       size_t length,
                                                                       roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCurrentTcpRequest_encode(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCurrentTcpRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCurrentTcpResponse_encode(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCurrentTcpResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCurrentToolRequest_encode(roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCurrentToolRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetCurrentToolResponse_encode(roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetCurrentToolResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetDesiredForceRequest_encode(roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetDesiredForceRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetDesiredForceResponse_encode(roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetDesiredForceResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetModbusOutputRequest_encode(roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetModbusOutputRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetModbusOutputResponse_encode(roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetModbusOutputResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
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
        doosan_Ros1Dsr_msgsSetRefCoordRequest_encode(roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsSetRefCoordRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetRefCoordResponse_encode(roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetRefCoordResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetRobotModeRequest_encode(roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetRobotModeRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetRobotModeResponse_encode(roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetRobotModeResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetRobotSpeedModeRequest_encode(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetRobotSpeedModeRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetRobotSpeedModeResponse_encode(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse const* value,
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
        doosan_Ros1Dsr_msgsSetRobotSpeedModeResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetRobotSystemRequest_encode(roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetRobotSystemRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetRobotSystemResponse_encode(roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetRobotSystemResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetSafeStopResetTypeRequest_encode(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest const* value,
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
        doosan_Ros1Dsr_msgsSetSafeStopResetTypeRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetSafeStopResetTypeResponse_encode(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetSafeStopResetTypeResponse_decode(void const* bytes,
                                                                    size_t length,
                                                                    roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetSingularityHandlingRequest_encode(roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetSingularityHandlingRequest_decode(void const* bytes,
                                                                     size_t length,
                                                                     roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetSingularityHandlingResponse_encode(roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetSingularityHandlingResponse_decode(void const* bytes,
                                                                      size_t length,
                                                                      roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetStiffnessxRequest_encode(roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetStiffnessxRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetStiffnessxResponse_encode(roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetStiffnessxResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetToolDigitalOutputRequest_encode(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest const* value,
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
        doosan_Ros1Dsr_msgsSetToolDigitalOutputRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetToolDigitalOutputResponse_encode(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetToolDigitalOutputResponse_decode(void const* bytes,
                                                                    size_t length,
                                                                    roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetToolShapeRequest_encode(roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetToolShapeRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetToolShapeResponse_encode(roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetToolShapeResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetUserCartCoord1Request_encode(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetUserCartCoord1Request_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetUserCartCoord1Response_encode(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response const* value,
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
        doosan_Ros1Dsr_msgsSetUserCartCoord1Response_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetUserCartCoord2Request_encode(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetUserCartCoord2Request_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetUserCartCoord2Response_encode(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response const* value,
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
        doosan_Ros1Dsr_msgsSetUserCartCoord2Response_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetUserCartCoord3Request_encode(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request const* value,
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
    uint32_t doosan_Ros1Dsr_msgsSetUserCartCoord3Request_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsSetUserCartCoord3Response_encode(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response const* value,
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
        doosan_Ros1Dsr_msgsSetUserCartCoord3Response_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsTaskComplianceCtrlRequest_encode(roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest const* value,
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
        doosan_Ros1Dsr_msgsTaskComplianceCtrlRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsTaskComplianceCtrlResponse_encode(roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse const* value,
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
        doosan_Ros1Dsr_msgsTaskComplianceCtrlResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsTransRequest_encode(roswasmc_bounded_1_dsr_msgs_TransRequest const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsTransRequest_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_TransRequest* value);
    /**
     * @brief Encode the selected complete record into a caller-owned byte span.
     * @details Delegates to the exact public C codec, preserving its canonical
     * field order, source bounds, finite-float rules and transactional validation.
     * @param value Borrowed complete initialized record; stable through return.
     * @param bytes Exclusive caller-owned output span with at least capacity bytes.
     * @param capacity Writable output extent in bytes; never an element count.
     * @param length Exclusive destination for the complete encoded byte count.
     * @return Zero on complete encoding; 22 for an invalid record or pointer;
     * 90 when the caller span cannot hold the complete bounded representation.
     * @ownership All objects and spans remain caller-owned. No ROS role is opened.
     */
    uint32_t doosan_Ros1Dsr_msgsTransResponse_encode(roswasmc_bounded_1_dsr_msgs_TransResponse const* value, void* bytes, size_t capacity, size_t* length);
    /**
     * @brief Decode one exact complete canonical record transactionally.
     * @details Truncated, trailing, malformed or out-of-bound fields are refused.
     * @param bytes Borrowed immutable encoded span; stable through return.
     * @param length Exact readable span extent in bytes; no trailing frame allowed.
     * @param value Exclusive destination for the complete decoded record.
     * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
     * truncation, trailing bytes, overlap or an extent outside the record's bound.
     * @ownership The caller retains every span. On refusal the output record stays
     * unchanged; a successful result owns its complete inline canonical value.
     */
    uint32_t doosan_Ros1Dsr_msgsTransResponse_decode(void const* bytes, size_t length, roswasmc_bounded_1_dsr_msgs_TransResponse* value);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_AlignAxis1_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_AlignAxis1_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dsr_msgs_AlignAxis1Request const* request,
                                                                       roswasmc_bounded_1_dsr_msgs_AlignAxis1Response* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_AlignAxis1_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_AlignAxis1_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_dsr_msgs_AlignAxis1Request* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_AlignAxis1_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_AlignAxis1_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_AlignAxis1Response const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_AlignAxis2_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_AlignAxis2_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dsr_msgs_AlignAxis2Request const* request,
                                                                       roswasmc_bounded_1_dsr_msgs_AlignAxis2Response* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_AlignAxis2_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_AlignAxis2_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_dsr_msgs_AlignAxis2Request* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_AlignAxis2_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_AlignAxis2_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_AlignAxis2Response const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_AlterMotion_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_AlterMotion_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dsr_msgs_AlterMotionRequest const* request,
                                                                        roswasmc_bounded_1_dsr_msgs_AlterMotionResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_AlterMotion_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_AlterMotion_poll(roswasmc_capability const* cap,
                                                                        uint64_t* ticket,
                                                                        roswasmc_bounded_1_dsr_msgs_AlterMotionRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_AlterMotion_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_AlterMotion_respond(roswasmc_capability const* cap,
                                                                           uint64_t ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_AlterMotionResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CalcCoord_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CalcCoord_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_dsr_msgs_CalcCoordRequest const* request,
                                                                      roswasmc_bounded_1_dsr_msgs_CalcCoordResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CalcCoord_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CalcCoord_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_1_dsr_msgs_CalcCoordRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CalcCoord_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CalcCoord_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_CalcCoordResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeed_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckForceCondition_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CheckForceCondition_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest const* request,
                                                                                roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckForceCondition_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CheckForceCondition_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckForceCondition_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CheckForceCondition_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckMotion_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CheckMotion_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dsr_msgs_CheckMotionRequest const* request,
                                                                        roswasmc_bounded_1_dsr_msgs_CheckMotionResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckMotion_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CheckMotion_poll(roswasmc_capability const* cap,
                                                                        uint64_t* ticket,
                                                                        roswasmc_bounded_1_dsr_msgs_CheckMotionRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckMotion_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CheckMotion_respond(roswasmc_capability const* cap,
                                                                           uint64_t ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_CheckMotionResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_call.
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
        doosan_roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_call.
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
        doosan_roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest const* request,
                                                                                   roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_CheckPositionCondition_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_poll(roswasmc_capability const* cap,
                                                                            uint64_t* ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_poll(roswasmc_capability const* cap,
                                                                             uint64_t* ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_poll(roswasmc_capability const* cap,
                                                                            uint64_t* ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_poll(roswasmc_capability const* cap,
                                                                             uint64_t* ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CoordTransform_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CoordTransform_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_CoordTransformRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_CoordTransformResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CoordTransform_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CoordTransform_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_CoordTransformRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_CoordTransform_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_CoordTransform_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_CoordTransformResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DisableAlterMotion_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlPause_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DrlPause_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_dsr_msgs_DrlPauseRequest const* request,
                                                                     roswasmc_bounded_1_dsr_msgs_DrlPauseResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlPause_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DrlPause_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_1_dsr_msgs_DrlPauseRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlPause_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DrlPause_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_1_dsr_msgs_DrlPauseResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlResume_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DrlResume_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_dsr_msgs_DrlResumeRequest const* request,
                                                                      roswasmc_bounded_1_dsr_msgs_DrlResumeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlResume_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DrlResume_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_1_dsr_msgs_DrlResumeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlResume_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DrlResume_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_DrlResumeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlStart_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DrlStart_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_dsr_msgs_DrlStartRequest const* request,
                                                                     roswasmc_bounded_1_dsr_msgs_DrlStartResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlStart_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DrlStart_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_1_dsr_msgs_DrlStartRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlStart_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DrlStart_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_1_dsr_msgs_DrlStartResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlStop_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DrlStop_call(roswasmc_capability const* cap,
                                                                    roswasmc_bounded_1_dsr_msgs_DrlStopRequest const* request,
                                                                    roswasmc_bounded_1_dsr_msgs_DrlStopResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlStop_poll.
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
        doosan_roswasmc_bounded_1_dsr_msgs_DrlStop_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_DrlStopRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_DrlStop_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_DrlStop_respond(roswasmc_capability const* cap,
                                                                       uint64_t ticket,
                                                                       roswasmc_bounded_1_dsr_msgs_DrlStopResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_EnableAlterMotion_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Fkin_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Fkin_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_dsr_msgs_FkinRequest const* request,
                                                                 roswasmc_bounded_1_dsr_msgs_FkinResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Fkin_poll.
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
        doosan_roswasmc_bounded_1_dsr_msgs_Fkin_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_FkinRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Fkin_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Fkin_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_dsr_msgs_FkinResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetControlMode_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetControlMode_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetControlModeRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetControlModeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetControlMode_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetControlMode_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetControlModeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetControlMode_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetControlMode_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetControlModeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetControlSpace_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetControlSpace_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetControlSpace_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetControlSpace_poll(roswasmc_capability const* cap,
                                                                            uint64_t* ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetControlSpace_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetControlSpace_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest const* request,
                                                                                  roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest const* request,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest const* request,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutput_respond(roswasmc_capability const* cap,
                                                                           uint64_t ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPose_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentPose_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPose_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentPose_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPose_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentPose_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentPosj_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentPosx_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentRotm_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest const* request,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_respond(roswasmc_capability const* cap,
                                                                           uint64_t ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTool_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentTool_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTool_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentTool_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTool_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentTool_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest const* request,
                                                                                     roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosx_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentVelj_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetCurrentVelx_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredPosj_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredPosx_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredVelj_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDesiredVelx_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDrlState_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDrlState_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest const* request,
                                                                        roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDrlState_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDrlState_poll(roswasmc_capability const* cap,
                                                                        uint64_t* ticket,
                                                                        roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetDrlState_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetDrlState_respond(roswasmc_capability const* cap,
                                                                           uint64_t ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetExternalTorque_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetExternalTorque_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetExternalTorque_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetExternalTorque_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetExternalTorque_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetExternalTorque_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetJointTorque_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetJointTorque_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetJointTorque_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetJointTorque_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetJointTorque_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetJointTorque_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetLastAlarm_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetLastAlarm_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetLastAlarm_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetLastAlarm_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetLastAlarm_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetLastAlarm_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetModbusInput_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetModbusInput_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetModbusInput_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetModbusInput_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetModbusInput_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetModbusInput_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetOrientationError_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetOrientationError_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest const* request,
                                                                                roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetOrientationError_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetOrientationError_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetOrientationError_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetOrientationError_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotMode_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotMode_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotMode_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotMode_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotMode_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotMode_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotState_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotState_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotState_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotState_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotState_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotState_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotSystem_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotSystem_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotSystem_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotSystem_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetRobotSystem_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetRobotSystem_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_poll(roswasmc_capability const* cap,
                                                                             uint64_t* ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetSolutionSpace_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest const* request,
                                                                                roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutput_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetToolForce_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetToolForce_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_GetToolForceRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_GetToolForceResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetToolForce_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetToolForce_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_GetToolForceRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetToolForce_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetToolForce_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_GetToolForceResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest const* request,
                                                                             roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_poll(roswasmc_capability const* cap,
                                                                             uint64_t* ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetUserCartCoord_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeight_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Ikin_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Ikin_call(roswasmc_capability const* cap,
                                                                 roswasmc_bounded_1_dsr_msgs_IkinRequest const* request,
                                                                 roswasmc_bounded_1_dsr_msgs_IkinResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Ikin_poll.
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
        doosan_roswasmc_bounded_1_dsr_msgs_Ikin_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_IkinRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Ikin_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Ikin_respond(roswasmc_capability const* cap,
                                                                    uint64_t ticket,
                                                                    roswasmc_bounded_1_dsr_msgs_IkinResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_IsDoneBoltTightening_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Jog_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Jog_call(roswasmc_capability const* cap,
                                                                roswasmc_bounded_1_dsr_msgs_JogRequest const* request,
                                                                roswasmc_bounded_1_dsr_msgs_JogResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Jog_poll.
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
        doosan_roswasmc_bounded_1_dsr_msgs_Jog_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_JogRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Jog_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Jog_respond(roswasmc_capability const* cap,
                                                                   uint64_t ticket,
                                                                   roswasmc_bounded_1_dsr_msgs_JogResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_JogMulti_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_JogMulti_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_dsr_msgs_JogMultiRequest const* request,
                                                                     roswasmc_bounded_1_dsr_msgs_JogMultiResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_JogMulti_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_JogMulti_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_1_dsr_msgs_JogMultiRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_JogMulti_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_JogMulti_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_1_dsr_msgs_JogMultiResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveBlending_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveBlending_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveBlending_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveBlending_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveBlending_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveBlending_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveCircle_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveCircle_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveCircleRequest const* request,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveCircleResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveCircle_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveCircle_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveCircleRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveCircle_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveCircle_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveCircleResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveHome_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveHome_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveHomeRequest const* request,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveHomeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveHome_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveHome_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveHomeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveHome_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveHome_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveHomeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveJoint_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveJoint_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_dsr_msgs_MoveJointRequest const* request,
                                                                      roswasmc_bounded_1_dsr_msgs_MoveJointResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveJoint_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveJoint_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_1_dsr_msgs_MoveJointRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveJoint_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveJoint_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_MoveJointResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveJointx_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveJointx_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveJointxRequest const* request,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveJointxResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveJointx_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveJointx_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveJointxRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveJointx_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveJointx_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveJointxResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveLine_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveLine_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveLineRequest const* request,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveLineResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveLine_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveLine_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveLineRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveLine_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveLine_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveLineResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MovePause_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MovePause_call(roswasmc_capability const* cap,
                                                                      roswasmc_bounded_1_dsr_msgs_MovePauseRequest const* request,
                                                                      roswasmc_bounded_1_dsr_msgs_MovePauseResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MovePause_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MovePause_poll(roswasmc_capability const* cap,
                                                                      uint64_t* ticket,
                                                                      roswasmc_bounded_1_dsr_msgs_MovePauseRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MovePause_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MovePause_respond(roswasmc_capability const* cap,
                                                                         uint64_t ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_MovePauseResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MovePeriodic_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MovePeriodic_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MovePeriodic_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MovePeriodic_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MovePeriodic_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MovePeriodic_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveResume_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveResume_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveResumeRequest const* request,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveResumeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveResume_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveResume_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveResumeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveResume_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveResume_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveResumeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveSpiral_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveSpiral_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest const* request,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveSpiral_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveSpiral_poll(roswasmc_capability const* cap,
                                                                       uint64_t* ticket,
                                                                       roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveSpiral_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveSpiral_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_poll(roswasmc_capability const* cap,
                                                                            uint64_t* ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveSplineTask_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveSplineTask_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveSplineTask_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveSplineTask_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveSplineTask_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveSplineTask_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveStop_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveStop_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveStopRequest const* request,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveStopResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveStop_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveStop_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveStopRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveStop_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveStop_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveStopResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveWait_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveWait_call(roswasmc_capability const* cap,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveWaitRequest const* request,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveWaitResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveWait_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveWait_poll(roswasmc_capability const* cap,
                                                                     uint64_t* ticket,
                                                                     roswasmc_bounded_1_dsr_msgs_MoveWaitRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_MoveWait_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_MoveWait_respond(roswasmc_capability const* cap,
                                                                        uint64_t ticket,
                                                                        roswasmc_bounded_1_dsr_msgs_MoveWaitResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest const* request,
                                                                                   roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoord_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ParallelAxis1_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ParallelAxis1_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ParallelAxis1_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ParallelAxis1_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ParallelAxis1_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ParallelAxis1_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ParallelAxis2_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ParallelAxis2_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ParallelAxis2_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ParallelAxis2_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ParallelAxis2_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ParallelAxis2_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest const* request,
                                                                                  roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrl_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ReleaseForce_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ReleaseForce_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ReleaseForce_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ReleaseForce_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ReleaseForce_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ReleaseForce_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeight_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SerialSendData_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SerialSendData_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SerialSendData_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SerialSendData_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SerialSendData_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SerialSendData_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_call.
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
        doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest const* request,
                                                                                   roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_call.
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
        doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* ticket,
                                                                                       roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest const* request,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_respond(roswasmc_capability const* cap,
                                                                           uint64_t ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTool_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCurrentTool_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTool_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCurrentTool_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTool_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetCurrentTool_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetDesiredForce_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetDesiredForce_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetDesiredForce_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetDesiredForce_poll(roswasmc_capability const* cap,
                                                                            uint64_t* ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetDesiredForce_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetDesiredForce_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetModbusOutput_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetModbusOutput_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest const* request,
                                                                            roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetModbusOutput_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetModbusOutput_poll(roswasmc_capability const* cap,
                                                                            uint64_t* ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetModbusOutput_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetModbusOutput_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRefCoord_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRefCoord_call(roswasmc_capability const* cap,
                                                                        roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest const* request,
                                                                        roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRefCoord_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRefCoord_poll(roswasmc_capability const* cap,
                                                                        uint64_t* ticket,
                                                                        roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRefCoord_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRefCoord_respond(roswasmc_capability const* cap,
                                                                           uint64_t ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRobotMode_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRobotMode_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRobotMode_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRobotMode_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRobotMode_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRobotMode_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRobotSystem_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRobotSystem_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest const* request,
                                                                           roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRobotSystem_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRobotSystem_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetRobotSystem_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetRobotSystem_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_call(roswasmc_capability const* cap,
                                                                                   roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest const* request,
                                                                                   roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_respond.
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
        doosan_roswasmc_bounded_1_dsr_msgs_SetSingularityHandling_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetStiffnessx_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetStiffnessx_call(roswasmc_capability const* cap,
                                                                          roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest const* request,
                                                                          roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetStiffnessx_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetStiffnessx_poll(roswasmc_capability const* cap,
                                                                          uint64_t* ticket,
                                                                          roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetStiffnessx_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetStiffnessx_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest const* request,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetToolShape_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetToolShape_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest const* request,
                                                                         roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetToolShape_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetToolShape_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetToolShape_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetToolShape_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request const* request,
                                                                              roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest const* request,
                                                                               roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_poll.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrl_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse const* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Trans_call.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Trans_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_1_dsr_msgs_TransRequest const* request,
                                                                  roswasmc_bounded_1_dsr_msgs_TransResponse* response);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Trans_poll.
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
        doosan_roswasmc_bounded_1_dsr_msgs_Trans_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_dsr_msgs_TransRequest* request);

    /**
     * @brief Invoke one complete original typed service/action operation.
     * @details Delegates directly to the selected public C implementation:
     * \c roswasmc_bounded_1_dsr_msgs_Trans_respond.
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
    roswasmc_result doosan_roswasmc_bounded_1_dsr_msgs_Trans_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_1_dsr_msgs_TransResponse const* response);

#if defined(__cplusplus)
}
#endif
