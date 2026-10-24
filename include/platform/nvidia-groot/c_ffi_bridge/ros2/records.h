/** @file records.h
 * @brief Strong external C ABI for every complete NVIDIA canonical record.
 * @details Records remain caller-owned. No native object layout, allocator, ROS
 * entity, inference process or simulator authority crosses this pure codec ABI.
 */
#ifndef NVIDIA_GROOT_C_FFI_RECORDS_H
#define NVIDIA_GROOT_C_FFI_RECORDS_H
#include <nvidia-groot/c/ros2/complete/records.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_msg_RGBFrame_valid(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_msg_RGBFrame_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_msg_RGBFrame_encode(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_msg_RGBFrame_decode(void const* input, size_t length, roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBFrame* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_msg_FloatTensor_valid(roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_msg_FloatTensor_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_msg_FloatTensor_encode(roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_msg_FloatTensor_decode(void const* input,
                                                                       size_t length,
                                                                       roswasmc_bounded_2_uwvm_groot_bridge_msg_FloatTensor* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_msg_TextSequence_valid(roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_msg_TextSequence_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_msg_TextSequence_encode(roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_msg_TextSequence_decode(void const* input,
                                                                        size_t length,
                                                                        roswasmc_bounded_2_uwvm_groot_bridge_msg_TextSequence* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_srv_InferAction_Request_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_srv_InferAction_Request_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_InferAction_Request_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_InferAction_Request_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Request* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_srv_InferAction_Response_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_srv_InferAction_Response_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_InferAction_Response_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_InferAction_Response_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_2_uwvm_groot_bridge_srv_InferAction_Response* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_msg_RGBDescriptor_valid(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_msg_RGBDescriptor_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_msg_RGBDescriptor_encode(roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_msg_RGBDescriptor_decode(void const* input,
                                                                         size_t length,
                                                                         roswasmc_bounded_2_uwvm_groot_bridge_msg_RGBDescriptor* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_srv_BeginObservation_Request_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_srv_BeginObservation_Request_wire_size(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t
        nvidia_groot_ffi_uwvm_groot_bridge_srv_BeginObservation_Request_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_BeginObservation_Request_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Request* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_srv_BeginObservation_Response_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_srv_BeginObservation_Response_wire_size(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t
        nvidia_groot_ffi_uwvm_groot_bridge_srv_BeginObservation_Response_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_BeginObservation_Response_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_uwvm_groot_bridge_srv_BeginObservation_Response* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_srv_WriteRGBChunk_Request_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_srv_WriteRGBChunk_Request_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_WriteRGBChunk_Request_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_WriteRGBChunk_Request_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Request* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_srv_WriteRGBChunk_Response_valid(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t
        nvidia_groot_ffi_uwvm_groot_bridge_srv_WriteRGBChunk_Response_wire_size(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_WriteRGBChunk_Response_encode(roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_WriteRGBChunk_Response_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_uwvm_groot_bridge_srv_WriteRGBChunk_Response* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_srv_ReleaseObservation_Request_valid(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_srv_ReleaseObservation_Request_wire_size(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_ReleaseObservation_Request_encode(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request const* value,
        void* output,
        size_t capacity,
        size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t
        nvidia_groot_ffi_uwvm_groot_bridge_srv_ReleaseObservation_Request_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Request* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_srv_ReleaseObservation_Response_valid(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_srv_ReleaseObservation_Response_wire_size(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_ReleaseObservation_Response_encode(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t
        nvidia_groot_ffi_uwvm_groot_bridge_srv_ReleaseObservation_Response_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_uwvm_groot_bridge_srv_ReleaseObservation_Response* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_srv_InferUploadedAction_Request_valid(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_srv_InferUploadedAction_Request_wire_size(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_InferUploadedAction_Request_encode(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request const* value,
        void* output,
        size_t capacity,
        size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t
        nvidia_groot_ffi_uwvm_groot_bridge_srv_InferUploadedAction_Request_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Request* value);
    /**
     * @brief Validate every field before exposing a value through the FFI.
     * @param value Initialized caller-owned complete record; null is refused.
     * @return One for a complete valid record, otherwise zero.
     */
    int nvidia_groot_ffi_uwvm_groot_bridge_srv_InferUploadedAction_Response_valid(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response const* value);
    /**
     * @brief Measure the exact active canonical extent in bytes.
     * @param value Complete caller-owned record already accepted by valid.
     * @return Exact encoded byte extent; no capacity or native struct bytes are emitted.
     */
    size_t nvidia_groot_ffi_uwvm_groot_bridge_srv_InferUploadedAction_Response_wire_size(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response const* value);
    /**
     * @brief Encode a whole value transactionally through the external C ABI.
     * @param value Initialized caller-owned source record.
     * @param output Writable capacity-byte storage, disjoint from value and length.
     * @param capacity Exact available output byte extent.
     * @param length Caller-owned exact-length result, unchanged on refusal.
     * @return Zero on success, 22 for invalid input/storage or 90 for insufficient capacity.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_InferUploadedAction_Response_encode(
        roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response const* value,
        void* output,
        size_t capacity,
        size_t* length);
    /**
     * @brief Decode exact complete bytes before committing the FFI destination.
     * @param input Read-only canonical body retained by the caller.
     * @param length Exact byte extent; truncation and trailing data are invalid.
     * @param value Initialized caller-owned disjoint destination, unchanged on refusal.
     * @return Zero on success or 22 for malformed bytes, bounds or invalid storage.
     */
    uint32_t nvidia_groot_ffi_uwvm_groot_bridge_srv_InferUploadedAction_Response_decode(
        void const* input,
        size_t length,
        roswasmc_bounded_2_uwvm_groot_bridge_srv_InferUploadedAction_Response* value);
#ifdef __cplusplus
}
#endif
#endif
